package modpow;

import pendulum.safe.Safe;



public class SimplifiedRSA {

	public static int modPowFastKocherReduction(int num, int e, int m, int max_high) { 
		// computes num^e mod m

		int s = 1;
		int y = num;
		int res = 0;

		int bound = (int) (Math.log(max_high + 1) / Math.log(2));
		
        int j=0;
		int _ub285 = 32;
		boolean _break285 = false;
		while (--_ub285 > 0) {
			boolean _guard285 = Safe.not(Safe.gt(e, 0));
			
			_break285 = Safe.cond(_guard285, true, _break285);

			boolean _b304 = Safe.eq(e % 2, 1);
			
			int tmp = s * y;
			
			
			boolean _b391 = Safe.gt(tmp, m);
			
			
			tmp = Safe.cond(_b391, tmp - m, tmp);
						
			res = Safe.cond(_break285, res, Safe.cond(_b304, tmp % m, res));
			res = Safe.cond(_break285, res, Safe.cond(_b304, res, s));

			s = Safe.cond(_break285, s, (res * res) % m); // squaring the base
			e = Safe.cond(_break285, e, (e) / (2));
			j = Safe.cond(_break285, j, j + 1);
			
				
		}
		return res;
	}

}
