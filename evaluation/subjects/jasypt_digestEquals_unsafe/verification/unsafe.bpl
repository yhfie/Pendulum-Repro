type ref;

type javaType;

type Field _;

type $heap_type = <$GenericType__0>[ref,Field $GenericType__0]$GenericType__0;

type boolArrHeap_type = [ref][int]bool;

type refArrHeap_type = [ref][int]ref;

type realArrHeap_type = [ref][int]int;

type intArrHeap_type = [ref][int]int;

const unique $type: Field javaType;

const unique $alloc: Field bool;

const unique $null: ref;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.Object: javaType extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique org.jasypt.digest.ByteDigester: javaType extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique org.jasypt.digest.StandardByteDigester: javaType extends unique java.lang.Object, org.jasypt.digest.ByteDigester complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.io.Serializable: javaType extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.Comparable: javaType extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.CharSequence: javaType extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.String: javaType extends unique java.lang.Object, java.io.Serializable, java.lang.Comparable, java.lang.CharSequence complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique org.jasypt.digest.config.DigesterConfig: javaType extends complete;

const unique $StringConst0: ref extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique org.jasypt.commons.CommonUtils: javaType extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique org.jasypt.exceptions.AlreadyInitializedException: javaType extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.Throwable: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.Exception: javaType extends unique java.lang.Throwable complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.RuntimeException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.ClassCastException: javaType extends unique java.lang.RuntimeException complete;

const unique $StringConst1: ref extends complete;

const unique $StringConst2: ref extends complete;

const unique $StringConst3: ref extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique org.jasypt.salt.SaltGenerator: javaType extends complete;

const unique $StringConst4: ref extends complete;

const unique $StringConst5: ref extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.util.Dictionary: javaType extends unique java.lang.Object complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.util.Map: javaType extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.Cloneable: javaType extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.util.Hashtable: javaType extends unique java.util.Dictionary, java.util.Map, java.lang.Cloneable, java.io.Serializable complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.util.Properties: javaType extends unique java.util.Hashtable complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.security.Provider: javaType extends unique java.util.Properties complete;

const unique $StringConst6: ref extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.Number: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.Integer: javaType extends unique java.lang.Number, java.lang.Comparable complete;

const unique $StringConst7: ref extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique org.jasypt.salt.RandomSaltGenerator: javaType extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique org.jasypt.exceptions.EncryptionInitializationException: javaType extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.Appendable: javaType extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.AbstractStringBuilder: javaType extends unique java.lang.Object, java.lang.Appendable, java.lang.CharSequence complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.StringBuilder: javaType extends unique java.lang.AbstractStringBuilder, java.io.Serializable, java.lang.CharSequence complete;

const unique $StringConst8: ref extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.reflect.AnnotatedElement: javaType extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.reflect.GenericDeclaration: javaType extends java.lang.reflect.AnnotatedElement complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.reflect.Type: javaType extends complete;

//const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.Class: javaType extends unique java.lang.Object, java.io.Serializable, java.lang.reflect.GenericDeclaration, java.lang.reflect.Type, java.lang.reflect.AnnotatedElement complete;

const unique $StringConst9: ref extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.security.MessageDigestSpi: javaType extends unique java.lang.Object complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.security.MessageDigest: javaType extends unique java.security.MessageDigestSpi complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.security.GeneralSecurityException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.security.NoSuchAlgorithmException: javaType extends unique java.security.GeneralSecurityException complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.security.NoSuchProviderException: javaType extends unique java.security.GeneralSecurityException complete;

const unique $StringConst10: ref extends complete;

const unique $StringConst11: ref extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique org.jasypt.exceptions.EncryptionOperationNotPossibleException: javaType extends complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.NullPointerException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.System: javaType extends unique java.lang.Object complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.IndexOutOfBoundsException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} unique java.lang.ArrayIndexOutOfBoundsException: javaType extends unique java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique java.lang.Boolean: javaType extends unique java.lang.Object complete;

var $heap: $heap_type;

var $intArrayType: javaType;

var $charArrayType: javaType;

var $boolArrayType: javaType;

var $byteArrayType: javaType;

var $longArrayType: javaType;

var $arrSizeHeap: [ref]int;

var $stringSizeHeap: [ref]int;

var $boolArrHeap: boolArrHeap_type;

var $refArrHeap: refArrHeap_type;

var $realArrHeap: realArrHeap_type;

var $intArrHeap: intArrHeap_type;

var $objIndex: int;

var java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260: Field ref;

var int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0: Field int;

var int$org.jasypt.digest.StandardByteDigester$iterations0: Field int;

var org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261: Field ref;

var java.lang.String$org.jasypt.digest.StandardByteDigester$providerName262: Field ref;

var java.security.Provider$org.jasypt.digest.StandardByteDigester$provider263: Field ref;

var boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigesting0: Field int;

var boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResults0: Field int;

var boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheck0: Field int;

var org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264: Field ref;

var boolean$org.jasypt.digest.StandardByteDigester$algorithmSet0: Field int;

var boolean$org.jasypt.digest.StandardByteDigester$saltSizeBytesSet0: Field int;

var boolean$org.jasypt.digest.StandardByteDigester$iterationsSet0: Field int;

var boolean$org.jasypt.digest.StandardByteDigester$saltGeneratorSet0: Field int;

var boolean$org.jasypt.digest.StandardByteDigester$providerNameSet0: Field int;

var boolean$org.jasypt.digest.StandardByteDigester$providerSet0: Field int;

var boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigestingSet0: Field int;

var boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResultsSet0: Field int;

var boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheckSet0: Field int;

var boolean$org.jasypt.digest.StandardByteDigester$initialized0: Field int;

var boolean$org.jasypt.digest.StandardByteDigester$useSalt0: Field int;

var java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265: Field ref;

var int$org.jasypt.digest.StandardByteDigester$digestLengthBytes0: Field int;

var boolean$java.lang.Boolean$value0: Field int;

function $arrayType(t: javaType) : javaType;

function $intToReal(x: int) : real;

function $intToBool(x: int) : bool;

axiom (forall x: int :: 
  { $intToBool(x): bool } 
  $intToBool(x): bool <==> (if x == 0 then false else true));

function $refToBool(x: ref) : bool;

axiom (forall x: ref :: 
  { $refToBool(x): bool } 
  $refToBool(x): bool <==> (if x == $null then false else true));

function $boolToInt(x: bool) : int;

axiom (forall x: bool :: 
  { $boolToInt(x): int } 
  $boolToInt(x): int == (if x <==> true then 1 else 0));

function $cmpBool(x: bool, y: bool) : int;

function $cmpRef(x: ref, y: ref) : int;

function $cmpReal(x: real, y: real) : int;

axiom (forall x: real, y: real :: 
  { $cmpReal(x, y): int } 
  $cmpReal(x, y): int == (if x > y then 1 else (if x < y then -1 else 0)));

function $cmpInt(x: int, y: int) : int;

axiom (forall x: int, y: int :: 
  { $cmpInt(x, y): int } 
  $cmpInt(x, y): int == (if x > y then 1 else (if x < y then -1 else 0)));

function $bitOr(x: int, y: int) : int;

function $bitAnd(x: int, y: int) : int;

function $xorInt(x: int, y: int) : int;

function $shlInt(x: int, y: int) : int;

function $ushrInt(x: int, y: int) : int;

function $shrInt(x: int, y: int) : int;

function $mulInt(x: int, y: int) : int;

function $divInt(x: int, y: int) : int;

function $modInt(x: int, y: int) : int;

function $intToRef(id: int) : ref;

axiom (forall index: int :: $intToRef(index) != $null);

axiom (forall i1: int, i2: int :: i1 == i2 <==> $intToRef(i1) == $intToRef(i2));

procedure $new(obj_type: javaType) returns ($obj: ref);
  modifies $objIndex, $heap;
  ensures !old($heap[$obj, $alloc]);
  ensures $obj != $null;
  ensures $obj == $intToRef(old($objIndex));
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];
  ensures $objIndex == old($objIndex) + 1;



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $heap[$other, $alloc] <==> true;
  ensures $other != $null;
  ensures $heap[$other, $type] == $heap[$this, $type];



procedure int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure org.jasypt.digest.StandardByteDigester$$la$init$ra$$($this: ref) returns ($exception: ref);
  modifies $objIndex, $heap, $stringSizeHeap;



procedure java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure org.jasypt.digest.StandardByteDigester$setConfig$org.jasypt.digest.config.DigesterConfig($this: ref, $in_parameter__0: ref) returns ($exception: ref);
  modifies $objIndex, $heap;



procedure org.jasypt.commons.CommonUtils$validateNotNull$java.lang.Object_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref) returns ($exception: ref);



procedure org.jasypt.digest.StandardByteDigester$isInitialized$($this: ref) returns ($return: int, $exception: ref);



procedure org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure org.jasypt.digest.StandardByteDigester$setAlgorithm$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);
  modifies $objIndex, $heap;



procedure org.jasypt.commons.CommonUtils$validateNotEmpty$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref) returns ($exception: ref);



procedure org.jasypt.digest.StandardByteDigester$setSaltSizeBytes$int($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies $objIndex, $heap;



procedure org.jasypt.commons.CommonUtils$validateIsTrue$boolean_java.lang.String($in_parameter__0: int, $in_parameter__1: ref) returns ($exception: ref);



procedure org.jasypt.digest.StandardByteDigester$setIterations$int($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies $objIndex, $heap;



procedure org.jasypt.digest.StandardByteDigester$setSaltGenerator$org.jasypt.salt.SaltGenerator($this: ref, $in_parameter__0: ref) returns ($exception: ref);
  modifies $objIndex, $heap;



procedure org.jasypt.digest.StandardByteDigester$setProviderName$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);
  modifies $objIndex, $heap;



procedure org.jasypt.digest.StandardByteDigester$setProvider$java.security.Provider($this: ref, $in_parameter__0: ref) returns ($exception: ref);
  modifies $objIndex, $heap;



procedure org.jasypt.digest.StandardByteDigester$setInvertPositionOfSaltInMessageBeforeDigesting$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies $objIndex, $heap;



procedure org.jasypt.digest.StandardByteDigester$setInvertPositionOfPlainSaltInEncryptionResults$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies $objIndex, $heap;



procedure org.jasypt.digest.StandardByteDigester$setUseLenientSaltSizeCheck$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies $objIndex, $heap;



procedure org.jasypt.digest.StandardByteDigester$cloneDigester$($this: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap, $stringSizeHeap;



procedure org.jasypt.digest.StandardByteDigester$initialize$($this: ref) returns ($exception: ref);
  modifies $objIndex, $heap;



procedure org.jasypt.commons.CommonUtils$isNotEmpty$java.lang.String($in_parameter__0: ref) returns ($return: int, $exception: ref);



procedure org.jasypt.digest.config.DigesterConfig$getAlgorithm$($this: ref) returns ($return: ref, $exception: ref);



procedure org.jasypt.digest.config.DigesterConfig$getSaltSizeBytes$($this: ref) returns ($return: ref, $exception: ref);



procedure java.lang.Integer$intValue$($this: ref) returns ($return: int, $exception: ref);



procedure org.jasypt.digest.config.DigesterConfig$getIterations$($this: ref) returns ($return: ref, $exception: ref);



procedure org.jasypt.digest.config.DigesterConfig$getSaltGenerator$($this: ref) returns ($return: ref, $exception: ref);



procedure org.jasypt.digest.config.DigesterConfig$getProviderName$($this: ref) returns ($return: ref, $exception: ref);



procedure org.jasypt.digest.config.DigesterConfig$getProvider$($this: ref) returns ($return: ref, $exception: ref);



procedure org.jasypt.digest.config.DigesterConfig$getInvertPositionOfSaltInMessageBeforeDigesting$($this: ref) returns ($return: ref, $exception: ref);



procedure org.jasypt.digest.config.DigesterConfig$getInvertPositionOfPlainSaltInEncryptionResults$($this: ref) returns ($return: ref, $exception: ref);



procedure org.jasypt.digest.config.DigesterConfig$getUseLenientSaltSizeCheck$($this: ref) returns ($return: ref, $exception: ref);



procedure org.jasypt.salt.RandomSaltGenerator$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure org.jasypt.salt.SaltGenerator$includePlainSaltInEncryptionResults$($this: ref) returns ($return: int, $exception: ref);



procedure java.lang.StringBuilder$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.StringBuilder$append$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure java.lang.Object$getClass$($this: ref) returns ($return: ref, $exception: ref);



procedure java.lang.Class$getName$($this: ref) returns ($return: ref, $exception: ref);



procedure java.lang.StringBuilder$toString$($this: ref) returns ($return: ref, $exception: ref);



procedure org.jasypt.exceptions.EncryptionInitializationException$$la$init$ra$$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure java.security.MessageDigest$getInstance$java.lang.String_java.security.Provider($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref);



procedure java.security.MessageDigest$getInstance$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref);



procedure java.security.MessageDigest$getInstance$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure org.jasypt.exceptions.EncryptionInitializationException$$la$init$ra$$java.lang.Throwable($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure java.security.MessageDigest$getDigestLength$($this: ref) returns ($return: int, $exception: ref);



procedure org.jasypt.digest.StandardByteDigester$digest$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure org.jasypt.salt.SaltGenerator$generateSalt$int($this: ref, $in_parameter__0: int) returns ($return: ref, $exception: ref);



procedure org.jasypt.digest.StandardByteDigester$digest$byte$lp$$rp$_byte$lp$$rp$($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.security.MessageDigest$reset$($this: ref) returns ($exception: ref);



procedure java.security.MessageDigest$update$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure java.security.MessageDigest$digest$($this: ref) returns ($return: ref, $exception: ref);



procedure java.security.MessageDigest$digest$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure org.jasypt.commons.CommonUtils$appendArrays$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref);



procedure org.jasypt.exceptions.EncryptionOperationNotPossibleException$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure org.jasypt.digest.StandardByteDigester$matches$byte$lp$$rp$_byte$lp$$rp$($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);



procedure org.jasypt.digest.StandardByteDigester$matches_unsafe$byte$lp$$rp$_byte$lp$$rp$($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $heap;



procedure java.lang.System$arraycopy$java.lang.Object_int_java.lang.Object_int_int($in_parameter__0: ref, 
    $in_parameter__1: int, 
    $in_parameter__2: ref, 
    $in_parameter__3: int, 
    $in_parameter__4: int)
   returns ($exception: ref);



procedure org.jasypt.digest.StandardByteDigester$jdkArraysEquals$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies $heap;



procedure java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



implementation org.jasypt.digest.StandardByteDigester$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var $fakelocal_0: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $heap[$this, $type] <: org.jasypt.digest.StandardByteDigester;
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StandardByteDigester.java", 270, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "StandardByteDigester.java", 184, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 3];
    $heap := $heap[r0, java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260 := $fakelocal_0];
    assert {:sourceloc "StandardByteDigester.java", 186, -1, -1, -1} true;
    $heap := $heap[r0, int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0 := 8];
    assert {:sourceloc "StandardByteDigester.java", 188, -1, -1, -1} true;
    $heap := $heap[r0, int$org.jasypt.digest.StandardByteDigester$iterations0 := 1000];
    assert {:sourceloc "StandardByteDigester.java", 192, -1, -1, -1} true;
    $heap := $heap[r0, org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261 := $null];
    assert {:sourceloc "StandardByteDigester.java", 195, -1, -1, -1} true;
    $heap := $heap[r0, java.lang.String$org.jasypt.digest.StandardByteDigester$providerName262 := $null];
    assert {:sourceloc "StandardByteDigester.java", 198, -1, -1, -1} true;
    $heap := $heap[r0, java.security.Provider$org.jasypt.digest.StandardByteDigester$provider263 := $null];
    assert {:sourceloc "StandardByteDigester.java", 201, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigesting0 := 0];
    assert {:sourceloc "StandardByteDigester.java", 204, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResults0 := 0];
    assert {:sourceloc "StandardByteDigester.java", 207, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheck0 := 0];
    assert {:sourceloc "StandardByteDigester.java", 217, -1, -1, -1} true;
    $heap := $heap[r0, org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264 := $null];
    assert {:sourceloc "StandardByteDigester.java", 224, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$algorithmSet0 := 0];
    assert {:sourceloc "StandardByteDigester.java", 225, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$saltSizeBytesSet0 := 0];
    assert {:sourceloc "StandardByteDigester.java", 226, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$iterationsSet0 := 0];
    assert {:sourceloc "StandardByteDigester.java", 227, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$saltGeneratorSet0 := 0];
    assert {:sourceloc "StandardByteDigester.java", 228, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$providerNameSet0 := 0];
    assert {:sourceloc "StandardByteDigester.java", 229, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$providerSet0 := 0];
    assert {:sourceloc "StandardByteDigester.java", 230, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigestingSet0 := 0];
    assert {:sourceloc "StandardByteDigester.java", 231, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResultsSet0 := 0];
    assert {:sourceloc "StandardByteDigester.java", 232, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheckSet0 := 0];
    assert {:sourceloc "StandardByteDigester.java", 240, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$initialized0 := 0];
    assert {:sourceloc "StandardByteDigester.java", 246, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$useSalt0 := 1];
    assert {:sourceloc "StandardByteDigester.java", 254, -1, -1, -1} true;
    $heap := $heap[r0, java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265 := $null];
    assert {:sourceloc "StandardByteDigester.java", 261, -1, -1, -1} true;
    $heap := $heap[r0, int$org.jasypt.digest.StandardByteDigester$digestLengthBytes0 := 0];
    assert {:sourceloc "StandardByteDigester.java", 271, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation org.jasypt.digest.StandardByteDigester$setConfig$org.jasypt.digest.config.DigesterConfig($this: ref, $in_parameter__0: ref) returns ($exception: ref)
{
  var $z0: int;
  var $fakelocal_1: ref;
  var $fakelocal_0: ref;
  var r4: ref;
  var r1: ref;
  var r0: ref;
  var r3: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $heap[$this, $type] <: org.jasypt.digest.StandardByteDigester;
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: org.jasypt.digest.config.DigesterConfig;
    $exception := $null;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "StandardByteDigester.java", 301, -1, -1, -1} true;
    call $exception := org.jasypt.commons.CommonUtils$validateNotNull$java.lang.Object_java.lang.String(r1, $StringConst0);
    assert {:sourceloc "StandardByteDigester.java", 302, -1, -1, -1} true;
    call $z0, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert {:sourceloc "StandardByteDigester.java", 302, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "StandardByteDigester.java", 302, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "StandardByteDigester.java", 303, -1, -1, -1} true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.AlreadyInitializedException);
    r3 := $fakelocal_0;
    assert {:sourceloc "StandardByteDigester.java", 303, -1, -1, -1} true;
    call $exception := org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$(r3);
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($heap[r3, $type] <: java.lang.Throwable);
    call $fakelocal_1 := $new(java.lang.ClassCastException);
    $exception := $fakelocal_1;
    return;

  anon8_Then:
    assume {:partition} $heap[r3, $type] <: java.lang.Throwable;
    $exception := $exception;
    goto anon6;

  anon6:
    r4 := r3;
    assert {:sourceloc "StandardByteDigester.java", 303, -1, -1, -1} true;
    $exception := r4;
    goto block3;

  block3:
    return;

  anon7_Then:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "StandardByteDigester.java", 302, -1, -1, -1} {:comment "thenblock"} true;
    goto block2;

  block2:
    assert {:sourceloc "StandardByteDigester.java", 305, -1, -1, -1} true;
    $heap := $heap[r0, org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264 := r1];
    assert {:sourceloc "StandardByteDigester.java", 306, -1, -1, -1} true;
    goto block3;
}



implementation org.jasypt.digest.StandardByteDigester$setAlgorithm$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref)
{
  var $fakelocal_1: ref;
  var r0: ref;
  var $z0: int;
  var r3: ref;
  var r1: ref;
  var r4: ref;
  var $fakelocal_0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $heap[$this, $type] <: org.jasypt.digest.StandardByteDigester;
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "StandardByteDigester.java", 336, -1, -1, -1} true;
    call $exception := org.jasypt.commons.CommonUtils$validateNotEmpty$java.lang.String_java.lang.String(r1, $StringConst1);
    assert {:sourceloc "StandardByteDigester.java", 337, -1, -1, -1} true;
    call $z0, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert {:sourceloc "StandardByteDigester.java", 337, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "StandardByteDigester.java", 337, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "StandardByteDigester.java", 338, -1, -1, -1} true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.AlreadyInitializedException);
    r3 := $fakelocal_0;
    assert {:sourceloc "StandardByteDigester.java", 338, -1, -1, -1} true;
    call $exception := org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$(r3);
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($heap[r3, $type] <: java.lang.Throwable);
    call $fakelocal_1 := $new(java.lang.ClassCastException);
    $exception := $fakelocal_1;
    return;

  anon8_Then:
    assume {:partition} $heap[r3, $type] <: java.lang.Throwable;
    $exception := $exception;
    goto anon6;

  anon6:
    r4 := r3;
    assert {:sourceloc "StandardByteDigester.java", 338, -1, -1, -1} true;
    $exception := r4;
    goto block5;

  block5:
    return;

  anon7_Then:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "StandardByteDigester.java", 337, -1, -1, -1} {:comment "thenblock"} true;
    goto block4;

  block4:
    assert {:sourceloc "StandardByteDigester.java", 340, -1, -1, -1} true;
    $heap := $heap[r0, java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260 := r1];
    assert {:sourceloc "StandardByteDigester.java", 341, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$algorithmSet0 := 1];
    assert {:sourceloc "StandardByteDigester.java", 342, -1, -1, -1} true;
    goto block5;
}



