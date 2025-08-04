type ref;
type javaType;
type Field $GenericType__0;
type $heap_type = <$GenericType__0>[ref,Field $GenericType__0]$GenericType__0;
type boolArrHeap_type = [ref][int]bool;
type refArrHeap_type = [ref][int]ref;
type realArrHeap_type = [ref][int]int;
type intArrHeap_type = [ref][int]int;
const unique $type : Field javaType;
const unique $alloc : Field bool;
const unique $null : ref;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique org.jasypt.digest.ByteDigester : javaType extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique org.jasypt.digest.StandardByteDigester : javaType extends  unique java.lang.Object, org.jasypt.digest.ByteDigester complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Comparable, java.lang.CharSequence complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique org.jasypt.digest.config.DigesterConfig : javaType extends  complete;
const unique $StringConst0 : ref extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique org.jasypt.commons.CommonUtils : javaType extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique org.jasypt.exceptions.AlreadyInitializedException : javaType extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.ClassCastException : javaType extends  unique java.lang.RuntimeException complete;
const unique $StringConst1 : ref extends  complete;
const unique $StringConst2 : ref extends  complete;
const unique $StringConst3 : ref extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique org.jasypt.salt.SaltGenerator : javaType extends  complete;
const unique $StringConst4 : ref extends  complete;
const unique $StringConst5 : ref extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.util.Dictionary : javaType extends  unique java.lang.Object complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.util.Map : javaType extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.Cloneable : javaType extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.util.Hashtable : javaType extends  unique java.util.Dictionary, java.util.Map, java.lang.Cloneable, java.io.Serializable complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.util.Properties : javaType extends  unique java.util.Hashtable complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.security.Provider : javaType extends  unique java.util.Properties complete;
const unique $StringConst6 : ref extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.Number : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.Integer : javaType extends  unique java.lang.Number, java.lang.Comparable complete;
const unique $StringConst7 : ref extends  complete;
//const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.Boolean : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Comparable complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique org.jasypt.salt.RandomSaltGenerator : javaType extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique org.jasypt.exceptions.EncryptionInitializationException : javaType extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.Appendable : javaType extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.AbstractStringBuilder : javaType extends  unique java.lang.Object, java.lang.Appendable, java.lang.CharSequence complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.StringBuilder : javaType extends  unique java.lang.AbstractStringBuilder, java.io.Serializable, java.lang.CharSequence complete;
const unique $StringConst8 : ref extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.reflect.AnnotatedElement : javaType extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.reflect.GenericDeclaration : javaType extends  java.lang.reflect.AnnotatedElement complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.reflect.Type : javaType extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.Class : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.reflect.GenericDeclaration, java.lang.reflect.Type, java.lang.reflect.AnnotatedElement complete;
const unique $StringConst9 : ref extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.security.MessageDigestSpi : javaType extends  unique java.lang.Object complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.security.MessageDigest : javaType extends  unique java.security.MessageDigestSpi complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.security.GeneralSecurityException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.security.NoSuchAlgorithmException : javaType extends  unique java.security.GeneralSecurityException complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.security.NoSuchProviderException : javaType extends  unique java.security.GeneralSecurityException complete;
const unique $StringConst10 : ref extends  complete;
const unique $StringConst11 : ref extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique org.jasypt.exceptions.EncryptionOperationNotPossibleException : javaType extends  complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.NullPointerException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.System : javaType extends  unique java.lang.Object complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.IndexOutOfBoundsException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } unique java.lang.ArrayIndexOutOfBoundsException : javaType extends  unique java.lang.IndexOutOfBoundsException complete;
//const { :sourceloc "Boolean.java",-1,-1,-1,-1 } unique fakejava.lang.Boolean : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Boolean.java",-1,-1,-1,-1 } unique java.lang.Boolean : javaType extends  unique java.lang.Object complete;
var $heap : $heap_type;
var $intArrayType : javaType;
var $charArrayType : javaType;
var $boolArrayType : javaType;
var $byteArrayType : javaType;
var $longArrayType : javaType;
var $arrSizeHeap : [ref]int;
var $stringSizeHeap : [ref]int;
var $boolArrHeap : boolArrHeap_type;
var $refArrHeap : refArrHeap_type;
var $realArrHeap : realArrHeap_type;
var $intArrHeap : intArrHeap_type;
var $objIndex : int;
var java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260 : Field ref;
var int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0 : Field int;
var int$org.jasypt.digest.StandardByteDigester$iterations0 : Field int;
var org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261 : Field ref;
var java.lang.String$org.jasypt.digest.StandardByteDigester$providerName262 : Field ref;
var java.security.Provider$org.jasypt.digest.StandardByteDigester$provider263 : Field ref;
var boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigesting0 : Field int;
var boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResults0 : Field int;
var boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheck0 : Field int;
var org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264 : Field ref;
var boolean$org.jasypt.digest.StandardByteDigester$algorithmSet0 : Field int;
var boolean$org.jasypt.digest.StandardByteDigester$saltSizeBytesSet0 : Field int;
var boolean$org.jasypt.digest.StandardByteDigester$iterationsSet0 : Field int;
var boolean$org.jasypt.digest.StandardByteDigester$saltGeneratorSet0 : Field int;
var boolean$org.jasypt.digest.StandardByteDigester$providerNameSet0 : Field int;
var boolean$org.jasypt.digest.StandardByteDigester$providerSet0 : Field int;
var boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigestingSet0 : Field int;
var boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResultsSet0 : Field int;
var boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheckSet0 : Field int;
var boolean$org.jasypt.digest.StandardByteDigester$initialized0 : Field int;
var boolean$org.jasypt.digest.StandardByteDigester$useSalt0 : Field int;
var java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265 : Field ref;
var int$org.jasypt.digest.StandardByteDigester$digestLengthBytes0 : Field int;
//var boolean$fakejava.lang.Boolean$value0 : Field int;
var boolean$java.lang.Boolean$value0 : Field int;
function $arrayType(t:javaType) returns ($ret:javaType);
function $intToReal(x:int) returns ($ret:real);
function $intToBool(x:int) returns ($ret:bool) { (if x == 0 then false else true) }
function $refToBool(x:ref) returns ($ret:bool) { (if x == $null then false else true) }
function $boolToInt(x:bool) returns ($ret:int) { (if x == true then 1 else 0) }
function $cmpBool(x:bool, y:bool) returns ($ret:int);
function $cmpRef(x:ref, y:ref) returns ($ret:int);
function $cmpReal(x:real, y:real) returns ($ret:int) { (if x > y then 1 else (if x < y then -1 else 0)) }
function $cmpInt(x:int, y:int) returns ($ret:int) { (if x > y then 1 else (if x < y then -1 else 0)) }
function $bitOr(x:int, y:int) returns ($ret:int);
function $bitAnd(x:int, y:int) returns ($ret:int);
function $xorInt(x:int, y:int) returns ($ret:int);
function $shlInt(x:int, y:int) returns ($ret:int);
function $ushrInt(x:int, y:int) returns ($ret:int);
function $shrInt(x:int, y:int) returns ($ret:int);
function $mulInt(x:int, y:int) returns ($ret:int);
function $divInt(x:int, y:int) returns ($ret:int);
function $modInt(x:int, y:int) returns ($ret:int);
function $intToRef(id:int) returns ($ret:ref);
axiom (forall index : int :: $intToRef(index) != $null);
axiom (forall i1,i2 : int :: i1 == i2 <==> $intToRef(i1) == $intToRef(i2));
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures !old($heap[$obj,$alloc]);    ensures $obj != $null;    ensures $obj == $intToRef(old($objIndex));    modifies $objIndex, $heap;    ensures $heap == old($heap)[$obj,$alloc := true][$obj,$type := obj_type];    ensures $objIndex == old($objIndex) + 1;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);        ensures $heap[$other,$alloc] == true;    ensures $other != $null;    ensures $heap[$other,$type] == $heap[$this,$type];

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

procedure org.jasypt.digest.StandardByteDigester$$la$init$ra$$($this:ref) returns ($exception:ref);    modifies $objIndex, $heap, $stringSizeHeap;

