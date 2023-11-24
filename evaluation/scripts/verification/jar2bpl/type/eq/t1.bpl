type ref;
const unique $null : ref;
const unique $nonnull : ref;

type javaType;
const  unique java.lang.Object : javaType extends  complete;

procedure foo() returns ($exception:ref);    

implementation foo() returns ($exception:ref){
    $exception := $null;
    goto block2;
  block2:
    return;
}