implementation org.jasypt.digest.StandardByteDigester$setSaltSizeBytes$int($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var r2: ref;
  var i0: int;
  var r3: ref;
  var $fakelocal_1: ref;
  var r0: ref;
  var $z0: int;
  var $fakelocal_0: ref;
  var $z1: int;
  var $z2: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $heap[$this, $type] <: org.jasypt.digest.StandardByteDigester;
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "StandardByteDigester.java", 360, -1, -1, -1} true;
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} 0 <= i0;
    assert {:sourceloc "StandardByteDigester.java", 360, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "StandardByteDigester.java", 362, -1, -1, -1} true;
    $z1 := 1;
    assert {:sourceloc "StandardByteDigester.java", 362, -1, -1, -1} true;
    goto block7;

  block7:
    assert {:sourceloc "StandardByteDigester.java", 360, -1, -1, -1} true;
    call $exception := org.jasypt.commons.CommonUtils$validateIsTrue$boolean_java.lang.String($z1, $StringConst2);
    assert {:sourceloc "StandardByteDigester.java", 361, -1, -1, -1} true;
    call $z0, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert {:sourceloc "StandardByteDigester.java", 361, -1, -1, -1} true;
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "StandardByteDigester.java", 361, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "StandardByteDigester.java", 362, -1, -1, -1} true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.AlreadyInitializedException);
    r2 := $fakelocal_0;
    assert {:sourceloc "StandardByteDigester.java", 362, -1, -1, -1} true;
    call $exception := org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$(r2);
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !($heap[r2, $type] <: java.lang.Throwable);
    call $fakelocal_1 := $new(java.lang.ClassCastException);
    $exception := $fakelocal_1;
    return;

  anon15_Then:
    assume {:partition} $heap[r2, $type] <: java.lang.Throwable;
    $exception := $exception;
    goto anon9;

  anon9:
    r3 := r2;
    assert {:sourceloc "StandardByteDigester.java", 362, -1, -1, -1} true;
    $exception := r3;
    goto block11;

  block11:
    return;

  anon14_Then:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "StandardByteDigester.java", 361, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "StandardByteDigester.java", 364, -1, -1, -1} true;
    $heap := $heap[r0, int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0 := i0];
    assert {:sourceloc "StandardByteDigester.java", 365, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} 0 < i0;
    assert {:sourceloc "StandardByteDigester.java", 365, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "StandardByteDigester.java", 367, -1, -1, -1} true;
    $z2 := 1;
    assert {:sourceloc "StandardByteDigester.java", 367, -1, -1, -1} true;
    goto block10;

  block10:
    assert {:sourceloc "StandardByteDigester.java", 365, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$useSalt0 := $z2];
    assert {:sourceloc "StandardByteDigester.java", 366, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$saltSizeBytesSet0 := 1];
    assert {:sourceloc "StandardByteDigester.java", 367, -1, -1, -1} true;
    goto block11;

  anon16_Then:
    assume {:partition} i0 <= 0;
    assert {:sourceloc "StandardByteDigester.java", 365, -1, -1, -1} {:comment "thenblock"} true;
    goto block9;

  block9:
    assert {:sourceloc "StandardByteDigester.java", 367, -1, -1, -1} true;
    $z2 := 0;
    goto block10;

  anon13_Then:
    assume {:partition} i0 < 0;
    assert {:sourceloc "StandardByteDigester.java", 360, -1, -1, -1} {:comment "thenblock"} true;
    goto block6;

  block6:
    assert {:sourceloc "StandardByteDigester.java", 362, -1, -1, -1} true;
    $z1 := 0;
    goto block7;
}



implementation org.jasypt.digest.StandardByteDigester$setIterations$int($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var $z0: int;
  var i0: int;
  var $z1: int;
  var r2: ref;
  var $fakelocal_1: ref;
  var r0: ref;
  var r3: ref;
  var $fakelocal_0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $heap[$this, $type] <: org.jasypt.digest.StandardByteDigester;
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "StandardByteDigester.java", 386, -1, -1, -1} true;
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} 0 < i0;
    assert {:sourceloc "StandardByteDigester.java", 386, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "StandardByteDigester.java", 388, -1, -1, -1} true;
    $z1 := 1;
    assert {:sourceloc "StandardByteDigester.java", 388, -1, -1, -1} true;
    goto block13;

  block13:
    assert {:sourceloc "StandardByteDigester.java", 386, -1, -1, -1} true;
    call $exception := org.jasypt.commons.CommonUtils$validateIsTrue$boolean_java.lang.String($z1, $StringConst3);
    assert {:sourceloc "StandardByteDigester.java", 387, -1, -1, -1} true;
    call $z0, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert {:sourceloc "StandardByteDigester.java", 387, -1, -1, -1} true;
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "StandardByteDigester.java", 387, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "StandardByteDigester.java", 388, -1, -1, -1} true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.AlreadyInitializedException);
    r2 := $fakelocal_0;
    assert {:sourceloc "StandardByteDigester.java", 388, -1, -1, -1} true;
    call $exception := org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$(r2);
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($heap[r2, $type] <: java.lang.Throwable);
    call $fakelocal_1 := $new(java.lang.ClassCastException);
    $exception := $fakelocal_1;
    return;

  anon12_Then:
    assume {:partition} $heap[r2, $type] <: java.lang.Throwable;
    $exception := $exception;
    goto anon9;

  anon9:
    r3 := r2;
    assert {:sourceloc "StandardByteDigester.java", 388, -1, -1, -1} true;
    $exception := r3;
    goto block15;

  block15:
    return;

  anon11_Then:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "StandardByteDigester.java", 387, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "StandardByteDigester.java", 390, -1, -1, -1} true;
    $heap := $heap[r0, int$org.jasypt.digest.StandardByteDigester$iterations0 := i0];
    assert {:sourceloc "StandardByteDigester.java", 391, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$iterationsSet0 := 1];
    assert {:sourceloc "StandardByteDigester.java", 392, -1, -1, -1} true;
    goto block15;

  anon10_Then:
    assume {:partition} i0 <= 0;
    assert {:sourceloc "StandardByteDigester.java", 386, -1, -1, -1} {:comment "thenblock"} true;
    goto block12;

  block12:
    assert {:sourceloc "StandardByteDigester.java", 388, -1, -1, -1} true;
    $z1 := 0;
    goto block13;
}



implementation org.jasypt.digest.StandardByteDigester$setSaltGenerator$org.jasypt.salt.SaltGenerator($this: ref, $in_parameter__0: ref) returns ($exception: ref)
{
  var r3: ref;
  var $fakelocal_1: ref;
  var $fakelocal_0: ref;
  var r0: ref;
  var $z0: int;
  var r1: ref;
  var r4: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $heap[$this, $type] <: org.jasypt.digest.StandardByteDigester;
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: org.jasypt.salt.SaltGenerator;
    $exception := $null;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "StandardByteDigester.java", 406, -1, -1, -1} true;
    call $exception := org.jasypt.commons.CommonUtils$validateNotNull$java.lang.Object_java.lang.String(r1, $StringConst4);
    assert {:sourceloc "StandardByteDigester.java", 407, -1, -1, -1} true;
    call $z0, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert {:sourceloc "StandardByteDigester.java", 407, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "StandardByteDigester.java", 407, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "StandardByteDigester.java", 408, -1, -1, -1} true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.AlreadyInitializedException);
    r3 := $fakelocal_0;
    assert {:sourceloc "StandardByteDigester.java", 408, -1, -1, -1} true;
    call $exception := org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$(r3);
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($heap[r3, $type] <: java.lang.Throwable);
    call $fakelocal_1 := $new(java.lang.ClassCastException);
    $exception := $fakelocal_1;
    return;

  anon8_Then:
    assume {:partition} $heap[r3, $type] <: java.lang.Throwable;
    $exception := $exception;
    goto anon6;

  anon6:
    r4 := r3;
    assert {:sourceloc "StandardByteDigester.java", 408, -1, -1, -1} true;
    $exception := r4;
    goto block17;

  block17:
    return;

  anon7_Then:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "StandardByteDigester.java", 407, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  block16:
    assert {:sourceloc "StandardByteDigester.java", 410, -1, -1, -1} true;
    $heap := $heap[r0, org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261 := r1];
    assert {:sourceloc "StandardByteDigester.java", 411, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$saltGeneratorSet0 := 1];
    assert {:sourceloc "StandardByteDigester.java", 412, -1, -1, -1} true;
    goto block17;
}



implementation org.jasypt.digest.StandardByteDigester$setProviderName$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref)
{
  var r1: ref;
  var $z0: int;
  var r0: ref;
  var r4: ref;
  var $fakelocal_1: ref;
  var r3: ref;
  var $fakelocal_0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $heap[$this, $type] <: org.jasypt.digest.StandardByteDigester;
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "StandardByteDigester.java", 443, -1, -1, -1} true;
    call $exception := org.jasypt.commons.CommonUtils$validateNotNull$java.lang.Object_java.lang.String(r1, $StringConst5);
    assert {:sourceloc "StandardByteDigester.java", 444, -1, -1, -1} true;
    call $z0, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert {:sourceloc "StandardByteDigester.java", 444, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "StandardByteDigester.java", 444, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "StandardByteDigester.java", 445, -1, -1, -1} true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.AlreadyInitializedException);
    r3 := $fakelocal_0;
    assert {:sourceloc "StandardByteDigester.java", 445, -1, -1, -1} true;
    call $exception := org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$(r3);
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($heap[r3, $type] <: java.lang.Throwable);
    call $fakelocal_1 := $new(java.lang.ClassCastException);
    $exception := $fakelocal_1;
    return;

  anon8_Then:
    assume {:partition} $heap[r3, $type] <: java.lang.Throwable;
    $exception := $exception;
    goto anon6;

  anon6:
    r4 := r3;
    assert {:sourceloc "StandardByteDigester.java", 445, -1, -1, -1} true;
    $exception := r4;
    goto block19;

  block19:
    return;

  anon7_Then:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "StandardByteDigester.java", 444, -1, -1, -1} {:comment "thenblock"} true;
    goto block18;

  block18:
    assert {:sourceloc "StandardByteDigester.java", 447, -1, -1, -1} true;
    $heap := $heap[r0, java.lang.String$org.jasypt.digest.StandardByteDigester$providerName262 := r1];
    assert {:sourceloc "StandardByteDigester.java", 448, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$providerNameSet0 := 1];
    assert {:sourceloc "StandardByteDigester.java", 449, -1, -1, -1} true;
    goto block19;
}



implementation org.jasypt.digest.StandardByteDigester$setProvider$java.security.Provider($this: ref, $in_parameter__0: ref) returns ($exception: ref)
{
  var $fakelocal_0: ref;
  var $z0: int;
  var r4: ref;
  var r3: ref;
  var r1: ref;
  var $fakelocal_1: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $heap[$this, $type] <: org.jasypt.digest.StandardByteDigester;
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.security.Provider;
    $exception := $null;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "StandardByteDigester.java", 473, -1, -1, -1} true;
    call $exception := org.jasypt.commons.CommonUtils$validateNotNull$java.lang.Object_java.lang.String(r1, $StringConst6);
    assert {:sourceloc "StandardByteDigester.java", 474, -1, -1, -1} true;
    call $z0, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert {:sourceloc "StandardByteDigester.java", 474, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "StandardByteDigester.java", 474, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "StandardByteDigester.java", 475, -1, -1, -1} true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.AlreadyInitializedException);
    r3 := $fakelocal_0;
    assert {:sourceloc "StandardByteDigester.java", 475, -1, -1, -1} true;
    call $exception := org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$(r3);
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($heap[r3, $type] <: java.lang.Throwable);
    call $fakelocal_1 := $new(java.lang.ClassCastException);
    $exception := $fakelocal_1;
    return;

  anon8_Then:
    assume {:partition} $heap[r3, $type] <: java.lang.Throwable;
    $exception := $exception;
    goto anon6;

  anon6:
    r4 := r3;
    assert {:sourceloc "StandardByteDigester.java", 475, -1, -1, -1} true;
    $exception := r4;
    goto block21;

  block21:
    return;

  anon7_Then:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "StandardByteDigester.java", 474, -1, -1, -1} {:comment "thenblock"} true;
    goto block20;

  block20:
    assert {:sourceloc "StandardByteDigester.java", 477, -1, -1, -1} true;
    $heap := $heap[r0, java.security.Provider$org.jasypt.digest.StandardByteDigester$provider263 := r1];
    assert {:sourceloc "StandardByteDigester.java", 478, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$providerSet0 := 1];
    assert {:sourceloc "StandardByteDigester.java", 479, -1, -1, -1} true;
    goto block21;
}



implementation org.jasypt.digest.StandardByteDigester$setInvertPositionOfSaltInMessageBeforeDigesting$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var z0: int;
  var r2: ref;
  var $fakelocal_0: ref;
  var $fakelocal_1: ref;
  var $z1: int;
  var r0: ref;
  var r3: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $heap[$this, $type] <: org.jasypt.digest.StandardByteDigester;
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "StandardByteDigester.java", 505, -1, -1, -1} true;
    call $z1, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert {:sourceloc "StandardByteDigester.java", 505, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $z1 != 0;
    assert {:sourceloc "StandardByteDigester.java", 505, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "StandardByteDigester.java", 506, -1, -1, -1} true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.AlreadyInitializedException);
    r2 := $fakelocal_0;
    assert {:sourceloc "StandardByteDigester.java", 506, -1, -1, -1} true;
    call $exception := org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$(r2);
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($heap[r2, $type] <: java.lang.Throwable);
    call $fakelocal_1 := $new(java.lang.ClassCastException);
    $exception := $fakelocal_1;
    return;

  anon8_Then:
    assume {:partition} $heap[r2, $type] <: java.lang.Throwable;
    $exception := $exception;
    goto anon6;

  anon6:
    r3 := r2;
    assert {:sourceloc "StandardByteDigester.java", 506, -1, -1, -1} true;
    $exception := r3;
    goto block23;

  block23:
    return;

  anon7_Then:
    assume {:partition} $z1 == 0;
    assert {:sourceloc "StandardByteDigester.java", 505, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;

  block22:
    assert {:sourceloc "StandardByteDigester.java", 508, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigesting0 := z0];
    assert {:sourceloc "StandardByteDigester.java", 509, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigestingSet0 := 1];
    assert {:sourceloc "StandardByteDigester.java", 511, -1, -1, -1} true;
    goto block23;
}



implementation org.jasypt.digest.StandardByteDigester$setInvertPositionOfPlainSaltInEncryptionResults$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var $fakelocal_1: ref;
  var r2: ref;
  var z0: int;
  var r0: ref;
  var r3: ref;
  var $z1: int;
  var $fakelocal_0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $heap[$this, $type] <: org.jasypt.digest.StandardByteDigester;
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "StandardByteDigester.java", 537, -1, -1, -1} true;
    call $z1, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert {:sourceloc "StandardByteDigester.java", 537, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $z1 != 0;
    assert {:sourceloc "StandardByteDigester.java", 537, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "StandardByteDigester.java", 538, -1, -1, -1} true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.AlreadyInitializedException);
    r2 := $fakelocal_0;
    assert {:sourceloc "StandardByteDigester.java", 538, -1, -1, -1} true;
    call $exception := org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$(r2);
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($heap[r2, $type] <: java.lang.Throwable);
    call $fakelocal_1 := $new(java.lang.ClassCastException);
    $exception := $fakelocal_1;
    return;

  anon8_Then:
    assume {:partition} $heap[r2, $type] <: java.lang.Throwable;
    $exception := $exception;
    goto anon6;

  anon6:
    r3 := r2;
    assert {:sourceloc "StandardByteDigester.java", 538, -1, -1, -1} true;
    $exception := r3;
    goto block25;

  block25:
    return;

  anon7_Then:
    assume {:partition} $z1 == 0;
    assert {:sourceloc "StandardByteDigester.java", 537, -1, -1, -1} {:comment "thenblock"} true;
    goto block24;

  block24:
    assert {:sourceloc "StandardByteDigester.java", 540, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResults0 := z0];
    assert {:sourceloc "StandardByteDigester.java", 541, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResultsSet0 := 1];
    assert {:sourceloc "StandardByteDigester.java", 543, -1, -1, -1} true;
    goto block25;
}



implementation org.jasypt.digest.StandardByteDigester$setUseLenientSaltSizeCheck$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var r2: ref;
  var $z1: int;
  var r0: ref;
  var z0: int;
  var r3: ref;
  var $fakelocal_0: ref;
  var $fakelocal_1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $heap[$this, $type] <: org.jasypt.digest.StandardByteDigester;
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "StandardByteDigester.java", 587, -1, -1, -1} true;
    call $z1, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert {:sourceloc "StandardByteDigester.java", 587, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $z1 != 0;
    assert {:sourceloc "StandardByteDigester.java", 587, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "StandardByteDigester.java", 588, -1, -1, -1} true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.AlreadyInitializedException);
    r2 := $fakelocal_0;
    assert {:sourceloc "StandardByteDigester.java", 588, -1, -1, -1} true;
    call $exception := org.jasypt.exceptions.AlreadyInitializedException$$la$init$ra$$(r2);
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($heap[r2, $type] <: java.lang.Throwable);
    call $fakelocal_1 := $new(java.lang.ClassCastException);
    $exception := $fakelocal_1;
    return;

  anon8_Then:
    assume {:partition} $heap[r2, $type] <: java.lang.Throwable;
    $exception := $exception;
    goto anon6;

  anon6:
    r3 := r2;
    assert {:sourceloc "StandardByteDigester.java", 588, -1, -1, -1} true;
    $exception := r3;
    goto block27;

  block27:
    return;

  anon7_Then:
    assume {:partition} $z1 == 0;
    assert {:sourceloc "StandardByteDigester.java", 587, -1, -1, -1} {:comment "thenblock"} true;
    goto block26;

  block26:
    assert {:sourceloc "StandardByteDigester.java", 590, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheck0 := z0];
    assert {:sourceloc "StandardByteDigester.java", 591, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheckSet0 := 1];
    assert {:sourceloc "StandardByteDigester.java", 593, -1, -1, -1} true;
    goto block27;
}



