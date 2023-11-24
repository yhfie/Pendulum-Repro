﻿using Octokit;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Experimental
{
    class RepositoryProcessor
    {
        private static int CommitsPerRepo = 1000;
        private static int CommitsPerRequest = 500;
        private static DateTimeOffset ExperimentsInitTime = DateTimeOffset.Now;
        public RepositoryInfo Repository { get; private set; }

        public RepositoryProcessor(RepositoryInfo repo)
        {
            this.Repository = repo;
        }

        public void Process()
        {
            var _fixture = Program.GitHubClient.Repository.Commits;
            Console.WriteLine(this.Repository.Owner + "/" + this.Repository.Name);
            int commitsFiltered = 0;
            // Past 30 days
            double interval = -30;
            
            var since = ExperimentsInitTime.AddDays(interval);
            var until = ExperimentsInitTime;
            
            

            while (commitsFiltered < CommitsPerRepo)
            {
                var commitReq = new CommitRequest();
                commitReq.Since = since;
                commitReq.Until = until;
                var commitsTask = _fixture.GetAll(Repository.Owner, Repository.Name, commitReq);
                commitsTask.Wait();                
                foreach (var comm in commitsTask.Result)
                {
                    var statsCommit = _fixture.Get(Repository.Owner, Repository.Name, comm.Sha);
                    statsCommit.Wait();
                    if (IsInteresting(statsCommit.Result))
                    {
                        this.Repository.InterestingShas.Add(new Tuple<string, string, string>(comm.Sha, comm.Commit.Message, comm.HtmlUrl));
                    }
                }

                commitsFiltered += commitsTask.Result.Count;
                double factor = CommitsPerRequest / (commitsTask.Result.Count == 0 ? CommitsPerRequest/2.0 : commitsTask.Result.Count * 1.0 );
                interval = interval * factor;
                interval = interval < -730 ? -730 : interval;
                until = since;
                since = since.AddDays(interval);
                if (since.Year < 2005)
                    break;
                
            }
        }

        private static bool IsInteresting(GitHubCommit comm)
        {
            return (comm.Stats.Total > 19 && comm.Stats.Total < 40 && (comm.Files.All(file => file.Filename.EndsWith(".c") || file.Filename.EndsWith(".h")))) || comm.Commit.Message.ToLower().Contains("refactoring");
        }
    }
}