procedure java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure org.jasypt.digest.StandardByteDigester$setConfig$org.jasypt.digest.config.DigesterConfig($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $objIndex, $heap;

procedure org.jasypt.commons.CommonUtils$validateNotNull$java.lang.Object_java.lang.String($in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure org.jasypt.digest.StandardByteDigester$isInitialized$($this:ref) returns ($return:int, $exception:ref);    

procedure org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure org.jasypt.digest.StandardByteDigester$setAlgorithm$java.lang.String($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $objIndex, $heap;

procedure org.jasypt.commons.CommonUtils$validateNotEmpty$java.lang.String_java.lang.String($in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure org.jasypt.digest.StandardByteDigester$setSaltSizeBytes$int($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $objIndex, $heap;

procedure org.jasypt.commons.CommonUtils$validateIsTrue$boolean_java.lang.String($in_parameter__0:int, $in_parameter__1:ref) returns ($exception:ref);    

procedure org.jasypt.digest.StandardByteDigester$setIterations$int($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $objIndex, $heap;

procedure org.jasypt.digest.StandardByteDigester$setSaltGenerator$org.jasypt.salt.SaltGenerator($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $objIndex, $heap;

procedure org.jasypt.digest.StandardByteDigester$setProviderName$java.lang.String($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $objIndex, $heap;

procedure org.jasypt.digest.StandardByteDigester$setProvider$java.security.Provider($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $objIndex, $heap;

procedure org.jasypt.digest.StandardByteDigester$setInvertPositionOfSaltInMessageBeforeDigesting$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $objIndex, $heap;

procedure org.jasypt.digest.StandardByteDigester$setInvertPositionOfPlainSaltInEncryptionResults$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $objIndex, $heap;

procedure org.jasypt.digest.StandardByteDigester$setUseLenientSaltSizeCheck$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $objIndex, $heap;

procedure org.jasypt.digest.StandardByteDigester$cloneDigester$($this:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap, $stringSizeHeap;

procedure org.jasypt.digest.StandardByteDigester$initialize$($this:ref) returns ($exception:ref);    modifies $objIndex, $heap;

procedure org.jasypt.commons.CommonUtils$isNotEmpty$java.lang.String($in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure org.jasypt.digest.config.DigesterConfig$getAlgorithm$($this:ref) returns ($return:ref, $exception:ref);    

procedure org.jasypt.digest.config.DigesterConfig$getSaltSizeBytes$($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Integer$intValue$($this:ref) returns ($return:int, $exception:ref);    

procedure org.jasypt.digest.config.DigesterConfig$getIterations$($this:ref) returns ($return:ref, $exception:ref);    

procedure org.jasypt.digest.config.DigesterConfig$getSaltGenerator$($this:ref) returns ($return:ref, $exception:ref);    

procedure org.jasypt.digest.config.DigesterConfig$getProviderName$($this:ref) returns ($return:ref, $exception:ref);    

procedure org.jasypt.digest.config.DigesterConfig$getProvider$($this:ref) returns ($return:ref, $exception:ref);    

procedure org.jasypt.digest.config.DigesterConfig$getInvertPositionOfSaltInMessageBeforeDigesting$($this:ref) returns ($return:ref, $exception:ref);    

procedure org.jasypt.digest.config.DigesterConfig$getInvertPositionOfPlainSaltInEncryptionResults$($this:ref) returns ($return:ref, $exception:ref);    

procedure org.jasypt.digest.config.DigesterConfig$getUseLenientSaltSizeCheck$($this:ref) returns ($return:ref, $exception:ref);    

//procedure java.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    

procedure org.jasypt.salt.RandomSaltGenerator$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure org.jasypt.salt.SaltGenerator$includePlainSaltInEncryptionResults$($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.StringBuilder$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure java.lang.StringBuilder$append$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$getClass$($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Class$getName$($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.StringBuilder$toString$($this:ref) returns ($return:ref, $exception:ref);    

procedure org.jasypt.exceptions.EncryptionInitializationException$$la$init$ra$$java.lang.String($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.security.MessageDigest$getInstance$java.lang.String_java.security.Provider($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    

procedure java.security.MessageDigest$getInstance$java.lang.String_java.lang.String($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    

procedure java.security.MessageDigest$getInstance$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure org.jasypt.exceptions.EncryptionInitializationException$$la$init$ra$$java.lang.Throwable($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.security.MessageDigest$getDigestLength$($this:ref) returns ($return:int, $exception:ref);    

procedure org.jasypt.digest.StandardByteDigester$digest$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

procedure org.jasypt.salt.SaltGenerator$generateSalt$int($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure org.jasypt.digest.StandardByteDigester$digest$byte$lp$$rp$_byte$lp$$rp$($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

procedure java.security.MessageDigest$reset$($this:ref) returns ($exception:ref);    

procedure java.security.MessageDigest$update$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.security.MessageDigest$digest$($this:ref) returns ($return:ref, $exception:ref);    

procedure java.security.MessageDigest$digest$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure org.jasypt.commons.CommonUtils$appendArrays$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    

procedure org.jasypt.exceptions.EncryptionOperationNotPossibleException$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure org.jasypt.digest.StandardByteDigester$matches$byte$lp$$rp$_byte$lp$$rp$($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    

procedure org.jasypt.digest.StandardByteDigester$matches_unsafe$byte$lp$$rp$_byte$lp$$rp$($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $arrSizeHeap, $heap;

procedure java.lang.System$arraycopy$java.lang.Object_int_java.lang.Object_int_int($in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:ref, $in_parameter__3:int, $in_parameter__4:int) returns ($exception:ref);    

procedure org.jasypt.digest.StandardByteDigester$jdkArraysEquals$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;
procedure java.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;

//procedure fakejava.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    
procedure java.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    

implementation org.jasypt.digest.StandardByteDigester$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var $fakelocal_0 : ref;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $heap[$this,$type] <: org.jasypt.digest.StandardByteDigester;
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StandardByteDigester.java",270,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "StandardByteDigester.java",184,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 3];
    $heap := $heap[r0,java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260 := $fakelocal_0];
    assert { :sourceloc "StandardByteDigester.java",186,-1,-1,-1 } true;
    $heap := $heap[r0,int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0 := 8];
    assert { :sourceloc "StandardByteDigester.java",188,-1,-1,-1 } true;
    $heap := $heap[r0,int$org.jasypt.digest.StandardByteDigester$iterations0 := 1000];
    assert { :sourceloc "StandardByteDigester.java",192,-1,-1,-1 } true;
    $heap := $heap[r0,org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261 := $null];
    assert { :sourceloc "StandardByteDigester.java",195,-1,-1,-1 } true;
    $heap := $heap[r0,java.lang.String$org.jasypt.digest.StandardByteDigester$providerName262 := $null];
    assert { :sourceloc "StandardByteDigester.java",198,-1,-1,-1 } true;
    $heap := $heap[r0,java.security.Provider$org.jasypt.digest.StandardByteDigester$provider263 := $null];
    assert { :sourceloc "StandardByteDigester.java",201,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigesting0 := 0];
    assert { :sourceloc "StandardByteDigester.java",204,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResults0 := 0];
    assert { :sourceloc "StandardByteDigester.java",207,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheck0 := 0];
    assert { :sourceloc "StandardByteDigester.java",217,-1,-1,-1 } true;
    $heap := $heap[r0,org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264 := $null];
    assert { :sourceloc "StandardByteDigester.java",224,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$algorithmSet0 := 0];
    assert { :sourceloc "StandardByteDigester.java",225,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$saltSizeBytesSet0 := 0];
    assert { :sourceloc "StandardByteDigester.java",226,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$iterationsSet0 := 0];
    assert { :sourceloc "StandardByteDigester.java",227,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$saltGeneratorSet0 := 0];
    assert { :sourceloc "StandardByteDigester.java",228,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$providerNameSet0 := 0];
    assert { :sourceloc "StandardByteDigester.java",229,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$providerSet0 := 0];
    assert { :sourceloc "StandardByteDigester.java",230,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigestingSet0 := 0];
    assert { :sourceloc "StandardByteDigester.java",231,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResultsSet0 := 0];
    assert { :sourceloc "StandardByteDigester.java",232,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheckSet0 := 0];
    assert { :sourceloc "StandardByteDigester.java",240,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$initialized0 := 0];
    assert { :sourceloc "StandardByteDigester.java",246,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$useSalt0 := 1];
    assert { :sourceloc "StandardByteDigester.java",254,-1,-1,-1 } true;
    $heap := $heap[r0,java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265 := $null];
    assert { :sourceloc "StandardByteDigester.java",261,-1,-1,-1 } true;
    $heap := $heap[r0,int$org.jasypt.digest.StandardByteDigester$digestLengthBytes0 := 0];
    assert { :sourceloc "StandardByteDigester.java",271,-1,-1,-1 } true;
    goto block1;
  block1:
    return;
}


implementation org.jasypt.digest.StandardByteDigester$setConfig$org.jasypt.digest.config.DigesterConfig($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $z0 : int;    
var $fakelocal_1 : ref;    
var $fakelocal_0 : ref;    
var r4 : ref;    
var r1 : ref;    
var r0 : ref;    
var r3 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $heap[$this,$type] <: org.jasypt.digest.StandardByteDigester;
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: org.jasypt.digest.config.DigesterConfig;
    $exception := $null;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "StandardByteDigester.java",301,-1,-1,-1 } true;
    call $exception := org.jasypt.commons.CommonUtils$validateNotNull$java.lang.Object_java.lang.String(r1, $StringConst0);
    assert { :sourceloc "StandardByteDigester.java",302,-1,-1,-1 } true;
    call $z0, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert { :sourceloc "StandardByteDigester.java",302,-1,-1,-1 } true;
    if ($z0 == 0) {
        assert { :sourceloc "StandardByteDigester.java",302,-1,-1,-1 } { :comment "thenblock" } true;
        goto block2;
    } else {
        assert { :sourceloc "StandardByteDigester.java",302,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",303,-1,-1,-1 } true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.AlreadyInitializedException);
    r3 := $fakelocal_0;
    assert { :sourceloc "StandardByteDigester.java",303,-1,-1,-1 } true;
    call $exception := org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$(r3);
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    if ($heap[r3,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.ClassCastException);
        $exception := $fakelocal_1;
        return;
    }
    r4 := r3;
    assert { :sourceloc "StandardByteDigester.java",303,-1,-1,-1 } true;
    $exception := r4;
    goto block3;
  block2:
    assert { :sourceloc "StandardByteDigester.java",305,-1,-1,-1 } true;
    $heap := $heap[r0,org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264 := r1];
    assert { :sourceloc "StandardByteDigester.java",306,-1,-1,-1 } true;
    goto block3;
  block3:
    return;
}


implementation org.jasypt.digest.StandardByteDigester$setAlgorithm$java.lang.String($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $fakelocal_1 : ref;    
var r0 : ref;    
var $z0 : int;    
var r3 : ref;    
var r1 : ref;    
var r4 : ref;    
var $fakelocal_0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $heap[$this,$type] <: org.jasypt.digest.StandardByteDigester;
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "StandardByteDigester.java",336,-1,-1,-1 } true;
    call $exception := org.jasypt.commons.CommonUtils$validateNotEmpty$java.lang.String_java.lang.String(r1, $StringConst1);
    assert { :sourceloc "StandardByteDigester.java",337,-1,-1,-1 } true;
    call $z0, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert { :sourceloc "StandardByteDigester.java",337,-1,-1,-1 } true;
    if ($z0 == 0) {
        assert { :sourceloc "StandardByteDigester.java",337,-1,-1,-1 } { :comment "thenblock" } true;
        goto block4;
    } else {
        assert { :sourceloc "StandardByteDigester.java",337,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",338,-1,-1,-1 } true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.AlreadyInitializedException);
    r3 := $fakelocal_0;
    assert { :sourceloc "StandardByteDigester.java",338,-1,-1,-1 } true;
    call $exception := org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$(r3);
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    if ($heap[r3,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.ClassCastException);
        $exception := $fakelocal_1;
        return;
    }
    r4 := r3;
    assert { :sourceloc "StandardByteDigester.java",338,-1,-1,-1 } true;
    $exception := r4;
    goto block5;
  block4:
    assert { :sourceloc "StandardByteDigester.java",340,-1,-1,-1 } true;
    $heap := $heap[r0,java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260 := r1];
    assert { :sourceloc "StandardByteDigester.java",341,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$algorithmSet0 := 1];
    assert { :sourceloc "StandardByteDigester.java",342,-1,-1,-1 } true;
    goto block5;
  block5:
    return;
}


implementation org.jasypt.digest.StandardByteDigester$setSaltSizeBytes$int($this:ref, $in_parameter__0:int) returns ($exception:ref){
    
var r2 : ref;    
var i0 : int;    
var r3 : ref;    
var $fakelocal_1 : ref;    
var r0 : ref;    
var $z0 : int;    
var $fakelocal_0 : ref;    
var $z1 : int;    
var $z2 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $heap[$this,$type] <: org.jasypt.digest.StandardByteDigester;
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__0;
    assert { :sourceloc "StandardByteDigester.java",360,-1,-1,-1 } true;
    if (i0 < 0) {
        assert { :sourceloc "StandardByteDigester.java",360,-1,-1,-1 } { :comment "thenblock" } true;
        goto block6;
    } else {
        assert { :sourceloc "StandardByteDigester.java",360,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",362,-1,-1,-1 } true;
    $z1 := 1;
    assert { :sourceloc "StandardByteDigester.java",362,-1,-1,-1 } true;
    goto block7;
  block6:
    assert { :sourceloc "StandardByteDigester.java",362,-1,-1,-1 } true;
    $z1 := 0;
  block7:
    assert { :sourceloc "StandardByteDigester.java",360,-1,-1,-1 } true;
    call $exception := org.jasypt.commons.CommonUtils$validateIsTrue$boolean_java.lang.String($z1, $StringConst2);
    assert { :sourceloc "StandardByteDigester.java",361,-1,-1,-1 } true;
    call $z0, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert { :sourceloc "StandardByteDigester.java",361,-1,-1,-1 } true;
    if ($z0 == 0) {
        assert { :sourceloc "StandardByteDigester.java",361,-1,-1,-1 } { :comment "thenblock" } true;
        goto block8;
    } else {
        assert { :sourceloc "StandardByteDigester.java",361,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",362,-1,-1,-1 } true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.AlreadyInitializedException);
    r2 := $fakelocal_0;
    assert { :sourceloc "StandardByteDigester.java",362,-1,-1,-1 } true;
    call $exception := org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$(r2);
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    if ($heap[r2,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.ClassCastException);
        $exception := $fakelocal_1;
        return;
    }
    r3 := r2;
    assert { :sourceloc "StandardByteDigester.java",362,-1,-1,-1 } true;
    $exception := r3;
    goto block11;
  block8:
    assert { :sourceloc "StandardByteDigester.java",364,-1,-1,-1 } true;
    $heap := $heap[r0,int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0 := i0];
    assert { :sourceloc "StandardByteDigester.java",365,-1,-1,-1 } true;
    if (i0 <= 0) {
        assert { :sourceloc "StandardByteDigester.java",365,-1,-1,-1 } { :comment "thenblock" } true;
        goto block9;
    } else {
        assert { :sourceloc "StandardByteDigester.java",365,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",367,-1,-1,-1 } true;
    $z2 := 1;
    assert { :sourceloc "StandardByteDigester.java",367,-1,-1,-1 } true;
    goto block10;
  block9:
    assert { :sourceloc "StandardByteDigester.java",367,-1,-1,-1 } true;
    $z2 := 0;
  block10:
    assert { :sourceloc "StandardByteDigester.java",365,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$useSalt0 := $z2];
    assert { :sourceloc "StandardByteDigester.java",366,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$saltSizeBytesSet0 := 1];
    assert { :sourceloc "StandardByteDigester.java",367,-1,-1,-1 } true;
    goto block11;
  block11:
    return;
}


implementation org.jasypt.digest.StandardByteDigester$setIterations$int($this:ref, $in_parameter__0:int) returns ($exception:ref){
    
var $z0 : int;    
var i0 : int;    
var $z1 : int;    
var r2 : ref;    
var $fakelocal_1 : ref;    
var r0 : ref;    
var r3 : ref;    
var $fakelocal_0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $heap[$this,$type] <: org.jasypt.digest.StandardByteDigester;
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__0;
    assert { :sourceloc "StandardByteDigester.java",386,-1,-1,-1 } true;
    if (i0 <= 0) {
        assert { :sourceloc "StandardByteDigester.java",386,-1,-1,-1 } { :comment "thenblock" } true;
        goto block12;
    } else {
        assert { :sourceloc "StandardByteDigester.java",386,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",388,-1,-1,-1 } true;
    $z1 := 1;
    assert { :sourceloc "StandardByteDigester.java",388,-1,-1,-1 } true;
    goto block13;
  block12:
    assert { :sourceloc "StandardByteDigester.java",388,-1,-1,-1 } true;
    $z1 := 0;
  block13:
    assert { :sourceloc "StandardByteDigester.java",386,-1,-1,-1 } true;
    call $exception := org.jasypt.commons.CommonUtils$validateIsTrue$boolean_java.lang.String($z1, $StringConst3);
    assert { :sourceloc "StandardByteDigester.java",387,-1,-1,-1 } true;
    call $z0, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert { :sourceloc "StandardByteDigester.java",387,-1,-1,-1 } true;
    if ($z0 == 0) {
        assert { :sourceloc "StandardByteDigester.java",387,-1,-1,-1 } { :comment "thenblock" } true;
        goto block14;
    } else {
        assert { :sourceloc "StandardByteDigester.java",387,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",388,-1,-1,-1 } true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.AlreadyInitializedException);
    r2 := $fakelocal_0;
    assert { :sourceloc "StandardByteDigester.java",388,-1,-1,-1 } true;
    call $exception := org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$(r2);
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    if ($heap[r2,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.ClassCastException);
        $exception := $fakelocal_1;
        return;
    }
    r3 := r2;
    assert { :sourceloc "StandardByteDigester.java",388,-1,-1,-1 } true;
    $exception := r3;
    goto block15;
  block14:
    assert { :sourceloc "StandardByteDigester.java",390,-1,-1,-1 } true;
    $heap := $heap[r0,int$org.jasypt.digest.StandardByteDigester$iterations0 := i0];
    assert { :sourceloc "StandardByteDigester.java",391,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$iterationsSet0 := 1];
    assert { :sourceloc "StandardByteDigester.java",392,-1,-1,-1 } true;
    goto block15;
  block15:
    return;
}


implementation org.jasypt.digest.StandardByteDigester$setSaltGenerator$org.jasypt.salt.SaltGenerator($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var r3 : ref;    
var $fakelocal_1 : ref;    
var $fakelocal_0 : ref;    
var r0 : ref;    
var $z0 : int;    
var r1 : ref;    
var r4 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $heap[$this,$type] <: org.jasypt.digest.StandardByteDigester;
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: org.jasypt.salt.SaltGenerator;
    $exception := $null;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "StandardByteDigester.java",406,-1,-1,-1 } true;
    call $exception := org.jasypt.commons.CommonUtils$validateNotNull$java.lang.Object_java.lang.String(r1, $StringConst4);
    assert { :sourceloc "StandardByteDigester.java",407,-1,-1,-1 } true;
    call $z0, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert { :sourceloc "StandardByteDigester.java",407,-1,-1,-1 } true;
    if ($z0 == 0) {
        assert { :sourceloc "StandardByteDigester.java",407,-1,-1,-1 } { :comment "thenblock" } true;
        goto block16;
    } else {
        assert { :sourceloc "StandardByteDigester.java",407,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",408,-1,-1,-1 } true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.AlreadyInitializedException);
    r3 := $fakelocal_0;
    assert { :sourceloc "StandardByteDigester.java",408,-1,-1,-1 } true;
    call $exception := org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$(r3);
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    if ($heap[r3,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.ClassCastException);
        $exception := $fakelocal_1;
        return;
    }
    r4 := r3;
    assert { :sourceloc "StandardByteDigester.java",408,-1,-1,-1 } true;
    $exception := r4;
    goto block17;
  block16:
    assert { :sourceloc "StandardByteDigester.java",410,-1,-1,-1 } true;
    $heap := $heap[r0,org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261 := r1];
    assert { :sourceloc "StandardByteDigester.java",411,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$saltGeneratorSet0 := 1];
    assert { :sourceloc "StandardByteDigester.java",412,-1,-1,-1 } true;
    goto block17;
  block17:
    return;
}


implementation org.jasypt.digest.StandardByteDigester$setProviderName$java.lang.String($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var r1 : ref;    
var $z0 : int;    
var r0 : ref;    
var r4 : ref;    
var $fakelocal_1 : ref;    
var r3 : ref;    
var $fakelocal_0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $heap[$this,$type] <: org.jasypt.digest.StandardByteDigester;
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "StandardByteDigester.java",443,-1,-1,-1 } true;
    call $exception := org.jasypt.commons.CommonUtils$validateNotNull$java.lang.Object_java.lang.String(r1, $StringConst5);
    assert { :sourceloc "StandardByteDigester.java",444,-1,-1,-1 } true;
    call $z0, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert { :sourceloc "StandardByteDigester.java",444,-1,-1,-1 } true;
    if ($z0 == 0) {
        assert { :sourceloc "StandardByteDigester.java",444,-1,-1,-1 } { :comment "thenblock" } true;
        goto block18;
    } else {
        assert { :sourceloc "StandardByteDigester.java",444,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",445,-1,-1,-1 } true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.AlreadyInitializedException);
    r3 := $fakelocal_0;
    assert { :sourceloc "StandardByteDigester.java",445,-1,-1,-1 } true;
    call $exception := org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$(r3);
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    if ($heap[r3,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.ClassCastException);
        $exception := $fakelocal_1;
        return;
    }
    r4 := r3;
    assert { :sourceloc "StandardByteDigester.java",445,-1,-1,-1 } true;
    $exception := r4;
    goto block19;
  block18:
    assert { :sourceloc "StandardByteDigester.java",447,-1,-1,-1 } true;
    $heap := $heap[r0,java.lang.String$org.jasypt.digest.StandardByteDigester$providerName262 := r1];
    assert { :sourceloc "StandardByteDigester.java",448,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$providerNameSet0 := 1];
    assert { :sourceloc "StandardByteDigester.java",449,-1,-1,-1 } true;
    goto block19;
  block19:
    return;
}


implementation org.jasypt.digest.StandardByteDigester$setProvider$java.security.Provider($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $fakelocal_0 : ref;    
var $z0 : int;    
var r4 : ref;    
var r3 : ref;    
var r1 : ref;    
var $fakelocal_1 : ref;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $heap[$this,$type] <: org.jasypt.digest.StandardByteDigester;
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.security.Provider;
    $exception := $null;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "StandardByteDigester.java",473,-1,-1,-1 } true;
    call $exception := org.jasypt.commons.CommonUtils$validateNotNull$java.lang.Object_java.lang.String(r1, $StringConst6);
    assert { :sourceloc "StandardByteDigester.java",474,-1,-1,-1 } true;
    call $z0, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert { :sourceloc "StandardByteDigester.java",474,-1,-1,-1 } true;
    if ($z0 == 0) {
        assert { :sourceloc "StandardByteDigester.java",474,-1,-1,-1 } { :comment "thenblock" } true;
        goto block20;
    } else {
        assert { :sourceloc "StandardByteDigester.java",474,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",475,-1,-1,-1 } true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.AlreadyInitializedException);
    r3 := $fakelocal_0;
    assert { :sourceloc "StandardByteDigester.java",475,-1,-1,-1 } true;
    call $exception := org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$(r3);
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    if ($heap[r3,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.ClassCastException);
        $exception := $fakelocal_1;
        return;
    }
    r4 := r3;
    assert { :sourceloc "StandardByteDigester.java",475,-1,-1,-1 } true;
    $exception := r4;
    goto block21;
  block20:
    assert { :sourceloc "StandardByteDigester.java",477,-1,-1,-1 } true;
    $heap := $heap[r0,java.security.Provider$org.jasypt.digest.StandardByteDigester$provider263 := r1];
    assert { :sourceloc "StandardByteDigester.java",478,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$providerSet0 := 1];
    assert { :sourceloc "StandardByteDigester.java",479,-1,-1,-1 } true;
    goto block21;
  block21:
    return;
}


implementation org.jasypt.digest.StandardByteDigester$setInvertPositionOfSaltInMessageBeforeDigesting$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref){
    
var z0 : int;    
var r2 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_1 : ref;    
var $z1 : int;    
var r0 : ref;    
var r3 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $heap[$this,$type] <: org.jasypt.digest.StandardByteDigester;
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    z0 := $in_parameter__0;
    assert { :sourceloc "StandardByteDigester.java",505,-1,-1,-1 } true;
    call $z1, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert { :sourceloc "StandardByteDigester.java",505,-1,-1,-1 } true;
    if ($z1 == 0) {
        assert { :sourceloc "StandardByteDigester.java",505,-1,-1,-1 } { :comment "thenblock" } true;
        goto block22;
    } else {
        assert { :sourceloc "StandardByteDigester.java",505,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",506,-1,-1,-1 } true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.AlreadyInitializedException);
    r2 := $fakelocal_0;
    assert { :sourceloc "StandardByteDigester.java",506,-1,-1,-1 } true;
    call $exception := org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$(r2);
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    if ($heap[r2,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.ClassCastException);
        $exception := $fakelocal_1;
        return;
    }
    r3 := r2;
    assert { :sourceloc "StandardByteDigester.java",506,-1,-1,-1 } true;
    $exception := r3;
    goto block23;
  block22:
    assert { :sourceloc "StandardByteDigester.java",508,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigesting0 := z0];
    assert { :sourceloc "StandardByteDigester.java",509,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigestingSet0 := 1];
    assert { :sourceloc "StandardByteDigester.java",511,-1,-1,-1 } true;
    goto block23;
  block23:
    return;
}


implementation org.jasypt.digest.StandardByteDigester$setInvertPositionOfPlainSaltInEncryptionResults$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref){
    
var $fakelocal_1 : ref;    
var r2 : ref;    
var z0 : int;    
var r0 : ref;    
var r3 : ref;    
var $z1 : int;    
var $fakelocal_0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $heap[$this,$type] <: org.jasypt.digest.StandardByteDigester;
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    z0 := $in_parameter__0;
    assert { :sourceloc "StandardByteDigester.java",537,-1,-1,-1 } true;
    call $z1, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert { :sourceloc "StandardByteDigester.java",537,-1,-1,-1 } true;
    if ($z1 == 0) {
        assert { :sourceloc "StandardByteDigester.java",537,-1,-1,-1 } { :comment "thenblock" } true;
        goto block24;
    } else {
        assert { :sourceloc "StandardByteDigester.java",537,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",538,-1,-1,-1 } true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.AlreadyInitializedException);
    r2 := $fakelocal_0;
    assert { :sourceloc "StandardByteDigester.java",538,-1,-1,-1 } true;
    call $exception := org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$(r2);
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    if ($heap[r2,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.ClassCastException);
        $exception := $fakelocal_1;
        return;
    }
    r3 := r2;
    assert { :sourceloc "StandardByteDigester.java",538,-1,-1,-1 } true;
    $exception := r3;
    goto block25;
  block24:
    assert { :sourceloc "StandardByteDigester.java",540,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResults0 := z0];
    assert { :sourceloc "StandardByteDigester.java",541,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResultsSet0 := 1];
    assert { :sourceloc "StandardByteDigester.java",543,-1,-1,-1 } true;
    goto block25;
  block25:
    return;
}


implementation org.jasypt.digest.StandardByteDigester$setUseLenientSaltSizeCheck$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref){
    
var r2 : ref;    
var $z1 : int;    
var r0 : ref;    
var z0 : int;    
var r3 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $heap[$this,$type] <: org.jasypt.digest.StandardByteDigester;
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    z0 := $in_parameter__0;
    assert { :sourceloc "StandardByteDigester.java",587,-1,-1,-1 } true;
    call $z1, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert { :sourceloc "StandardByteDigester.java",587,-1,-1,-1 } true;
    if ($z1 == 0) {
        assert { :sourceloc "StandardByteDigester.java",587,-1,-1,-1 } { :comment "thenblock" } true;
        goto block26;
    } else {
        assert { :sourceloc "StandardByteDigester.java",587,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",588,-1,-1,-1 } true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.AlreadyInitializedException);
    r2 := $fakelocal_0;
    assert { :sourceloc "StandardByteDigester.java",588,-1,-1,-1 } true;
    call $exception := org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$(r2);
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    if ($heap[r2,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.ClassCastException);
        $exception := $fakelocal_1;
        return;
    }
    r3 := r2;
    assert { :sourceloc "StandardByteDigester.java",588,-1,-1,-1 } true;
    $exception := r3;
    goto block27;
  block26:
    assert { :sourceloc "StandardByteDigester.java",590,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheck0 := z0];
    assert { :sourceloc "StandardByteDigester.java",591,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheckSet0 := 1];
    assert { :sourceloc "StandardByteDigester.java",593,-1,-1,-1 } true;
    goto block27;
  block27:
    return;
}


implementation org.jasypt.digest.StandardByteDigester$cloneDigester$($this:ref) returns ($return:ref, $exception:ref){
    
var $fakelocal_0 : ref;    
var $r3 : ref;    
var r0 : ref;    
var $z4 : int;    
var $r2 : ref;    
var $z0 : int;    
var $z1 : int;    
var $r6 : ref;    
var $i0 : int;    
var $r7 : ref;    
var $i1 : int;    
var $r10 : ref;    
var $z3 : int;    
var $r8 : ref;    
var $r9 : ref;    
var $r5 : ref;    
var $r4 : ref;    
var $z2 : int;    
var r1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $heap[$this,$type] <: org.jasypt.digest.StandardByteDigester;
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$return,$type] <: org.jasypt.digest.StandardByteDigester;
    $exception := $null;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StandardByteDigester.java",606,-1,-1,-1 } true;
    call $z0, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert { :sourceloc "StandardByteDigester.java",606,-1,-1,-1 } true;
    if ($z0 != 0) {
        assert { :sourceloc "StandardByteDigester.java",606,-1,-1,-1 } { :comment "thenblock" } true;
        goto block28;
    } else {
        assert { :sourceloc "StandardByteDigester.java",606,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",607,-1,-1,-1 } true;
    call $exception := org.jasypt.digest.StandardByteDigester$initialize$(r0);
  block28:
    assert { :sourceloc "StandardByteDigester.java",610,-1,-1,-1 } true;
    call $fakelocal_0 := $new(org.jasypt.digest.StandardByteDigester);
    $r2 := $fakelocal_0;
    assert { :sourceloc "StandardByteDigester.java",610,-1,-1,-1 } true;
    call $exception := org.jasypt.digest.StandardByteDigester$$la$init$ra$$($r2);
    assert { :sourceloc "StandardByteDigester.java",610,-1,-1,-1 } true;
    r1 := $r2;
    assert { :sourceloc "StandardByteDigester.java",611,-1,-1,-1 } true;
    $r3 := $heap[r0,java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260];
    assert { :sourceloc "StandardByteDigester.java",611,-1,-1,-1 } true;
    call $z1, $exception := org.jasypt.commons.CommonUtils$isNotEmpty$java.lang.String($r3);
    assert { :sourceloc "StandardByteDigester.java",611,-1,-1,-1 } true;
    if ($z1 == 0) {
        assert { :sourceloc "StandardByteDigester.java",611,-1,-1,-1 } { :comment "thenblock" } true;
        goto block29;
    } else {
        assert { :sourceloc "StandardByteDigester.java",611,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",612,-1,-1,-1 } true;
    $r10 := $heap[r0,java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260];
    assert { :sourceloc "StandardByteDigester.java",612,-1,-1,-1 } true;
    call $exception := org.jasypt.digest.StandardByteDigester$setAlgorithm$java.lang.String(r1, $r10);
  block29:
    assert { :sourceloc "StandardByteDigester.java",614,-1,-1,-1 } true;
    $z2 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResults0];
    assert { :sourceloc "StandardByteDigester.java",614,-1,-1,-1 } true;
    call $exception := org.jasypt.digest.StandardByteDigester$setInvertPositionOfPlainSaltInEncryptionResults$boolean(r1, $z2);
    assert { :sourceloc "StandardByteDigester.java",615,-1,-1,-1 } true;
    $z3 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigesting0];
    assert { :sourceloc "StandardByteDigester.java",615,-1,-1,-1 } true;
    call $exception := org.jasypt.digest.StandardByteDigester$setInvertPositionOfSaltInMessageBeforeDigesting$boolean(r1, $z3);
    assert { :sourceloc "StandardByteDigester.java",616,-1,-1,-1 } true;
    $i0 := $heap[r0,int$org.jasypt.digest.StandardByteDigester$iterations0];
    assert { :sourceloc "StandardByteDigester.java",616,-1,-1,-1 } true;
    call $exception := org.jasypt.digest.StandardByteDigester$setIterations$int(r1, $i0);
    assert { :sourceloc "StandardByteDigester.java",617,-1,-1,-1 } true;
    $r4 := $heap[r0,java.security.Provider$org.jasypt.digest.StandardByteDigester$provider263];
    assert { :sourceloc "StandardByteDigester.java",617,-1,-1,-1 } true;
    if ($r4 == $null) {
        assert { :sourceloc "StandardByteDigester.java",617,-1,-1,-1 } { :comment "thenblock" } true;
        goto block30;
    } else {
        assert { :sourceloc "StandardByteDigester.java",617,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",618,-1,-1,-1 } true;
    $r9 := $heap[r0,java.security.Provider$org.jasypt.digest.StandardByteDigester$provider263];
    assert { :sourceloc "StandardByteDigester.java",618,-1,-1,-1 } true;
    call $exception := org.jasypt.digest.StandardByteDigester$setProvider$java.security.Provider(r1, $r9);
  block30:
    assert { :sourceloc "StandardByteDigester.java",620,-1,-1,-1 } true;
    $r5 := $heap[r0,java.lang.String$org.jasypt.digest.StandardByteDigester$providerName262];
    assert { :sourceloc "StandardByteDigester.java",620,-1,-1,-1 } true;
    if ($r5 == $null) {
        assert { :sourceloc "StandardByteDigester.java",620,-1,-1,-1 } { :comment "thenblock" } true;
        goto block31;
    } else {
        assert { :sourceloc "StandardByteDigester.java",620,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",621,-1,-1,-1 } true;
    $r8 := $heap[r0,java.lang.String$org.jasypt.digest.StandardByteDigester$providerName262];
    assert { :sourceloc "StandardByteDigester.java",621,-1,-1,-1 } true;
    call $exception := org.jasypt.digest.StandardByteDigester$setProviderName$java.lang.String(r1, $r8);
  block31:
    assert { :sourceloc "StandardByteDigester.java",623,-1,-1,-1 } true;
    $r6 := $heap[r0,org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261];
    assert { :sourceloc "StandardByteDigester.java",623,-1,-1,-1 } true;
    if ($r6 == $null) {
        assert { :sourceloc "StandardByteDigester.java",623,-1,-1,-1 } { :comment "thenblock" } true;
        goto block32;
    } else {
        assert { :sourceloc "StandardByteDigester.java",623,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",624,-1,-1,-1 } true;
    $r7 := $heap[r0,org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261];
    assert { :sourceloc "StandardByteDigester.java",624,-1,-1,-1 } true;
    call $exception := org.jasypt.digest.StandardByteDigester$setSaltGenerator$org.jasypt.salt.SaltGenerator(r1, $r7);
  block32:
    assert { :sourceloc "StandardByteDigester.java",626,-1,-1,-1 } true;
    $i1 := $heap[r0,int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0];
    assert { :sourceloc "StandardByteDigester.java",626,-1,-1,-1 } true;
    call $exception := org.jasypt.digest.StandardByteDigester$setSaltSizeBytes$int(r1, $i1);
    assert { :sourceloc "StandardByteDigester.java",627,-1,-1,-1 } true;
    $z4 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheck0];
    assert { :sourceloc "StandardByteDigester.java",627,-1,-1,-1 } true;
    call $exception := org.jasypt.digest.StandardByteDigester$setUseLenientSaltSizeCheck$boolean(r1, $z4);
    assert { :sourceloc "StandardByteDigester.java",629,-1,-1,-1 } true;
    $return := r1;
    goto block33;
  block33:
    return;
}


implementation org.jasypt.digest.StandardByteDigester$isInitialized$($this:ref) returns ($return:int, $exception:ref){
    
var r0 : ref;    
var $z0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $heap[$this,$type] <: org.jasypt.digest.StandardByteDigester;
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StandardByteDigester.java",658,-1,-1,-1 } true;
    $z0 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$initialized0];
    assert { :sourceloc "StandardByteDigester.java",658,-1,-1,-1 } true;
    $return := $z0;
    goto block34;
  block34:
    return;
}


implementation org.jasypt.digest.StandardByteDigester$initialize$($this:ref) returns ($exception:ref){
    
var $z15 : int;    
var r63 : ref;    
var $r27 : ref;    
var $r14 : ref;    
var $r12 : ref;    
var r53 : ref;    
var $z1 : int;    
var $fakelocal_10 : ref;    
var $fakelocal_11 : ref;    
var $fakelocal_15 : ref;    
var $fakelocal_21 : ref;    
var $z2 : int;    
var $fakelocal_20 : ref;    
var $r51 : ref;    
var $r25 : ref;    
var $r11 : ref;    
var $z11 : int;    
var $r41 : ref;    
var $r20 : ref;    
var $r23 : ref;    
var $r15 : ref;    
var r6 : ref;    
var $fakelocal_18 : ref;    
var $fakelocal_29 : ref;    
var r67 : ref;    
var r58 : ref;    
var $z10 : int;    
var $fakelocal_13 : ref;    
var $r37 : ref;    
var r66 : ref;    
var $z3 : int;    
var $fakelocal_19 : ref;    
var $z6 : int;    
var $fakelocal_3 : ref;    
var $r45 : ref;    
var $z7 : int;    
var $i4 : int;    
var $fakelocal_2 : ref;    
var $z16 : int;    
var $r29 : ref;    
var $fakelocal_16 : ref;    
var $r35 : ref;    
var r68 : ref;    
var $r46 : ref;    
var $r28 : ref;    
var $r49 : ref;    
var $fakelocal_26 : ref;    
var $r26 : ref;    
var $fakelocal_14 : ref;    
var $fakelocal_17 : ref;    
var $r18 : ref;    
var r59 : ref;    
var r0 : ref;    
var r7 : ref;    
var $fakelocal_4 : ref;    
var r64 : ref;    
var $fakelocal_23 : ref;    
var $r10 : ref;    
var $fakelocal_5 : ref;    
var $r47 : ref;    
var r60 : ref;    
var $r48 : ref;    
var $z4 : int;    
var $i2 : int;    
var $z14 : int;    
var r2 : ref;    
var r1 : ref;    
var r5 : ref;    
var $fakelocal_1 : ref;    
var $r44 : ref;    
var $i1 : int;    
var $fakelocal_12 : ref;    
var $z12 : int;    
var $r33 : ref;    
var $fakelocal_9 : ref;    
var $r43 : ref;    
var $r54 : ref;    
var $fakelocal_22 : ref;    
var $fakelocal_24 : ref;    
var $fakelocal_27 : ref;    
var $r57 : ref;    
var $fakelocal_25 : ref;    
var r69 : ref;    
var $i0 : int;    
var $z5 : int;    
var r3 : ref;    
var $z0 : int;    
var $z13 : int;    
var $r56 : ref;    
var $fakelocal_28 : ref;    
var $r38 : ref;    
var $i3 : int;    
var $r21 : ref;    
var r65 : ref;    
var $z8 : int;    
var $z9 : int;    
var $r13 : ref;    
var $r42 : ref;    
var $fakelocal_7 : ref;    
var $r40 : ref;    
var $fakelocal_8 : ref;    
var $r55 : ref;    
var $r36 : ref;    
var $r34 : ref;    
var r4 : ref;    
var $fakelocal_0 : ref;    
var r8 : ref;    
var r61 : ref;    
var $i5 : int;    
var r62 : ref;    
var $r32 : ref;    
var $fakelocal_6 : ref;    
var $r19 : ref;    
var r70 : ref;    
var $r9 : ref;    
var $r22 : ref;    
var $r24 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $heap[$this,$type] <: org.jasypt.digest.StandardByteDigester;
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StandardByteDigester.java",697,-1,-1,-1 } true;
    $z0 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$initialized0];
    assert { :sourceloc "StandardByteDigester.java",697,-1,-1,-1 } true;
    if ($z0 != 0) {
        assert { :sourceloc "StandardByteDigester.java",697,-1,-1,-1 } { :comment "thenblock" } true;
        goto block35;
    } else {
        assert { :sourceloc "StandardByteDigester.java",697,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",704,-1,-1,-1 } true;
    $r9 := $heap[r0,org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264];
    assert { :sourceloc "StandardByteDigester.java",704,-1,-1,-1 } true;
    if ($r9 == $null) {
        assert { :sourceloc "StandardByteDigester.java",704,-1,-1,-1 } { :comment "thenblock" } true;
        goto block36;
    } else {
        assert { :sourceloc "StandardByteDigester.java",704,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",706,-1,-1,-1 } true;
    $r40 := $heap[r0,org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264];
    assert { :sourceloc "StandardByteDigester.java",706,-1,-1,-1 } true;
    if ($r40 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_0;
        return;
    }
    call r53, $exception := org.jasypt.digest.config.DigesterConfig$getAlgorithm$($r40);
    assert { :sourceloc "StandardByteDigester.java",707,-1,-1,-1 } true;
    if (r53 == $null) {
        assert { :sourceloc "StandardByteDigester.java",707,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block37;
    } else {
        assert { :sourceloc "StandardByteDigester.java",707,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",708,-1,-1,-1 } true;
    call $exception := org.jasypt.commons.CommonUtils$validateNotEmpty$java.lang.String_java.lang.String(r53, $StringConst1);
  block37:
    assert { :sourceloc "StandardByteDigester.java",711,-1,-1,-1 } true;
    $r41 := $heap[r0,org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264];
    assert { :sourceloc "StandardByteDigester.java",711,-1,-1,-1 } true;
    if ($r41 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_1;
        return;
    }
    call r1, $exception := org.jasypt.digest.config.DigesterConfig$getSaltSizeBytes$($r41);
    assert { :sourceloc "StandardByteDigester.java",712,-1,-1,-1 } true;
    if (r1 == $null) {
        assert { :sourceloc "StandardByteDigester.java",712,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block38;
    } else {
        assert { :sourceloc "StandardByteDigester.java",712,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",713,-1,-1,-1 } true;
    call $i3, $exception := java.lang.Integer$intValue$(r1);
    assert { :sourceloc "StandardByteDigester.java",713,-1,-1,-1 } true;
    if ($i3 < 0) {
        assert { :sourceloc "StandardByteDigester.java",713,-1,-1,-1 } { :comment "thenblock" } true;
        goto block39;
    } else {
        assert { :sourceloc "StandardByteDigester.java",713,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",718,-1,-1,-1 } true;
    $z12 := 1;
    assert { :sourceloc "StandardByteDigester.java",718,-1,-1,-1 } true;
    goto block40;
  block39:
    assert { :sourceloc "StandardByteDigester.java",718,-1,-1,-1 } true;
    $z12 := 0;
  block40:
    assert { :sourceloc "StandardByteDigester.java",713,-1,-1,-1 } true;
    call $exception := org.jasypt.commons.CommonUtils$validateIsTrue$boolean_java.lang.String($z12, $StringConst2);
  block38:
    assert { :sourceloc "StandardByteDigester.java",717,-1,-1,-1 } true;
    $r42 := $heap[r0,org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264];
    assert { :sourceloc "StandardByteDigester.java",717,-1,-1,-1 } true;
    if ($r42 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_2;
        return;
    }
    call r2, $exception := org.jasypt.digest.config.DigesterConfig$getIterations$($r42);
    assert { :sourceloc "StandardByteDigester.java",718,-1,-1,-1 } true;
    if (r2 == $null) {
        assert { :sourceloc "StandardByteDigester.java",718,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block41;
    } else {
        assert { :sourceloc "StandardByteDigester.java",718,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",719,-1,-1,-1 } true;
    call $i2, $exception := java.lang.Integer$intValue$(r2);
    assert { :sourceloc "StandardByteDigester.java",719,-1,-1,-1 } true;
    if ($i2 <= 0) {
        assert { :sourceloc "StandardByteDigester.java",719,-1,-1,-1 } { :comment "thenblock" } true;
        goto block42;
    } else {
        assert { :sourceloc "StandardByteDigester.java",719,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",726,-1,-1,-1 } true;
    $z13 := 1;
    assert { :sourceloc "StandardByteDigester.java",726,-1,-1,-1 } true;
    goto block43;
  block42:
    assert { :sourceloc "StandardByteDigester.java",726,-1,-1,-1 } true;
    $z13 := 0;
  block43:
    assert { :sourceloc "StandardByteDigester.java",719,-1,-1,-1 } true;
    call $exception := org.jasypt.commons.CommonUtils$validateIsTrue$boolean_java.lang.String($z13, $StringConst3);
  block41:
    assert { :sourceloc "StandardByteDigester.java",723,-1,-1,-1 } true;
    $r43 := $heap[r0,org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264];
    assert { :sourceloc "StandardByteDigester.java",723,-1,-1,-1 } true;
    if ($r43 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_3;
        return;
    }
    call r3, $exception := org.jasypt.digest.config.DigesterConfig$getSaltGenerator$($r43);
    assert { :sourceloc "StandardByteDigester.java",725,-1,-1,-1 } true;
    $r44 := $heap[r0,org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264];
    assert { :sourceloc "StandardByteDigester.java",725,-1,-1,-1 } true;
    if ($r44 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_4;
        return;
    }
    call r4, $exception := org.jasypt.digest.config.DigesterConfig$getProviderName$($r44);
    assert { :sourceloc "StandardByteDigester.java",726,-1,-1,-1 } true;
    if (r4 == $null) {
        assert { :sourceloc "StandardByteDigester.java",726,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block44;
    } else {
        assert { :sourceloc "StandardByteDigester.java",726,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",727,-1,-1,-1 } true;
    call $exception := org.jasypt.commons.CommonUtils$validateNotEmpty$java.lang.String_java.lang.String(r4, $StringConst7);
  block44:
    assert { :sourceloc "StandardByteDigester.java",730,-1,-1,-1 } true;
    $r45 := $heap[r0,org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264];
    assert { :sourceloc "StandardByteDigester.java",730,-1,-1,-1 } true;
    if ($r45 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_5;
        return;
    }
    call r5, $exception := org.jasypt.digest.config.DigesterConfig$getProvider$($r45);
    assert { :sourceloc "StandardByteDigester.java",733,-1,-1,-1 } true;
    $r46 := $heap[r0,org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264];
    assert { :sourceloc "StandardByteDigester.java",733,-1,-1,-1 } true;
    if ($r46 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_6 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_6;
        return;
    }
    call r6, $exception := org.jasypt.digest.config.DigesterConfig$getInvertPositionOfSaltInMessageBeforeDigesting$($r46);
    assert { :sourceloc "StandardByteDigester.java",736,-1,-1,-1 } true;
    $r47 := $heap[r0,org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264];
    assert { :sourceloc "StandardByteDigester.java",736,-1,-1,-1 } true;
    if ($r47 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_7 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_7;
        return;
    }
    call r7, $exception := org.jasypt.digest.config.DigesterConfig$getInvertPositionOfPlainSaltInEncryptionResults$($r47);
    assert { :sourceloc "StandardByteDigester.java",739,-1,-1,-1 } true;
    $r48 := $heap[r0,org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264];
    assert { :sourceloc "StandardByteDigester.java",739,-1,-1,-1 } true;
    if ($r48 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_8 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_8;
        return;
    }
    call r8, $exception := org.jasypt.digest.config.DigesterConfig$getUseLenientSaltSizeCheck$($r48);
    assert { :sourceloc "StandardByteDigester.java",742,-1,-1,-1 } { :clone } true;
    $z3 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$algorithmSet0];
    assert { :sourceloc "StandardByteDigester.java",742,-1,-1,-1 } { :clone } true;
    if ($z3 != 0) {
        assert { :sourceloc "StandardByteDigester.java",742,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block45;
    } else {
        assert { :sourceloc "StandardByteDigester.java",742,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",748,-1,-1,-1 } { :clone } true;
    if (r53 != $null) {
        assert { :sourceloc "StandardByteDigester.java",748,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block46;
    } else {
        assert { :sourceloc "StandardByteDigester.java",748,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
  block45:
    assert { :sourceloc "StandardByteDigester.java",742,-1,-1,-1 } true;
    $r54 := $heap[r0,java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260];
    assert { :sourceloc "StandardByteDigester.java",742,-1,-1,-1 } true;
    goto block47;
  block46:
    assert { :sourceloc "StandardByteDigester.java",748,-1,-1,-1 } true;
    $r54 := r53;
  block47:
    assert { :sourceloc "StandardByteDigester.java",742,-1,-1,-1 } { :clone } true;
    $heap := $heap[r0,java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260 := $r54];
    assert { :sourceloc "StandardByteDigester.java",745,-1,-1,-1 } { :clone } true;
    $z4 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$saltSizeBytesSet0];
    assert { :sourceloc "StandardByteDigester.java",745,-1,-1,-1 } { :clone } true;
    if ($z4 != 0) {
        assert { :sourceloc "StandardByteDigester.java",745,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block48;
    } else {
        assert { :sourceloc "StandardByteDigester.java",745,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",751,-1,-1,-1 } { :clone } true;
    if (r1 != $null) {
        assert { :sourceloc "StandardByteDigester.java",751,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block49;
    } else {
        assert { :sourceloc "StandardByteDigester.java",751,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
  block48:
    assert { :sourceloc "StandardByteDigester.java",745,-1,-1,-1 } true;
    $i4 := $heap[r0,int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0];
    assert { :sourceloc "StandardByteDigester.java",745,-1,-1,-1 } true;
    goto block50;
  block49:
    assert { :sourceloc "StandardByteDigester.java",747,-1,-1,-1 } true;
    call $i4, $exception := java.lang.Integer$intValue$(r1);
  block50:
    assert { :sourceloc "StandardByteDigester.java",745,-1,-1,-1 } { :clone } true;
    $heap := $heap[r0,int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0 := $i4];
    assert { :sourceloc "StandardByteDigester.java",748,-1,-1,-1 } { :clone } true;
    $z5 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$iterationsSet0];
    assert { :sourceloc "StandardByteDigester.java",748,-1,-1,-1 } { :clone } true;
    if ($z5 != 0) {
        assert { :sourceloc "StandardByteDigester.java",748,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block51;
    } else {
        assert { :sourceloc "StandardByteDigester.java",748,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",754,-1,-1,-1 } { :clone } true;
    if (r2 != $null) {
        assert { :sourceloc "StandardByteDigester.java",754,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block52;
    } else {
        assert { :sourceloc "StandardByteDigester.java",754,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
  block51:
    assert { :sourceloc "StandardByteDigester.java",748,-1,-1,-1 } true;
    $i5 := $heap[r0,int$org.jasypt.digest.StandardByteDigester$iterations0];
    assert { :sourceloc "StandardByteDigester.java",748,-1,-1,-1 } true;
    goto block53;
  block52:
    assert { :sourceloc "StandardByteDigester.java",750,-1,-1,-1 } true;
    call $i5, $exception := java.lang.Integer$intValue$(r2);
  block53:
    assert { :sourceloc "StandardByteDigester.java",748,-1,-1,-1 } true;
    $heap := $heap[r0,int$org.jasypt.digest.StandardByteDigester$iterations0 := $i5];
    assert { :sourceloc "StandardByteDigester.java",751,-1,-1,-1 } { :clone } true;
    $z6 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$saltGeneratorSet0];
    assert { :sourceloc "StandardByteDigester.java",751,-1,-1,-1 } { :clone } true;
    if ($z6 != 0) {
        assert { :sourceloc "StandardByteDigester.java",751,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block54;
    } else {
        assert { :sourceloc "StandardByteDigester.java",751,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",757,-1,-1,-1 } { :clone } true;
    if (r3 != $null) {
        assert { :sourceloc "StandardByteDigester.java",757,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block55;
    } else {
        assert { :sourceloc "StandardByteDigester.java",757,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
  block54:
    assert { :sourceloc "StandardByteDigester.java",751,-1,-1,-1 } true;
    $r55 := $heap[r0,org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261];
    assert { :sourceloc "StandardByteDigester.java",751,-1,-1,-1 } true;
    goto block56;
  block55:
    assert { :sourceloc "StandardByteDigester.java",757,-1,-1,-1 } true;
    $r55 := r3;
  block56:
    assert { :sourceloc "StandardByteDigester.java",751,-1,-1,-1 } true;
    $heap := $heap[r0,org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261 := $r55];
    assert { :sourceloc "StandardByteDigester.java",754,-1,-1,-1 } { :clone } true;
    $z7 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$providerNameSet0];
    assert { :sourceloc "StandardByteDigester.java",754,-1,-1,-1 } { :clone } true;
    if ($z7 != 0) {
        assert { :sourceloc "StandardByteDigester.java",754,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block57;
    } else {
        assert { :sourceloc "StandardByteDigester.java",754,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",760,-1,-1,-1 } { :clone } true;
    if (r4 != $null) {
        assert { :sourceloc "StandardByteDigester.java",760,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block58;
    } else {
        assert { :sourceloc "StandardByteDigester.java",760,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
  block57:
    assert { :sourceloc "StandardByteDigester.java",754,-1,-1,-1 } true;
    $r56 := $heap[r0,java.lang.String$org.jasypt.digest.StandardByteDigester$providerName262];
    assert { :sourceloc "StandardByteDigester.java",754,-1,-1,-1 } true;
    goto block59;
  block58:
    assert { :sourceloc "StandardByteDigester.java",760,-1,-1,-1 } true;
    $r56 := r4;
  block59:
    assert { :sourceloc "StandardByteDigester.java",754,-1,-1,-1 } true;
    $heap := $heap[r0,java.lang.String$org.jasypt.digest.StandardByteDigester$providerName262 := $r56];
    assert { :sourceloc "StandardByteDigester.java",757,-1,-1,-1 } { :clone } true;
    $z8 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$providerSet0];
    assert { :sourceloc "StandardByteDigester.java",757,-1,-1,-1 } { :clone } true;
    if ($z8 != 0) {
        assert { :sourceloc "StandardByteDigester.java",757,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block60;
    } else {
        assert { :sourceloc "StandardByteDigester.java",757,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",763,-1,-1,-1 } { :clone } true;
    if (r5 != $null) {
        assert { :sourceloc "StandardByteDigester.java",763,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block61;
    } else {
        assert { :sourceloc "StandardByteDigester.java",763,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
  block60:
    assert { :sourceloc "StandardByteDigester.java",757,-1,-1,-1 } true;
    $r57 := $heap[r0,java.security.Provider$org.jasypt.digest.StandardByteDigester$provider263];
    assert { :sourceloc "StandardByteDigester.java",757,-1,-1,-1 } true;
    goto block62;
  block61:
    assert { :sourceloc "StandardByteDigester.java",763,-1,-1,-1 } true;
    $r57 := r5;
  block62:
    assert { :sourceloc "StandardByteDigester.java",757,-1,-1,-1 } true;
    $heap := $heap[r0,java.security.Provider$org.jasypt.digest.StandardByteDigester$provider263 := $r57];
    assert { :sourceloc "StandardByteDigester.java",760,-1,-1,-1 } { :clone } true;
    $z9 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigestingSet0];
    assert { :sourceloc "StandardByteDigester.java",760,-1,-1,-1 } { :clone } true;
    if ($z9 != 0) {
        assert { :sourceloc "StandardByteDigester.java",760,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block63;
    } else {
        assert { :sourceloc "StandardByteDigester.java",760,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",766,-1,-1,-1 } { :clone } true;
    if (r6 != $null) {
        assert { :sourceloc "StandardByteDigester.java",766,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block64;
    } else {
        assert { :sourceloc "StandardByteDigester.java",766,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
  block63:
    assert { :sourceloc "StandardByteDigester.java",760,-1,-1,-1 } true;
    $z14 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigesting0];
    assert { :sourceloc "StandardByteDigester.java",760,-1,-1,-1 } true;
    goto block65;
  block64:
    assert { :sourceloc "StandardByteDigester.java",762,-1,-1,-1 } true;
    call $z14, $exception := java.lang.Boolean$booleanValue$(r6);
  block65:
    assert { :sourceloc "StandardByteDigester.java",760,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigesting0 := $z14];
    assert { :sourceloc "StandardByteDigester.java",763,-1,-1,-1 } { :clone } true;
    $z10 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResultsSet0];
    assert { :sourceloc "StandardByteDigester.java",763,-1,-1,-1 } { :clone } true;
    if ($z10 != 0) {
        assert { :sourceloc "StandardByteDigester.java",763,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block66;
    } else {
        assert { :sourceloc "StandardByteDigester.java",763,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",776,-1,-1,-1 } { :clone } true;
    if (r7 != $null) {
        assert { :sourceloc "StandardByteDigester.java",776,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block67;
    } else {
        assert { :sourceloc "StandardByteDigester.java",776,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
  block66:
    assert { :sourceloc "StandardByteDigester.java",763,-1,-1,-1 } true;
    $z15 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResults0];
    assert { :sourceloc "StandardByteDigester.java",763,-1,-1,-1 } true;
    goto block68;
  block67:
    assert { :sourceloc "StandardByteDigester.java",765,-1,-1,-1 } true;
    call $z15, $exception := java.lang.Boolean$booleanValue$(r7);
  block68:
    assert { :sourceloc "StandardByteDigester.java",763,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResults0 := $z15];
    assert { :sourceloc "StandardByteDigester.java",766,-1,-1,-1 } { :clone } true;
    $z11 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheckSet0];
    assert { :sourceloc "StandardByteDigester.java",766,-1,-1,-1 } { :clone } true;
    if ($z11 != 0) {
        assert { :sourceloc "StandardByteDigester.java",766,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block69;
    } else {
        assert { :sourceloc "StandardByteDigester.java",766,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",776,-1,-1,-1 } { :clone } true;
    if (r8 != $null) {
        assert { :sourceloc "StandardByteDigester.java",776,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block70;
    } else {
        assert { :sourceloc "StandardByteDigester.java",776,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
  block69:
    assert { :sourceloc "StandardByteDigester.java",766,-1,-1,-1 } true;
    $z16 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheck0];
    assert { :sourceloc "StandardByteDigester.java",766,-1,-1,-1 } true;
    goto block71;
  block70:
    assert { :sourceloc "StandardByteDigester.java",768,-1,-1,-1 } true;
    call $z16, $exception := java.lang.Boolean$booleanValue$(r8);
  block71:
    assert { :sourceloc "StandardByteDigester.java",766,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheck0 := $z16];
  block36:
    assert { :sourceloc "StandardByteDigester.java",776,-1,-1,-1 } { :clone } true;
    $r10 := $heap[r0,org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261];
    assert { :sourceloc "StandardByteDigester.java",776,-1,-1,-1 } { :clone } true;
    if ($r10 != $null) {
        assert { :sourceloc "StandardByteDigester.java",776,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block72;
    } else {
        assert { :sourceloc "StandardByteDigester.java",776,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",777,-1,-1,-1 } true;
    call $fakelocal_9 := $new(org.jasypt.salt.RandomSaltGenerator);
    r60 := $fakelocal_9;
    assert { :sourceloc "StandardByteDigester.java",777,-1,-1,-1 } true;
    call $exception := org.jasypt.salt.RandomSaltGenerator$$la$init$ra$$(r60);
    assert { :sourceloc "StandardByteDigester.java",777,-1,-1,-1 } true;
    $heap := $heap[r0,org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261 := r60];
  block72:
    assert { :sourceloc "StandardByteDigester.java",785,-1,-1,-1 } true;
    $z1 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheck0];
    assert { :sourceloc "StandardByteDigester.java",785,-1,-1,-1 } true;
    if ($z1 == 0) {
        assert { :sourceloc "StandardByteDigester.java",785,-1,-1,-1 } { :comment "thenblock" } true;
        goto block73;
    } else {
        assert { :sourceloc "StandardByteDigester.java",785,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",786,-1,-1,-1 } true;
    $r29 := $heap[r0,org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261];
    assert { :sourceloc "StandardByteDigester.java",786,-1,-1,-1 } true;
    if ($r29 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_10 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_10;
        return;
    }
    call $z2, $exception := org.jasypt.salt.SaltGenerator$includePlainSaltInEncryptionResults$($r29);
    assert { :sourceloc "StandardByteDigester.java",786,-1,-1,-1 } true;
    if ($z2 != 0) {
        assert { :sourceloc "StandardByteDigester.java",786,-1,-1,-1 } { :comment "thenblock" } true;
        goto block73;
    } else {
        assert { :sourceloc "StandardByteDigester.java",786,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",787,-1,-1,-1 } true;
    call $fakelocal_11 := $new(org.jasypt.exceptions.EncryptionInitializationException);
    r62 := $fakelocal_11;
    assert { :sourceloc "StandardByteDigester.java",787,-1,-1,-1 } true;
    call $fakelocal_12 := $new(java.lang.StringBuilder);
    r61 := $fakelocal_12;
    assert { :sourceloc "StandardByteDigester.java",787,-1,-1,-1 } true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$(r61);
    assert { :sourceloc "StandardByteDigester.java",787,-1,-1,-1 } true;
    call $r32, $exception := java.lang.StringBuilder$append$java.lang.String(r61, $StringConst8);
    assert { :sourceloc "StandardByteDigester.java",789,-1,-1,-1 } true;
    $r33 := $heap[r0,org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261];
    assert { :sourceloc "StandardByteDigester.java",789,-1,-1,-1 } true;
    if ($r33 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_13 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_13;
        return;
    }
    call $r34, $exception := java.lang.Object$getClass$($r33);
    assert { :sourceloc "StandardByteDigester.java",789,-1,-1,-1 } true;
    if ($r34 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_14 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_14;
        return;
    }
    call $r35, $exception := java.lang.Class$getName$($r34);
    assert { :sourceloc "StandardByteDigester.java",789,-1,-1,-1 } true;
    if ($r32 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_15 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_15;
        return;
    }
    call $r36, $exception := java.lang.StringBuilder$append$java.lang.String($r32, $r35);
    assert { :sourceloc "StandardByteDigester.java",789,-1,-1,-1 } true;
    if ($r36 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_16 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_16;
        return;
    }
    call $r37, $exception := java.lang.StringBuilder$append$java.lang.String($r36, $StringConst9);
    assert { :sourceloc "StandardByteDigester.java",789,-1,-1,-1 } true;
    if ($r37 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_17 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_17;
        return;
    }
    call $r38, $exception := java.lang.StringBuilder$toString$($r37);
    assert { :sourceloc "StandardByteDigester.java",789,-1,-1,-1 } true;
    call $exception := org.jasypt.exceptions.EncryptionInitializationException$$la$init$ra$$java.lang.String(r62, $r38);
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    if ($heap[r62,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_18 := $new(java.lang.ClassCastException);
        $exception := $fakelocal_18;
        return;
    }
    r67 := r62;
    assert { :sourceloc "StandardByteDigester.java",789,-1,-1,-1 } true;
    $exception := r67;
    goto block81;
  block73:
    assert { :sourceloc "StandardByteDigester.java",802,-1,-1,-1 } true;
    $r11 := $heap[r0,java.security.Provider$org.jasypt.digest.StandardByteDigester$provider263];
    assert { :sourceloc "StandardByteDigester.java",802,-1,-1,-1 } true;
    if ($r11 == $null) {
        assert { :sourceloc "StandardByteDigester.java",802,-1,-1,-1 } { :comment "thenblock" } true;
        goto block74;
    } else {
        assert { :sourceloc "StandardByteDigester.java",802,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",804,-1,-1,-1 } true;
    $r27 := $heap[r0,java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260];
    assert { :sourceloc "StandardByteDigester.java",804,-1,-1,-1 } true;
    $r26 := $heap[r0,java.security.Provider$org.jasypt.digest.StandardByteDigester$provider263];
    assert { :sourceloc "StandardByteDigester.java",804,-1,-1,-1 } true;
    call $r28, $exception := java.security.MessageDigest$getInstance$java.lang.String_java.security.Provider($r27, $r26);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.NoSuchAlgorithmException) {
            goto block75;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "StandardByteDigester.java",804,-1,-1,-1 } true;
    $heap := $heap[r0,java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265 := $r28];
    assert { :sourceloc "StandardByteDigester.java",804,-1,-1,-1 } true;
    goto block76;
  block74:
    assert { :sourceloc "StandardByteDigester.java",807,-1,-1,-1 } true;
    $r12 := $heap[r0,java.lang.String$org.jasypt.digest.StandardByteDigester$providerName262];
    assert { :sourceloc "StandardByteDigester.java",807,-1,-1,-1 } true;
    if ($r12 == $null) {
        assert { :sourceloc "StandardByteDigester.java",807,-1,-1,-1 } { :comment "thenblock" } true;
        goto block77;
    } else {
        assert { :sourceloc "StandardByteDigester.java",807,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",809,-1,-1,-1 } true;
    $r24 := $heap[r0,java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260];
    assert { :sourceloc "StandardByteDigester.java",809,-1,-1,-1 } true;
    $r23 := $heap[r0,java.lang.String$org.jasypt.digest.StandardByteDigester$providerName262];
    assert { :sourceloc "StandardByteDigester.java",809,-1,-1,-1 } true;
    call $r25, $exception := java.security.MessageDigest$getInstance$java.lang.String_java.lang.String($r24, $r23);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.NoSuchProviderException) {
            goto block78;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "StandardByteDigester.java",809,-1,-1,-1 } true;
    $heap := $heap[r0,java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265 := $r25];
    assert { :sourceloc "StandardByteDigester.java",809,-1,-1,-1 } true;
    goto block76;
  block77:
    assert { :sourceloc "StandardByteDigester.java",813,-1,-1,-1 } true;
    $r13 := $heap[r0,java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260];
    assert { :sourceloc "StandardByteDigester.java",813,-1,-1,-1 } true;
    call $r14, $exception := java.security.MessageDigest$getInstance$java.lang.String($r13);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.NoSuchAlgorithmException) {
            goto block75;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "StandardByteDigester.java",813,-1,-1,-1 } true;
    $heap := $heap[r0,java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265 := $r14];
  block76:
    assert { :sourceloc "StandardByteDigester.java",819,-1,-1,-1 } true;
    goto block79;
  block75:
    assert { :sourceloc "StandardByteDigester.java",712,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r49 := $exception;
    assert { :sourceloc "StandardByteDigester.java",815,-1,-1,-1 } true;
    r58 := $r49;
    assert { :sourceloc "StandardByteDigester.java",816,-1,-1,-1 } true;
    call $fakelocal_19 := $new(org.jasypt.exceptions.EncryptionInitializationException);
    r63 := $fakelocal_19;
    assert { :sourceloc "StandardByteDigester.java",816,-1,-1,-1 } true;
    call $exception := org.jasypt.exceptions.EncryptionInitializationException$$la$init$ra$$java.lang.Throwable(r63, r58);
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    if ($heap[r63,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_20 := $new(java.lang.ClassCastException);
        $exception := $fakelocal_20;
        return;
    }
    r68 := r63;
    assert { :sourceloc "StandardByteDigester.java",816,-1,-1,-1 } true;
    $exception := r68;
    goto block81;
  block78:
    assert { :sourceloc "StandardByteDigester.java",816,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r51 := $exception;
    assert { :sourceloc "StandardByteDigester.java",817,-1,-1,-1 } true;
    r59 := $r51;
    assert { :sourceloc "StandardByteDigester.java",818,-1,-1,-1 } true;
    call $fakelocal_21 := $new(org.jasypt.exceptions.EncryptionInitializationException);
    r64 := $fakelocal_21;
    assert { :sourceloc "StandardByteDigester.java",818,-1,-1,-1 } true;
    call $exception := org.jasypt.exceptions.EncryptionInitializationException$$la$init$ra$$java.lang.Throwable(r64, r59);
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    if ($heap[r64,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_22 := $new(java.lang.ClassCastException);
        $exception := $fakelocal_22;
        return;
    }
    r69 := r64;
    assert { :sourceloc "StandardByteDigester.java",818,-1,-1,-1 } true;
    $exception := r69;
    goto block81;
  block79:
    assert { :sourceloc "StandardByteDigester.java",826,-1,-1,-1 } true;
    $r15 := $heap[r0,java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert { :sourceloc "StandardByteDigester.java",826,-1,-1,-1 } true;
    if ($r15 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_23 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_23;
        return;
    }
    call $i0, $exception := java.security.MessageDigest$getDigestLength$($r15);
    assert { :sourceloc "StandardByteDigester.java",826,-1,-1,-1 } true;
    $heap := $heap[r0,int$org.jasypt.digest.StandardByteDigester$digestLengthBytes0 := $i0];
    assert { :sourceloc "StandardByteDigester.java",827,-1,-1,-1 } true;
    $i1 := $heap[r0,int$org.jasypt.digest.StandardByteDigester$digestLengthBytes0];
    assert { :sourceloc "StandardByteDigester.java",827,-1,-1,-1 } true;
    if ($i1 > 0) {
        assert { :sourceloc "StandardByteDigester.java",827,-1,-1,-1 } { :comment "thenblock" } true;
        goto block80;
    } else {
        assert { :sourceloc "StandardByteDigester.java",827,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",828,-1,-1,-1 } true;
    call $fakelocal_24 := $new(org.jasypt.exceptions.EncryptionInitializationException);
    r66 := $fakelocal_24;
    assert { :sourceloc "StandardByteDigester.java",828,-1,-1,-1 } true;
    call $fakelocal_25 := $new(java.lang.StringBuilder);
    r65 := $fakelocal_25;
    assert { :sourceloc "StandardByteDigester.java",828,-1,-1,-1 } true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$(r65);
    assert { :sourceloc "StandardByteDigester.java",828,-1,-1,-1 } true;
    call $r18, $exception := java.lang.StringBuilder$append$java.lang.String(r65, $StringConst10);
    assert { :sourceloc "StandardByteDigester.java",828,-1,-1,-1 } true;
    $r19 := $heap[r0,java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260];
    assert { :sourceloc "StandardByteDigester.java",828,-1,-1,-1 } true;
    if ($r18 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_26 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_26;
        return;
    }
    call $r20, $exception := java.lang.StringBuilder$append$java.lang.String($r18, $r19);
    assert { :sourceloc "StandardByteDigester.java",828,-1,-1,-1 } true;
    if ($r20 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_27 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_27;
        return;
    }
    call $r21, $exception := java.lang.StringBuilder$append$java.lang.String($r20, $StringConst11);
    assert { :sourceloc "StandardByteDigester.java",828,-1,-1,-1 } true;
    if ($r21 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_28 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_28;
        return;
    }
    call $r22, $exception := java.lang.StringBuilder$toString$($r21);
    assert { :sourceloc "StandardByteDigester.java",828,-1,-1,-1 } true;
    call $exception := org.jasypt.exceptions.EncryptionInitializationException$$la$init$ra$$java.lang.String(r66, $r22);
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    if ($heap[r66,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_29 := $new(java.lang.ClassCastException);
        $exception := $fakelocal_29;
        return;
    }
    r70 := r66;
    assert { :sourceloc "StandardByteDigester.java",828,-1,-1,-1 } true;
    $exception := r70;
    goto block81;
  block80:
    assert { :sourceloc "StandardByteDigester.java",836,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$initialized0 := 1];
  block35:
    assert { :sourceloc "StandardByteDigester.java",840,-1,-1,-1 } true;
    goto block81;
  block81:
    return;
}


implementation org.jasypt.digest.StandardByteDigester$digest$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r4 : ref;    
var $r3 : ref;    
var $z0 : int;    
var $fakelocal_0 : ref;    
var $z1 : int;    
var r1 : ref;    
var $r2 : ref;    
var $i0 : int;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $heap[$this,$type] <: org.jasypt.digest.StandardByteDigester;
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "StandardByteDigester.java",916,-1,-1,-1 } true;
    if (r1 != $null) {
        assert { :sourceloc "StandardByteDigester.java",916,-1,-1,-1 } { :comment "thenblock" } true;
        goto block82;
    } else {
        assert { :sourceloc "StandardByteDigester.java",916,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",917,-1,-1,-1 } true;
    $return := $null;
    goto block85;
  block82:
    assert { :sourceloc "StandardByteDigester.java",921,-1,-1,-1 } true;
    call $z0, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert { :sourceloc "StandardByteDigester.java",921,-1,-1,-1 } true;
    if ($z0 != 0) {
        assert { :sourceloc "StandardByteDigester.java",921,-1,-1,-1 } { :comment "thenblock" } true;
        goto block83;
    } else {
        assert { :sourceloc "StandardByteDigester.java",921,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",922,-1,-1,-1 } true;
    call $exception := org.jasypt.digest.StandardByteDigester$initialize$(r0);
  block83:
    assert { :sourceloc "StandardByteDigester.java",926,-1,-1,-1 } true;
    r4 := $null;
    assert { :sourceloc "StandardByteDigester.java",927,-1,-1,-1 } true;
    $z1 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$useSalt0];
    assert { :sourceloc "StandardByteDigester.java",927,-1,-1,-1 } true;
    if ($z1 == 0) {
        assert { :sourceloc "StandardByteDigester.java",927,-1,-1,-1 } { :comment "thenblock" } true;
        goto block84;
    } else {
        assert { :sourceloc "StandardByteDigester.java",927,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",928,-1,-1,-1 } true;
    $r3 := $heap[r0,org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261];
    assert { :sourceloc "StandardByteDigester.java",928,-1,-1,-1 } true;
    $i0 := $heap[r0,int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0];
    assert { :sourceloc "StandardByteDigester.java",928,-1,-1,-1 } true;
    if ($r3 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_0;
        return;
    }
    call r4, $exception := org.jasypt.salt.SaltGenerator$generateSalt$int($r3, $i0);
  block84:
    assert { :sourceloc "StandardByteDigester.java",932,-1,-1,-1 } true;
    call $r2, $exception := org.jasypt.digest.StandardByteDigester$digest$byte$lp$$rp$_byte$lp$$rp$(r0, r1, r4);
    assert { :sourceloc "StandardByteDigester.java",932,-1,-1,-1 } true;
    $return := $r2;
    goto block85;
  block85:
    return;
}


implementation org.jasypt.digest.StandardByteDigester$digest$byte$lp$$rp$_byte$lp$$rp$($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref){
    
var r3 : ref;    
var $r11 : ref;    
var $r6 : ref;    
var $r18 : ref;    
var r23 : ref;    
var $z0 : int;    
var $r12 : ref;    
var $r16 : ref;    
var $r14 : ref;    
var $r19 : ref;    
var $fakelocal_0 : ref;    
var $i1 : int;    
var r22 : ref;    
var r0 : ref;    
var $r5 : ref;    
var r2 : ref;    
var $r8 : ref;    
var r4 : ref;    
var i2 : int;    
var $r10 : ref;    
var $i0 : int;    
var $r17 : ref;    
var $r15 : ref;    
var $r13 : ref;    
var $z1 : int;    
var $r7 : ref;    
var r1 : ref;    
var $fakelocal_1 : ref;    
var $r9 : ref;    
var r21 : ref;    
var $z2 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $heap[$this,$type] <: org.jasypt.digest.StandardByteDigester;
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r2 := $in_parameter__1;
  block86:
    assert { :sourceloc "StandardByteDigester.java",948,-1,-1,-1 } true;
    $r5 := $heap[r0,java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert { :sourceloc "StandardByteDigester.java",948,-1,-1,-1 } true;
    r3 := $r5;
    assert { :sourceloc "StandardByteDigester.java",948,-1,-1,-1 } true;
    havoc r3, r2, r0, r1, $r5, $return, $exception, $heap;
  block87:
    assert { :sourceloc "StandardByteDigester.java",950,-1,-1,-1 } true;
    $r6 := $heap[r0,java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert { :sourceloc "StandardByteDigester.java",950,-1,-1,-1 } true;
    if ($r6 != $null) {
        assert { :sourceloc "StandardByteDigester.java",950,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "StandardByteDigester.java",950,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := $null;
        call $exception := $new(java.lang.RuntimeException);
        goto block88;
    }
    call $exception := java.security.MessageDigest$reset$($r6);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block88;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "StandardByteDigester.java",952,-1,-1,-1 } true;
    if (r2 == $null) {
        assert { :sourceloc "StandardByteDigester.java",952,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block89;
    } else {
        assert { :sourceloc "StandardByteDigester.java",952,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",954,-1,-1,-1 } true;
    $z2 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigesting0];
    assert { :sourceloc "StandardByteDigester.java",954,-1,-1,-1 } true;
    if ($z2 != 0) {
        assert { :sourceloc "StandardByteDigester.java",954,-1,-1,-1 } { :comment "thenblock" } true;
        goto block90;
    } else {
        assert { :sourceloc "StandardByteDigester.java",954,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",957,-1,-1,-1 } true;
    $r16 := $heap[r0,java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert { :sourceloc "StandardByteDigester.java",957,-1,-1,-1 } true;
    if ($r16 != $null) {
        assert { :sourceloc "StandardByteDigester.java",957,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "StandardByteDigester.java",957,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := $null;
        call $exception := $new(java.lang.RuntimeException);
        goto block88;
    }
    call $exception := java.security.MessageDigest$update$byte$lp$$rp$($r16, r2);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block88;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "StandardByteDigester.java",958,-1,-1,-1 } true;
    $r17 := $heap[r0,java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert { :sourceloc "StandardByteDigester.java",958,-1,-1,-1 } true;
    if ($r17 != $null) {
        assert { :sourceloc "StandardByteDigester.java",958,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "StandardByteDigester.java",958,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := $null;
        call $exception := $new(java.lang.RuntimeException);
        goto block88;
    }
    call $exception := java.security.MessageDigest$update$byte$lp$$rp$($r17, r1);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block88;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "StandardByteDigester.java",958,-1,-1,-1 } true;
    goto block91;
  block90:
    assert { :sourceloc "StandardByteDigester.java",963,-1,-1,-1 } true;
    $r14 := $heap[r0,java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert { :sourceloc "StandardByteDigester.java",963,-1,-1,-1 } true;
    if ($r14 != $null) {
        assert { :sourceloc "StandardByteDigester.java",963,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "StandardByteDigester.java",963,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := $null;
        call $exception := $new(java.lang.RuntimeException);
        goto block88;
    }
    call $exception := java.security.MessageDigest$update$byte$lp$$rp$($r14, r1);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block88;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "StandardByteDigester.java",964,-1,-1,-1 } true;
    $r15 := $heap[r0,java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert { :sourceloc "StandardByteDigester.java",964,-1,-1,-1 } true;
    if ($r15 != $null) {
        assert { :sourceloc "StandardByteDigester.java",964,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "StandardByteDigester.java",964,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := $null;
        call $exception := $new(java.lang.RuntimeException);
        goto block88;
    }
    call $exception := java.security.MessageDigest$update$byte$lp$$rp$($r15, r2);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block88;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "StandardByteDigester.java",964,-1,-1,-1 } true;
    goto block91;
  block89:
    assert { :sourceloc "StandardByteDigester.java",971,-1,-1,-1 } true;
    $r7 := $heap[r0,java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert { :sourceloc "StandardByteDigester.java",971,-1,-1,-1 } true;
    if ($r7 != $null) {
        assert { :sourceloc "StandardByteDigester.java",971,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "StandardByteDigester.java",971,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := $null;
        call $exception := $new(java.lang.RuntimeException);
        goto block88;
    }
    call $exception := java.security.MessageDigest$update$byte$lp$$rp$($r7, r1);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block88;
        } else {
            assert { :clone } true;
        }
    }
  block91:
    assert { :sourceloc "StandardByteDigester.java",975,-1,-1,-1 } true;
    $r8 := $heap[r0,java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert { :sourceloc "StandardByteDigester.java",975,-1,-1,-1 } true;
    if ($r8 != $null) {
        assert { :sourceloc "StandardByteDigester.java",975,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "StandardByteDigester.java",975,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := $null;
        call $exception := $new(java.lang.RuntimeException);
        goto block88;
    }
    call r21, $exception := java.security.MessageDigest$digest$($r8);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block88;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "StandardByteDigester.java",976,-1,-1,-1 } true;
    i2 := 0;
  block92:
    assert { :sourceloc "StandardByteDigester.java",976,-1,-1,-1 } true;
    $i0 := $heap[r0,int$org.jasypt.digest.StandardByteDigester$iterations0];
    assert { :sourceloc "StandardByteDigester.java",976,-1,-1,-1 } true;
    $i1 := $i0 - 1;
    assert { :sourceloc "StandardByteDigester.java",976,-1,-1,-1 } true;
    if (i2 >= $i1) {
        assert { :sourceloc "StandardByteDigester.java",976,-1,-1,-1 } { :comment "thenblock" } true;
        goto block93;
    } else {
        assert { :sourceloc "StandardByteDigester.java",976,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",977,-1,-1,-1 } true;
    $r12 := $heap[r0,java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert { :sourceloc "StandardByteDigester.java",977,-1,-1,-1 } true;
    if ($r12 != $null) {
        assert { :sourceloc "StandardByteDigester.java",977,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "StandardByteDigester.java",977,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := $null;
        call $exception := $new(java.lang.RuntimeException);
        goto block88;
    }
    call $exception := java.security.MessageDigest$reset$($r12);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block88;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "StandardByteDigester.java",978,-1,-1,-1 } true;
    $r13 := $heap[r0,java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert { :sourceloc "StandardByteDigester.java",978,-1,-1,-1 } true;
    if ($r13 != $null) {
        assert { :sourceloc "StandardByteDigester.java",978,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "StandardByteDigester.java",978,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := $null;
        call $exception := $new(java.lang.RuntimeException);
        goto block88;
    }
    call r21, $exception := java.security.MessageDigest$digest$byte$lp$$rp$($r13, r21);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block88;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "StandardByteDigester.java",976,-1,-1,-1 } true;
    i2 := i2 + 1;
    assert { :sourceloc "StandardByteDigester.java",976,-1,-1,-1 } true;
    goto block92;
  block93:
    assert { :sourceloc "StandardByteDigester.java",981,-1,-1,-1 } true;
  block94:
    assert { :sourceloc "StandardByteDigester.java",981,-1,-1,-1 } true;
    goto block95;
  block88:
    assert { :sourceloc "StandardByteDigester.java",976,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r18 := $exception;
    assert { :sourceloc "StandardByteDigester.java",976,-1,-1,-1 } true;
    r4 := $r18;
    assert { :sourceloc "StandardByteDigester.java",976,-1,-1,-1 } true;
  block96:
    assert { :sourceloc "StandardByteDigester.java",976,-1,-1,-1 } true;
    $exception := r4;
    goto block102;
  block95:
    assert { :sourceloc "StandardByteDigester.java",986,-1,-1,-1 } true;
    $r9 := $heap[r0,org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261];
    assert { :sourceloc "StandardByteDigester.java",986,-1,-1,-1 } true;
    if ($r9 != $null) {
        assert { :sourceloc "StandardByteDigester.java",986,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "StandardByteDigester.java",986,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := $null;
        call $exception := $new(java.lang.RuntimeException);
        goto block97;
    }
    call $z0, $exception := org.jasypt.salt.SaltGenerator$includePlainSaltInEncryptionResults$($r9);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block97;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "StandardByteDigester.java",986,-1,-1,-1 } true;
    if ($z0 == 0) {
        assert { :sourceloc "StandardByteDigester.java",986,-1,-1,-1 } { :comment "thenblock" } true;
        goto block98;
    } else {
        assert { :sourceloc "StandardByteDigester.java",986,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",1000,-1,-1,-1 } true;
    if (r2 == $null) {
        assert { :sourceloc "StandardByteDigester.java",1000,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block98;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1000,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",988,-1,-1,-1 } true;
    $z1 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResults0];
    assert { :sourceloc "StandardByteDigester.java",988,-1,-1,-1 } true;
    if ($z1 != 0) {
        assert { :sourceloc "StandardByteDigester.java",988,-1,-1,-1 } { :comment "thenblock" } true;
        goto block99;
    } else {
        assert { :sourceloc "StandardByteDigester.java",988,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",991,-1,-1,-1 } true;
    call $r11, $exception := org.jasypt.commons.CommonUtils$appendArrays$byte$lp$$rp$_byte$lp$$rp$(r2, r21);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block97;
        } else {
            assert { :clone } true;
        }
    }
  block100:
    assert { :sourceloc "StandardByteDigester.java",991,-1,-1,-1 } true;
    $return := $r11;
    goto block102;
  block99:
    assert { :sourceloc "StandardByteDigester.java",996,-1,-1,-1 } true;
    call $r10, $exception := org.jasypt.commons.CommonUtils$appendArrays$byte$lp$$rp$_byte$lp$$rp$(r21, r2);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block97;
        } else {
            assert { :clone } true;
        }
    }
  block101:
    assert { :sourceloc "StandardByteDigester.java",996,-1,-1,-1 } true;
    $return := $r10;
    goto block102;
  block98:
    assert { :sourceloc "StandardByteDigester.java",1000,-1,-1,-1 } true;
    $return := r21;
    goto block102;
  block97:
    assert { :sourceloc "StandardByteDigester.java",976,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r19 := $exception;
    assert { :sourceloc "StandardByteDigester.java",1005,-1,-1,-1 } true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.EncryptionOperationNotPossibleException);
    r22 := $fakelocal_0;
    assert { :sourceloc "StandardByteDigester.java",1005,-1,-1,-1 } true;
    call $exception := org.jasypt.exceptions.EncryptionOperationNotPossibleException$$la$init$ra$$(r22);
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    if ($heap[r22,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
    r23 := r22;
    assert { :sourceloc "StandardByteDigester.java",1005,-1,-1,-1 } true;
    $exception := r23;
    goto block102;
  block102:
    return;
}


implementation org.jasypt.digest.StandardByteDigester$matches$byte$lp$$rp$_byte$lp$$rp$($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var r2 : ref;    
var r0 : ref;    
var r1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $heap[$this,$type] <: org.jasypt.digest.StandardByteDigester;
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r2 := $in_parameter__1;
    assert { :sourceloc "StandardByteDigester.java",1041,-1,-1,-1 } true;
    $return := 0;
    goto block103;
  block103:
    return;
}


implementation org.jasypt.digest.StandardByteDigester$matches_unsafe$byte$lp$$rp$_byte$lp$$rp$($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var r11 : ref;    
var $i2 : int;    
var $i12 : int;    
var r0 : ref;    
var r13 : ref;    
var r2 : ref;    
var $i3 : int;    
var $z2 : int;    
var $i4 : int;    
var r19 : ref;    
var $r8 : ref;    
var $fakelocal_1 : ref;    
var $i0 : int;    
var $i11 : int;    
var r17 : ref;    
var $fakelocal_5 : ref;    
var $z1 : int;    
var $fakelocal_0 : ref;    
var $z4 : int;    
var r14 : ref;    
var $i9 : int;    
var $z6 : int;    
var $r4 : ref;    
var r20 : ref;    
var $r3 : ref;    
var i14 : int;    
var $i5 : int;    
var $z0 : int;    
var $i1 : int;    
var r18 : ref;    
var $i8 : int;    
var r1 : ref;    
var r16 : ref;    
var r10 : ref;    
var $fakelocal_4 : ref;    
var $i6 : int;    
var $i7 : int;    
var $i10 : int;    
var $z3 : int;    
var r15 : ref;    
var $i13 : int;    
var $fakelocal_3 : ref;    
var $z5 : int;    
var $fakelocal_2 : ref;    
var $fakelocal_6 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $heap[$this,$type] <: org.jasypt.digest.StandardByteDigester;
    assume { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r2 := $in_parameter__1;
    assert { :sourceloc "StandardByteDigester.java",1113,-1,-1,-1 } true;
    if (r1 != $null) {
        assert { :sourceloc "StandardByteDigester.java",1113,-1,-1,-1 } { :comment "thenblock" } true;
        goto block104;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1113,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",1114,-1,-1,-1 } true;
    if (r2 != $null) {
        assert { :sourceloc "StandardByteDigester.java",1114,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block105;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1114,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",1114,-1,-1,-1 } true;
    $z6 := 1;
    assert { :sourceloc "StandardByteDigester.java",1114,-1,-1,-1 } true;
    goto block106;
  block105:
    assert { :sourceloc "StandardByteDigester.java",1114,-1,-1,-1 } true;
    $z6 := 0;
  block106:
    assert { :sourceloc "StandardByteDigester.java",1114,-1,-1,-1 } true;
    $return := $z6;
    goto block119;
  block104:
    assert { :sourceloc "StandardByteDigester.java",1115,-1,-1,-1 } true;
    if (r2 != $null) {
        assert { :sourceloc "StandardByteDigester.java",1115,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block107;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1115,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",1116,-1,-1,-1 } true;
    $return := 0;
    goto block119;
  block107:
    assert { :sourceloc "StandardByteDigester.java",1120,-1,-1,-1 } true;
    call $z0, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert { :sourceloc "StandardByteDigester.java",1120,-1,-1,-1 } true;
    if ($z0 != 0) {
        assert { :sourceloc "StandardByteDigester.java",1120,-1,-1,-1 } { :comment "thenblock" } true;
        goto block108;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1120,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",1121,-1,-1,-1 } true;
    call $exception := org.jasypt.digest.StandardByteDigester$initialize$(r0);
  block108:
    assert { :sourceloc "StandardByteDigester.java",1127,-1,-1,-1 } true;
    r10 := $null;
    assert { :sourceloc "StandardByteDigester.java",1128,-1,-1,-1 } true;
    $z1 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$useSalt0];
    assert { :sourceloc "StandardByteDigester.java",1128,-1,-1,-1 } true;
    if ($z1 == 0) {
        assert { :sourceloc "StandardByteDigester.java",1128,-1,-1,-1 } { :comment "thenblock" } true;
        goto block109;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1128,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",1133,-1,-1,-1 } true;
    $r3 := $heap[r0,org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261];
    assert { :sourceloc "StandardByteDigester.java",1133,-1,-1,-1 } true;
    if ($r3 != $null) {
        assert { :sourceloc "StandardByteDigester.java",1133,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1133,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.RuntimeException);
        goto block110;
    }
    call $z3, $exception := org.jasypt.salt.SaltGenerator$includePlainSaltInEncryptionResults$($r3);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block110;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "StandardByteDigester.java",1133,-1,-1,-1 } true;
    if ($z3 == 0) {
        assert { :sourceloc "StandardByteDigester.java",1133,-1,-1,-1 } { :comment "thenblock" } true;
        goto block111;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1133,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",1136,-1,-1,-1 } true;
    i14 := $heap[r0,int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0];
    assert { :sourceloc "StandardByteDigester.java",1137,-1,-1,-1 } true;
    $i1 := $heap[r0,int$org.jasypt.digest.StandardByteDigester$digestLengthBytes0];
    assert { :sourceloc "StandardByteDigester.java",1137,-1,-1,-1 } true;
    if ($i1 <= 0) {
        assert { :sourceloc "StandardByteDigester.java",1137,-1,-1,-1 } { :comment "thenblock" } true;
        goto block112;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1137,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",1138,-1,-1,-1 } true;
    $z5 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheck0];
    assert { :sourceloc "StandardByteDigester.java",1138,-1,-1,-1 } true;
    if ($z5 == 0) {
        assert { :sourceloc "StandardByteDigester.java",1138,-1,-1,-1 } { :comment "thenblock" } true;
        goto block113;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1138,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",1139,-1,-1,-1 } true;
    if (r2 != $null) {
        assert { :sourceloc "StandardByteDigester.java",1139,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1139,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.NullPointerException);
        goto block110;
    }
    $i11 := $arrSizeHeap[r2];
    assert { :sourceloc "StandardByteDigester.java",1139,-1,-1,-1 } true;
    $i10 := $heap[r0,int$org.jasypt.digest.StandardByteDigester$digestLengthBytes0];
    assert { :sourceloc "StandardByteDigester.java",1139,-1,-1,-1 } true;
    if ($i11 >= $i10) {
        assert { :sourceloc "StandardByteDigester.java",1139,-1,-1,-1 } { :comment "thenblock" } true;
        goto block114;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1139,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",1140,-1,-1,-1 } true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.EncryptionOperationNotPossibleException);
    r13 := $fakelocal_0;
    assert { :sourceloc "StandardByteDigester.java",1140,-1,-1,-1 } true;
    call $exception := org.jasypt.exceptions.EncryptionOperationNotPossibleException$$la$init$ra$$(r13);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            r13 := $null;
            goto block110;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    if ($heap[r13,$type] <: java.lang.Throwable) {
        assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.ClassCastException);
        goto block110;
    }
    r17 := r13;
    assert { :sourceloc "StandardByteDigester.java",1140,-1,-1,-1 } true;
    $exception := r17;
    goto block119;
  block114:
    assert { :sourceloc "StandardByteDigester.java",1142,-1,-1,-1 } true;
    if (r2 != $null) {
        assert { :sourceloc "StandardByteDigester.java",1142,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1142,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.NullPointerException);
        goto block110;
    }
    $i13 := $arrSizeHeap[r2];
    assert { :sourceloc "StandardByteDigester.java",1142,-1,-1,-1 } true;
    $i12 := $heap[r0,int$org.jasypt.digest.StandardByteDigester$digestLengthBytes0];
    assert { :sourceloc "StandardByteDigester.java",1142,-1,-1,-1 } true;
    i14 := $i13 - $i12;
    assert { :sourceloc "StandardByteDigester.java",1142,-1,-1,-1 } true;
    goto block115;
  block113:
    assert { :sourceloc "StandardByteDigester.java",1144,-1,-1,-1 } true;
    if (r2 != $null) {
        assert { :sourceloc "StandardByteDigester.java",1144,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1144,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.NullPointerException);
        goto block110;
    }
    $i9 := $arrSizeHeap[r2];
    assert { :sourceloc "StandardByteDigester.java",1144,-1,-1,-1 } true;
    $i7 := $heap[r0,int$org.jasypt.digest.StandardByteDigester$digestLengthBytes0];
    assert { :sourceloc "StandardByteDigester.java",1144,-1,-1,-1 } true;
    $i6 := $heap[r0,int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0];
    assert { :sourceloc "StandardByteDigester.java",1144,-1,-1,-1 } true;
    $i8 := $i7 + $i6;
    assert { :sourceloc "StandardByteDigester.java",1144,-1,-1,-1 } true;
    if ($i9 == $i8) {
        assert { :sourceloc "StandardByteDigester.java",1144,-1,-1,-1 } { :comment "thenblock" } true;
        goto block115;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1144,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",1145,-1,-1,-1 } true;
    call $fakelocal_1 := $new(org.jasypt.exceptions.EncryptionOperationNotPossibleException);
    r14 := $fakelocal_1;
    assert { :sourceloc "StandardByteDigester.java",1145,-1,-1,-1 } true;
    call $exception := org.jasypt.exceptions.EncryptionOperationNotPossibleException$$la$init$ra$$(r14);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            r14 := $null;
            goto block110;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    if ($heap[r14,$type] <: java.lang.Throwable) {
        assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.ClassCastException);
        goto block110;
    }
    r18 := r14;
    assert { :sourceloc "StandardByteDigester.java",1145,-1,-1,-1 } true;
    $exception := r18;
    goto block119;
  block112:
    assert { :sourceloc "StandardByteDigester.java",1150,-1,-1,-1 } true;
    if (r2 != $null) {
        assert { :sourceloc "StandardByteDigester.java",1150,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1150,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.NullPointerException);
        goto block110;
    }
    $i3 := $arrSizeHeap[r2];
    assert { :sourceloc "StandardByteDigester.java",1150,-1,-1,-1 } true;
    $i2 := $heap[r0,int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0];
    assert { :sourceloc "StandardByteDigester.java",1150,-1,-1,-1 } true;
    if ($i3 >= $i2) {
        assert { :sourceloc "StandardByteDigester.java",1150,-1,-1,-1 } { :comment "thenblock" } true;
        goto block115;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1150,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",1151,-1,-1,-1 } true;
    call $fakelocal_2 := $new(org.jasypt.exceptions.EncryptionOperationNotPossibleException);
    r15 := $fakelocal_2;
    assert { :sourceloc "StandardByteDigester.java",1151,-1,-1,-1 } true;
    call $exception := org.jasypt.exceptions.EncryptionOperationNotPossibleException$$la$init$ra$$(r15);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            r15 := $null;
            goto block110;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    if ($heap[r15,$type] <: java.lang.Throwable) {
        assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.ClassCastException);
        goto block110;
    }
    r19 := r15;
    assert { :sourceloc "StandardByteDigester.java",1151,-1,-1,-1 } true;
    $exception := r19;
    goto block119;
  block115:
    assert { :sourceloc "StandardByteDigester.java",1155,-1,-1,-1 } true;
    $z4 := $heap[r0,boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResults0];
    assert { :sourceloc "StandardByteDigester.java",1155,-1,-1,-1 } true;
    if ($z4 != 0) {
        assert { :sourceloc "StandardByteDigester.java",1155,-1,-1,-1 } { :comment "thenblock" } true;
        goto block116;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1155,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",1156,-1,-1,-1 } true;
    call $fakelocal_3 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_3 := i14];
    r10 := $fakelocal_3;
    assert { :sourceloc "StandardByteDigester.java",1157,-1,-1,-1 } true;
    call $exception := java.lang.System$arraycopy$java.lang.Object_int_java.lang.Object_int_int(r2, 0, r10, 0, i14);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block110;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "StandardByteDigester.java",1157,-1,-1,-1 } true;
    goto block117;
  block116:
    assert { :sourceloc "StandardByteDigester.java",1159,-1,-1,-1 } true;
    call $fakelocal_4 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_4 := i14];
    r10 := $fakelocal_4;
    assert { :sourceloc "StandardByteDigester.java",1160,-1,-1,-1 } true;
    if (r2 != $null) {
        assert { :sourceloc "StandardByteDigester.java",1160,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1160,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.NullPointerException);
        goto block110;
    }
    $i4 := $arrSizeHeap[r2];
    assert { :sourceloc "StandardByteDigester.java",1160,-1,-1,-1 } true;
    $i5 := $i4 - i14;
    assert { :sourceloc "StandardByteDigester.java",1160,-1,-1,-1 } true;
    call $exception := java.lang.System$arraycopy$java.lang.Object_int_java.lang.Object_int_int(r2, $i5, r10, 0, i14);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block110;
        } else {
            assert { :clone } true;
        }
    }
  block117:
    assert { :sourceloc "StandardByteDigester.java",1163,-1,-1,-1 } true;
    goto block109;
  block111:
    assert { :sourceloc "StandardByteDigester.java",1164,-1,-1,-1 } true;
    $r4 := $heap[r0,org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261];
    assert { :sourceloc "StandardByteDigester.java",1164,-1,-1,-1 } true;
    $i0 := $heap[r0,int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0];
    assert { :sourceloc "StandardByteDigester.java",1164,-1,-1,-1 } true;
    if ($r4 != $null) {
        assert { :sourceloc "StandardByteDigester.java",1164,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1164,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.RuntimeException);
        goto block110;
    }
    call r10, $exception := org.jasypt.salt.SaltGenerator$generateSalt$int($r4, $i0);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block110;
        } else {
            assert { :clone } true;
        }
    }
  block109:
    assert { :sourceloc "StandardByteDigester.java",1169,-1,-1,-1 } true;
    call r11, $exception := org.jasypt.digest.StandardByteDigester$digest$byte$lp$$rp$_byte$lp$$rp$(r0, r1, r10);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block110;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "StandardByteDigester.java",1172,-1,-1,-1 } true;
    call $z2, $exception := org.jasypt.digest.StandardByteDigester$jdkArraysEquals$byte$lp$$rp$_byte$lp$$rp$(r11, r2);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block110;
        } else {
            assert { :clone } true;
        }
    }
  block118:
    assert { :sourceloc "StandardByteDigester.java",1172,-1,-1,-1 } true;
    $return := $z2;
    goto block119;
  block110:
    assert { :sourceloc "StandardByteDigester.java",1114,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r8 := $exception;
    assert { :sourceloc "StandardByteDigester.java",1177,-1,-1,-1 } true;
    call $fakelocal_5 := $new(org.jasypt.exceptions.EncryptionOperationNotPossibleException);
    r16 := $fakelocal_5;
    assert { :sourceloc "StandardByteDigester.java",1177,-1,-1,-1 } true;
    call $exception := org.jasypt.exceptions.EncryptionOperationNotPossibleException$$la$init$ra$$(r16);
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    if ($heap[r16,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_6 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_6;
        return;
    }
    r20 := r16;
    assert { :sourceloc "StandardByteDigester.java",1177,-1,-1,-1 } true;
    $exception := r20;
    goto block119;
  block119:
    return;
}


implementation org.jasypt.digest.StandardByteDigester$jdkArraysEquals$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var r0 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_3 : ref;    
var $b3 : int;    
var i4 : int;    
var $fakelocal_1 : ref;    
var r1 : ref;    
var $fakelocal_0 : ref;    
var $b2 : int;    
var $i1 : int;    
var i0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "StandardByteDigester.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "StandardByteDigester.java",1204,-1,-1,-1 } true;
    if (r0 != r1) {
        assert { :sourceloc "StandardByteDigester.java",1204,-1,-1,-1 } { :comment "thenblock" } true;
        goto block120;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1204,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",1205,-1,-1,-1 } true;
    $return := 1;
    goto block127;
  block120:
    assert { :sourceloc "StandardByteDigester.java",1206,-1,-1,-1 } true;
    if (r0 == $null) {
        assert { :sourceloc "StandardByteDigester.java",1206,-1,-1,-1 } { :comment "thenblock" } true;
        goto block121;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1206,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",1207,-1,-1,-1 } true;
    if (r1 != $null) {
        assert { :sourceloc "StandardByteDigester.java",1207,-1,-1,-1 } { :comment "thenblock" } true;
        goto block122;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1207,-1,-1,-1 } { :comment "elseblock" } true;
    }
  block121:
    assert { :sourceloc "StandardByteDigester.java",1207,-1,-1,-1 } true;
    $return := 0;
    goto block127;
  block122:
    assert { :sourceloc "StandardByteDigester.java",1209,-1,-1,-1 } true;
    if (r0 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    i0 := $arrSizeHeap[r0];
    assert { :sourceloc "StandardByteDigester.java",1210,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_1;
        return;
    }
    $i1 := $arrSizeHeap[r1];
    assert { :sourceloc "StandardByteDigester.java",1210,-1,-1,-1 } true;
    if ($i1 == i0) {
        assert { :sourceloc "StandardByteDigester.java",1210,-1,-1,-1 } { :comment "thenblock" } true;
        goto block123;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1210,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",1211,-1,-1,-1 } true;
    $return := 0;
    goto block127;
  block123:
    assert { :sourceloc "StandardByteDigester.java",1213,-1,-1,-1 } true;
    i4 := 0;
  block124:
    assert { :sourceloc "StandardByteDigester.java",1213,-1,-1,-1 } true;
    if (i4 >= i0) {
        assert { :sourceloc "StandardByteDigester.java",1213,-1,-1,-1 } { :comment "thenblock" } true;
        goto block125;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1213,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",1214,-1,-1,-1 } true;
    if (i4 < $arrSizeHeap[r0] && i4 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_2;
        return;
    }
    $b3 := $intArrHeap[r0][i4];
    assert { :sourceloc "StandardByteDigester.java",1214,-1,-1,-1 } true;
    if (i4 < $arrSizeHeap[r1] && i4 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_3;
        return;
    }
    $b2 := $intArrHeap[r1][i4];
    assert { :sourceloc "StandardByteDigester.java",1214,-1,-1,-1 } true;
    if ($b3 == $b2) {
        assert { :sourceloc "StandardByteDigester.java",1214,-1,-1,-1 } { :comment "thenblock" } true;
        goto block126;
    } else {
        assert { :sourceloc "StandardByteDigester.java",1214,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StandardByteDigester.java",1215,-1,-1,-1 } true;
    $return := 0;
    goto block127;
  block126:
    assert { :sourceloc "StandardByteDigester.java",1213,-1,-1,-1 } true;
    i4 := i4 + 1;
    assert { :sourceloc "StandardByteDigester.java",1213,-1,-1,-1 } true;
    goto block124;
  block125:
    assert { :sourceloc "StandardByteDigester.java",1217,-1,-1,-1 } true;
    $return := 1;
    goto block127;
  block127:
    return;
}


//implementation fakejava.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref){
implementation java.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref){
    
var z0 : int;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "Boolean.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.Boolean;
    assume { :sourceloc "Boolean.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.Boolean;
    assume { :sourceloc "Boolean.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "Boolean.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "Boolean.java",-1,-1,-1,-1 } true;
    z0 := $in_parameter__0;
    assert { :sourceloc "Boolean.java",6,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "Boolean.java",7,-1,-1,-1 } true;
//    $heap := $heap[r0,boolean$fakejava.lang.Boolean$value0 := z0];
    $heap := $heap[r0,boolean$java.lang.Boolean$value0 := z0];
    assert { :sourceloc "Boolean.java",8,-1,-1,-1 } true;
    goto block128;
  block128:
    return;
}


//implementation fakejava.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref){
implementation java.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref){
    
var z0 : int;    
var $fakelocal_0 : ref;    
var $r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume $heap[$return,$type] <: fakejava.lang.Boolean;
    assume $heap[$return,$type] <: java.lang.Boolean;
    $exception := $null;
    assert { :sourceloc "Boolean.java",-1,-1,-1,-1 } true;
    z0 := $in_parameter__0;
    assert { :sourceloc "Boolean.java",11,-1,-1,-1 } true;
//    call $fakelocal_0 := $new(fakejava.lang.Boolean);
    call $fakelocal_0 := $new(java.lang.Boolean);
    $r0 := $fakelocal_0;
    assert { :sourceloc "Boolean.java",11,-1,-1,-1 } true;
//    call $exception := fakejava.lang.Boolean$$la$init$ra$$boolean($r0, z0);
    call $exception := java.lang.Boolean$$la$init$ra$$boolean($r0, z0);
    assert { :sourceloc "Boolean.java",11,-1,-1,-1 } true;
    $return := $r0;
    goto block129;
  block129:
    return;
}


//implementation fakejava.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref){
implementation java.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref){
    
var $z0 : int;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "Boolean.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.Boolean;
    assume { :sourceloc "Boolean.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.Boolean;
    assume { :sourceloc "Boolean.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "Boolean.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "Boolean.java",15,-1,-1,-1 } true;
//    $z0 := $heap[r0,boolean$fakejava.lang.Boolean$value0];
    $z0 := $heap[r0,boolean$java.lang.Boolean$value0];
    assert { :sourceloc "Boolean.java",15,-1,-1,-1 } true;
    $return := $z0;
    goto block130;
  block130:
    return;
}


implementation java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref){
    $exception := $null;
    return;
}