implementation org.jasypt.digest.StandardByteDigester$cloneDigester$($this: ref) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var $r3: ref;
  var r0: ref;
  var $z4: int;
  var $r2: ref;
  var $z0: int;
  var $z1: int;
  var $r6: ref;
  var $i0: int;
  var $r7: ref;
  var $i1: int;
  var $r10: ref;
  var $z3: int;
  var $r8: ref;
  var $r9: ref;
  var $r5: ref;
  var $r4: ref;
  var $z2: int;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $heap[$this, $type] <: org.jasypt.digest.StandardByteDigester;
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: org.jasypt.digest.StandardByteDigester;
    $exception := $null;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StandardByteDigester.java", 606, -1, -1, -1} true;
    call $z0, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert {:sourceloc "StandardByteDigester.java", 606, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "StandardByteDigester.java", 606, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "StandardByteDigester.java", 607, -1, -1, -1} true;
    call $exception := org.jasypt.digest.StandardByteDigester$initialize$(r0);
    goto block28;

  block28:
    assert {:sourceloc "StandardByteDigester.java", 610, -1, -1, -1} true;
    call $fakelocal_0 := $new(org.jasypt.digest.StandardByteDigester);
    $r2 := $fakelocal_0;
    assert {:sourceloc "StandardByteDigester.java", 610, -1, -1, -1} true;
    call $exception := org.jasypt.digest.StandardByteDigester$$la$init$ra$$($r2);
    assert {:sourceloc "StandardByteDigester.java", 610, -1, -1, -1} true;
    r1 := $r2;
    assert {:sourceloc "StandardByteDigester.java", 611, -1, -1, -1} true;
    $r3 := $heap[r0, java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260];
    assert {:sourceloc "StandardByteDigester.java", 611, -1, -1, -1} true;
    call $z1, $exception := org.jasypt.commons.CommonUtils$isNotEmpty$java.lang.String($r3);
    assert {:sourceloc "StandardByteDigester.java", 611, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} $z1 != 0;
    assert {:sourceloc "StandardByteDigester.java", 611, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "StandardByteDigester.java", 612, -1, -1, -1} true;
    $r10 := $heap[r0, java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260];
    assert {:sourceloc "StandardByteDigester.java", 612, -1, -1, -1} true;
    call $exception := org.jasypt.digest.StandardByteDigester$setAlgorithm$java.lang.String(r1, $r10);
    goto block29;

  block29:
    assert {:sourceloc "StandardByteDigester.java", 614, -1, -1, -1} true;
    $z2 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResults0];
    assert {:sourceloc "StandardByteDigester.java", 614, -1, -1, -1} true;
    call $exception := org.jasypt.digest.StandardByteDigester$setInvertPositionOfPlainSaltInEncryptionResults$boolean(r1, $z2);
    assert {:sourceloc "StandardByteDigester.java", 615, -1, -1, -1} true;
    $z3 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigesting0];
    assert {:sourceloc "StandardByteDigester.java", 615, -1, -1, -1} true;
    call $exception := org.jasypt.digest.StandardByteDigester$setInvertPositionOfSaltInMessageBeforeDigesting$boolean(r1, $z3);
    assert {:sourceloc "StandardByteDigester.java", 616, -1, -1, -1} true;
    $i0 := $heap[r0, int$org.jasypt.digest.StandardByteDigester$iterations0];
    assert {:sourceloc "StandardByteDigester.java", 616, -1, -1, -1} true;
    call $exception := org.jasypt.digest.StandardByteDigester$setIterations$int(r1, $i0);
    assert {:sourceloc "StandardByteDigester.java", 617, -1, -1, -1} true;
    $r4 := $heap[r0, java.security.Provider$org.jasypt.digest.StandardByteDigester$provider263];
    assert {:sourceloc "StandardByteDigester.java", 617, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} $r4 != $null;
    assert {:sourceloc "StandardByteDigester.java", 617, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "StandardByteDigester.java", 618, -1, -1, -1} true;
    $r9 := $heap[r0, java.security.Provider$org.jasypt.digest.StandardByteDigester$provider263];
    assert {:sourceloc "StandardByteDigester.java", 618, -1, -1, -1} true;
    call $exception := org.jasypt.digest.StandardByteDigester$setProvider$java.security.Provider(r1, $r9);
    goto block30;

  block30:
    assert {:sourceloc "StandardByteDigester.java", 620, -1, -1, -1} true;
    $r5 := $heap[r0, java.lang.String$org.jasypt.digest.StandardByteDigester$providerName262];
    assert {:sourceloc "StandardByteDigester.java", 620, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} $r5 != $null;
    assert {:sourceloc "StandardByteDigester.java", 620, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "StandardByteDigester.java", 621, -1, -1, -1} true;
    $r8 := $heap[r0, java.lang.String$org.jasypt.digest.StandardByteDigester$providerName262];
    assert {:sourceloc "StandardByteDigester.java", 621, -1, -1, -1} true;
    call $exception := org.jasypt.digest.StandardByteDigester$setProviderName$java.lang.String(r1, $r8);
    goto block31;

  block31:
    assert {:sourceloc "StandardByteDigester.java", 623, -1, -1, -1} true;
    $r6 := $heap[r0, org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261];
    assert {:sourceloc "StandardByteDigester.java", 623, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} $r6 != $null;
    assert {:sourceloc "StandardByteDigester.java", 623, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "StandardByteDigester.java", 624, -1, -1, -1} true;
    $r7 := $heap[r0, org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261];
    assert {:sourceloc "StandardByteDigester.java", 624, -1, -1, -1} true;
    call $exception := org.jasypt.digest.StandardByteDigester$setSaltGenerator$org.jasypt.salt.SaltGenerator(r1, $r7);
    goto block32;

  block32:
    assert {:sourceloc "StandardByteDigester.java", 626, -1, -1, -1} true;
    $i1 := $heap[r0, int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0];
    assert {:sourceloc "StandardByteDigester.java", 626, -1, -1, -1} true;
    call $exception := org.jasypt.digest.StandardByteDigester$setSaltSizeBytes$int(r1, $i1);
    assert {:sourceloc "StandardByteDigester.java", 627, -1, -1, -1} true;
    $z4 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheck0];
    assert {:sourceloc "StandardByteDigester.java", 627, -1, -1, -1} true;
    call $exception := org.jasypt.digest.StandardByteDigester$setUseLenientSaltSizeCheck$boolean(r1, $z4);
    assert {:sourceloc "StandardByteDigester.java", 629, -1, -1, -1} true;
    $return := r1;
    goto block33;

  block33:
    return;

  anon20_Then:
    assume {:partition} $r6 == $null;
    assert {:sourceloc "StandardByteDigester.java", 623, -1, -1, -1} {:comment "thenblock"} true;
    goto block32;

  anon19_Then:
    assume {:partition} $r5 == $null;
    assert {:sourceloc "StandardByteDigester.java", 620, -1, -1, -1} {:comment "thenblock"} true;
    goto block31;

  anon18_Then:
    assume {:partition} $r4 == $null;
    assert {:sourceloc "StandardByteDigester.java", 617, -1, -1, -1} {:comment "thenblock"} true;
    goto block30;

  anon17_Then:
    assume {:partition} $z1 == 0;
    assert {:sourceloc "StandardByteDigester.java", 611, -1, -1, -1} {:comment "thenblock"} true;
    goto block29;

  anon16_Then:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "StandardByteDigester.java", 606, -1, -1, -1} {:comment "thenblock"} true;
    goto block28;
}



implementation org.jasypt.digest.StandardByteDigester$isInitialized$($this: ref) returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $z0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $heap[$this, $type] <: org.jasypt.digest.StandardByteDigester;
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StandardByteDigester.java", 658, -1, -1, -1} true;
    $z0 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$initialized0];
    assert {:sourceloc "StandardByteDigester.java", 658, -1, -1, -1} true;
    $return := $z0;
    goto block34;

  block34:
    return;
}



