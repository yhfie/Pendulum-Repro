type ref;
const unique $null : ref;
const unique $nonnull : ref;

type javaType;
const  unique java.lang.Object : javaType extends  complete;

const  unique java.io.Serializable : javaType extends  unique java.lang.Object complete;
//const  unique java.lang.Throwable : javaType extends unique java.io.Serializable complete;
const  unique java.lang.Throwable : javaType extends unique java.lang.Object complete;
//const  unique java.lang.Throwable : javaType extends  unique java.lang.Object, unique java.io.Serializable complete;


procedure foo() returns ($exception:ref);    

implementation foo() returns ($exception:ref){
    $exception := $nonnull;
    goto block2;
  block2:
    return;
}