implementation org.jasypt.digest.StandardByteDigester$initialize$($this: ref) returns ($exception: ref)
{
  var $z15: int;
  var r63: ref;
  var $r27: ref;
  var $r14: ref;
  var $r12: ref;
  var r53: ref;
  var $z1: int;
  var $fakelocal_10: ref;
  var $fakelocal_11: ref;
  var $fakelocal_15: ref;
  var $fakelocal_21: ref;
  var $z2: int;
  var $fakelocal_20: ref;
  var $r51: ref;
  var $r25: ref;
  var $r11: ref;
  var $z11: int;
  var $r41: ref;
  var $r20: ref;
  var $r23: ref;
  var $r15: ref;
  var r6: ref;
  var $fakelocal_18: ref;
  var $fakelocal_29: ref;
  var r67: ref;
  var r58: ref;
  var $z10: int;
  var $fakelocal_13: ref;
  var $r37: ref;
  var r66: ref;
  var $z3: int;
  var $fakelocal_19: ref;
  var $z6: int;
  var $fakelocal_3: ref;
  var $r45: ref;
  var $z7: int;
  var $i4: int;
  var $fakelocal_2: ref;
  var $z16: int;
  var $r29: ref;
  var $fakelocal_16: ref;
  var $r35: ref;
  var r68: ref;
  var $r46: ref;
  var $r28: ref;
  var $r49: ref;
  var $fakelocal_26: ref;
  var $r26: ref;
  var $fakelocal_14: ref;
  var $fakelocal_17: ref;
  var $r18: ref;
  var r59: ref;
  var r0: ref;
  var r7: ref;
  var $fakelocal_4: ref;
  var r64: ref;
  var $fakelocal_23: ref;
  var $r10: ref;
  var $fakelocal_5: ref;
  var $r47: ref;
  var r60: ref;
  var $r48: ref;
  var $z4: int;
  var $i2: int;
  var $z14: int;
  var r2: ref;
  var r1: ref;
  var r5: ref;
  var $fakelocal_1: ref;
  var $r44: ref;
  var $i1: int;
  var $fakelocal_12: ref;
  var $z12: int;
  var $r33: ref;
  var $fakelocal_9: ref;
  var $r43: ref;
  var $r54: ref;
  var $fakelocal_22: ref;
  var $fakelocal_24: ref;
  var $fakelocal_27: ref;
  var $r57: ref;
  var $fakelocal_25: ref;
  var r69: ref;
  var $i0: int;
  var $z5: int;
  var r3: ref;
  var $z0: int;
  var $z13: int;
  var $r56: ref;
  var $fakelocal_28: ref;
  var $r38: ref;
  var $i3: int;
  var $r21: ref;
  var r65: ref;
  var $z8: int;
  var $z9: int;
  var $r13: ref;
  var $r42: ref;
  var $fakelocal_7: ref;
  var $r40: ref;
  var $fakelocal_8: ref;
  var $r55: ref;
  var $r36: ref;
  var $r34: ref;
  var r4: ref;
  var $fakelocal_0: ref;
  var r8: ref;
  var r61: ref;
  var $i5: int;
  var r62: ref;
  var $r32: ref;
  var $fakelocal_6: ref;
  var $r19: ref;
  var r70: ref;
  var $r9: ref;
  var $r22: ref;
  var $r24: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $heap[$this, $type] <: org.jasypt.digest.StandardByteDigester;
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StandardByteDigester.java", 697, -1, -1, -1} true;
    $z0 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$initialized0];
    assert {:sourceloc "StandardByteDigester.java", 697, -1, -1, -1} true;
    goto anon169_Then, anon169_Else;

  anon169_Else:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "StandardByteDigester.java", 697, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "StandardByteDigester.java", 704, -1, -1, -1} true;
    $r9 := $heap[r0, org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264];
    assert {:sourceloc "StandardByteDigester.java", 704, -1, -1, -1} true;
    goto anon170_Then, anon170_Else;

  anon170_Else:
    assume {:partition} $r9 != $null;
    assert {:sourceloc "StandardByteDigester.java", 704, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "StandardByteDigester.java", 706, -1, -1, -1} true;
    $r40 := $heap[r0, org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264];
    assert {:sourceloc "StandardByteDigester.java", 706, -1, -1, -1} true;
    goto anon171_Then, anon171_Else;

  anon171_Else:
    assume {:partition} $r40 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_0;
    return;

  anon171_Then:
    assume {:partition} $r40 != $null;
    $exception := $exception;
    goto anon9;

  anon9:
    call r53, $exception := org.jasypt.digest.config.DigesterConfig$getAlgorithm$($r40);
    assert {:sourceloc "StandardByteDigester.java", 707, -1, -1, -1} true;
    goto anon172_Then, anon172_Else;

  anon172_Else:
    assume {:partition} r53 != $null;
    assert {:sourceloc "StandardByteDigester.java", 707, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "StandardByteDigester.java", 708, -1, -1, -1} true;
    call $exception := org.jasypt.commons.CommonUtils$validateNotEmpty$java.lang.String_java.lang.String(r53, $StringConst1);
    goto block37;

  block37:
    assert {:sourceloc "StandardByteDigester.java", 711, -1, -1, -1} true;
    $r41 := $heap[r0, org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264];
    assert {:sourceloc "StandardByteDigester.java", 711, -1, -1, -1} true;
    goto anon173_Then, anon173_Else;

  anon173_Else:
    assume {:partition} $r41 == $null;
    call $fakelocal_1 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_1;
    return;

  anon173_Then:
    assume {:partition} $r41 != $null;
    $exception := $exception;
    goto anon15;

  anon15:
    call r1, $exception := org.jasypt.digest.config.DigesterConfig$getSaltSizeBytes$($r41);
    assert {:sourceloc "StandardByteDigester.java", 712, -1, -1, -1} true;
    goto anon174_Then, anon174_Else;

  anon174_Else:
    assume {:partition} r1 != $null;
    assert {:sourceloc "StandardByteDigester.java", 712, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon18;

  anon18:
    assert {:sourceloc "StandardByteDigester.java", 713, -1, -1, -1} true;
    call $i3, $exception := java.lang.Integer$intValue$(r1);
    assert {:sourceloc "StandardByteDigester.java", 713, -1, -1, -1} true;
    goto anon175_Then, anon175_Else;

  anon175_Else:
    assume {:partition} 0 <= $i3;
    assert {:sourceloc "StandardByteDigester.java", 713, -1, -1, -1} {:comment "elseblock"} true;
    goto anon21;

  anon21:
    assert {:sourceloc "StandardByteDigester.java", 718, -1, -1, -1} true;
    $z12 := 1;
    assert {:sourceloc "StandardByteDigester.java", 718, -1, -1, -1} true;
    goto block40;

  block40:
    assert {:sourceloc "StandardByteDigester.java", 713, -1, -1, -1} true;
    call $exception := org.jasypt.commons.CommonUtils$validateIsTrue$boolean_java.lang.String($z12, $StringConst2);
    goto block38;

  block38:
    assert {:sourceloc "StandardByteDigester.java", 717, -1, -1, -1} true;
    $r42 := $heap[r0, org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264];
    assert {:sourceloc "StandardByteDigester.java", 717, -1, -1, -1} true;
    goto anon176_Then, anon176_Else;

  anon176_Else:
    assume {:partition} $r42 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_2;
    return;

  anon176_Then:
    assume {:partition} $r42 != $null;
    $exception := $exception;
    goto anon24;

  anon24:
    call r2, $exception := org.jasypt.digest.config.DigesterConfig$getIterations$($r42);
    assert {:sourceloc "StandardByteDigester.java", 718, -1, -1, -1} true;
    goto anon177_Then, anon177_Else;

  anon177_Else:
    assume {:partition} r2 != $null;
    assert {:sourceloc "StandardByteDigester.java", 718, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon27;

  anon27:
    assert {:sourceloc "StandardByteDigester.java", 719, -1, -1, -1} true;
    call $i2, $exception := java.lang.Integer$intValue$(r2);
    assert {:sourceloc "StandardByteDigester.java", 719, -1, -1, -1} true;
    goto anon178_Then, anon178_Else;

  anon178_Else:
    assume {:partition} 0 < $i2;
    assert {:sourceloc "StandardByteDigester.java", 719, -1, -1, -1} {:comment "elseblock"} true;
    goto anon30;

  anon30:
    assert {:sourceloc "StandardByteDigester.java", 726, -1, -1, -1} true;
    $z13 := 1;
    assert {:sourceloc "StandardByteDigester.java", 726, -1, -1, -1} true;
    goto block43;

  block43:
    assert {:sourceloc "StandardByteDigester.java", 719, -1, -1, -1} true;
    call $exception := org.jasypt.commons.CommonUtils$validateIsTrue$boolean_java.lang.String($z13, $StringConst3);
    goto block41;

  block41:
    assert {:sourceloc "StandardByteDigester.java", 723, -1, -1, -1} true;
    $r43 := $heap[r0, org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264];
    assert {:sourceloc "StandardByteDigester.java", 723, -1, -1, -1} true;
    goto anon179_Then, anon179_Else;

  anon179_Else:
    assume {:partition} $r43 == $null;
    call $fakelocal_3 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_3;
    return;

  anon179_Then:
    assume {:partition} $r43 != $null;
    $exception := $exception;
    goto anon33;

  anon33:
    call r3, $exception := org.jasypt.digest.config.DigesterConfig$getSaltGenerator$($r43);
    assert {:sourceloc "StandardByteDigester.java", 725, -1, -1, -1} true;
    $r44 := $heap[r0, org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264];
    assert {:sourceloc "StandardByteDigester.java", 725, -1, -1, -1} true;
    goto anon180_Then, anon180_Else;

  anon180_Else:
    assume {:partition} $r44 == $null;
    call $fakelocal_4 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_4;
    return;

  anon180_Then:
    assume {:partition} $r44 != $null;
    $exception := $exception;
    goto anon36;

  anon36:
    call r4, $exception := org.jasypt.digest.config.DigesterConfig$getProviderName$($r44);
    assert {:sourceloc "StandardByteDigester.java", 726, -1, -1, -1} true;
    goto anon181_Then, anon181_Else;

  anon181_Else:
    assume {:partition} r4 != $null;
    assert {:sourceloc "StandardByteDigester.java", 726, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon39;

  anon39:
    assert {:sourceloc "StandardByteDigester.java", 727, -1, -1, -1} true;
    call $exception := org.jasypt.commons.CommonUtils$validateNotEmpty$java.lang.String_java.lang.String(r4, $StringConst7);
    goto block44;

  block44:
    assert {:sourceloc "StandardByteDigester.java", 730, -1, -1, -1} true;
    $r45 := $heap[r0, org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264];
    assert {:sourceloc "StandardByteDigester.java", 730, -1, -1, -1} true;
    goto anon182_Then, anon182_Else;

  anon182_Else:
    assume {:partition} $r45 == $null;
    call $fakelocal_5 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_5;
    return;

  anon182_Then:
    assume {:partition} $r45 != $null;
    $exception := $exception;
    goto anon42;

  anon42:
    call r5, $exception := org.jasypt.digest.config.DigesterConfig$getProvider$($r45);
    assert {:sourceloc "StandardByteDigester.java", 733, -1, -1, -1} true;
    $r46 := $heap[r0, org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264];
    assert {:sourceloc "StandardByteDigester.java", 733, -1, -1, -1} true;
    goto anon183_Then, anon183_Else;

  anon183_Else:
    assume {:partition} $r46 == $null;
    call $fakelocal_6 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_6;
    return;

  anon183_Then:
    assume {:partition} $r46 != $null;
    $exception := $exception;
    goto anon45;

  anon45:
    call r6, $exception := org.jasypt.digest.config.DigesterConfig$getInvertPositionOfSaltInMessageBeforeDigesting$($r46);
    assert {:sourceloc "StandardByteDigester.java", 736, -1, -1, -1} true;
    $r47 := $heap[r0, org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264];
    assert {:sourceloc "StandardByteDigester.java", 736, -1, -1, -1} true;
    goto anon184_Then, anon184_Else;

  anon184_Else:
    assume {:partition} $r47 == $null;
    call $fakelocal_7 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_7;
    return;

  anon184_Then:
    assume {:partition} $r47 != $null;
    $exception := $exception;
    goto anon48;

  anon48:
    call r7, $exception := org.jasypt.digest.config.DigesterConfig$getInvertPositionOfPlainSaltInEncryptionResults$($r47);
    assert {:sourceloc "StandardByteDigester.java", 739, -1, -1, -1} true;
    $r48 := $heap[r0, org.jasypt.digest.config.DigesterConfig$org.jasypt.digest.StandardByteDigester$config264];
    assert {:sourceloc "StandardByteDigester.java", 739, -1, -1, -1} true;
    goto anon185_Then, anon185_Else;

  anon185_Else:
    assume {:partition} $r48 == $null;
    call $fakelocal_8 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_8;
    return;

  anon185_Then:
    assume {:partition} $r48 != $null;
    $exception := $exception;
    goto anon51;

  anon51:
    call r8, $exception := org.jasypt.digest.config.DigesterConfig$getUseLenientSaltSizeCheck$($r48);
    assert {:sourceloc "StandardByteDigester.java", 742, -1, -1, -1} {:clone} true;
    $z3 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$algorithmSet0];
    assert {:sourceloc "StandardByteDigester.java", 742, -1, -1, -1} {:clone} true;
    goto anon186_Then, anon186_Else;

  anon186_Else:
    assume {:partition} $z3 == 0;
    assert {:sourceloc "StandardByteDigester.java", 742, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon54;

  anon54:
    assert {:sourceloc "StandardByteDigester.java", 748, -1, -1, -1} {:clone} true;
    goto anon187_Then, anon187_Else;

  anon187_Else:
    assume {:partition} r53 == $null;
    assert {:sourceloc "StandardByteDigester.java", 748, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto block45;

  block45:
    assert {:sourceloc "StandardByteDigester.java", 742, -1, -1, -1} true;
    $r54 := $heap[r0, java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260];
    assert {:sourceloc "StandardByteDigester.java", 742, -1, -1, -1} true;
    goto block47;

  block47:
    assert {:sourceloc "StandardByteDigester.java", 742, -1, -1, -1} {:clone} true;
    $heap := $heap[r0, java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260 := $r54];
    assert {:sourceloc "StandardByteDigester.java", 745, -1, -1, -1} {:clone} true;
    $z4 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$saltSizeBytesSet0];
    assert {:sourceloc "StandardByteDigester.java", 745, -1, -1, -1} {:clone} true;
    goto anon188_Then, anon188_Else;

  anon188_Else:
    assume {:partition} $z4 == 0;
    assert {:sourceloc "StandardByteDigester.java", 745, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon59;

  anon59:
    assert {:sourceloc "StandardByteDigester.java", 751, -1, -1, -1} {:clone} true;
    goto anon189_Then, anon189_Else;

  anon189_Else:
    assume {:partition} r1 == $null;
    assert {:sourceloc "StandardByteDigester.java", 751, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto block48;

  block48:
    assert {:sourceloc "StandardByteDigester.java", 745, -1, -1, -1} true;
    $i4 := $heap[r0, int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0];
    assert {:sourceloc "StandardByteDigester.java", 745, -1, -1, -1} true;
    goto block50;

  block50:
    assert {:sourceloc "StandardByteDigester.java", 745, -1, -1, -1} {:clone} true;
    $heap := $heap[r0, int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0 := $i4];
    assert {:sourceloc "StandardByteDigester.java", 748, -1, -1, -1} {:clone} true;
    $z5 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$iterationsSet0];
    assert {:sourceloc "StandardByteDigester.java", 748, -1, -1, -1} {:clone} true;
    goto anon190_Then, anon190_Else;

  anon190_Else:
    assume {:partition} $z5 == 0;
    assert {:sourceloc "StandardByteDigester.java", 748, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon64;

  anon64:
    assert {:sourceloc "StandardByteDigester.java", 754, -1, -1, -1} {:clone} true;
    goto anon191_Then, anon191_Else;

  anon191_Else:
    assume {:partition} r2 == $null;
    assert {:sourceloc "StandardByteDigester.java", 754, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto block51;

  block51:
    assert {:sourceloc "StandardByteDigester.java", 748, -1, -1, -1} true;
    $i5 := $heap[r0, int$org.jasypt.digest.StandardByteDigester$iterations0];
    assert {:sourceloc "StandardByteDigester.java", 748, -1, -1, -1} true;
    goto block53;

  block53:
    assert {:sourceloc "StandardByteDigester.java", 748, -1, -1, -1} true;
    $heap := $heap[r0, int$org.jasypt.digest.StandardByteDigester$iterations0 := $i5];
    assert {:sourceloc "StandardByteDigester.java", 751, -1, -1, -1} {:clone} true;
    $z6 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$saltGeneratorSet0];
    assert {:sourceloc "StandardByteDigester.java", 751, -1, -1, -1} {:clone} true;
    goto anon192_Then, anon192_Else;

  anon192_Else:
    assume {:partition} $z6 == 0;
    assert {:sourceloc "StandardByteDigester.java", 751, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon69;

  anon69:
    assert {:sourceloc "StandardByteDigester.java", 757, -1, -1, -1} {:clone} true;
    goto anon193_Then, anon193_Else;

  anon193_Else:
    assume {:partition} r3 == $null;
    assert {:sourceloc "StandardByteDigester.java", 757, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto block54;

  block54:
    assert {:sourceloc "StandardByteDigester.java", 751, -1, -1, -1} true;
    $r55 := $heap[r0, org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261];
    assert {:sourceloc "StandardByteDigester.java", 751, -1, -1, -1} true;
    goto block56;

  block56:
    assert {:sourceloc "StandardByteDigester.java", 751, -1, -1, -1} true;
    $heap := $heap[r0, org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261 := $r55];
    assert {:sourceloc "StandardByteDigester.java", 754, -1, -1, -1} {:clone} true;
    $z7 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$providerNameSet0];
    assert {:sourceloc "StandardByteDigester.java", 754, -1, -1, -1} {:clone} true;
    goto anon194_Then, anon194_Else;

  anon194_Else:
    assume {:partition} $z7 == 0;
    assert {:sourceloc "StandardByteDigester.java", 754, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon74;

  anon74:
    assert {:sourceloc "StandardByteDigester.java", 760, -1, -1, -1} {:clone} true;
    goto anon195_Then, anon195_Else;

  anon195_Else:
    assume {:partition} r4 == $null;
    assert {:sourceloc "StandardByteDigester.java", 760, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto block57;

  block57:
    assert {:sourceloc "StandardByteDigester.java", 754, -1, -1, -1} true;
    $r56 := $heap[r0, java.lang.String$org.jasypt.digest.StandardByteDigester$providerName262];
    assert {:sourceloc "StandardByteDigester.java", 754, -1, -1, -1} true;
    goto block59;

  block59:
    assert {:sourceloc "StandardByteDigester.java", 754, -1, -1, -1} true;
    $heap := $heap[r0, java.lang.String$org.jasypt.digest.StandardByteDigester$providerName262 := $r56];
    assert {:sourceloc "StandardByteDigester.java", 757, -1, -1, -1} {:clone} true;
    $z8 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$providerSet0];
    assert {:sourceloc "StandardByteDigester.java", 757, -1, -1, -1} {:clone} true;
    goto anon196_Then, anon196_Else;

  anon196_Else:
    assume {:partition} $z8 == 0;
    assert {:sourceloc "StandardByteDigester.java", 757, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon79;

  anon79:
    assert {:sourceloc "StandardByteDigester.java", 763, -1, -1, -1} {:clone} true;
    goto anon197_Then, anon197_Else;

  anon197_Else:
    assume {:partition} r5 == $null;
    assert {:sourceloc "StandardByteDigester.java", 763, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto block60;

  block60:
    assert {:sourceloc "StandardByteDigester.java", 757, -1, -1, -1} true;
    $r57 := $heap[r0, java.security.Provider$org.jasypt.digest.StandardByteDigester$provider263];
    assert {:sourceloc "StandardByteDigester.java", 757, -1, -1, -1} true;
    goto block62;

  block62:
    assert {:sourceloc "StandardByteDigester.java", 757, -1, -1, -1} true;
    $heap := $heap[r0, java.security.Provider$org.jasypt.digest.StandardByteDigester$provider263 := $r57];
    assert {:sourceloc "StandardByteDigester.java", 760, -1, -1, -1} {:clone} true;
    $z9 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigestingSet0];
    assert {:sourceloc "StandardByteDigester.java", 760, -1, -1, -1} {:clone} true;
    goto anon198_Then, anon198_Else;

  anon198_Else:
    assume {:partition} $z9 == 0;
    assert {:sourceloc "StandardByteDigester.java", 760, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon84;

  anon84:
    assert {:sourceloc "StandardByteDigester.java", 766, -1, -1, -1} {:clone} true;
    goto anon199_Then, anon199_Else;

  anon199_Else:
    assume {:partition} r6 == $null;
    assert {:sourceloc "StandardByteDigester.java", 766, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto block63;

  block63:
    assert {:sourceloc "StandardByteDigester.java", 760, -1, -1, -1} true;
    $z14 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigesting0];
    assert {:sourceloc "StandardByteDigester.java", 760, -1, -1, -1} true;
    goto block65;

  block65:
    assert {:sourceloc "StandardByteDigester.java", 760, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigesting0 := $z14];
    assert {:sourceloc "StandardByteDigester.java", 763, -1, -1, -1} {:clone} true;
    $z10 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResultsSet0];
    assert {:sourceloc "StandardByteDigester.java", 763, -1, -1, -1} {:clone} true;
    goto anon200_Then, anon200_Else;

  anon200_Else:
    assume {:partition} $z10 == 0;
    assert {:sourceloc "StandardByteDigester.java", 763, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon89;

  anon89:
    assert {:sourceloc "StandardByteDigester.java", 776, -1, -1, -1} {:clone} true;
    goto anon201_Then, anon201_Else;

  anon201_Else:
    assume {:partition} r7 == $null;
    assert {:sourceloc "StandardByteDigester.java", 776, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto block66;

  block66:
    assert {:sourceloc "StandardByteDigester.java", 763, -1, -1, -1} true;
    $z15 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResults0];
    assert {:sourceloc "StandardByteDigester.java", 763, -1, -1, -1} true;
    goto block68;

  block68:
    assert {:sourceloc "StandardByteDigester.java", 763, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResults0 := $z15];
    assert {:sourceloc "StandardByteDigester.java", 766, -1, -1, -1} {:clone} true;
    $z11 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheckSet0];
    assert {:sourceloc "StandardByteDigester.java", 766, -1, -1, -1} {:clone} true;
    goto anon202_Then, anon202_Else;

  anon202_Else:
    assume {:partition} $z11 == 0;
    assert {:sourceloc "StandardByteDigester.java", 766, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon94;

  anon94:
    assert {:sourceloc "StandardByteDigester.java", 776, -1, -1, -1} {:clone} true;
    goto anon203_Then, anon203_Else;

  anon203_Else:
    assume {:partition} r8 == $null;
    assert {:sourceloc "StandardByteDigester.java", 776, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto block69;

  block69:
    assert {:sourceloc "StandardByteDigester.java", 766, -1, -1, -1} true;
    $z16 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheck0];
    assert {:sourceloc "StandardByteDigester.java", 766, -1, -1, -1} true;
    goto block71;

  block71:
    assert {:sourceloc "StandardByteDigester.java", 766, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheck0 := $z16];
    goto block36;

  block36:
    assert {:sourceloc "StandardByteDigester.java", 776, -1, -1, -1} {:clone} true;
    $r10 := $heap[r0, org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261];
    assert {:sourceloc "StandardByteDigester.java", 776, -1, -1, -1} {:clone} true;
    goto anon204_Then, anon204_Else;

  anon204_Else:
    assume {:partition} $r10 == $null;
    assert {:sourceloc "StandardByteDigester.java", 776, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon99;

  anon99:
    assert {:sourceloc "StandardByteDigester.java", 777, -1, -1, -1} true;
    call $fakelocal_9 := $new(org.jasypt.salt.RandomSaltGenerator);
    r60 := $fakelocal_9;
    assert {:sourceloc "StandardByteDigester.java", 777, -1, -1, -1} true;
    call $exception := org.jasypt.salt.RandomSaltGenerator$$la$init$ra$$(r60);
    assert {:sourceloc "StandardByteDigester.java", 777, -1, -1, -1} true;
    $heap := $heap[r0, org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261 := r60];
    goto block72;

  block72:
    assert {:sourceloc "StandardByteDigester.java", 785, -1, -1, -1} true;
    $z1 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheck0];
    assert {:sourceloc "StandardByteDigester.java", 785, -1, -1, -1} true;
    goto anon205_Then, anon205_Else;

  anon205_Else:
    assume {:partition} $z1 != 0;
    assert {:sourceloc "StandardByteDigester.java", 785, -1, -1, -1} {:comment "elseblock"} true;
    goto anon102;

  anon102:
    assert {:sourceloc "StandardByteDigester.java", 786, -1, -1, -1} true;
    $r29 := $heap[r0, org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261];
    assert {:sourceloc "StandardByteDigester.java", 786, -1, -1, -1} true;
    goto anon206_Then, anon206_Else;

  anon206_Else:
    assume {:partition} $r29 == $null;
    call $fakelocal_10 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_10;
    return;

  anon206_Then:
    assume {:partition} $r29 != $null;
    $exception := $exception;
    goto anon105;

  anon105:
    call $z2, $exception := org.jasypt.salt.SaltGenerator$includePlainSaltInEncryptionResults$($r29);
    assert {:sourceloc "StandardByteDigester.java", 786, -1, -1, -1} true;
    goto anon207_Then, anon207_Else;

  anon207_Else:
    assume {:partition} $z2 == 0;
    assert {:sourceloc "StandardByteDigester.java", 786, -1, -1, -1} {:comment "elseblock"} true;
    goto anon108;

  anon108:
    assert {:sourceloc "StandardByteDigester.java", 787, -1, -1, -1} true;
    call $fakelocal_11 := $new(org.jasypt.exceptions.EncryptionInitializationException);
    r62 := $fakelocal_11;
    assert {:sourceloc "StandardByteDigester.java", 787, -1, -1, -1} true;
    call $fakelocal_12 := $new(java.lang.StringBuilder);
    r61 := $fakelocal_12;
    assert {:sourceloc "StandardByteDigester.java", 787, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$(r61);
    assert {:sourceloc "StandardByteDigester.java", 787, -1, -1, -1} true;
    call $r32, $exception := java.lang.StringBuilder$append$java.lang.String(r61, $StringConst8);
    assert {:sourceloc "StandardByteDigester.java", 789, -1, -1, -1} true;
    $r33 := $heap[r0, org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261];
    assert {:sourceloc "StandardByteDigester.java", 789, -1, -1, -1} true;
    goto anon208_Then, anon208_Else;

  anon208_Else:
    assume {:partition} $r33 == $null;
    call $fakelocal_13 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_13;
    return;

  anon208_Then:
    assume {:partition} $r33 != $null;
    $exception := $exception;
    goto anon111;

  anon111:
    call $r34, $exception := java.lang.Object$getClass$($r33);
    assert {:sourceloc "StandardByteDigester.java", 789, -1, -1, -1} true;
    goto anon209_Then, anon209_Else;

  anon209_Else:
    assume {:partition} $r34 == $null;
    call $fakelocal_14 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_14;
    return;

  anon209_Then:
    assume {:partition} $r34 != $null;
    $exception := $exception;
    goto anon114;

  anon114:
    call $r35, $exception := java.lang.Class$getName$($r34);
    assert {:sourceloc "StandardByteDigester.java", 789, -1, -1, -1} true;
    goto anon210_Then, anon210_Else;

  anon210_Else:
    assume {:partition} $r32 == $null;
    call $fakelocal_15 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_15;
    return;

  anon210_Then:
    assume {:partition} $r32 != $null;
    $exception := $exception;
    goto anon117;

  anon117:
    call $r36, $exception := java.lang.StringBuilder$append$java.lang.String($r32, $r35);
    assert {:sourceloc "StandardByteDigester.java", 789, -1, -1, -1} true;
    goto anon211_Then, anon211_Else;

  anon211_Else:
    assume {:partition} $r36 == $null;
    call $fakelocal_16 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_16;
    return;

  anon211_Then:
    assume {:partition} $r36 != $null;
    $exception := $exception;
    goto anon120;

  anon120:
    call $r37, $exception := java.lang.StringBuilder$append$java.lang.String($r36, $StringConst9);
    assert {:sourceloc "StandardByteDigester.java", 789, -1, -1, -1} true;
    goto anon212_Then, anon212_Else;

  anon212_Else:
    assume {:partition} $r37 == $null;
    call $fakelocal_17 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_17;
    return;

  anon212_Then:
    assume {:partition} $r37 != $null;
    $exception := $exception;
    goto anon123;

  anon123:
    call $r38, $exception := java.lang.StringBuilder$toString$($r37);
    assert {:sourceloc "StandardByteDigester.java", 789, -1, -1, -1} true;
    call $exception := org.jasypt.exceptions.EncryptionInitializationException$$la$init$ra$$java.lang.String(r62, $r38);
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon213_Then, anon213_Else;

  anon213_Else:
    assume {:partition} !($heap[r62, $type] <: java.lang.Throwable);
    call $fakelocal_18 := $new(java.lang.ClassCastException);
    $exception := $fakelocal_18;
    return;

  anon213_Then:
    assume {:partition} $heap[r62, $type] <: java.lang.Throwable;
    $exception := $exception;
    goto anon126;

  anon126:
    r67 := r62;
    assert {:sourceloc "StandardByteDigester.java", 789, -1, -1, -1} true;
    $exception := r67;
    goto block81;

  block81:
    return;

  anon207_Then:
    assume {:partition} $z2 != 0;
    assert {:sourceloc "StandardByteDigester.java", 786, -1, -1, -1} {:comment "thenblock"} true;
    goto block73;

  block73:
    assert {:sourceloc "StandardByteDigester.java", 802, -1, -1, -1} true;
    $r11 := $heap[r0, java.security.Provider$org.jasypt.digest.StandardByteDigester$provider263];
    assert {:sourceloc "StandardByteDigester.java", 802, -1, -1, -1} true;
    goto anon214_Then, anon214_Else;

  anon214_Else:
    assume {:partition} $r11 != $null;
    assert {:sourceloc "StandardByteDigester.java", 802, -1, -1, -1} {:comment "elseblock"} true;
    goto anon129;

  anon129:
    assert {:sourceloc "StandardByteDigester.java", 804, -1, -1, -1} true;
    $r27 := $heap[r0, java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260];
    assert {:sourceloc "StandardByteDigester.java", 804, -1, -1, -1} true;
    $r26 := $heap[r0, java.security.Provider$org.jasypt.digest.StandardByteDigester$provider263];
    assert {:sourceloc "StandardByteDigester.java", 804, -1, -1, -1} true;
    call $r28, $exception := java.security.MessageDigest$getInstance$java.lang.String_java.security.Provider($r27, $r26);
    goto anon215_Then, anon215_Else;

  anon215_Else:
    assume {:partition} $exception == $null;
    goto anon133;

  anon133:
    assert {:sourceloc "StandardByteDigester.java", 804, -1, -1, -1} true;
    $heap := $heap[r0, java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265 := $r28];
    assert {:sourceloc "StandardByteDigester.java", 804, -1, -1, -1} true;
    goto block76;

  block76:
    assert {:sourceloc "StandardByteDigester.java", 819, -1, -1, -1} true;
    goto block79;

  block79:
    assert {:sourceloc "StandardByteDigester.java", 826, -1, -1, -1} true;
    $r15 := $heap[r0, java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert {:sourceloc "StandardByteDigester.java", 826, -1, -1, -1} true;
    goto anon224_Then, anon224_Else;

  anon224_Else:
    assume {:partition} $r15 == $null;
    call $fakelocal_23 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_23;
    return;

  anon224_Then:
    assume {:partition} $r15 != $null;
    $exception := $exception;
    goto anon153;

  anon153:
    call $i0, $exception := java.security.MessageDigest$getDigestLength$($r15);
    assert {:sourceloc "StandardByteDigester.java", 826, -1, -1, -1} true;
    $heap := $heap[r0, int$org.jasypt.digest.StandardByteDigester$digestLengthBytes0 := $i0];
    assert {:sourceloc "StandardByteDigester.java", 827, -1, -1, -1} true;
    $i1 := $heap[r0, int$org.jasypt.digest.StandardByteDigester$digestLengthBytes0];
    assert {:sourceloc "StandardByteDigester.java", 827, -1, -1, -1} true;
    goto anon225_Then, anon225_Else;

  anon225_Else:
    assume {:partition} 0 >= $i1;
    assert {:sourceloc "StandardByteDigester.java", 827, -1, -1, -1} {:comment "elseblock"} true;
    goto anon156;

  anon156:
    assert {:sourceloc "StandardByteDigester.java", 828, -1, -1, -1} true;
    call $fakelocal_24 := $new(org.jasypt.exceptions.EncryptionInitializationException);
    r66 := $fakelocal_24;
    assert {:sourceloc "StandardByteDigester.java", 828, -1, -1, -1} true;
    call $fakelocal_25 := $new(java.lang.StringBuilder);
    r65 := $fakelocal_25;
    assert {:sourceloc "StandardByteDigester.java", 828, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$(r65);
    assert {:sourceloc "StandardByteDigester.java", 828, -1, -1, -1} true;
    call $r18, $exception := java.lang.StringBuilder$append$java.lang.String(r65, $StringConst10);
    assert {:sourceloc "StandardByteDigester.java", 828, -1, -1, -1} true;
    $r19 := $heap[r0, java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260];
    assert {:sourceloc "StandardByteDigester.java", 828, -1, -1, -1} true;
    goto anon226_Then, anon226_Else;

  anon226_Else:
    assume {:partition} $r18 == $null;
    call $fakelocal_26 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_26;
    return;

  anon226_Then:
    assume {:partition} $r18 != $null;
    $exception := $exception;
    goto anon159;

  anon159:
    call $r20, $exception := java.lang.StringBuilder$append$java.lang.String($r18, $r19);
    assert {:sourceloc "StandardByteDigester.java", 828, -1, -1, -1} true;
    goto anon227_Then, anon227_Else;

  anon227_Else:
    assume {:partition} $r20 == $null;
    call $fakelocal_27 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_27;
    return;

  anon227_Then:
    assume {:partition} $r20 != $null;
    $exception := $exception;
    goto anon162;

  anon162:
    call $r21, $exception := java.lang.StringBuilder$append$java.lang.String($r20, $StringConst11);
    assert {:sourceloc "StandardByteDigester.java", 828, -1, -1, -1} true;
    goto anon228_Then, anon228_Else;

  anon228_Else:
    assume {:partition} $r21 == $null;
    call $fakelocal_28 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_28;
    return;

  anon228_Then:
    assume {:partition} $r21 != $null;
    $exception := $exception;
    goto anon165;

  anon165:
    call $r22, $exception := java.lang.StringBuilder$toString$($r21);
    assert {:sourceloc "StandardByteDigester.java", 828, -1, -1, -1} true;
    call $exception := org.jasypt.exceptions.EncryptionInitializationException$$la$init$ra$$java.lang.String(r66, $r22);
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon229_Then, anon229_Else;

  anon229_Else:
    assume {:partition} !($heap[r66, $type] <: java.lang.Throwable);
    call $fakelocal_29 := $new(java.lang.ClassCastException);
    $exception := $fakelocal_29;
    return;

  anon229_Then:
    assume {:partition} $heap[r66, $type] <: java.lang.Throwable;
    $exception := $exception;
    goto anon168;

  anon168:
    r70 := r66;
    assert {:sourceloc "StandardByteDigester.java", 828, -1, -1, -1} true;
    $exception := r70;
    goto block81;

  anon225_Then:
    assume {:partition} $i1 > 0;
    assert {:sourceloc "StandardByteDigester.java", 827, -1, -1, -1} {:comment "thenblock"} true;
    goto block80;

  block80:
    assert {:sourceloc "StandardByteDigester.java", 836, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$initialized0 := 1];
    goto block35;

  block35:
    assert {:sourceloc "StandardByteDigester.java", 840, -1, -1, -1} true;
    goto block81;

  anon215_Then:
    assume {:partition} $exception != $null;
    goto anon216_Then, anon216_Else;

  anon216_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon133;

  anon216_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    goto block75;

  block75:
    assert {:sourceloc "StandardByteDigester.java", 712, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r49 := $exception;
    assert {:sourceloc "StandardByteDigester.java", 815, -1, -1, -1} true;
    r58 := $r49;
    assert {:sourceloc "StandardByteDigester.java", 816, -1, -1, -1} true;
    call $fakelocal_19 := $new(org.jasypt.exceptions.EncryptionInitializationException);
    r63 := $fakelocal_19;
    assert {:sourceloc "StandardByteDigester.java", 816, -1, -1, -1} true;
    call $exception := org.jasypt.exceptions.EncryptionInitializationException$$la$init$ra$$java.lang.Throwable(r63, r58);
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon222_Then, anon222_Else;

  anon222_Else:
    assume {:partition} !($heap[r63, $type] <: java.lang.Throwable);
    call $fakelocal_20 := $new(java.lang.ClassCastException);
    $exception := $fakelocal_20;
    return;

  anon222_Then:
    assume {:partition} $heap[r63, $type] <: java.lang.Throwable;
    $exception := $exception;
    goto anon147;

  anon147:
    r68 := r63;
    assert {:sourceloc "StandardByteDigester.java", 816, -1, -1, -1} true;
    $exception := r68;
    goto block81;

  anon214_Then:
    assume {:partition} $r11 == $null;
    assert {:sourceloc "StandardByteDigester.java", 802, -1, -1, -1} {:comment "thenblock"} true;
    goto block74;

  block74:
    assert {:sourceloc "StandardByteDigester.java", 807, -1, -1, -1} true;
    $r12 := $heap[r0, java.lang.String$org.jasypt.digest.StandardByteDigester$providerName262];
    assert {:sourceloc "StandardByteDigester.java", 807, -1, -1, -1} true;
    goto anon217_Then, anon217_Else;

  anon217_Else:
    assume {:partition} $r12 != $null;
    assert {:sourceloc "StandardByteDigester.java", 807, -1, -1, -1} {:comment "elseblock"} true;
    goto anon136;

  anon136:
    assert {:sourceloc "StandardByteDigester.java", 809, -1, -1, -1} true;
    $r24 := $heap[r0, java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260];
    assert {:sourceloc "StandardByteDigester.java", 809, -1, -1, -1} true;
    $r23 := $heap[r0, java.lang.String$org.jasypt.digest.StandardByteDigester$providerName262];
    assert {:sourceloc "StandardByteDigester.java", 809, -1, -1, -1} true;
    call $r25, $exception := java.security.MessageDigest$getInstance$java.lang.String_java.lang.String($r24, $r23);
    goto anon218_Then, anon218_Else;

  anon218_Else:
    assume {:partition} $exception == $null;
    goto anon140;

  anon140:
    assert {:sourceloc "StandardByteDigester.java", 809, -1, -1, -1} true;
    $heap := $heap[r0, java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265 := $r25];
    assert {:sourceloc "StandardByteDigester.java", 809, -1, -1, -1} true;
    goto block76;

  anon218_Then:
    assume {:partition} $exception != $null;
    goto anon219_Then, anon219_Else;

  anon219_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchProviderException);
    assert {:clone} true;
    goto anon140;

  anon219_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchProviderException;
    goto block78;

  block78:
    assert {:sourceloc "StandardByteDigester.java", 816, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r51 := $exception;
    assert {:sourceloc "StandardByteDigester.java", 817, -1, -1, -1} true;
    r59 := $r51;
    assert {:sourceloc "StandardByteDigester.java", 818, -1, -1, -1} true;
    call $fakelocal_21 := $new(org.jasypt.exceptions.EncryptionInitializationException);
    r64 := $fakelocal_21;
    assert {:sourceloc "StandardByteDigester.java", 818, -1, -1, -1} true;
    call $exception := org.jasypt.exceptions.EncryptionInitializationException$$la$init$ra$$java.lang.Throwable(r64, r59);
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon223_Then, anon223_Else;

  anon223_Else:
    assume {:partition} !($heap[r64, $type] <: java.lang.Throwable);
    call $fakelocal_22 := $new(java.lang.ClassCastException);
    $exception := $fakelocal_22;
    return;

  anon223_Then:
    assume {:partition} $heap[r64, $type] <: java.lang.Throwable;
    $exception := $exception;
    goto anon150;

  anon150:
    r69 := r64;
    assert {:sourceloc "StandardByteDigester.java", 818, -1, -1, -1} true;
    $exception := r69;
    goto block81;

  anon217_Then:
    assume {:partition} $r12 == $null;
    assert {:sourceloc "StandardByteDigester.java", 807, -1, -1, -1} {:comment "thenblock"} true;
    goto block77;

  block77:
    assert {:sourceloc "StandardByteDigester.java", 813, -1, -1, -1} true;
    $r13 := $heap[r0, java.lang.String$org.jasypt.digest.StandardByteDigester$algorithm260];
    assert {:sourceloc "StandardByteDigester.java", 813, -1, -1, -1} true;
    call $r14, $exception := java.security.MessageDigest$getInstance$java.lang.String($r13);
    goto anon220_Then, anon220_Else;

  anon220_Else:
    assume {:partition} $exception == $null;
    goto anon144;

  anon144:
    assert {:sourceloc "StandardByteDigester.java", 813, -1, -1, -1} true;
    $heap := $heap[r0, java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265 := $r14];
    goto block76;

  anon220_Then:
    assume {:partition} $exception != $null;
    goto anon221_Then, anon221_Else;

  anon221_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon144;

  anon221_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    goto block75;

  anon205_Then:
    assume {:partition} $z1 == 0;
    assert {:sourceloc "StandardByteDigester.java", 785, -1, -1, -1} {:comment "thenblock"} true;
    goto block73;

  anon204_Then:
    assume {:partition} $r10 != $null;
    assert {:sourceloc "StandardByteDigester.java", 776, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block72;

  anon203_Then:
    assume {:partition} r8 != $null;
    assert {:sourceloc "StandardByteDigester.java", 776, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block70;

  block70:
    assert {:sourceloc "StandardByteDigester.java", 768, -1, -1, -1} true;
    call $z16, $exception := java.lang.Boolean$booleanValue$(r8);
    goto block71;

  anon202_Then:
    assume {:partition} $z11 != 0;
    assert {:sourceloc "StandardByteDigester.java", 766, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block69;

  anon201_Then:
    assume {:partition} r7 != $null;
    assert {:sourceloc "StandardByteDigester.java", 776, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block67;

  block67:
    assert {:sourceloc "StandardByteDigester.java", 765, -1, -1, -1} true;
    call $z15, $exception := java.lang.Boolean$booleanValue$(r7);
    goto block68;

  anon200_Then:
    assume {:partition} $z10 != 0;
    assert {:sourceloc "StandardByteDigester.java", 763, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block66;

  anon199_Then:
    assume {:partition} r6 != $null;
    assert {:sourceloc "StandardByteDigester.java", 766, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block64;

  block64:
    assert {:sourceloc "StandardByteDigester.java", 762, -1, -1, -1} true;
    call $z14, $exception := java.lang.Boolean$booleanValue$(r6);
    goto block65;

  anon198_Then:
    assume {:partition} $z9 != 0;
    assert {:sourceloc "StandardByteDigester.java", 760, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block63;

  anon197_Then:
    assume {:partition} r5 != $null;
    assert {:sourceloc "StandardByteDigester.java", 763, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block61;

  block61:
    assert {:sourceloc "StandardByteDigester.java", 763, -1, -1, -1} true;
    $r57 := r5;
    goto block62;

  anon196_Then:
    assume {:partition} $z8 != 0;
    assert {:sourceloc "StandardByteDigester.java", 757, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block60;

  anon195_Then:
    assume {:partition} r4 != $null;
    assert {:sourceloc "StandardByteDigester.java", 760, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block58;

  block58:
    assert {:sourceloc "StandardByteDigester.java", 760, -1, -1, -1} true;
    $r56 := r4;
    goto block59;

  anon194_Then:
    assume {:partition} $z7 != 0;
    assert {:sourceloc "StandardByteDigester.java", 754, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block57;

  anon193_Then:
    assume {:partition} r3 != $null;
    assert {:sourceloc "StandardByteDigester.java", 757, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block55;

  block55:
    assert {:sourceloc "StandardByteDigester.java", 757, -1, -1, -1} true;
    $r55 := r3;
    goto block56;

  anon192_Then:
    assume {:partition} $z6 != 0;
    assert {:sourceloc "StandardByteDigester.java", 751, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block54;

  anon191_Then:
    assume {:partition} r2 != $null;
    assert {:sourceloc "StandardByteDigester.java", 754, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block52;

  block52:
    assert {:sourceloc "StandardByteDigester.java", 750, -1, -1, -1} true;
    call $i5, $exception := java.lang.Integer$intValue$(r2);
    goto block53;

  anon190_Then:
    assume {:partition} $z5 != 0;
    assert {:sourceloc "StandardByteDigester.java", 748, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block51;

  anon189_Then:
    assume {:partition} r1 != $null;
    assert {:sourceloc "StandardByteDigester.java", 751, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block49;

  block49:
    assert {:sourceloc "StandardByteDigester.java", 747, -1, -1, -1} true;
    call $i4, $exception := java.lang.Integer$intValue$(r1);
    goto block50;

  anon188_Then:
    assume {:partition} $z4 != 0;
    assert {:sourceloc "StandardByteDigester.java", 745, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block48;

  anon187_Then:
    assume {:partition} r53 != $null;
    assert {:sourceloc "StandardByteDigester.java", 748, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block46;

  block46:
    assert {:sourceloc "StandardByteDigester.java", 748, -1, -1, -1} true;
    $r54 := r53;
    goto block47;

  anon186_Then:
    assume {:partition} $z3 != 0;
    assert {:sourceloc "StandardByteDigester.java", 742, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block45;

  anon181_Then:
    assume {:partition} r4 == $null;
    assert {:sourceloc "StandardByteDigester.java", 726, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block44;

  anon178_Then:
    assume {:partition} $i2 <= 0;
    assert {:sourceloc "StandardByteDigester.java", 719, -1, -1, -1} {:comment "thenblock"} true;
    goto block42;

  block42:
    assert {:sourceloc "StandardByteDigester.java", 726, -1, -1, -1} true;
    $z13 := 0;
    goto block43;

  anon177_Then:
    assume {:partition} r2 == $null;
    assert {:sourceloc "StandardByteDigester.java", 718, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block41;

  anon175_Then:
    assume {:partition} $i3 < 0;
    assert {:sourceloc "StandardByteDigester.java", 713, -1, -1, -1} {:comment "thenblock"} true;
    goto block39;

  block39:
    assert {:sourceloc "StandardByteDigester.java", 718, -1, -1, -1} true;
    $z12 := 0;
    goto block40;

  anon174_Then:
    assume {:partition} r1 == $null;
    assert {:sourceloc "StandardByteDigester.java", 712, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block38;

  anon172_Then:
    assume {:partition} r53 == $null;
    assert {:sourceloc "StandardByteDigester.java", 707, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block37;

  anon170_Then:
    assume {:partition} $r9 == $null;
    assert {:sourceloc "StandardByteDigester.java", 704, -1, -1, -1} {:comment "thenblock"} true;
    goto block36;

  anon169_Then:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "StandardByteDigester.java", 697, -1, -1, -1} {:comment "thenblock"} true;
    goto block35;
}



implementation org.jasypt.digest.StandardByteDigester$digest$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r4: ref;
  var $r3: ref;
  var $z0: int;
  var $fakelocal_0: ref;
  var $z1: int;
  var r1: ref;
  var $r2: ref;
  var $i0: int;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $heap[$this, $type] <: org.jasypt.digest.StandardByteDigester;
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "StandardByteDigester.java", 916, -1, -1, -1} true;
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} r1 == $null;
    assert {:sourceloc "StandardByteDigester.java", 916, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "StandardByteDigester.java", 917, -1, -1, -1} true;
    $return := $null;
    goto block85;

  block85:
    return;

  anon13_Then:
    assume {:partition} r1 != $null;
    assert {:sourceloc "StandardByteDigester.java", 916, -1, -1, -1} {:comment "thenblock"} true;
    goto block82;

  block82:
    assert {:sourceloc "StandardByteDigester.java", 921, -1, -1, -1} true;
    call $z0, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert {:sourceloc "StandardByteDigester.java", 921, -1, -1, -1} true;
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "StandardByteDigester.java", 921, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "StandardByteDigester.java", 922, -1, -1, -1} true;
    call $exception := org.jasypt.digest.StandardByteDigester$initialize$(r0);
    goto block83;

  block83:
    assert {:sourceloc "StandardByteDigester.java", 926, -1, -1, -1} true;
    r4 := $null;
    assert {:sourceloc "StandardByteDigester.java", 927, -1, -1, -1} true;
    $z1 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$useSalt0];
    assert {:sourceloc "StandardByteDigester.java", 927, -1, -1, -1} true;
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} $z1 != 0;
    assert {:sourceloc "StandardByteDigester.java", 927, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "StandardByteDigester.java", 928, -1, -1, -1} true;
    $r3 := $heap[r0, org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261];
    assert {:sourceloc "StandardByteDigester.java", 928, -1, -1, -1} true;
    $i0 := $heap[r0, int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0];
    assert {:sourceloc "StandardByteDigester.java", 928, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} $r3 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon16_Then:
    assume {:partition} $r3 != $null;
    $exception := $exception;
    goto anon12;

  anon12:
    call r4, $exception := org.jasypt.salt.SaltGenerator$generateSalt$int($r3, $i0);
    goto block84;

  block84:
    assert {:sourceloc "StandardByteDigester.java", 932, -1, -1, -1} true;
    call $r2, $exception := org.jasypt.digest.StandardByteDigester$digest$byte$lp$$rp$_byte$lp$$rp$(r0, r1, r4);
    assert {:sourceloc "StandardByteDigester.java", 932, -1, -1, -1} true;
    $return := $r2;
    goto block85;

  anon15_Then:
    assume {:partition} $z1 == 0;
    assert {:sourceloc "StandardByteDigester.java", 927, -1, -1, -1} {:comment "thenblock"} true;
    goto block84;

  anon14_Then:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "StandardByteDigester.java", 921, -1, -1, -1} {:comment "thenblock"} true;
    goto block83;
}



implementation org.jasypt.digest.StandardByteDigester$digest$byte$lp$$rp$_byte$lp$$rp$($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref)
{
  var r3: ref;
  var $r11: ref;
  var $r6: ref;
  var $r18: ref;
  var r23: ref;
  var $z0: int;
  var $r12: ref;
  var $r16: ref;
  var $r14: ref;
  var $r19: ref;
  var $fakelocal_0: ref;
  var $i1: int;
  var r22: ref;
  var r0: ref;
  var $r5: ref;
  var r2: ref;
  var $r8: ref;
  var r4: ref;
  var i2: int;
  var $r10: ref;
  var $i0: int;
  var $r17: ref;
  var $r15: ref;
  var $r13: ref;
  var $z1: int;
  var $r7: ref;
  var r1: ref;
  var $fakelocal_1: ref;
  var $r9: ref;
  var r21: ref;
  var $z2: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $heap[$this, $type] <: org.jasypt.digest.StandardByteDigester;
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    goto block86;

  block86:
    assert {:sourceloc "StandardByteDigester.java", 948, -1, -1, -1} true;
    $r5 := $heap[r0, java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert {:sourceloc "StandardByteDigester.java", 948, -1, -1, -1} true;
    r3 := $r5;
    assert {:sourceloc "StandardByteDigester.java", 948, -1, -1, -1} true;
    havoc r3, r2, r0, r1, $r5, $return, $exception, $heap;
    goto block87;

  block87:
    assert {:sourceloc "StandardByteDigester.java", 950, -1, -1, -1} true;
    $r6 := $heap[r0, java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert {:sourceloc "StandardByteDigester.java", 950, -1, -1, -1} true;
    goto anon97_Then, anon97_Else;

  anon97_Else:
    assume {:partition} $r6 == $null;
    assert {:sourceloc "StandardByteDigester.java", 950, -1, -1, -1} true;
    assert {:noverify} true;
    $return := $null;
    call $exception := $new(java.lang.RuntimeException);
    goto block88;

  block88:
    assert {:sourceloc "StandardByteDigester.java", 976, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r18 := $exception;
    assert {:sourceloc "StandardByteDigester.java", 976, -1, -1, -1} true;
    r4 := $r18;
    assert {:sourceloc "StandardByteDigester.java", 976, -1, -1, -1} true;
    goto block96;

  block96:
    assert {:sourceloc "StandardByteDigester.java", 976, -1, -1, -1} true;
    $exception := r4;
    goto block102;

  block102:
    return;

  anon97_Then:
    assume {:partition} $r6 != $null;
    assert {:sourceloc "StandardByteDigester.java", 950, -1, -1, -1} true;
    goto anon3;

  anon3:
    call $exception := java.security.MessageDigest$reset$($r6);
    goto anon98_Then, anon98_Else;

  anon98_Else:
    assume {:partition} $exception == $null;
    goto anon7;

  anon7:
    assert {:sourceloc "StandardByteDigester.java", 952, -1, -1, -1} true;
    goto anon100_Then, anon100_Else;

  anon100_Else:
    assume {:partition} r2 != $null;
    assert {:sourceloc "StandardByteDigester.java", 952, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon10;

  anon10:
    assert {:sourceloc "StandardByteDigester.java", 954, -1, -1, -1} true;
    $z2 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfSaltInMessageBeforeDigesting0];
    assert {:sourceloc "StandardByteDigester.java", 954, -1, -1, -1} true;
    goto anon101_Then, anon101_Else;

  anon101_Else:
    assume {:partition} $z2 == 0;
    assert {:sourceloc "StandardByteDigester.java", 954, -1, -1, -1} {:comment "elseblock"} true;
    goto anon13;

  anon13:
    assert {:sourceloc "StandardByteDigester.java", 957, -1, -1, -1} true;
    $r16 := $heap[r0, java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert {:sourceloc "StandardByteDigester.java", 957, -1, -1, -1} true;
    goto anon102_Then, anon102_Else;

  anon102_Else:
    assume {:partition} $r16 == $null;
    assert {:sourceloc "StandardByteDigester.java", 957, -1, -1, -1} true;
    assert {:noverify} true;
    $return := $null;
    call $exception := $new(java.lang.RuntimeException);
    goto block88;

  anon102_Then:
    assume {:partition} $r16 != $null;
    assert {:sourceloc "StandardByteDigester.java", 957, -1, -1, -1} true;
    goto anon16;

  anon16:
    call $exception := java.security.MessageDigest$update$byte$lp$$rp$($r16, r2);
    goto anon103_Then, anon103_Else;

  anon103_Else:
    assume {:partition} $exception == $null;
    goto anon20;

  anon20:
    assert {:sourceloc "StandardByteDigester.java", 958, -1, -1, -1} true;
    $r17 := $heap[r0, java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert {:sourceloc "StandardByteDigester.java", 958, -1, -1, -1} true;
    goto anon105_Then, anon105_Else;

  anon105_Else:
    assume {:partition} $r17 == $null;
    assert {:sourceloc "StandardByteDigester.java", 958, -1, -1, -1} true;
    assert {:noverify} true;
    $return := $null;
    call $exception := $new(java.lang.RuntimeException);
    goto block88;

  anon105_Then:
    assume {:partition} $r17 != $null;
    assert {:sourceloc "StandardByteDigester.java", 958, -1, -1, -1} true;
    goto anon23;

  anon23:
    call $exception := java.security.MessageDigest$update$byte$lp$$rp$($r17, r1);
    goto anon106_Then, anon106_Else;

  anon106_Else:
    assume {:partition} $exception == $null;
    goto anon27;

  anon27:
    assert {:sourceloc "StandardByteDigester.java", 958, -1, -1, -1} true;
    goto block91;

  block91:
    assert {:sourceloc "StandardByteDigester.java", 975, -1, -1, -1} true;
    $r8 := $heap[r0, java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert {:sourceloc "StandardByteDigester.java", 975, -1, -1, -1} true;
    goto anon117_Then, anon117_Else;

  anon117_Else:
    assume {:partition} $r8 == $null;
    assert {:sourceloc "StandardByteDigester.java", 975, -1, -1, -1} true;
    assert {:noverify} true;
    $return := $null;
    call $exception := $new(java.lang.RuntimeException);
    goto block88;

  anon117_Then:
    assume {:partition} $r8 != $null;
    assert {:sourceloc "StandardByteDigester.java", 975, -1, -1, -1} true;
    goto anon50;

  anon50:
    call r21, $exception := java.security.MessageDigest$digest$($r8);
    goto anon118_Then, anon118_Else;

  anon118_Else:
    assume {:partition} $exception == $null;
    goto anon54;

  anon54:
    assert {:sourceloc "StandardByteDigester.java", 976, -1, -1, -1} true;
    i2 := 0;
    goto block92;

  block92:
    call $return, $exception, $r12, $i1, i2, $i0, $r13, r21 := org.jasypt.digest.StandardByteDigester$digest$byte$lp$$rp$_byte$lp$$rp$_loop_block92($return, $exception, $r12, $i1, r0, i2, $i0, $r13, r21);
    goto block92_last;

  anon120_Else:
    assume {:partition} $i1 > i2;
    assert {:sourceloc "StandardByteDigester.java", 976, -1, -1, -1} {:comment "elseblock"} true;
    goto anon57;

  anon57:
    assert {:sourceloc "StandardByteDigester.java", 977, -1, -1, -1} true;
    $r12 := $heap[r0, java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert {:sourceloc "StandardByteDigester.java", 977, -1, -1, -1} true;
    goto anon121_Then, anon121_Else;

  anon121_Else:
    assume {:partition} $r12 == $null;
    assert {:sourceloc "StandardByteDigester.java", 977, -1, -1, -1} true;
    assert {:noverify} true;
    $return := $null;
    call $exception := $new(java.lang.RuntimeException);
    goto block88;

  anon121_Then:
    assume {:partition} $r12 != $null;
    assert {:sourceloc "StandardByteDigester.java", 977, -1, -1, -1} true;
    goto anon60;

  anon60:
    call $exception := java.security.MessageDigest$reset$($r12);
    goto anon122_Then, anon122_Else;

  anon122_Else:
    assume {:partition} $exception == $null;
    goto anon64;

  anon64:
    assert {:sourceloc "StandardByteDigester.java", 978, -1, -1, -1} true;
    $r13 := $heap[r0, java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert {:sourceloc "StandardByteDigester.java", 978, -1, -1, -1} true;
    goto anon124_Then, anon124_Else;

  anon124_Else:
    assume {:partition} $r13 == $null;
    assert {:sourceloc "StandardByteDigester.java", 978, -1, -1, -1} true;
    assert {:noverify} true;
    $return := $null;
    call $exception := $new(java.lang.RuntimeException);
    goto block88;

  anon124_Then:
    assume {:partition} $r13 != $null;
    assert {:sourceloc "StandardByteDigester.java", 978, -1, -1, -1} true;
    goto anon67;

  anon67:
    call r21, $exception := java.security.MessageDigest$digest$byte$lp$$rp$($r13, r21);
    goto anon125_Then, anon125_Else;

  anon125_Else:
    assume {:partition} $exception == $null;
    goto anon71;

  anon71:
    assert {:sourceloc "StandardByteDigester.java", 976, -1, -1, -1} true;
    i2 := i2 + 1;
    assert {:sourceloc "StandardByteDigester.java", 976, -1, -1, -1} true;
    goto anon71_dummy;

  anon125_Then:
    assume {:partition} $exception != $null;
    goto anon126_Then, anon126_Else;

  anon126_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto anon71;

  anon126_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    goto block88;

  anon122_Then:
    assume {:partition} $exception != $null;
    goto anon123_Then, anon123_Else;

  anon123_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto anon64;

  anon123_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    goto block88;

  anon120_Then:
    assume {:partition} i2 >= $i1;
    assert {:sourceloc "StandardByteDigester.java", 976, -1, -1, -1} {:comment "thenblock"} true;
    goto block93;

  block93:
    assert {:sourceloc "StandardByteDigester.java", 981, -1, -1, -1} true;
    goto block94;

  block94:
    assert {:sourceloc "StandardByteDigester.java", 981, -1, -1, -1} true;
    goto block95;

  block95:
    assert {:sourceloc "StandardByteDigester.java", 986, -1, -1, -1} true;
    $r9 := $heap[r0, org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261];
    assert {:sourceloc "StandardByteDigester.java", 986, -1, -1, -1} true;
    goto anon127_Then, anon127_Else;

  anon127_Else:
    assume {:partition} $r9 == $null;
    assert {:sourceloc "StandardByteDigester.java", 986, -1, -1, -1} true;
    assert {:noverify} true;
    $return := $null;
    call $exception := $new(java.lang.RuntimeException);
    goto block97;

  block97:
    assert {:sourceloc "StandardByteDigester.java", 976, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r19 := $exception;
    assert {:sourceloc "StandardByteDigester.java", 1005, -1, -1, -1} true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.EncryptionOperationNotPossibleException);
    r22 := $fakelocal_0;
    assert {:sourceloc "StandardByteDigester.java", 1005, -1, -1, -1} true;
    call $exception := org.jasypt.exceptions.EncryptionOperationNotPossibleException$$la$init$ra$$(r22);
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon137_Then, anon137_Else;

  anon137_Else:
    assume {:partition} !($heap[r22, $type] <: java.lang.Throwable);
    call $fakelocal_1 := $new(java.lang.ClassCastException);
    $return := $null;
    $exception := $fakelocal_1;
    return;

  anon137_Then:
    assume {:partition} $heap[r22, $type] <: java.lang.Throwable;
    $exception := $exception;
    goto anon96;

  anon96:
    r23 := r22;
    assert {:sourceloc "StandardByteDigester.java", 1005, -1, -1, -1} true;
    $exception := r23;
    goto block102;

  anon127_Then:
    assume {:partition} $r9 != $null;
    assert {:sourceloc "StandardByteDigester.java", 986, -1, -1, -1} true;
    goto anon74;

  anon74:
    call $z0, $exception := org.jasypt.salt.SaltGenerator$includePlainSaltInEncryptionResults$($r9);
    goto anon128_Then, anon128_Else;

  anon128_Else:
    assume {:partition} $exception == $null;
    goto anon78;

  anon78:
    assert {:sourceloc "StandardByteDigester.java", 986, -1, -1, -1} true;
    goto anon130_Then, anon130_Else;

  anon130_Else:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "StandardByteDigester.java", 986, -1, -1, -1} {:comment "elseblock"} true;
    goto anon81;

  anon81:
    assert {:sourceloc "StandardByteDigester.java", 1000, -1, -1, -1} true;
    goto anon131_Then, anon131_Else;

  anon131_Else:
    assume {:partition} r2 != $null;
    assert {:sourceloc "StandardByteDigester.java", 1000, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon84;

  anon84:
    assert {:sourceloc "StandardByteDigester.java", 988, -1, -1, -1} true;
    $z1 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResults0];
    assert {:sourceloc "StandardByteDigester.java", 988, -1, -1, -1} true;
    goto anon132_Then, anon132_Else;

  anon132_Else:
    assume {:partition} $z1 == 0;
    assert {:sourceloc "StandardByteDigester.java", 988, -1, -1, -1} {:comment "elseblock"} true;
    goto anon87;

  anon87:
    assert {:sourceloc "StandardByteDigester.java", 991, -1, -1, -1} true;
    call $r11, $exception := org.jasypt.commons.CommonUtils$appendArrays$byte$lp$$rp$_byte$lp$$rp$(r2, r21);
    goto anon133_Then, anon133_Else;

  anon133_Else:
    assume {:partition} $exception == $null;
    goto block100;

  block100:
    assert {:sourceloc "StandardByteDigester.java", 991, -1, -1, -1} true;
    $return := $r11;
    goto block102;

  anon133_Then:
    assume {:partition} $exception != $null;
    goto anon134_Then, anon134_Else;

  anon134_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto block100;

  anon134_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block97;

  anon132_Then:
    assume {:partition} $z1 != 0;
    assert {:sourceloc "StandardByteDigester.java", 988, -1, -1, -1} {:comment "thenblock"} true;
    goto block99;

  block99:
    assert {:sourceloc "StandardByteDigester.java", 996, -1, -1, -1} true;
    call $r10, $exception := org.jasypt.commons.CommonUtils$appendArrays$byte$lp$$rp$_byte$lp$$rp$(r21, r2);
    goto anon135_Then, anon135_Else;

  anon135_Else:
    assume {:partition} $exception == $null;
    goto block101;

  block101:
    assert {:sourceloc "StandardByteDigester.java", 996, -1, -1, -1} true;
    $return := $r10;
    goto block102;

  anon135_Then:
    assume {:partition} $exception != $null;
    goto anon136_Then, anon136_Else;

  anon136_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto block101;

  anon136_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block97;

  anon131_Then:
    assume {:partition} r2 == $null;
    assert {:sourceloc "StandardByteDigester.java", 1000, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block98;

  block98:
    assert {:sourceloc "StandardByteDigester.java", 1000, -1, -1, -1} true;
    $return := r21;
    goto block102;

  anon130_Then:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "StandardByteDigester.java", 986, -1, -1, -1} {:comment "thenblock"} true;
    goto block98;

  anon128_Then:
    assume {:partition} $exception != $null;
    goto anon129_Then, anon129_Else;

  anon129_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon78;

  anon129_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block97;

  anon118_Then:
    assume {:partition} $exception != $null;
    goto anon119_Then, anon119_Else;

  anon119_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto anon54;

  anon119_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    goto block88;

  anon106_Then:
    assume {:partition} $exception != $null;
    goto anon107_Then, anon107_Else;

  anon107_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto anon27;

  anon107_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    goto block88;

  anon103_Then:
    assume {:partition} $exception != $null;
    goto anon104_Then, anon104_Else;

  anon104_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto anon20;

  anon104_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    goto block88;

  anon101_Then:
    assume {:partition} $z2 != 0;
    assert {:sourceloc "StandardByteDigester.java", 954, -1, -1, -1} {:comment "thenblock"} true;
    goto block90;

  block90:
    assert {:sourceloc "StandardByteDigester.java", 963, -1, -1, -1} true;
    $r14 := $heap[r0, java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert {:sourceloc "StandardByteDigester.java", 963, -1, -1, -1} true;
    goto anon108_Then, anon108_Else;

  anon108_Else:
    assume {:partition} $r14 == $null;
    assert {:sourceloc "StandardByteDigester.java", 963, -1, -1, -1} true;
    assert {:noverify} true;
    $return := $null;
    call $exception := $new(java.lang.RuntimeException);
    goto block88;

  anon108_Then:
    assume {:partition} $r14 != $null;
    assert {:sourceloc "StandardByteDigester.java", 963, -1, -1, -1} true;
    goto anon30;

  anon30:
    call $exception := java.security.MessageDigest$update$byte$lp$$rp$($r14, r1);
    goto anon109_Then, anon109_Else;

  anon109_Else:
    assume {:partition} $exception == $null;
    goto anon34;

  anon34:
    assert {:sourceloc "StandardByteDigester.java", 964, -1, -1, -1} true;
    $r15 := $heap[r0, java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert {:sourceloc "StandardByteDigester.java", 964, -1, -1, -1} true;
    goto anon111_Then, anon111_Else;

  anon111_Else:
    assume {:partition} $r15 == $null;
    assert {:sourceloc "StandardByteDigester.java", 964, -1, -1, -1} true;
    assert {:noverify} true;
    $return := $null;
    call $exception := $new(java.lang.RuntimeException);
    goto block88;

  anon111_Then:
    assume {:partition} $r15 != $null;
    assert {:sourceloc "StandardByteDigester.java", 964, -1, -1, -1} true;
    goto anon37;

  anon37:
    call $exception := java.security.MessageDigest$update$byte$lp$$rp$($r15, r2);
    goto anon112_Then, anon112_Else;

  anon112_Else:
    assume {:partition} $exception == $null;
    goto anon41;

  anon41:
    assert {:sourceloc "StandardByteDigester.java", 964, -1, -1, -1} true;
    goto block91;

  anon112_Then:
    assume {:partition} $exception != $null;
    goto anon113_Then, anon113_Else;

  anon113_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto anon41;

  anon113_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    goto block88;

  anon109_Then:
    assume {:partition} $exception != $null;
    goto anon110_Then, anon110_Else;

  anon110_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto anon34;

  anon110_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    goto block88;

  anon100_Then:
    assume {:partition} r2 == $null;
    assert {:sourceloc "StandardByteDigester.java", 952, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block89;

  block89:
    assert {:sourceloc "StandardByteDigester.java", 971, -1, -1, -1} true;
    $r7 := $heap[r0, java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert {:sourceloc "StandardByteDigester.java", 971, -1, -1, -1} true;
    goto anon114_Then, anon114_Else;

  anon114_Else:
    assume {:partition} $r7 == $null;
    assert {:sourceloc "StandardByteDigester.java", 971, -1, -1, -1} true;
    assert {:noverify} true;
    $return := $null;
    call $exception := $new(java.lang.RuntimeException);
    goto block88;

  anon114_Then:
    assume {:partition} $r7 != $null;
    assert {:sourceloc "StandardByteDigester.java", 971, -1, -1, -1} true;
    goto anon44;

  anon44:
    call $exception := java.security.MessageDigest$update$byte$lp$$rp$($r7, r1);
    goto anon115_Then, anon115_Else;

  anon115_Else:
    assume {:partition} $exception == $null;
    goto block91;

  anon115_Then:
    assume {:partition} $exception != $null;
    goto anon116_Then, anon116_Else;

  anon116_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto block91;

  anon116_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    goto block88;

  anon98_Then:
    assume {:partition} $exception != $null;
    goto anon99_Then, anon99_Else;

  anon99_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto anon7;

  anon99_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    goto block88;

  anon71_dummy:
    assume false;
    return;

  block92_last:
    assert {:sourceloc "StandardByteDigester.java", 976, -1, -1, -1} true;
    $i0 := $heap[r0, int$org.jasypt.digest.StandardByteDigester$iterations0];
    assert {:sourceloc "StandardByteDigester.java", 976, -1, -1, -1} true;
    $i1 := $i0 - 1;
    assert {:sourceloc "StandardByteDigester.java", 976, -1, -1, -1} true;
    goto anon120_Then, anon120_Else;
}



implementation org.jasypt.digest.StandardByteDigester$matches$byte$lp$$rp$_byte$lp$$rp$($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r2: ref;
  var r0: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $heap[$this, $type] <: org.jasypt.digest.StandardByteDigester;
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "StandardByteDigester.java", 1041, -1, -1, -1} true;
    $return := 0;
    goto block103;

  block103:
    return;
}



implementation org.jasypt.digest.StandardByteDigester$matches_unsafe$byte$lp$$rp$_byte$lp$$rp$($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r11: ref;
  var $i2: int;
  var $i12: int;
  var r0: ref;
  var r13: ref;
  var r2: ref;
  var $i3: int;
  var $z2: int;
  var $i4: int;
  var r19: ref;
  var $r8: ref;
  var $fakelocal_1: ref;
  var $i0: int;
  var $i11: int;
  var r17: ref;
  var $fakelocal_5: ref;
  var $z1: int;
  var $fakelocal_0: ref;
  var $z4: int;
  var r14: ref;
  var $i9: int;
  var $z6: int;
  var $r4: ref;
  var r20: ref;
  var $r3: ref;
  var i14: int;
  var $i5: int;
  var $z0: int;
  var $i1: int;
  var r18: ref;
  var $i8: int;
  var r1: ref;
  var r16: ref;
  var r10: ref;
  var $fakelocal_4: ref;
  var $i6: int;
  var $i7: int;
  var $i10: int;
  var $z3: int;
  var r15: ref;
  var $i13: int;
  var $fakelocal_3: ref;
  var $z5: int;
  var $fakelocal_2: ref;
  var $fakelocal_6: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $heap[$this, $type] <: org.jasypt.digest.StandardByteDigester;
    assume {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "StandardByteDigester.java", 1113, -1, -1, -1} true;
    goto anon103_Then, anon103_Else;

  anon103_Else:
    assume {:partition} r1 == $null;
    assert {:sourceloc "StandardByteDigester.java", 1113, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "StandardByteDigester.java", 1114, -1, -1, -1} true;
    goto anon104_Then, anon104_Else;

  anon104_Else:
    assume {:partition} r2 == $null;
    assert {:sourceloc "StandardByteDigester.java", 1114, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "StandardByteDigester.java", 1114, -1, -1, -1} true;
    $z6 := 1;
    assert {:sourceloc "StandardByteDigester.java", 1114, -1, -1, -1} true;
    goto block106;

  block106:
    assert {:sourceloc "StandardByteDigester.java", 1114, -1, -1, -1} true;
    $return := $z6;
    goto block119;

  block119:
    return;

  anon104_Then:
    assume {:partition} r2 != $null;
    assert {:sourceloc "StandardByteDigester.java", 1114, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block105;

  block105:
    assert {:sourceloc "StandardByteDigester.java", 1114, -1, -1, -1} true;
    $z6 := 0;
    goto block106;

  anon103_Then:
    assume {:partition} r1 != $null;
    assert {:sourceloc "StandardByteDigester.java", 1113, -1, -1, -1} {:comment "thenblock"} true;
    goto block104;

  block104:
    assert {:sourceloc "StandardByteDigester.java", 1115, -1, -1, -1} true;
    goto anon105_Then, anon105_Else;

  anon105_Else:
    assume {:partition} r2 == $null;
    assert {:sourceloc "StandardByteDigester.java", 1115, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "StandardByteDigester.java", 1116, -1, -1, -1} true;
    $return := 0;
    goto block119;

  anon105_Then:
    assume {:partition} r2 != $null;
    assert {:sourceloc "StandardByteDigester.java", 1115, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block107;

  block107:
    assert {:sourceloc "StandardByteDigester.java", 1120, -1, -1, -1} true;
    call $z0, $exception := org.jasypt.digest.StandardByteDigester$isInitialized$(r0);
    assert {:sourceloc "StandardByteDigester.java", 1120, -1, -1, -1} true;
    goto anon106_Then, anon106_Else;

  anon106_Else:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "StandardByteDigester.java", 1120, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "StandardByteDigester.java", 1121, -1, -1, -1} true;
    call $exception := org.jasypt.digest.StandardByteDigester$initialize$(r0);
    goto block108;

  block108:
    assert {:sourceloc "StandardByteDigester.java", 1127, -1, -1, -1} true;
    r10 := $null;
    assert {:sourceloc "StandardByteDigester.java", 1128, -1, -1, -1} true;
    $z1 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$useSalt0];
    assert {:sourceloc "StandardByteDigester.java", 1128, -1, -1, -1} true;
    goto anon107_Then, anon107_Else;

  anon107_Else:
    assume {:partition} $z1 != 0;
    assert {:sourceloc "StandardByteDigester.java", 1128, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "StandardByteDigester.java", 1133, -1, -1, -1} true;
    $r3 := $heap[r0, org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261];
    assert {:sourceloc "StandardByteDigester.java", 1133, -1, -1, -1} true;
    goto anon108_Then, anon108_Else;

  anon108_Else:
    assume {:partition} $r3 == $null;
    assert {:sourceloc "StandardByteDigester.java", 1133, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.RuntimeException);
    goto block110;

  block110:
    assert {:sourceloc "StandardByteDigester.java", 1114, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r8 := $exception;
    assert {:sourceloc "StandardByteDigester.java", 1177, -1, -1, -1} true;
    call $fakelocal_5 := $new(org.jasypt.exceptions.EncryptionOperationNotPossibleException);
    r16 := $fakelocal_5;
    assert {:sourceloc "StandardByteDigester.java", 1177, -1, -1, -1} true;
    call $exception := org.jasypt.exceptions.EncryptionOperationNotPossibleException$$la$init$ra$$(r16);
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon143_Then, anon143_Else;

  anon143_Else:
    assume {:partition} !($heap[r16, $type] <: java.lang.Throwable);
    call $fakelocal_6 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon143_Then:
    assume {:partition} $heap[r16, $type] <: java.lang.Throwable;
    $exception := $exception;
    goto anon102;

  anon102:
    r20 := r16;
    assert {:sourceloc "StandardByteDigester.java", 1177, -1, -1, -1} true;
    $exception := r20;
    goto block119;

  anon108_Then:
    assume {:partition} $r3 != $null;
    assert {:sourceloc "StandardByteDigester.java", 1133, -1, -1, -1} true;
    goto anon18;

  anon18:
    call $z3, $exception := org.jasypt.salt.SaltGenerator$includePlainSaltInEncryptionResults$($r3);
    goto anon109_Then, anon109_Else;

  anon109_Else:
    assume {:partition} $exception == $null;
    goto anon22;

  anon22:
    assert {:sourceloc "StandardByteDigester.java", 1133, -1, -1, -1} true;
    goto anon111_Then, anon111_Else;

  anon111_Else:
    assume {:partition} $z3 != 0;
    assert {:sourceloc "StandardByteDigester.java", 1133, -1, -1, -1} {:comment "elseblock"} true;
    goto anon25;

  anon25:
    assert {:sourceloc "StandardByteDigester.java", 1136, -1, -1, -1} true;
    i14 := $heap[r0, int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0];
    assert {:sourceloc "StandardByteDigester.java", 1137, -1, -1, -1} true;
    $i1 := $heap[r0, int$org.jasypt.digest.StandardByteDigester$digestLengthBytes0];
    assert {:sourceloc "StandardByteDigester.java", 1137, -1, -1, -1} true;
    goto anon112_Then, anon112_Else;

  anon112_Else:
    assume {:partition} 0 < $i1;
    assert {:sourceloc "StandardByteDigester.java", 1137, -1, -1, -1} {:comment "elseblock"} true;
    goto anon28;

  anon28:
    assert {:sourceloc "StandardByteDigester.java", 1138, -1, -1, -1} true;
    $z5 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$useLenientSaltSizeCheck0];
    assert {:sourceloc "StandardByteDigester.java", 1138, -1, -1, -1} true;
    goto anon113_Then, anon113_Else;

  anon113_Else:
    assume {:partition} $z5 != 0;
    assert {:sourceloc "StandardByteDigester.java", 1138, -1, -1, -1} {:comment "elseblock"} true;
    goto anon31;

  anon31:
    assert {:sourceloc "StandardByteDigester.java", 1139, -1, -1, -1} true;
    goto anon114_Then, anon114_Else;

  anon114_Else:
    assume {:partition} r2 == $null;
    assert {:sourceloc "StandardByteDigester.java", 1139, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.NullPointerException);
    goto block110;

  anon114_Then:
    assume {:partition} r2 != $null;
    assert {:sourceloc "StandardByteDigester.java", 1139, -1, -1, -1} true;
    goto anon34;

  anon34:
    $i11 := $arrSizeHeap[r2];
    assert {:sourceloc "StandardByteDigester.java", 1139, -1, -1, -1} true;
    $i10 := $heap[r0, int$org.jasypt.digest.StandardByteDigester$digestLengthBytes0];
    assert {:sourceloc "StandardByteDigester.java", 1139, -1, -1, -1} true;
    goto anon115_Then, anon115_Else;

  anon115_Else:
    assume {:partition} $i10 > $i11;
    assert {:sourceloc "StandardByteDigester.java", 1139, -1, -1, -1} {:comment "elseblock"} true;
    goto anon37;

  anon37:
    assert {:sourceloc "StandardByteDigester.java", 1140, -1, -1, -1} true;
    call $fakelocal_0 := $new(org.jasypt.exceptions.EncryptionOperationNotPossibleException);
    r13 := $fakelocal_0;
    assert {:sourceloc "StandardByteDigester.java", 1140, -1, -1, -1} true;
    call $exception := org.jasypt.exceptions.EncryptionOperationNotPossibleException$$la$init$ra$$(r13);
    goto anon116_Then, anon116_Else;

  anon116_Else:
    assume {:partition} $exception == $null;
    goto anon41;

  anon41:
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon118_Then, anon118_Else;

  anon118_Else:
    assume {:partition} !($heap[r13, $type] <: java.lang.Throwable);
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.ClassCastException);
    goto block110;

  anon118_Then:
    assume {:partition} $heap[r13, $type] <: java.lang.Throwable;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon44;

  anon44:
    r17 := r13;
    assert {:sourceloc "StandardByteDigester.java", 1140, -1, -1, -1} true;
    $exception := r17;
    goto block119;

  anon116_Then:
    assume {:partition} $exception != $null;
    goto anon117_Then, anon117_Else;

  anon117_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon41;

  anon117_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    r13 := $null;
    goto block110;

  anon115_Then:
    assume {:partition} $i11 >= $i10;
    assert {:sourceloc "StandardByteDigester.java", 1139, -1, -1, -1} {:comment "thenblock"} true;
    goto block114;

  block114:
    assert {:sourceloc "StandardByteDigester.java", 1142, -1, -1, -1} true;
    goto anon119_Then, anon119_Else;

  anon119_Else:
    assume {:partition} r2 == $null;
    assert {:sourceloc "StandardByteDigester.java", 1142, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.NullPointerException);
    goto block110;

  anon119_Then:
    assume {:partition} r2 != $null;
    assert {:sourceloc "StandardByteDigester.java", 1142, -1, -1, -1} true;
    goto anon47;

  anon47:
    $i13 := $arrSizeHeap[r2];
    assert {:sourceloc "StandardByteDigester.java", 1142, -1, -1, -1} true;
    $i12 := $heap[r0, int$org.jasypt.digest.StandardByteDigester$digestLengthBytes0];
    assert {:sourceloc "StandardByteDigester.java", 1142, -1, -1, -1} true;
    i14 := $i13 - $i12;
    assert {:sourceloc "StandardByteDigester.java", 1142, -1, -1, -1} true;
    goto block115;

  block115:
    assert {:sourceloc "StandardByteDigester.java", 1155, -1, -1, -1} true;
    $z4 := $heap[r0, boolean$org.jasypt.digest.StandardByteDigester$invertPositionOfPlainSaltInEncryptionResults0];
    assert {:sourceloc "StandardByteDigester.java", 1155, -1, -1, -1} true;
    goto anon130_Then, anon130_Else;

  anon130_Else:
    assume {:partition} $z4 == 0;
    assert {:sourceloc "StandardByteDigester.java", 1155, -1, -1, -1} {:comment "elseblock"} true;
    goto anon76;

  anon76:
    assert {:sourceloc "StandardByteDigester.java", 1156, -1, -1, -1} true;
    call $fakelocal_3 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_3 := i14];
    r10 := $fakelocal_3;
    assert {:sourceloc "StandardByteDigester.java", 1157, -1, -1, -1} true;
    call $exception := java.lang.System$arraycopy$java.lang.Object_int_java.lang.Object_int_int(r2, 0, r10, 0, i14);
    goto anon131_Then, anon131_Else;

  anon131_Else:
    assume {:partition} $exception == $null;
    goto anon80;

  anon80:
    assert {:sourceloc "StandardByteDigester.java", 1157, -1, -1, -1} true;
    goto block117;

  block117:
    assert {:sourceloc "StandardByteDigester.java", 1163, -1, -1, -1} true;
    goto block109;

  block109:
    assert {:sourceloc "StandardByteDigester.java", 1169, -1, -1, -1} true;
    call r11, $exception := org.jasypt.digest.StandardByteDigester$digest$byte$lp$$rp$_byte$lp$$rp$(r0, r1, r10);
    goto anon139_Then, anon139_Else;

  anon139_Else:
    assume {:partition} $exception == $null;
    goto anon96;

  anon96:
    assert {:sourceloc "StandardByteDigester.java", 1172, -1, -1, -1} true;
    call $z2, $exception := org.jasypt.digest.StandardByteDigester$jdkArraysEquals$byte$lp$$rp$_byte$lp$$rp$(r11, r2);
    goto anon141_Then, anon141_Else;

  anon141_Else:
    assume {:partition} $exception == $null;
    goto block118;

  block118:
    assert {:sourceloc "StandardByteDigester.java", 1172, -1, -1, -1} true;
    $return := $z2;
    goto block119;

  anon141_Then:
    assume {:partition} $exception != $null;
    goto anon142_Then, anon142_Else;

  anon142_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto block118;

  anon142_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block110;

  anon139_Then:
    assume {:partition} $exception != $null;
    goto anon140_Then, anon140_Else;

  anon140_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon96;

  anon140_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block110;

  anon131_Then:
    assume {:partition} $exception != $null;
    goto anon132_Then, anon132_Else;

  anon132_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon80;

  anon132_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block110;

  anon130_Then:
    assume {:partition} $z4 != 0;
    assert {:sourceloc "StandardByteDigester.java", 1155, -1, -1, -1} {:comment "thenblock"} true;
    goto block116;

  block116:
    assert {:sourceloc "StandardByteDigester.java", 1159, -1, -1, -1} true;
    call $fakelocal_4 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_4 := i14];
    r10 := $fakelocal_4;
    assert {:sourceloc "StandardByteDigester.java", 1160, -1, -1, -1} true;
    goto anon133_Then, anon133_Else;

  anon133_Else:
    assume {:partition} r2 == $null;
    assert {:sourceloc "StandardByteDigester.java", 1160, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.NullPointerException);
    goto block110;

  anon133_Then:
    assume {:partition} r2 != $null;
    assert {:sourceloc "StandardByteDigester.java", 1160, -1, -1, -1} true;
    goto anon83;

  anon83:
    $i4 := $arrSizeHeap[r2];
    assert {:sourceloc "StandardByteDigester.java", 1160, -1, -1, -1} true;
    $i5 := $i4 - i14;
    assert {:sourceloc "StandardByteDigester.java", 1160, -1, -1, -1} true;
    call $exception := java.lang.System$arraycopy$java.lang.Object_int_java.lang.Object_int_int(r2, $i5, r10, 0, i14);
    goto anon134_Then, anon134_Else;

  anon134_Else:
    assume {:partition} $exception == $null;
    goto block117;

  anon134_Then:
    assume {:partition} $exception != $null;
    goto anon135_Then, anon135_Else;

  anon135_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto block117;

  anon135_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block110;

  anon113_Then:
    assume {:partition} $z5 == 0;
    assert {:sourceloc "StandardByteDigester.java", 1138, -1, -1, -1} {:comment "thenblock"} true;
    goto block113;

  block113:
    assert {:sourceloc "StandardByteDigester.java", 1144, -1, -1, -1} true;
    goto anon120_Then, anon120_Else;

  anon120_Else:
    assume {:partition} r2 == $null;
    assert {:sourceloc "StandardByteDigester.java", 1144, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.NullPointerException);
    goto block110;

  anon120_Then:
    assume {:partition} r2 != $null;
    assert {:sourceloc "StandardByteDigester.java", 1144, -1, -1, -1} true;
    goto anon50;

  anon50:
    $i9 := $arrSizeHeap[r2];
    assert {:sourceloc "StandardByteDigester.java", 1144, -1, -1, -1} true;
    $i7 := $heap[r0, int$org.jasypt.digest.StandardByteDigester$digestLengthBytes0];
    assert {:sourceloc "StandardByteDigester.java", 1144, -1, -1, -1} true;
    $i6 := $heap[r0, int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0];
    assert {:sourceloc "StandardByteDigester.java", 1144, -1, -1, -1} true;
    $i8 := $i7 + $i6;
    assert {:sourceloc "StandardByteDigester.java", 1144, -1, -1, -1} true;
    goto anon121_Then, anon121_Else;

  anon121_Else:
    assume {:partition} $i9 != $i8;
    assert {:sourceloc "StandardByteDigester.java", 1144, -1, -1, -1} {:comment "elseblock"} true;
    goto anon53;

  anon53:
    assert {:sourceloc "StandardByteDigester.java", 1145, -1, -1, -1} true;
    call $fakelocal_1 := $new(org.jasypt.exceptions.EncryptionOperationNotPossibleException);
    r14 := $fakelocal_1;
    assert {:sourceloc "StandardByteDigester.java", 1145, -1, -1, -1} true;
    call $exception := org.jasypt.exceptions.EncryptionOperationNotPossibleException$$la$init$ra$$(r14);
    goto anon122_Then, anon122_Else;

  anon122_Else:
    assume {:partition} $exception == $null;
    goto anon57;

  anon57:
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon124_Then, anon124_Else;

  anon124_Else:
    assume {:partition} !($heap[r14, $type] <: java.lang.Throwable);
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.ClassCastException);
    goto block110;

  anon124_Then:
    assume {:partition} $heap[r14, $type] <: java.lang.Throwable;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon60;

  anon60:
    r18 := r14;
    assert {:sourceloc "StandardByteDigester.java", 1145, -1, -1, -1} true;
    $exception := r18;
    goto block119;

  anon122_Then:
    assume {:partition} $exception != $null;
    goto anon123_Then, anon123_Else;

  anon123_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon57;

  anon123_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    r14 := $null;
    goto block110;

  anon121_Then:
    assume {:partition} $i9 == $i8;
    assert {:sourceloc "StandardByteDigester.java", 1144, -1, -1, -1} {:comment "thenblock"} true;
    goto block115;

  anon112_Then:
    assume {:partition} $i1 <= 0;
    assert {:sourceloc "StandardByteDigester.java", 1137, -1, -1, -1} {:comment "thenblock"} true;
    goto block112;

  block112:
    assert {:sourceloc "StandardByteDigester.java", 1150, -1, -1, -1} true;
    goto anon125_Then, anon125_Else;

  anon125_Else:
    assume {:partition} r2 == $null;
    assert {:sourceloc "StandardByteDigester.java", 1150, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.NullPointerException);
    goto block110;

  anon125_Then:
    assume {:partition} r2 != $null;
    assert {:sourceloc "StandardByteDigester.java", 1150, -1, -1, -1} true;
    goto anon63;

  anon63:
    $i3 := $arrSizeHeap[r2];
    assert {:sourceloc "StandardByteDigester.java", 1150, -1, -1, -1} true;
    $i2 := $heap[r0, int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0];
    assert {:sourceloc "StandardByteDigester.java", 1150, -1, -1, -1} true;
    goto anon126_Then, anon126_Else;

  anon126_Else:
    assume {:partition} $i2 > $i3;
    assert {:sourceloc "StandardByteDigester.java", 1150, -1, -1, -1} {:comment "elseblock"} true;
    goto anon66;

  anon66:
    assert {:sourceloc "StandardByteDigester.java", 1151, -1, -1, -1} true;
    call $fakelocal_2 := $new(org.jasypt.exceptions.EncryptionOperationNotPossibleException);
    r15 := $fakelocal_2;
    assert {:sourceloc "StandardByteDigester.java", 1151, -1, -1, -1} true;
    call $exception := org.jasypt.exceptions.EncryptionOperationNotPossibleException$$la$init$ra$$(r15);
    goto anon127_Then, anon127_Else;

  anon127_Else:
    assume {:partition} $exception == $null;
    goto anon70;

  anon70:
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon129_Then, anon129_Else;

  anon129_Else:
    assume {:partition} !($heap[r15, $type] <: java.lang.Throwable);
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.ClassCastException);
    goto block110;

  anon129_Then:
    assume {:partition} $heap[r15, $type] <: java.lang.Throwable;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    goto anon73;

  anon73:
    r19 := r15;
    assert {:sourceloc "StandardByteDigester.java", 1151, -1, -1, -1} true;
    $exception := r19;
    goto block119;

  anon127_Then:
    assume {:partition} $exception != $null;
    goto anon128_Then, anon128_Else;

  anon128_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon70;

  anon128_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    r15 := $null;
    goto block110;

  anon126_Then:
    assume {:partition} $i3 >= $i2;
    assert {:sourceloc "StandardByteDigester.java", 1150, -1, -1, -1} {:comment "thenblock"} true;
    goto block115;

  anon111_Then:
    assume {:partition} $z3 == 0;
    assert {:sourceloc "StandardByteDigester.java", 1133, -1, -1, -1} {:comment "thenblock"} true;
    goto block111;

  block111:
    assert {:sourceloc "StandardByteDigester.java", 1164, -1, -1, -1} true;
    $r4 := $heap[r0, org.jasypt.salt.SaltGenerator$org.jasypt.digest.StandardByteDigester$saltGenerator261];
    assert {:sourceloc "StandardByteDigester.java", 1164, -1, -1, -1} true;
    $i0 := $heap[r0, int$org.jasypt.digest.StandardByteDigester$saltSizeBytes0];
    assert {:sourceloc "StandardByteDigester.java", 1164, -1, -1, -1} true;
    goto anon136_Then, anon136_Else;

  anon136_Else:
    assume {:partition} $r4 == $null;
    assert {:sourceloc "StandardByteDigester.java", 1164, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.RuntimeException);
    goto block110;

  anon136_Then:
    assume {:partition} $r4 != $null;
    assert {:sourceloc "StandardByteDigester.java", 1164, -1, -1, -1} true;
    goto anon89;

  anon89:
    call r10, $exception := org.jasypt.salt.SaltGenerator$generateSalt$int($r4, $i0);
    goto anon137_Then, anon137_Else;

  anon137_Else:
    assume {:partition} $exception == $null;
    goto block109;

  anon137_Then:
    assume {:partition} $exception != $null;
    goto anon138_Then, anon138_Else;

  anon138_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto block109;

  anon138_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block110;

  anon109_Then:
    assume {:partition} $exception != $null;
    goto anon110_Then, anon110_Else;

  anon110_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon22;

  anon110_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block110;

  anon107_Then:
    assume {:partition} $z1 == 0;
    assert {:sourceloc "StandardByteDigester.java", 1128, -1, -1, -1} {:comment "thenblock"} true;
    goto block109;

  anon106_Then:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "StandardByteDigester.java", 1120, -1, -1, -1} {:comment "thenblock"} true;
    goto block108;
}



implementation org.jasypt.digest.StandardByteDigester$jdkArraysEquals$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $fakelocal_2: ref;
  var $fakelocal_3: ref;
  var $b3: int;
  var i4: int;
  var $fakelocal_1: ref;
  var r1: ref;
  var $fakelocal_0: ref;
  var $b2: int;
  var $i1: int;
  var i0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "StandardByteDigester.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "StandardByteDigester.java", 1204, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "StandardByteDigester.java", 1204, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "StandardByteDigester.java", 1205, -1, -1, -1} true;
    $return := 1;
    goto block127;

  block127:
    return;

  anon30_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "StandardByteDigester.java", 1204, -1, -1, -1} {:comment "thenblock"} true;
    goto block120;

  block120:
    assert {:sourceloc "StandardByteDigester.java", 1206, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} r0 != $null;
    assert {:sourceloc "StandardByteDigester.java", 1206, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "StandardByteDigester.java", 1207, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} r1 == $null;
    assert {:sourceloc "StandardByteDigester.java", 1207, -1, -1, -1} {:comment "elseblock"} true;
    goto block121;

  block121:
    assert {:sourceloc "StandardByteDigester.java", 1207, -1, -1, -1} true;
    $return := 0;
    goto block127;

  anon32_Then:
    assume {:partition} r1 != $null;
    assert {:sourceloc "StandardByteDigester.java", 1207, -1, -1, -1} {:comment "thenblock"} true;
    goto block122;

  block122:
    assert {:sourceloc "StandardByteDigester.java", 1209, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} r0 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon33_Then:
    assume {:partition} r0 != $null;
    $exception := $exception;
    goto anon11;

  anon11:
    i0 := $arrSizeHeap[r0];
    assert {:sourceloc "StandardByteDigester.java", 1210, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_1 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon34_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon14;

  anon14:
    $i1 := $arrSizeHeap[r1];
    assert {:sourceloc "StandardByteDigester.java", 1210, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} $i1 != i0;
    assert {:sourceloc "StandardByteDigester.java", 1210, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "StandardByteDigester.java", 1211, -1, -1, -1} true;
    $return := 0;
    goto block127;

  anon35_Then:
    assume {:partition} $i1 == i0;
    assert {:sourceloc "StandardByteDigester.java", 1210, -1, -1, -1} {:comment "thenblock"} true;
    goto block123;

  block123:
    assert {:sourceloc "StandardByteDigester.java", 1213, -1, -1, -1} true;
    i4 := 0;
    goto block124;

  block124:
    call $return, $exception, $fakelocal_2, $fakelocal_3, $b3, i4, $b2 := org.jasypt.digest.StandardByteDigester$jdkArraysEquals$byte$lp$$rp$_byte$lp$$rp$_loop_block124($return, $exception, r0, $fakelocal_2, $fakelocal_3, $b3, i4, r1, $b2, i0);
    goto block124_last;

  anon36_Else:
    assume {:partition} i0 > i4;
    assert {:sourceloc "StandardByteDigester.java", 1213, -1, -1, -1} {:comment "elseblock"} true;
    goto anon20;

  anon20:
    assert {:sourceloc "StandardByteDigester.java", 1214, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon37_Else:
    assume {:partition} !(i4 < $arrSizeHeap[r0] && i4 >= 0);
    call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon37_Then:
    assume {:partition} i4 < $arrSizeHeap[r0] && i4 >= 0;
    $exception := $exception;
    goto anon23;

  anon23:
    $b3 := $intArrHeap[r0][i4];
    assert {:sourceloc "StandardByteDigester.java", 1214, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} !(i4 < $arrSizeHeap[r1] && i4 >= 0);
    call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon38_Then:
    assume {:partition} i4 < $arrSizeHeap[r1] && i4 >= 0;
    $exception := $exception;
    goto anon26;

  anon26:
    $b2 := $intArrHeap[r1][i4];
    assert {:sourceloc "StandardByteDigester.java", 1214, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} $b3 != $b2;
    assert {:sourceloc "StandardByteDigester.java", 1214, -1, -1, -1} {:comment "elseblock"} true;
    goto anon29;

  anon29:
    assert {:sourceloc "StandardByteDigester.java", 1215, -1, -1, -1} true;
    $return := 0;
    goto block127;

  anon39_Then:
    assume {:partition} $b3 == $b2;
    assert {:sourceloc "StandardByteDigester.java", 1214, -1, -1, -1} {:comment "thenblock"} true;
    goto block126;

  block126:
    assert {:sourceloc "StandardByteDigester.java", 1213, -1, -1, -1} true;
    i4 := i4 + 1;
    assert {:sourceloc "StandardByteDigester.java", 1213, -1, -1, -1} true;
    goto block126_dummy;

  anon36_Then:
    assume {:partition} i4 >= i0;
    assert {:sourceloc "StandardByteDigester.java", 1213, -1, -1, -1} {:comment "thenblock"} true;
    goto block125;

  block125:
    assert {:sourceloc "StandardByteDigester.java", 1217, -1, -1, -1} true;
    $return := 1;
    goto block127;

  anon31_Then:
    assume {:partition} r0 == $null;
    assert {:sourceloc "StandardByteDigester.java", 1206, -1, -1, -1} {:comment "thenblock"} true;
    goto block121;

  block126_dummy:
    assume false;
    return;

  block124_last:
    assert {:sourceloc "StandardByteDigester.java", 1213, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;
}



implementation java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var z0: int;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    $heap := $heap[r0, boolean$java.lang.Boolean$value0 := z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto block128;

  block128:
    return;
}



implementation java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var z0: int;
  var $fakelocal_0: ref;
  var $r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$return, $type] <: java.lang.Boolean;
    $exception := $null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.Boolean);
    $r0 := $fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call $exception := java.lang.Boolean$$la$init$ra$$boolean($r0, z0);
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    $return := $r0;
    goto block129;

  block129:
    return;
}



implementation java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref)
{
  var $z0: int;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    $z0 := $heap[r0, boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    $return := $z0;
    goto block130;

  block130:
    return;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation org.jasypt.digest.StandardByteDigester$digest$byte$lp$$rp$_byte$lp$$rp$_loop_block92(in_$return: ref, 
    in_$exception: ref, 
    in_$r12: ref, 
    in_$i1: int, 
    in_r0: ref, 
    in_i2: int, 
    in_$i0: int, 
    in_$r13: ref, 
    in_r21: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$r12: ref, 
    out_$i1: int, 
    out_i2: int, 
    out_$i0: int, 
    out_$r13: ref, 
    out_r21: ref)
{

  entry:
    out_$return, out_$exception, out_$r12, out_$i1, out_i2, out_$i0, out_$r13, out_r21 := in_$return, in_$exception, in_$r12, in_$i1, in_i2, in_$i0, in_$r13, in_r21;
    goto block92;

  block92:
    assert {:sourceloc "StandardByteDigester.java", 976, -1, -1, -1} true;
    out_$i0 := $heap[in_r0, int$org.jasypt.digest.StandardByteDigester$iterations0];
    assert {:sourceloc "StandardByteDigester.java", 976, -1, -1, -1} true;
    out_$i1 := out_$i0 - 1;
    assert {:sourceloc "StandardByteDigester.java", 976, -1, -1, -1} true;
    goto anon120_Then, anon120_Else;

  anon120_Then:
    assume {:partition} out_i2 >= out_$i1;
    assert {:sourceloc "StandardByteDigester.java", 976, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$r12, out_$i1, out_i2, out_$i0, out_$r13, out_r21 := in_$return, in_$exception, in_$r12, in_$i1, in_i2, in_$i0, in_$r13, in_r21;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon71:
    assert {:sourceloc "StandardByteDigester.java", 976, -1, -1, -1} true;
    out_i2 := out_i2 + 1;
    assert {:sourceloc "StandardByteDigester.java", 976, -1, -1, -1} true;
    goto anon71_dummy;

  anon125_Else:
    assume {:partition} out_$exception == $null;
    goto anon71;

  anon126_Else:
    assume {:partition} !($heap[out_$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto anon71;

  anon125_Then:
    assume {:partition} out_$exception != $null;
    goto anon126_Then, anon126_Else;

  anon126_Then:
    assume {:partition} $heap[out_$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    out_$return, out_$exception, out_$r12, out_$i1, out_i2, out_$i0, out_$r13, out_r21 := in_$return, in_$exception, in_$r12, in_$i1, in_i2, in_$i0, in_$r13, in_r21;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon67:
    call out_r21, out_$exception := java.security.MessageDigest$digest$byte$lp$$rp$(out_$r13, out_r21);
    goto anon125_Then, anon125_Else;

  anon124_Then:
    assume {:partition} out_$r13 != $null;
    assert {:sourceloc "StandardByteDigester.java", 978, -1, -1, -1} true;
    goto anon67;

  anon64:
    assert {:sourceloc "StandardByteDigester.java", 978, -1, -1, -1} true;
    out_$r13 := $heap[in_r0, java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert {:sourceloc "StandardByteDigester.java", 978, -1, -1, -1} true;
    goto anon124_Then, anon124_Else;

  anon124_Else:
    assume {:partition} out_$r13 == $null;
    assert {:sourceloc "StandardByteDigester.java", 978, -1, -1, -1} true;
    assert {:noverify} true;
    out_$return := $null;
    call out_$exception := $new(java.lang.RuntimeException);
    out_$return, out_$exception, out_$r12, out_$i1, out_i2, out_$i0, out_$r13, out_r21 := in_$return, in_$exception, in_$r12, in_$i1, in_i2, in_$i0, in_$r13, in_r21;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon122_Else:
    assume {:partition} out_$exception == $null;
    goto anon64;

  anon123_Else:
    assume {:partition} !($heap[out_$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto anon64;

  anon122_Then:
    assume {:partition} out_$exception != $null;
    goto anon123_Then, anon123_Else;

  anon123_Then:
    assume {:partition} $heap[out_$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    out_$return, out_$exception, out_$r12, out_$i1, out_i2, out_$i0, out_$r13, out_r21 := in_$return, in_$exception, in_$r12, in_$i1, in_i2, in_$i0, in_$r13, in_r21;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon60:
    call out_$exception := java.security.MessageDigest$reset$(out_$r12);
    goto anon122_Then, anon122_Else;

  anon121_Then:
    assume {:partition} out_$r12 != $null;
    assert {:sourceloc "StandardByteDigester.java", 977, -1, -1, -1} true;
    goto anon60;

  anon57:
    assert {:sourceloc "StandardByteDigester.java", 977, -1, -1, -1} true;
    out_$r12 := $heap[in_r0, java.security.MessageDigest$org.jasypt.digest.StandardByteDigester$md265];
    assert {:sourceloc "StandardByteDigester.java", 977, -1, -1, -1} true;
    goto anon121_Then, anon121_Else;

  anon121_Else:
    assume {:partition} out_$r12 == $null;
    assert {:sourceloc "StandardByteDigester.java", 977, -1, -1, -1} true;
    assert {:noverify} true;
    out_$return := $null;
    call out_$exception := $new(java.lang.RuntimeException);
    out_$return, out_$exception, out_$r12, out_$i1, out_i2, out_$i0, out_$r13, out_r21 := in_$return, in_$exception, in_$r12, in_$i1, in_i2, in_$i0, in_$r13, in_r21;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon120_Else:
    assume {:partition} out_$i1 > out_i2;
    assert {:sourceloc "StandardByteDigester.java", 976, -1, -1, -1} {:comment "elseblock"} true;
    goto anon57;

  anon71_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$r12, out_$i1, out_i2, out_$i0, out_$r13, out_r21 := org.jasypt.digest.StandardByteDigester$digest$byte$lp$$rp$_byte$lp$$rp$_loop_block92(out_$return, out_$exception, out_$r12, out_$i1, in_r0, out_i2, out_$i0, out_$r13, out_r21);
    return;

  exit:
    return;
}



procedure org.jasypt.digest.StandardByteDigester$digest$byte$lp$$rp$_byte$lp$$rp$_loop_block92(in_$return: ref, 
    in_$exception: ref, 
    in_$r12: ref, 
    in_$i1: int, 
    in_r0: ref, 
    in_i2: int, 
    in_$i0: int, 
    in_$r13: ref, 
    in_r21: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$r12: ref, 
    out_$i1: int, 
    out_i2: int, 
    out_$i0: int, 
    out_$r13: ref, 
    out_r21: ref);
  modifies $objIndex, $heap;



implementation org.jasypt.digest.StandardByteDigester$jdkArraysEquals$byte$lp$$rp$_byte$lp$$rp$_loop_block124(in_$return: int, 
    in_$exception: ref, 
    in_r0: ref, 
    in_$fakelocal_2: ref, 
    in_$fakelocal_3: ref, 
    in_$b3: int, 
    in_i4: int, 
    in_r1: ref, 
    in_$b2: int, 
    in_i0: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_3: ref, 
    out_$b3: int, 
    out_i4: int, 
    out_$b2: int)
{

  entry:
    out_$return, out_$exception, out_$fakelocal_2, out_$fakelocal_3, out_$b3, out_i4, out_$b2 := in_$return, in_$exception, in_$fakelocal_2, in_$fakelocal_3, in_$b3, in_i4, in_$b2;
    goto block124;

  block124:
    assert {:sourceloc "StandardByteDigester.java", 1213, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Then:
    assume {:partition} out_i4 >= in_i0;
    assert {:sourceloc "StandardByteDigester.java", 1213, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_2, out_$fakelocal_3, out_$b3, out_i4, out_$b2 := in_$return, in_$exception, in_$fakelocal_2, in_$fakelocal_3, in_$b3, in_i4, in_$b2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  block126:
    assert {:sourceloc "StandardByteDigester.java", 1213, -1, -1, -1} true;
    out_i4 := out_i4 + 1;
    assert {:sourceloc "StandardByteDigester.java", 1213, -1, -1, -1} true;
    goto block126_dummy;

  anon39_Then:
    assume {:partition} out_$b3 == out_$b2;
    assert {:sourceloc "StandardByteDigester.java", 1214, -1, -1, -1} {:comment "thenblock"} true;
    goto block126;

  anon26:
    out_$b2 := $intArrHeap[in_r1][out_i4];
    assert {:sourceloc "StandardByteDigester.java", 1214, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} out_$b3 != out_$b2;
    assert {:sourceloc "StandardByteDigester.java", 1214, -1, -1, -1} {:comment "elseblock"} true;
    out_$return, out_$exception, out_$fakelocal_2, out_$fakelocal_3, out_$b3, out_i4, out_$b2 := in_$return, in_$exception, in_$fakelocal_2, in_$fakelocal_3, in_$b3, in_i4, in_$b2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon38_Then:
    assume {:partition} out_i4 < $arrSizeHeap[in_r1] && out_i4 >= 0;
    out_$exception := out_$exception;
    goto anon26;

  anon23:
    out_$b3 := $intArrHeap[in_r0][out_i4];
    assert {:sourceloc "StandardByteDigester.java", 1214, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} !(out_i4 < $arrSizeHeap[in_r1] && out_i4 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$fakelocal_2, out_$fakelocal_3, out_$b3, out_i4, out_$b2 := in_$return, in_$exception, in_$fakelocal_2, in_$fakelocal_3, in_$b3, in_i4, in_$b2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon37_Then:
    assume {:partition} out_i4 < $arrSizeHeap[in_r0] && out_i4 >= 0;
    out_$exception := out_$exception;
    goto anon23;

  anon20:
    assert {:sourceloc "StandardByteDigester.java", 1214, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon37_Else:
    assume {:partition} !(out_i4 < $arrSizeHeap[in_r0] && out_i4 >= 0);
    call out_$fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$fakelocal_2, out_$fakelocal_3, out_$b3, out_i4, out_$b2 := in_$return, in_$exception, in_$fakelocal_2, in_$fakelocal_3, in_$b3, in_i4, in_$b2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon36_Else:
    assume {:partition} in_i0 > out_i4;
    assert {:sourceloc "StandardByteDigester.java", 1213, -1, -1, -1} {:comment "elseblock"} true;
    goto anon20;

  block126_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$fakelocal_2, out_$fakelocal_3, out_$b3, out_i4, out_$b2 := org.jasypt.digest.StandardByteDigester$jdkArraysEquals$byte$lp$$rp$_byte$lp$$rp$_loop_block124(out_$return, out_$exception, in_r0, out_$fakelocal_2, out_$fakelocal_3, out_$b3, out_i4, in_r1, out_$b2, in_i0);
    return;

  exit:
    return;
}



procedure org.jasypt.digest.StandardByteDigester$jdkArraysEquals$byte$lp$$rp$_byte$lp$$rp$_loop_block124(in_$return: int, 
    in_$exception: ref, 
    in_r0: ref, 
    in_$fakelocal_2: ref, 
    in_$fakelocal_3: ref, 
    in_$b3: int, 
    in_i4: int, 
    in_r1: ref, 
    in_$b2: int, 
    in_i0: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_3: ref, 
    out_$b3: int, 
    out_i4: int, 
    out_$b2: int);
  modifies $objIndex, $heap;


