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

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.lang.Object: javaType extends complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique OSecurityManager: javaType extends unique java.lang.Object complete;

const unique $StringConst0: ref extends complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.security.MessageDigestSpi: javaType extends unique java.lang.Object complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.security.MessageDigest: javaType extends unique java.security.MessageDigestSpi complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.io.Serializable: javaType extends complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.lang.Comparable: javaType extends complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.lang.CharSequence: javaType extends complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.lang.String: javaType extends unique java.lang.Object, java.io.Serializable, java.lang.Comparable, java.lang.CharSequence complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.lang.Throwable: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.lang.Exception: javaType extends unique java.lang.Throwable complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.security.GeneralSecurityException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.security.NoSuchAlgorithmException: javaType extends unique java.security.GeneralSecurityException complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique com.orientechnologies.common.log.OLogManager: javaType extends complete;

const unique $StringConst1: ref extends complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.lang.RuntimeException: javaType extends unique java.lang.Exception complete;

const unique $StringConst2: ref extends complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.io.IOException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.io.UnsupportedEncodingException: javaType extends unique java.io.IOException complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.lang.NullPointerException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.lang.IndexOutOfBoundsException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.lang.ArrayIndexOutOfBoundsException: javaType extends unique java.lang.IndexOutOfBoundsException complete;

const unique $StringConst3: ref extends complete;

const unique $StringConst4: ref extends complete;

const unique $StringConst5: ref extends complete;

const unique $StringConst6: ref extends complete;

const unique $StringConst7: ref extends complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.lang.IllegalArgumentException: javaType extends unique java.lang.RuntimeException complete;

const unique $StringConst8: ref extends complete;

const unique $StringConst9: ref extends complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.lang.Appendable: javaType extends complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.lang.AbstractStringBuilder: javaType extends unique java.lang.Object, java.lang.Appendable, java.lang.CharSequence complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.lang.StringBuilder: javaType extends unique java.lang.AbstractStringBuilder, java.io.Serializable, java.lang.CharSequence complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique com.orientechnologies.orient.core.config.OGlobalConfiguration: javaType extends complete;

const unique $StringConst10: ref extends complete;

const unique $StringConst11: ref extends complete;

const unique $StringConst12: ref extends complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique com.orientechnologies.orient.core.exception.OConfigurationException: javaType extends complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique com.orientechnologies.common.exception.OException: javaType extends complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.lang.ClassCastException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.util.Random: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.security.SecureRandom: javaType extends unique java.util.Random complete;

const unique $StringConst13: ref extends complete;

const unique $StringConst14: ref extends complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.lang.Number: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.lang.Integer: javaType extends unique java.lang.Number, java.lang.Comparable complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.lang.NumberFormatException: javaType extends unique java.lang.IllegalArgumentException complete;

const unique $StringConst15: ref extends complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.util.Arrays: javaType extends unique java.lang.Object complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.util.Map: javaType extends complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.security.spec.KeySpec: javaType extends complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique javax.crypto.spec.PBEKeySpec: javaType extends unique java.lang.Object, java.security.spec.KeySpec complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique javax.crypto.SecretKeyFactory: javaType extends unique java.lang.Object complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.security.Key: javaType extends java.io.Serializable complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique javax.security.auth.Destroyable: javaType extends complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique javax.crypto.SecretKey: javaType extends java.security.Key, javax.security.auth.Destroyable complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.security.spec.InvalidKeySpecException: javaType extends unique java.security.GeneralSecurityException complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique com.orientechnologies.orient.core.exception.OSecurityException: javaType extends complete;

const unique $StringConst16: ref extends complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.lang.ArithmeticException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique com.orientechnologies.common.collection.OLRUCache: javaType extends complete;

const {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} unique java.util.Collections: javaType extends unique java.lang.Object complete;

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

var java.security.MessageDigest$OSecurityManager$md266: Field ref;

var OSecurityManager$OSecurityManager$instance265: ref;

var com.orientechnologies.orient.core.config.OGlobalConfiguration$com.orientechnologies.orient.core.config.OGlobalConfiguration$SECURITY_USER_PASSWORD_SALT_ITERATIONS367: ref;

var java.util.Map$OSecurityManager$SALT_CACHE267: ref;

var com.orientechnologies.orient.core.config.OGlobalConfiguration$com.orientechnologies.orient.core.config.OGlobalConfiguration$SECURITY_USER_PASSWORD_SALT_CACHE_SIZE368: ref;

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
  ensures $obj != $null;
  ensures !old($heap[$obj, $alloc]);
  ensures $obj == $intToRef(old($objIndex));
  ensures $objIndex == old($objIndex) + 1;
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $heap[$other, $type] == $heap[$this, $type];
  ensures $heap[$other, $alloc] <==> true;
  ensures $other != $null;



procedure int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure OSecurityManager$$la$init$ra$$($this: ref) returns ($exception: ref);
  modifies $objIndex, $arrSizeHeap, $heap;



procedure java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.security.MessageDigest$getInstance$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure com.orientechnologies.common.log.OLogManager$instance$() returns ($return: ref, $exception: ref);



procedure com.orientechnologies.common.log.OLogManager$error$java.lang.Object_java.lang.String_java.lang.Throwable_java.lang.Object$lp$$rp$($this: ref, 
    $in_parameter__0: ref, 
    $in_parameter__1: ref, 
    $in_parameter__2: ref, 
    $in_parameter__3: ref)
   returns ($exception: ref);



procedure OSecurityManager$createHash$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $heap, $intArrHeap, $stringSizeHeap;



procedure java.lang.String$getBytes$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure java.security.MessageDigest$digest$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure OSecurityManager$byteArrayToHexStr$byte$lp$$rp$($in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;



procedure OSecurityManager$instance$() returns ($return: ref, $exception: ref);



procedure OSecurityManager$isEqual_inline$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure OSecurityManager$equals_inline$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.String$toCharArray$($this: ref) returns ($return: ref, $exception: ref);



procedure OSecurityManager$checkPassword_unsafe$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $heap, $intArrHeap, $stringSizeHeap;



procedure java.lang.String$startsWith$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);



procedure java.lang.String$substring$int($this: ref, $in_parameter__0: int) returns ($return: ref, $exception: ref);



procedure OSecurityManager$createSHA256$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $heap, $intArrHeap;



procedure java.lang.String$equals$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);



procedure OSecurityManager$checkPasswordWithSalt$java.lang.String_java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;



procedure OSecurityManager$digestSHA256$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $heap;



procedure OSecurityManager$createHash$java.lang.String_java.lang.String_boolean($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: int)
   returns ($return: ref, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $heap, $intArrHeap, $stringSizeHeap;



procedure java.lang.IllegalArgumentException$$la$init$ra$$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure java.lang.StringBuilder$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref);



procedure java.lang.StringBuilder$append$char($this: ref, $in_parameter__0: int) returns ($return: ref, $exception: ref);



procedure java.lang.StringBuilder$append$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure java.lang.String$equalsIgnoreCase$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);



procedure com.orientechnologies.orient.core.config.OGlobalConfiguration$getValueAsInteger$($this: ref) returns ($return: int, $exception: ref);



procedure OSecurityManager$createHashWithSalt$java.lang.String_int_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: int, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $heap, $intArrHeap;



procedure java.lang.StringBuilder$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.StringBuilder$toString$($this: ref) returns ($return: ref, $exception: ref);



procedure com.orientechnologies.orient.core.exception.OConfigurationException$$la$init$ra$$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure com.orientechnologies.common.exception.OException$wrapException$com.orientechnologies.common.exception.OException_java.lang.Throwable($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref);



procedure OSecurityManager$createHashWithSalt$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $heap, $intArrHeap;



procedure java.security.SecureRandom$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.security.SecureRandom$nextBytes$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure OSecurityManager$getPbkdf2$java.lang.String_byte$lp$$rp$_int_int_java.lang.String($this: ref, 
    $in_parameter__0: ref, 
    $in_parameter__1: ref, 
    $in_parameter__2: int, 
    $in_parameter__3: int, 
    $in_parameter__4: ref)
   returns ($return: ref, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $heap, $intArrHeap;



procedure java.lang.StringBuilder$append$int($this: ref, $in_parameter__0: int) returns ($return: ref, $exception: ref);



procedure OSecurityManager$checkPasswordWithSalt$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;



procedure java.lang.String$split$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure OSecurityManager$hexToByteArray$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;



procedure java.lang.Integer$parseInt$java.lang.String($in_parameter__0: ref) returns ($return: int, $exception: ref);



procedure java.security.MessageDigest$isEqual$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);



procedure java.lang.String$$la$init$ra$$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure java.util.Arrays$toString$byte$lp$$rp$($in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure java.util.Map$get$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $heap;



procedure javax.crypto.spec.PBEKeySpec$$la$init$ra$$char$lp$$rp$_byte$lp$$rp$_int_int($this: ref, 
    $in_parameter__0: ref, 
    $in_parameter__1: ref, 
    $in_parameter__2: int, 
    $in_parameter__3: int)
   returns ($exception: ref);



procedure javax.crypto.SecretKeyFactory$getInstance$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure javax.crypto.SecretKeyFactory$generateSecret$java.security.spec.KeySpec($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure java.security.Key$getEncoded$($this: ref) returns ($return: ref, $exception: ref);
  modifies $heap;



procedure java.util.Map$put$java.lang.Object_java.lang.Object($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref);
  modifies $heap;



procedure com.orientechnologies.orient.core.exception.OSecurityException$$la$init$ra$$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure java.lang.String$$la$init$ra$$char$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure java.lang.String$substring$int_int($this: ref, $in_parameter__0: int, $in_parameter__1: int)
   returns ($return: ref, $exception: ref);



procedure java.lang.Integer$parseInt$java.lang.String_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure OSecurityManager$$la$clinit$ra$$() returns ($exception: ref);
  modifies $objIndex, java.util.Map$OSecurityManager$SALT_CACHE267, OSecurityManager$OSecurityManager$instance265, $arrSizeHeap, $heap;



procedure com.orientechnologies.common.collection.OLRUCache$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref);



procedure java.util.Collections$synchronizedMap$java.util.Map($in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies $heap;



procedure java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



implementation OSecurityManager$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var $r5: ref;
  var $r2: ref;
  var $fakelocal_1: ref;
  var r1: ref;
  var $r3: ref;
  var $fakelocal_0: ref;
  var r0: ref;
  var $r4: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $heap[$this, $type] <: OSecurityManager;
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "OSecurityManager.java", 65, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    goto block1;

  block1:
    assert {:sourceloc "OSecurityManager.java", 67, -1, -1, -1} true;
    call $r2, $exception := java.security.MessageDigest$getInstance$java.lang.String($StringConst0);
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $exception == $null;
    goto anon4;

  anon4:
    assert {:sourceloc "OSecurityManager.java", 67, -1, -1, -1} true;
    $heap := $heap[r0, java.security.MessageDigest$OSecurityManager$md266 := $r2];
    goto block3;

  block3:
    assert {:sourceloc "OSecurityManager.java", 70, -1, -1, -1} true;
    goto block4;

  block4:
    assert {:sourceloc "OSecurityManager.java", 71, -1, -1, -1} true;
    goto block5;

  block5:
    return;

  anon8_Then:
    assume {:partition} $exception != $null;
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon4;

  anon9_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    goto block2;

  block2:
    assert {:sourceloc "OSecurityManager.java", 71, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r3 := $exception;
    assert {:sourceloc "OSecurityManager.java", 68, -1, -1, -1} true;
    r1 := $r3;
    assert {:sourceloc "OSecurityManager.java", 69, -1, -1, -1} true;
    call $r4, $exception := com.orientechnologies.common.log.OLogManager$instance$();
    assert {:sourceloc "OSecurityManager.java", 69, -1, -1, -1} true;
    call $fakelocal_0 := $new($arrayType(java.lang.Object));
    $arrSizeHeap := $arrSizeHeap[$fakelocal_0 := 0];
    $r5 := $fakelocal_0;
    assert {:sourceloc "OSecurityManager.java", 69, -1, -1, -1} true;
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} $r4 == $null;
    call $fakelocal_1 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_1;
    return;

  anon10_Then:
    assume {:partition} $r4 != $null;
    $exception := $exception;
    goto anon7;

  anon7:
    call $exception := com.orientechnologies.common.log.OLogManager$error$java.lang.Object_java.lang.String_java.lang.Throwable_java.lang.Object$lp$$rp$($r4, r0, $StringConst1, r1, $r5);
    goto block4;
}



implementation OSecurityManager$createHash$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref)
{
  var $r4: ref;
  var r1: ref;
  var r5: ref;
  var $r2: ref;
  var $r3: ref;
  var $fakelocal_1: ref;
  var $fakelocal_2: ref;
  var r0: ref;
  var $fakelocal_0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1, $type] <: java.lang.String;
    assume $heap[$return, $type] <: java.lang.String;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r5 := $in_parameter__1;
    assert {:sourceloc "OSecurityManager.java", 75, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} r5 == $null;
    assert {:sourceloc "OSecurityManager.java", 75, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "OSecurityManager.java", 76, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 7];
    r5 := $fakelocal_0;
    goto block6;

  block6:
    assert {:sourceloc "OSecurityManager.java", 78, -1, -1, -1} true;
    call r1, $exception := java.security.MessageDigest$getInstance$java.lang.String(r5);
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} $exception == $null;
    goto anon7;

  anon7:
    assert {:sourceloc "OSecurityManager.java", 80, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} r0 == $null;
    call $fakelocal_1 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_1;
    return;

  anon21_Then:
    assume {:partition} r0 != $null;
    $exception := $exception;
    goto anon10;

  anon10:
    call $r2, $exception := java.lang.String$getBytes$java.lang.String(r0, $StringConst2);
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} $exception == $null;
    goto anon14;

  anon14:
    assert {:sourceloc "OSecurityManager.java", 80, -1, -1, -1} true;
    goto anon24_Then, anon24_Else;

  anon24_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon24_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon17;

  anon17:
    call $r3, $exception := java.security.MessageDigest$digest$byte$lp$$rp$(r1, $r2);
    assert {:sourceloc "OSecurityManager.java", 80, -1, -1, -1} true;
    call $r4, $exception := OSecurityManager$byteArrayToHexStr$byte$lp$$rp$($r3);
    assert {:sourceloc "OSecurityManager.java", 80, -1, -1, -1} true;
    $return := $r4;
    goto block7;

  block7:
    return;

  anon22_Then:
    assume {:partition} $exception != $null;
    goto anon23_Then, anon23_Else;

  anon23_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.UnsupportedEncodingException);
    assert {:clone} true;
    goto anon14;

  anon23_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.UnsupportedEncodingException;
    $return := $null;
    return;

  anon19_Then:
    assume {:partition} $exception != $null;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon7;

  anon20_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    $return := $null;
    return;

  anon18_Then:
    assume {:partition} r5 != $null;
    assert {:sourceloc "OSecurityManager.java", 75, -1, -1, -1} {:comment "thenblock"} true;
    goto block6;
}



implementation OSecurityManager$instance$() returns ($return: ref, $exception: ref)
{
  var $r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$return, $type] <: OSecurityManager;
    $exception := $null;
    assert {:sourceloc "OSecurityManager.java", 84, -1, -1, -1} true;
    $r0 := OSecurityManager$OSecurityManager$instance265;
    assert {:sourceloc "OSecurityManager.java", 84, -1, -1, -1} true;
    $return := $r0;
    goto block8;

  block8:
    return;
}



implementation OSecurityManager$isEqual_inline$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $fakelocal_4: ref;
  var $fakelocal_2: ref;
  var $b5: int;
  var $i2: int;
  var $i0: int;
  var $b4: int;
  var i7: int;
  var b6: int;
  var $fakelocal_0: ref;
  var $fakelocal_1: ref;
  var r1: ref;
  var $b3: int;
  var r0: ref;
  var $fakelocal_3: ref;
  var $z0: int;
  var $i1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "OSecurityManager.java", 97, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "OSecurityManager.java", 97, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "OSecurityManager.java", 99, -1, -1, -1} true;
    $return := 1;
    goto block17;

  block17:
    return;

  anon33_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "OSecurityManager.java", 97, -1, -1, -1} {:comment "thenblock"} true;
    goto block9;

  block9:
    assert {:sourceloc "OSecurityManager.java", 98, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} r0 != $null;
    assert {:sourceloc "OSecurityManager.java", 98, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "OSecurityManager.java", 99, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} r1 == $null;
    assert {:sourceloc "OSecurityManager.java", 99, -1, -1, -1} {:comment "elseblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "OSecurityManager.java", 99, -1, -1, -1} true;
    $return := 0;
    goto block17;

  anon35_Then:
    assume {:partition} r1 != $null;
    assert {:sourceloc "OSecurityManager.java", 99, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  block11:
    assert {:sourceloc "OSecurityManager.java", 101, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} r0 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon36_Then:
    assume {:partition} r0 != $null;
    $exception := $exception;
    goto anon11;

  anon11:
    $i1 := $arrSizeHeap[r0];
    assert {:sourceloc "OSecurityManager.java", 101, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon37_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_1 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon37_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon14;

  anon14:
    $i0 := $arrSizeHeap[r1];
    assert {:sourceloc "OSecurityManager.java", 101, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} $i1 != $i0;
    assert {:sourceloc "OSecurityManager.java", 101, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "OSecurityManager.java", 102, -1, -1, -1} true;
    $return := 0;
    goto block17;

  anon38_Then:
    assume {:partition} $i1 == $i0;
    assert {:sourceloc "OSecurityManager.java", 101, -1, -1, -1} {:comment "thenblock"} true;
    goto block12;

  block12:
    assert {:sourceloc "OSecurityManager.java", 105, -1, -1, -1} true;
    b6 := 0;
    assert {:sourceloc "OSecurityManager.java", 107, -1, -1, -1} true;
    i7 := 0;
    goto block13;

  block13:
    call $return, $exception, $fakelocal_4, $fakelocal_2, $b5, $i2, $b4, i7, b6, $b3, $fakelocal_3 := OSecurityManager$isEqual_inline$byte$lp$$rp$_byte$lp$$rp$_loop_block13($return, $exception, $fakelocal_4, $fakelocal_2, $b5, $i2, $b4, i7, b6, r1, $b3, r0, $fakelocal_3);
    goto block13_last;

  anon39_Else:
    assume {:partition} r0 == $null;
    call $fakelocal_2 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon39_Then:
    assume {:partition} r0 != $null;
    $exception := $exception;
    goto anon20;

  anon20:
    $i2 := $arrSizeHeap[r0];
    assert {:sourceloc "OSecurityManager.java", 107, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Else:
    assume {:partition} $i2 > i7;
    assert {:sourceloc "OSecurityManager.java", 107, -1, -1, -1} {:comment "elseblock"} true;
    goto anon23;

  anon23:
    assert {:sourceloc "OSecurityManager.java", 108, -1, -1, -1} true;
    goto anon41_Then, anon41_Else;

  anon41_Else:
    assume {:partition} !(i7 < $arrSizeHeap[r0] && i7 >= 0);
    call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon41_Then:
    assume {:partition} i7 < $arrSizeHeap[r0] && i7 >= 0;
    $exception := $exception;
    goto anon26;

  anon26:
    $b4 := $intArrHeap[r0][i7];
    assert {:sourceloc "OSecurityManager.java", 108, -1, -1, -1} true;
    goto anon42_Then, anon42_Else;

  anon42_Else:
    assume {:partition} !(i7 < $arrSizeHeap[r1] && i7 >= 0);
    call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon42_Then:
    assume {:partition} i7 < $arrSizeHeap[r1] && i7 >= 0;
    $exception := $exception;
    goto anon29;

  anon29:
    $b3 := $intArrHeap[r1][i7];
    assert {:sourceloc "OSecurityManager.java", 108, -1, -1, -1} true;
    $b5 := $xorInt($b4, $b3);
    assert {:sourceloc "OSecurityManager.java", 108, -1, -1, -1} true;
    b6 := $bitOr(b6, $b5);
    assert {:sourceloc "OSecurityManager.java", 107, -1, -1, -1} true;
    i7 := i7 + 1;
    assert {:sourceloc "OSecurityManager.java", 107, -1, -1, -1} true;
    goto anon29_dummy;

  anon40_Then:
    assume {:partition} i7 >= $i2;
    assert {:sourceloc "OSecurityManager.java", 107, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "OSecurityManager.java", 110, -1, -1, -1} true;
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} b6 == 0;
    assert {:sourceloc "OSecurityManager.java", 110, -1, -1, -1} {:comment "elseblock"} true;
    goto anon32;

  anon32:
    assert {:sourceloc "OSecurityManager.java", 110, -1, -1, -1} true;
    $z0 := 1;
    assert {:sourceloc "OSecurityManager.java", 110, -1, -1, -1} true;
    goto block16;

  block16:
    assert {:sourceloc "OSecurityManager.java", 110, -1, -1, -1} true;
    $return := $z0;
    goto block17;

  anon43_Then:
    assume {:partition} b6 != 0;
    assert {:sourceloc "OSecurityManager.java", 110, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  block15:
    assert {:sourceloc "OSecurityManager.java", 110, -1, -1, -1} true;
    $z0 := 0;
    goto block16;

  anon34_Then:
    assume {:partition} r0 == $null;
    assert {:sourceloc "OSecurityManager.java", 98, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  anon29_dummy:
    assume false;
    return;

  block13_last:
    assert {:sourceloc "OSecurityManager.java", 107, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;
}



implementation OSecurityManager$equals_inline$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r2: ref;
  var $c3: int;
  var r1: ref;
  var $c2: int;
  var r3: ref;
  var r0: ref;
  var r4: ref;
  var i4: int;
  var $fakelocal_0: ref;
  var i5: int;
  var $i1: int;
  var $fakelocal_1: ref;
  var $i0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $heap[$this, $type] <: OSecurityManager;
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    assume $heap[$in_parameter__1, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "OSecurityManager.java", 114, -1, -1, -1} true;
    i4 := $stringSizeHeap[r1];
    assert {:sourceloc "OSecurityManager.java", 115, -1, -1, -1} true;
    $i0 := $stringSizeHeap[r2];
    assert {:sourceloc "OSecurityManager.java", 115, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} i4 == $i0;
    assert {:sourceloc "OSecurityManager.java", 115, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "OSecurityManager.java", 116, -1, -1, -1} true;
    call r3, $exception := java.lang.String$toCharArray$(r1);
    assert {:sourceloc "OSecurityManager.java", 117, -1, -1, -1} true;
    call r4, $exception := java.lang.String$toCharArray$(r2);
    assert {:sourceloc "OSecurityManager.java", 118, -1, -1, -1} true;
    i5 := 0;
    goto block19;

  block19:
    call $return, $exception, $c3, $c2, i4, $fakelocal_0, i5, $i1, $fakelocal_1 := OSecurityManager$equals_inline$java.lang.String_java.lang.String_loop_block19($return, $exception, $c3, $c2, r3, r4, i4, $fakelocal_0, i5, $i1, $fakelocal_1);
    goto block19_last;

  anon17_Else:
    assume {:partition} $i1 != 0;
    assert {:sourceloc "OSecurityManager.java", 119, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "OSecurityManager.java", 120, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} !(i5 < $arrSizeHeap[r3] && i5 >= 0);
    call $fakelocal_0 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon18_Then:
    assume {:partition} i5 < $arrSizeHeap[r3] && i5 >= 0;
    $exception := $exception;
    goto anon9;

  anon9:
    $c3 := $intArrHeap[r3][i5];
    assert {:sourceloc "OSecurityManager.java", 120, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(i5 < $arrSizeHeap[r4] && i5 >= 0);
    call $fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon19_Then:
    assume {:partition} i5 < $arrSizeHeap[r4] && i5 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    $c2 := $intArrHeap[r4][i5];
    assert {:sourceloc "OSecurityManager.java", 120, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} $c3 != $c2;
    assert {:sourceloc "OSecurityManager.java", 120, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "OSecurityManager.java", 121, -1, -1, -1} true;
    $return := 0;
    goto block22;

  block22:
    return;

  anon20_Then:
    assume {:partition} $c3 == $c2;
    assert {:sourceloc "OSecurityManager.java", 120, -1, -1, -1} {:comment "thenblock"} true;
    goto block21;

  block21:
    assert {:sourceloc "OSecurityManager.java", 122, -1, -1, -1} true;
    i5 := i5 + 1;
    assert {:sourceloc "OSecurityManager.java", 122, -1, -1, -1} true;
    goto block21_dummy;

  anon17_Then:
    assume {:partition} $i1 == 0;
    assert {:sourceloc "OSecurityManager.java", 119, -1, -1, -1} {:comment "thenblock"} true;
    goto block20;

  block20:
    assert {:sourceloc "OSecurityManager.java", 124, -1, -1, -1} true;
    $return := 1;
    goto block22;

  anon16_Then:
    assume {:partition} i4 != $i0;
    assert {:sourceloc "OSecurityManager.java", 115, -1, -1, -1} {:comment "thenblock"} true;
    goto block18;

  block18:
    assert {:sourceloc "OSecurityManager.java", 126, -1, -1, -1} true;
    $return := 0;
    goto block22;

  block21_dummy:
    assume false;
    return;

  block19_last:
    assert {:sourceloc "OSecurityManager.java", 119, -1, -1, -1} true;
    $i1 := i4;
    assert {:sourceloc "OSecurityManager.java", 119, -1, -1, -1} true;
    i4 := i4 + -1;
    assert {:sourceloc "OSecurityManager.java", 119, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;
}



implementation OSecurityManager$checkPassword_unsafe$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $i2: int;
  var $fakelocal_4: ref;
  var $z0: int;
  var $fakelocal_1: ref;
  var r8: ref;
  var r9: ref;
  var $z2: int;
  var $r6: ref;
  var $z6: int;
  var $i1: int;
  var $z5: int;
  var $fakelocal_3: ref;
  var $z3: int;
  var $i0: int;
  var $r3: ref;
  var $r4: ref;
  var $z4: int;
  var $r5: ref;
  var $z1: int;
  var r0: ref;
  var $fakelocal_2: ref;
  var r2: ref;
  var $fakelocal_0: ref;
  var r1: ref;
  var r7: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $heap[$this, $type] <: OSecurityManager;
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__1, $type] <: java.lang.String;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "OSecurityManager.java", 160, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} r2 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon16_Then:
    assume {:partition} r2 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $z0, $exception := java.lang.String$startsWith$java.lang.String(r2, $StringConst3);
    assert {:sourceloc "OSecurityManager.java", 160, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "OSecurityManager.java", 160, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "OSecurityManager.java", 161, -1, -1, -1} true;
    call $fakelocal_1 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_1 := 9];
    $r5 := $fakelocal_1;
    assert {:sourceloc "OSecurityManager.java", 161, -1, -1, -1} true;
    $i2 := $stringSizeHeap[$r5];
    assert {:sourceloc "OSecurityManager.java", 161, -1, -1, -1} true;
    call r7, $exception := java.lang.String$substring$int(r2, $i2);
    assert {:sourceloc "OSecurityManager.java", 162, -1, -1, -1} true;
    call $r6, $exception := OSecurityManager$createSHA256$java.lang.String(r0, r1);
    assert {:sourceloc "OSecurityManager.java", 162, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} $r6 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon18_Then:
    assume {:partition} $r6 != $null;
    $exception := $exception;
    goto anon9;

  anon9:
    call $z6, $exception := java.lang.String$equals$java.lang.Object($r6, r7);
    assert {:sourceloc "OSecurityManager.java", 162, -1, -1, -1} true;
    $return := $z6;
    goto block26;

  block26:
    return;

  anon17_Then:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "OSecurityManager.java", 160, -1, -1, -1} {:comment "thenblock"} true;
    goto block23;

  block23:
    assert {:sourceloc "OSecurityManager.java", 164, -1, -1, -1} true;
    call $z1, $exception := java.lang.String$startsWith$java.lang.String(r2, $StringConst4);
    assert {:sourceloc "OSecurityManager.java", 164, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} $z1 != 0;
    assert {:sourceloc "OSecurityManager.java", 164, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "OSecurityManager.java", 165, -1, -1, -1} true;
    call $fakelocal_3 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_3 := 20];
    $r4 := $fakelocal_3;
    assert {:sourceloc "OSecurityManager.java", 165, -1, -1, -1} true;
    $i1 := $stringSizeHeap[$r4];
    assert {:sourceloc "OSecurityManager.java", 165, -1, -1, -1} true;
    call r8, $exception := java.lang.String$substring$int(r2, $i1);
    assert {:sourceloc "OSecurityManager.java", 166, -1, -1, -1} true;
    call $z5, $exception := OSecurityManager$checkPasswordWithSalt$java.lang.String_java.lang.String_java.lang.String(r0, r1, r8, $StringConst5);
    assert {:sourceloc "OSecurityManager.java", 166, -1, -1, -1} true;
    $return := $z5;
    goto block26;

  anon19_Then:
    assume {:partition} $z1 == 0;
    assert {:sourceloc "OSecurityManager.java", 164, -1, -1, -1} {:comment "thenblock"} true;
    goto block24;

  block24:
    assert {:sourceloc "OSecurityManager.java", 168, -1, -1, -1} true;
    call $z2, $exception := java.lang.String$startsWith$java.lang.String(r2, $StringConst6);
    assert {:sourceloc "OSecurityManager.java", 168, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} $z2 != 0;
    assert {:sourceloc "OSecurityManager.java", 168, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "OSecurityManager.java", 169, -1, -1, -1} true;
    call $fakelocal_4 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_4 := 22];
    $r3 := $fakelocal_4;
    assert {:sourceloc "OSecurityManager.java", 169, -1, -1, -1} true;
    $i0 := $stringSizeHeap[$r3];
    assert {:sourceloc "OSecurityManager.java", 169, -1, -1, -1} true;
    call r9, $exception := java.lang.String$substring$int(r2, $i0);
    assert {:sourceloc "OSecurityManager.java", 170, -1, -1, -1} true;
    call $z4, $exception := OSecurityManager$checkPasswordWithSalt$java.lang.String_java.lang.String_java.lang.String(r0, r1, r9, $StringConst7);
    assert {:sourceloc "OSecurityManager.java", 170, -1, -1, -1} true;
    $return := $z4;
    goto block26;

  anon20_Then:
    assume {:partition} $z2 == 0;
    assert {:sourceloc "OSecurityManager.java", 168, -1, -1, -1} {:comment "thenblock"} true;
    goto block25;

  block25:
    assert {:sourceloc "OSecurityManager.java", 177, -1, -1, -1} true;
    call $z3, $exception := OSecurityManager$equals_inline$java.lang.String_java.lang.String(r0, r1, r2);
    assert {:sourceloc "OSecurityManager.java", 177, -1, -1, -1} true;
    $return := $z3;
    goto block26;
}



implementation OSecurityManager$createSHA256$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r1: ref;
  var $r2: ref;
  var r0: ref;
  var $r3: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $heap[$this, $type] <: OSecurityManager;
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    assume $heap[$return, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "OSecurityManager.java", 181, -1, -1, -1} true;
    call $r2, $exception := OSecurityManager$digestSHA256$java.lang.String(r0, r1);
    assert {:sourceloc "OSecurityManager.java", 181, -1, -1, -1} true;
    call $r3, $exception := OSecurityManager$byteArrayToHexStr$byte$lp$$rp$($r2);
    assert {:sourceloc "OSecurityManager.java", 181, -1, -1, -1} true;
    $return := $r3;
    goto block27;

  block27:
    return;
}



implementation OSecurityManager$createHash$java.lang.String_java.lang.String_boolean($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: int)
   returns ($return: ref, $exception: ref)
{
  var $r16: ref;
  var $r11: ref;
  var $fakelocal_8: ref;
  var $i0: int;
  var $r6: ref;
  var $r22: ref;
  var $fakelocal_14: ref;
  var $fakelocal_3: ref;
  var $fakelocal_11: ref;
  var $fakelocal_16: ref;
  var r0: ref;
  var r2: ref;
  var $r13: ref;
  var $r10: ref;
  var $fakelocal_1: ref;
  var $r12: ref;
  var $fakelocal_12: ref;
  var $z1: int;
  var $r9: ref;
  var r23: ref;
  var $r4: ref;
  var $fakelocal_0: ref;
  var $fakelocal_7: ref;
  var $i1: int;
  var $r21: ref;
  var $z3: int;
  var $r8: ref;
  var $fakelocal_2: ref;
  var $fakelocal_6: ref;
  var $fakelocal_15: ref;
  var $r5: ref;
  var $r17: ref;
  var r3: ref;
  var $fakelocal_4: ref;
  var $fakelocal_5: ref;
  var $r7: ref;
  var $r14: ref;
  var $fakelocal_13: ref;
  var $fakelocal_9: ref;
  var $fakelocal_10: ref;
  var r1: ref;
  var z0: int;
  var $z2: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $heap[$this, $type] <: OSecurityManager;
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    assume $heap[$return, $type] <: java.lang.String;
    assume $heap[$in_parameter__1, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__2;
    assert {:sourceloc "OSecurityManager.java", 194, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} r1 == $null;
    assert {:sourceloc "OSecurityManager.java", 194, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "OSecurityManager.java", 195, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.IllegalArgumentException);
    $r22 := $fakelocal_0;
    assert {:sourceloc "OSecurityManager.java", 195, -1, -1, -1} true;
    call $exception := java.lang.IllegalArgumentException$$la$init$ra$$java.lang.String($r22, $StringConst8);
    assert {:sourceloc "OSecurityManager.java", 195, -1, -1, -1} true;
    $exception := $r22;
    goto block35;

  block35:
    return;

  anon34_Then:
    assume {:partition} r1 != $null;
    assert {:sourceloc "OSecurityManager.java", 194, -1, -1, -1} {:comment "thenblock"} true;
    goto block28;

  block28:
    assert {:sourceloc "OSecurityManager.java", 197, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} r2 == $null;
    assert {:sourceloc "OSecurityManager.java", 197, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "OSecurityManager.java", 198, -1, -1, -1} true;
    call $fakelocal_1 := $new(java.lang.IllegalArgumentException);
    $r21 := $fakelocal_1;
    assert {:sourceloc "OSecurityManager.java", 198, -1, -1, -1} true;
    call $exception := java.lang.IllegalArgumentException$$la$init$ra$$java.lang.String($r21, $StringConst9);
    assert {:sourceloc "OSecurityManager.java", 198, -1, -1, -1} true;
    $exception := $r21;
    goto block35;

  anon35_Then:
    assume {:partition} r2 != $null;
    assert {:sourceloc "OSecurityManager.java", 197, -1, -1, -1} {:comment "thenblock"} true;
    goto block29;

  block29:
    assert {:sourceloc "OSecurityManager.java", 200, -1, -1, -1} true;
    call $fakelocal_2 := $new(java.lang.StringBuilder);
    $r4 := $fakelocal_2;
    assert {:sourceloc "OSecurityManager.java", 200, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$int($r4, 128);
    assert {:sourceloc "OSecurityManager.java", 200, -1, -1, -1} true;
    r3 := $r4;
    assert {:sourceloc "OSecurityManager.java", 202, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} z0 != 0;
    assert {:sourceloc "OSecurityManager.java", 202, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "OSecurityManager.java", 203, -1, -1, -1} true;
    call $fakelocal_3, $exception := java.lang.StringBuilder$append$char(r3, 123);
    assert {:sourceloc "OSecurityManager.java", 204, -1, -1, -1} true;
    call $fakelocal_4, $exception := java.lang.StringBuilder$append$java.lang.String(r3, r2);
    assert {:sourceloc "OSecurityManager.java", 205, -1, -1, -1} true;
    call $fakelocal_5, $exception := java.lang.StringBuilder$append$char(r3, 125);
    goto block30;

  block30:
    assert {:sourceloc "OSecurityManager.java", 209, -1, -1, -1} true;
    call $fakelocal_6 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_6 := 7];
    $r5 := $fakelocal_6;
    assert {:sourceloc "OSecurityManager.java", 209, -1, -1, -1} true;
    call $z1, $exception := java.lang.String$equalsIgnoreCase$java.lang.String($r5, r2);
    assert {:sourceloc "OSecurityManager.java", 209, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon37_Else:
    assume {:partition} $z1 != 0;
    assert {:sourceloc "OSecurityManager.java", 209, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "OSecurityManager.java", 210, -1, -1, -1} true;
    call r23, $exception := OSecurityManager$createSHA256$java.lang.String(r0, r1);
    assert {:sourceloc "OSecurityManager.java", 210, -1, -1, -1} true;
    goto block32;

  block32:
    assert {:sourceloc "OSecurityManager.java", 220, -1, -1, -1} true;
    call $fakelocal_16, $exception := java.lang.StringBuilder$append$java.lang.String(r3, r23);
    assert {:sourceloc "OSecurityManager.java", 222, -1, -1, -1} true;
    call $r16, $exception := java.lang.StringBuilder$toString$(r3);
    assert {:sourceloc "OSecurityManager.java", 222, -1, -1, -1} true;
    $return := $r16;
    goto block35;

  anon37_Then:
    assume {:partition} $z1 == 0;
    assert {:sourceloc "OSecurityManager.java", 209, -1, -1, -1} {:comment "thenblock"} true;
    goto block31;

  block31:
    assert {:sourceloc "OSecurityManager.java", 211, -1, -1, -1} true;
    call $fakelocal_7 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_7 := 18];
    $r6 := $fakelocal_7;
    assert {:sourceloc "OSecurityManager.java", 211, -1, -1, -1} true;
    call $z2, $exception := java.lang.String$equalsIgnoreCase$java.lang.String($r6, r2);
    assert {:sourceloc "OSecurityManager.java", 211, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} $z2 != 0;
    assert {:sourceloc "OSecurityManager.java", 211, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "OSecurityManager.java", 212, -1, -1, -1} true;
    $r17 := com.orientechnologies.orient.core.config.OGlobalConfiguration$com.orientechnologies.orient.core.config.OGlobalConfiguration$SECURITY_USER_PASSWORD_SALT_ITERATIONS367;
    assert {:sourceloc "OSecurityManager.java", 212, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} $r17 == $null;
    call $fakelocal_8 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_8;
    return;

  anon39_Then:
    assume {:partition} $r17 != $null;
    $exception := $exception;
    goto anon18;

  anon18:
    call $i1, $exception := com.orientechnologies.orient.core.config.OGlobalConfiguration$getValueAsInteger$($r17);
    assert {:sourceloc "OSecurityManager.java", 212, -1, -1, -1} true;
    call r23, $exception := OSecurityManager$createHashWithSalt$java.lang.String_int_java.lang.String(r0, r1, $i1, r2);
    assert {:sourceloc "OSecurityManager.java", 212, -1, -1, -1} true;
    goto block32;

  anon38_Then:
    assume {:partition} $z2 == 0;
    assert {:sourceloc "OSecurityManager.java", 211, -1, -1, -1} {:comment "thenblock"} true;
    goto block33;

  block33:
    assert {:sourceloc "OSecurityManager.java", 214, -1, -1, -1} true;
    call $fakelocal_9 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_9 := 20];
    $r7 := $fakelocal_9;
    assert {:sourceloc "OSecurityManager.java", 214, -1, -1, -1} true;
    call $z3, $exception := java.lang.String$equalsIgnoreCase$java.lang.String($r7, r2);
    assert {:sourceloc "OSecurityManager.java", 214, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Else:
    assume {:partition} $z3 != 0;
    assert {:sourceloc "OSecurityManager.java", 214, -1, -1, -1} {:comment "elseblock"} true;
    goto anon21;

  anon21:
    assert {:sourceloc "OSecurityManager.java", 215, -1, -1, -1} true;
    $r14 := com.orientechnologies.orient.core.config.OGlobalConfiguration$com.orientechnologies.orient.core.config.OGlobalConfiguration$SECURITY_USER_PASSWORD_SALT_ITERATIONS367;
    assert {:sourceloc "OSecurityManager.java", 215, -1, -1, -1} true;
    goto anon41_Then, anon41_Else;

  anon41_Else:
    assume {:partition} $r14 == $null;
    call $fakelocal_10 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_10;
    return;

  anon41_Then:
    assume {:partition} $r14 != $null;
    $exception := $exception;
    goto anon24;

  anon24:
    call $i0, $exception := com.orientechnologies.orient.core.config.OGlobalConfiguration$getValueAsInteger$($r14);
    assert {:sourceloc "OSecurityManager.java", 215, -1, -1, -1} true;
    call r23, $exception := OSecurityManager$createHashWithSalt$java.lang.String_int_java.lang.String(r0, r1, $i0, r2);
    assert {:sourceloc "OSecurityManager.java", 215, -1, -1, -1} true;
    goto block32;

  anon40_Then:
    assume {:partition} $z3 == 0;
    assert {:sourceloc "OSecurityManager.java", 214, -1, -1, -1} {:comment "thenblock"} true;
    goto block34;

  block34:
    assert {:sourceloc "OSecurityManager.java", 218, -1, -1, -1} true;
    call $fakelocal_11 := $new(java.lang.IllegalArgumentException);
    $r8 := $fakelocal_11;
    assert {:sourceloc "OSecurityManager.java", 218, -1, -1, -1} true;
    call $fakelocal_12 := $new(java.lang.StringBuilder);
    $r9 := $fakelocal_12;
    assert {:sourceloc "OSecurityManager.java", 218, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r9);
    assert {:sourceloc "OSecurityManager.java", 218, -1, -1, -1} true;
    call $r10, $exception := java.lang.StringBuilder$append$java.lang.String($r9, $StringConst10);
    assert {:sourceloc "OSecurityManager.java", 218, -1, -1, -1} true;
    goto anon42_Then, anon42_Else;

  anon42_Else:
    assume {:partition} $r10 == $null;
    call $fakelocal_13 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_13;
    return;

  anon42_Then:
    assume {:partition} $r10 != $null;
    $exception := $exception;
    goto anon27;

  anon27:
    call $r11, $exception := java.lang.StringBuilder$append$java.lang.String($r10, r2);
    assert {:sourceloc "OSecurityManager.java", 218, -1, -1, -1} true;
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} $r11 == $null;
    call $fakelocal_14 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_14;
    return;

  anon43_Then:
    assume {:partition} $r11 != $null;
    $exception := $exception;
    goto anon30;

  anon30:
    call $r12, $exception := java.lang.StringBuilder$append$java.lang.String($r11, $StringConst11);
    assert {:sourceloc "OSecurityManager.java", 218, -1, -1, -1} true;
    goto anon44_Then, anon44_Else;

  anon44_Else:
    assume {:partition} $r12 == $null;
    call $fakelocal_15 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_15;
    return;

  anon44_Then:
    assume {:partition} $r12 != $null;
    $exception := $exception;
    goto anon33;

  anon33:
    call $r13, $exception := java.lang.StringBuilder$toString$($r12);
    assert {:sourceloc "OSecurityManager.java", 218, -1, -1, -1} true;
    call $exception := java.lang.IllegalArgumentException$$la$init$ra$$java.lang.String($r8, $r13);
    assert {:sourceloc "OSecurityManager.java", 218, -1, -1, -1} true;
    $exception := $r8;
    goto block35;

  anon36_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "OSecurityManager.java", 202, -1, -1, -1} {:comment "thenblock"} true;
    goto block30;
}



implementation OSecurityManager$digestSHA256$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var $r4: ref;
  var $r6: ref;
  var $r3: ref;
  var r0: ref;
  var r12: ref;
  var $fakelocal_0: ref;
  var $r5: ref;
  var $r7: ref;
  var $r8: ref;
  var $r10: ref;
  var $fakelocal_3: ref;
  var r11: ref;
  var $fakelocal_1: ref;
  var $fakelocal_4: ref;
  var r1: ref;
  var r2: ref;
  var $fakelocal_2: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $heap[$this, $type] <: OSecurityManager;
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "OSecurityManager.java", 226, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} r1 == $null;
    assert {:sourceloc "OSecurityManager.java", 226, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "OSecurityManager.java", 227, -1, -1, -1} true;
    $return := $null;
    goto block39;

  block39:
    return;

  anon20_Then:
    assume {:partition} r1 != $null;
    assert {:sourceloc "OSecurityManager.java", 226, -1, -1, -1} {:comment "thenblock"} true;
    goto block36;

  block36:
    assert {:sourceloc "OSecurityManager.java", 230, -1, -1, -1} true;
    $r3 := $heap[r0, java.security.MessageDigest$OSecurityManager$md266];
    assert {:sourceloc "OSecurityManager.java", 230, -1, -1, -1} true;
    call $r4, $exception := java.lang.String$getBytes$java.lang.String(r1, $StringConst2);
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} $exception == $null;
    goto anon7;

  anon7:
    assert {:sourceloc "OSecurityManager.java", 230, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;

  anon23_Else:
    assume {:partition} $r3 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon23_Then:
    assume {:partition} $r3 != $null;
    $exception := $exception;
    goto anon10;

  anon10:
    call $r5, $exception := java.security.MessageDigest$digest$byte$lp$$rp$($r3, $r4);
    goto anon24_Then, anon24_Else;

  anon24_Else:
    assume {:partition} $exception == $null;
    goto block38;

  block38:
    assert {:sourceloc "OSecurityManager.java", 230, -1, -1, -1} true;
    $return := $r5;
    goto block39;

  anon24_Then:
    assume {:partition} $exception != $null;
    goto anon25_Then, anon25_Else;

  anon25_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.UnsupportedEncodingException);
    assert {:clone} true;
    goto block38;

  anon25_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.UnsupportedEncodingException;
    assert {:clone} true;
    goto block37;

  block37:
    assert {:sourceloc "OSecurityManager.java", 227, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r6 := $exception;
    assert {:sourceloc "OSecurityManager.java", 231, -1, -1, -1} true;
    r2 := $r6;
    assert {:sourceloc "OSecurityManager.java", 233, -1, -1, -1} true;
    call $r7, $exception := com.orientechnologies.common.log.OLogManager$instance$();
    assert {:sourceloc "OSecurityManager.java", 233, -1, -1, -1} true;
    call $fakelocal_1 := $new($arrayType(java.lang.Object));
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := 0];
    $r8 := $fakelocal_1;
    assert {:sourceloc "OSecurityManager.java", 233, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} $r7 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon26_Then:
    assume {:partition} $r7 != $null;
    $exception := $exception;
    goto anon16;

  anon16:
    call $exception := com.orientechnologies.common.log.OLogManager$error$java.lang.Object_java.lang.String_java.lang.Throwable_java.lang.Object$lp$$rp$($r7, r0, $StringConst12, r2, $r8);
    assert {:sourceloc "OSecurityManager.java", 235, -1, -1, -1} true;
    call $fakelocal_3 := $new(com.orientechnologies.orient.core.exception.OConfigurationException);
    r11 := $fakelocal_3;
    assert {:sourceloc "OSecurityManager.java", 235, -1, -1, -1} true;
    call $exception := com.orientechnologies.orient.core.exception.OConfigurationException$$la$init$ra$$java.lang.String(r11, $StringConst12);
    assert {:sourceloc "OSecurityManager.java", 235, -1, -1, -1} true;
    call $r10, $exception := com.orientechnologies.common.exception.OException$wrapException$com.orientechnologies.common.exception.OException_java.lang.Throwable(r11, r2);
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} !($heap[$r10, $type] <: java.lang.Throwable);
    call $fakelocal_4 := $new(java.lang.ClassCastException);
    $return := $null;
    $exception := $fakelocal_4;
    return;

  anon27_Then:
    assume {:partition} $heap[$r10, $type] <: java.lang.Throwable;
    $exception := $exception;
    goto anon19;

  anon19:
    r12 := $r10;
    assert {:sourceloc "OSecurityManager.java", 235, -1, -1, -1} true;
    $exception := r12;
    goto block39;

  anon21_Then:
    assume {:partition} $exception != $null;
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.UnsupportedEncodingException);
    assert {:clone} true;
    goto anon7;

  anon22_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.UnsupportedEncodingException;
    $return := $null;
    goto block37;
}



implementation OSecurityManager$createHashWithSalt$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r1: ref;
  var $r3: ref;
  var $fakelocal_0: ref;
  var $i0: int;
  var r0: ref;
  var $r2: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $heap[$this, $type] <: OSecurityManager;
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    assume $heap[$return, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "OSecurityManager.java", 240, -1, -1, -1} true;
    $r2 := com.orientechnologies.orient.core.config.OGlobalConfiguration$com.orientechnologies.orient.core.config.OGlobalConfiguration$SECURITY_USER_PASSWORD_SALT_ITERATIONS367;
    assert {:sourceloc "OSecurityManager.java", 240, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} $r2 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon4_Then:
    assume {:partition} $r2 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $i0, $exception := com.orientechnologies.orient.core.config.OGlobalConfiguration$getValueAsInteger$($r2);
    assert {:sourceloc "OSecurityManager.java", 240, -1, -1, -1} true;
    call $r3, $exception := OSecurityManager$createHashWithSalt$java.lang.String_int_java.lang.String(r0, r1, $i0, $StringConst7);
    assert {:sourceloc "OSecurityManager.java", 240, -1, -1, -1} true;
    $return := $r3;
    goto block40;

  block40:
    return;
}



implementation OSecurityManager$createHashWithSalt$java.lang.String_int_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: int, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var $r13: ref;
  var $fakelocal_6: ref;
  var r3: ref;
  var r4: ref;
  var $fakelocal_4: ref;
  var $fakelocal_7: ref;
  var $fakelocal_3: ref;
  var $r14: ref;
  var $r12: ref;
  var $fakelocal_2: ref;
  var i0: int;
  var $r8: ref;
  var $r6: ref;
  var $fakelocal_1: ref;
  var $fakelocal_5: ref;
  var r2: ref;
  var $r11: ref;
  var $r10: ref;
  var r0: ref;
  var $r7: ref;
  var $fakelocal_0: ref;
  var $r9: ref;
  var r5: ref;
  var $r15: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $heap[$this, $type] <: OSecurityManager;
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    assume $heap[$in_parameter__2, $type] <: java.lang.String;
    assume $heap[$return, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__1;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__2;
    assert {:sourceloc "OSecurityManager.java", 245, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.security.SecureRandom);
    $r6 := $fakelocal_0;
    assert {:sourceloc "OSecurityManager.java", 245, -1, -1, -1} true;
    call $exception := java.security.SecureRandom$$la$init$ra$$($r6);
    assert {:sourceloc "OSecurityManager.java", 245, -1, -1, -1} true;
    r3 := $r6;
    assert {:sourceloc "OSecurityManager.java", 246, -1, -1, -1} true;
    call $fakelocal_1 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := 24];
    r4 := $fakelocal_1;
    assert {:sourceloc "OSecurityManager.java", 247, -1, -1, -1} true;
    call $exception := java.security.SecureRandom$nextBytes$byte$lp$$rp$(r3, r4);
    assert {:sourceloc "OSecurityManager.java", 250, -1, -1, -1} true;
    call r5, $exception := OSecurityManager$getPbkdf2$java.lang.String_byte$lp$$rp$_int_int_java.lang.String(r0, r1, r4, i0, 24, r2);
    assert {:sourceloc "OSecurityManager.java", 252, -1, -1, -1} true;
    call $fakelocal_2 := $new(java.lang.StringBuilder);
    $r7 := $fakelocal_2;
    assert {:sourceloc "OSecurityManager.java", 252, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r7);
    assert {:sourceloc "OSecurityManager.java", 252, -1, -1, -1} true;
    call $r8, $exception := OSecurityManager$byteArrayToHexStr$byte$lp$$rp$(r5);
    assert {:sourceloc "OSecurityManager.java", 252, -1, -1, -1} true;
    call $r9, $exception := java.lang.StringBuilder$append$java.lang.String($r7, $r8);
    assert {:sourceloc "OSecurityManager.java", 252, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} $r9 == $null;
    call $fakelocal_3 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_3;
    return;

  anon16_Then:
    assume {:partition} $r9 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $r10, $exception := java.lang.StringBuilder$append$java.lang.String($r9, $StringConst13);
    assert {:sourceloc "OSecurityManager.java", 252, -1, -1, -1} true;
    call $r11, $exception := OSecurityManager$byteArrayToHexStr$byte$lp$$rp$(r4);
    assert {:sourceloc "OSecurityManager.java", 252, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} $r10 == $null;
    call $fakelocal_4 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_4;
    return;

  anon17_Then:
    assume {:partition} $r10 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    call $r12, $exception := java.lang.StringBuilder$append$java.lang.String($r10, $r11);
    assert {:sourceloc "OSecurityManager.java", 252, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} $r12 == $null;
    call $fakelocal_5 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_5;
    return;

  anon18_Then:
    assume {:partition} $r12 != $null;
    $exception := $exception;
    goto anon9;

  anon9:
    call $r13, $exception := java.lang.StringBuilder$append$java.lang.String($r12, $StringConst13);
    assert {:sourceloc "OSecurityManager.java", 252, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} $r13 == $null;
    call $fakelocal_6 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_6;
    return;

  anon19_Then:
    assume {:partition} $r13 != $null;
    $exception := $exception;
    goto anon12;

  anon12:
    call $r14, $exception := java.lang.StringBuilder$append$int($r13, i0);
    assert {:sourceloc "OSecurityManager.java", 252, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} $r14 == $null;
    call $fakelocal_7 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_7;
    return;

  anon20_Then:
    assume {:partition} $r14 != $null;
    $exception := $exception;
    goto anon15;

  anon15:
    call $r15, $exception := java.lang.StringBuilder$toString$($r14);
    assert {:sourceloc "OSecurityManager.java", 252, -1, -1, -1} true;
    $return := $r15;
    goto block41;

  block41:
    return;
}



implementation OSecurityManager$checkPasswordWithSalt$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r1: ref;
  var $z0: int;
  var r0: ref;
  var r2: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $heap[$this, $type] <: OSecurityManager;
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    assume $heap[$in_parameter__1, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "OSecurityManager.java", 256, -1, -1, -1} true;
    call $z0, $exception := OSecurityManager$checkPasswordWithSalt$java.lang.String_java.lang.String_java.lang.String(r0, r1, r2, $StringConst7);
    assert {:sourceloc "OSecurityManager.java", 256, -1, -1, -1} true;
    $return := $z0;
    goto block42;

  block42:
    return;
}



implementation OSecurityManager$checkPasswordWithSalt$java.lang.String_java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: int, $exception: ref)
{
  var $i2: int;
  var $fakelocal_1: ref;
  var r1: ref;
  var i0: int;
  var $fakelocal_6: ref;
  var r4: ref;
  var r7: ref;
  var $r11: ref;
  var $fakelocal_2: ref;
  var $fakelocal_4: ref;
  var r5: ref;
  var $r9: ref;
  var $i1: int;
  var $fakelocal_5: ref;
  var r2: ref;
  var r0: ref;
  var r3: ref;
  var $r10: ref;
  var r6: ref;
  var $z0: int;
  var $fakelocal_3: ref;
  var $fakelocal_0: ref;
  var $r8: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $heap[$this, $type] <: OSecurityManager;
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__1, $type] <: java.lang.String;
    assume $heap[$in_parameter__2, $type] <: java.lang.String;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r3 := $in_parameter__2;
    assert {:sourceloc "OSecurityManager.java", 261, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} r2 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon26_Then:
    assume {:partition} r2 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call r4, $exception := java.lang.String$split$java.lang.String(r2, $StringConst13);
    assert {:sourceloc "OSecurityManager.java", 262, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} r4 == $null;
    call $fakelocal_1 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon27_Then:
    assume {:partition} r4 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i1 := $arrSizeHeap[r4];
    assert {:sourceloc "OSecurityManager.java", 262, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} $i1 != 3;
    assert {:sourceloc "OSecurityManager.java", 262, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "OSecurityManager.java", 263, -1, -1, -1} true;
    call $fakelocal_2 := $new(java.lang.IllegalArgumentException);
    $r11 := $fakelocal_2;
    assert {:sourceloc "OSecurityManager.java", 263, -1, -1, -1} true;
    call $exception := java.lang.IllegalArgumentException$$la$init$ra$$java.lang.String($r11, $StringConst14);
    assert {:sourceloc "OSecurityManager.java", 263, -1, -1, -1} true;
    $exception := $r11;
    goto block44;

  block44:
    return;

  anon28_Then:
    assume {:partition} $i1 == 3;
    assert {:sourceloc "OSecurityManager.java", 262, -1, -1, -1} {:comment "thenblock"} true;
    goto block43;

  block43:
    assert {:sourceloc "OSecurityManager.java", 265, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} !(0 < $arrSizeHeap[r4] && 0 >= 0);
    call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon29_Then:
    assume {:partition} 0 < $arrSizeHeap[r4] && 0 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    $r8 := $refArrHeap[r4][0];
    assert {:sourceloc "OSecurityManager.java", 265, -1, -1, -1} true;
    call r5, $exception := OSecurityManager$hexToByteArray$java.lang.String($r8);
    assert {:sourceloc "OSecurityManager.java", 266, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(1 < $arrSizeHeap[r4] && 1 >= 0);
    call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon30_Then:
    assume {:partition} 1 < $arrSizeHeap[r4] && 1 >= 0;
    $exception := $exception;
    goto anon15;

  anon15:
    $r9 := $refArrHeap[r4][1];
    assert {:sourceloc "OSecurityManager.java", 266, -1, -1, -1} true;
    call r6, $exception := OSecurityManager$hexToByteArray$java.lang.String($r9);
    assert {:sourceloc "OSecurityManager.java", 267, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(2 < $arrSizeHeap[r4] && 2 >= 0);
    call $fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon31_Then:
    assume {:partition} 2 < $arrSizeHeap[r4] && 2 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $r10 := $refArrHeap[r4][2];
    assert {:sourceloc "OSecurityManager.java", 267, -1, -1, -1} true;
    call i0, $exception := java.lang.Integer$parseInt$java.lang.String($r10);
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} $exception == $null;
    goto anon22;

  anon22:
    assert {:sourceloc "OSecurityManager.java", 269, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} r5 == $null;
    call $fakelocal_6 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon34_Then:
    assume {:partition} r5 != $null;
    $exception := $exception;
    goto anon25;

  anon25:
    $i2 := $arrSizeHeap[r5];
    assert {:sourceloc "OSecurityManager.java", 269, -1, -1, -1} true;
    call r7, $exception := OSecurityManager$getPbkdf2$java.lang.String_byte$lp$$rp$_int_int_java.lang.String(r0, r1, r6, i0, $i2, r3);
    assert {:sourceloc "OSecurityManager.java", 270, -1, -1, -1} true;
    call $z0, $exception := java.security.MessageDigest$isEqual$byte$lp$$rp$_byte$lp$$rp$(r5, r7);
    assert {:sourceloc "OSecurityManager.java", 270, -1, -1, -1} true;
    $return := $z0;
    goto block44;

  anon32_Then:
    assume {:partition} $exception != $null;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.NumberFormatException);
    assert {:clone} true;
    goto anon22;

  anon33_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.NumberFormatException;
    $return := 0;
    return;
}



implementation OSecurityManager$getPbkdf2$java.lang.String_byte$lp$$rp$_int_int_java.lang.String($this: ref, 
    $in_parameter__0: ref, 
    $in_parameter__1: ref, 
    $in_parameter__2: int, 
    $in_parameter__3: int, 
    $in_parameter__4: ref)
   returns ($return: ref, $exception: ref)
{
  var r37: ref;
  var $fakelocal_9: ref;
  var $r29: ref;
  var $fakelocal_5: ref;
  var $r16: ref;
  var $r22: ref;
  var $fakelocal_6: ref;
  var $r21: ref;
  var r33: ref;
  var $fakelocal_2: ref;
  var r1: ref;
  var $r19: ref;
  var $r24: ref;
  var $r27: ref;
  var $fakelocal_11: ref;
  var $r25: ref;
  var r42: ref;
  var $r7: ref;
  var r36: ref;
  var r32: ref;
  var $r23: ref;
  var $fakelocal_8: ref;
  var $fakelocal_12: ref;
  var $r15: ref;
  var $fakelocal_7: ref;
  var r41: ref;
  var r35: ref;
  var r39: ref;
  var $r10: ref;
  var $r28: ref;
  var $fakelocal_3: ref;
  var r34: ref;
  var $r26: ref;
  var $fakelocal_16: ref;
  var $r9: ref;
  var i0: int;
  var $fakelocal_1: ref;
  var r38: ref;
  var $fakelocal_10: ref;
  var $r11: ref;
  var r3: ref;
  var $fakelocal_17: ref;
  var $fakelocal_4: ref;
  var $fakelocal_15: ref;
  var $fakelocal_18: ref;
  var $fakelocal_0: ref;
  var $fakelocal_13: ref;
  var $r20: ref;
  var $r14: ref;
  var r2: ref;
  var $r31: ref;
  var r40: ref;
  var $fakelocal_14: ref;
  var r0: ref;
  var i1: int;
  var r4: ref;
  var $r13: ref;
  var r5: ref;
  var $i2: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $heap[$this, $type] <: OSecurityManager;
    assume {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__4, $type] <: java.lang.String;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__2;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__3;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r3 := $in_parameter__4;
    assert {:sourceloc "OSecurityManager.java", 275, -1, -1, -1} true;
    r32 := $null;
    assert {:sourceloc "OSecurityManager.java", 277, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    r37 := $fakelocal_0;
    assert {:sourceloc "OSecurityManager.java", 277, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$(r37);
    assert {:sourceloc "OSecurityManager.java", 277, -1, -1, -1} true;
    call $r7, $exception := java.lang.StringBuilder$append$java.lang.String(r37, r1);
    assert {:sourceloc "OSecurityManager.java", 277, -1, -1, -1} true;
    call $fakelocal_1 := $new(java.lang.String);
    r38 := $fakelocal_1;
    assert {:sourceloc "OSecurityManager.java", 277, -1, -1, -1} true;
    call $exception := java.lang.String$$la$init$ra$$byte$lp$$rp$(r38, r2);
    assert {:sourceloc "OSecurityManager.java", 277, -1, -1, -1} true;
    goto anon73_Then, anon73_Else;

  anon73_Else:
    assume {:partition} $r7 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon73_Then:
    assume {:partition} $r7 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $r9, $exception := java.lang.StringBuilder$append$java.lang.String($r7, r38);
    assert {:sourceloc "OSecurityManager.java", 277, -1, -1, -1} true;
    goto anon74_Then, anon74_Else;

  anon74_Else:
    assume {:partition} $r9 == $null;
    call $fakelocal_3 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_3;
    return;

  anon74_Then:
    assume {:partition} $r9 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    call $r10, $exception := java.lang.StringBuilder$toString$($r9);
    assert {:sourceloc "OSecurityManager.java", 277, -1, -1, -1} true;
    call r4, $exception := OSecurityManager$createSHA256$java.lang.String(r0, $r10);
    assert {:sourceloc "OSecurityManager.java", 279, -1, -1, -1} true;
    $r11 := java.util.Map$OSecurityManager$SALT_CACHE267;
    assert {:sourceloc "OSecurityManager.java", 279, -1, -1, -1} true;
    goto anon75_Then, anon75_Else;

  anon75_Else:
    assume {:partition} $r11 != $null;
    assert {:sourceloc "OSecurityManager.java", 279, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "OSecurityManager.java", 281, -1, -1, -1} true;
    call $fakelocal_4 := $new(java.lang.StringBuilder);
    r39 := $fakelocal_4;
    assert {:sourceloc "OSecurityManager.java", 281, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$(r39);
    assert {:sourceloc "OSecurityManager.java", 281, -1, -1, -1} true;
    call $r19, $exception := java.lang.StringBuilder$append$java.lang.String(r39, r4);
    assert {:sourceloc "OSecurityManager.java", 281, -1, -1, -1} true;
    goto anon76_Then, anon76_Else;

  anon76_Else:
    assume {:partition} $r19 == $null;
    call $fakelocal_5 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_5;
    return;

  anon76_Then:
    assume {:partition} $r19 != $null;
    $exception := $exception;
    goto anon12;

  anon12:
    call $r20, $exception := java.lang.StringBuilder$append$java.lang.String($r19, $StringConst15);
    assert {:sourceloc "OSecurityManager.java", 281, -1, -1, -1} true;
    call $r21, $exception := java.util.Arrays$toString$byte$lp$$rp$(r2);
    assert {:sourceloc "OSecurityManager.java", 281, -1, -1, -1} true;
    goto anon77_Then, anon77_Else;

  anon77_Else:
    assume {:partition} $r20 == $null;
    call $fakelocal_6 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_6;
    return;

  anon77_Then:
    assume {:partition} $r20 != $null;
    $exception := $exception;
    goto anon15;

  anon15:
    call $r22, $exception := java.lang.StringBuilder$append$java.lang.String($r20, $r21);
    assert {:sourceloc "OSecurityManager.java", 281, -1, -1, -1} true;
    goto anon78_Then, anon78_Else;

  anon78_Else:
    assume {:partition} $r22 == $null;
    call $fakelocal_7 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_7;
    return;

  anon78_Then:
    assume {:partition} $r22 != $null;
    $exception := $exception;
    goto anon18;

  anon18:
    call $r23, $exception := java.lang.StringBuilder$append$java.lang.String($r22, $StringConst15);
    assert {:sourceloc "OSecurityManager.java", 281, -1, -1, -1} true;
    goto anon79_Then, anon79_Else;

  anon79_Else:
    assume {:partition} $r23 == $null;
    call $fakelocal_8 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_8;
    return;

  anon79_Then:
    assume {:partition} $r23 != $null;
    $exception := $exception;
    goto anon21;

  anon21:
    call $r24, $exception := java.lang.StringBuilder$append$int($r23, i0);
    assert {:sourceloc "OSecurityManager.java", 281, -1, -1, -1} true;
    goto anon80_Then, anon80_Else;

  anon80_Else:
    assume {:partition} $r24 == $null;
    call $fakelocal_9 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_9;
    return;

  anon80_Then:
    assume {:partition} $r24 != $null;
    $exception := $exception;
    goto anon24;

  anon24:
    call $r25, $exception := java.lang.StringBuilder$append$java.lang.String($r24, $StringConst15);
    assert {:sourceloc "OSecurityManager.java", 281, -1, -1, -1} true;
    goto anon81_Then, anon81_Else;

  anon81_Else:
    assume {:partition} $r25 == $null;
    call $fakelocal_10 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_10;
    return;

  anon81_Then:
    assume {:partition} $r25 != $null;
    $exception := $exception;
    goto anon27;

  anon27:
    call $r26, $exception := java.lang.StringBuilder$append$int($r25, i1);
    assert {:sourceloc "OSecurityManager.java", 281, -1, -1, -1} true;
    goto anon82_Then, anon82_Else;

  anon82_Else:
    assume {:partition} $r26 == $null;
    call $fakelocal_11 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_11;
    return;

  anon82_Then:
    assume {:partition} $r26 != $null;
    $exception := $exception;
    goto anon30;

  anon30:
    call r32, $exception := java.lang.StringBuilder$toString$($r26);
    assert {:sourceloc "OSecurityManager.java", 282, -1, -1, -1} true;
    $r27 := java.util.Map$OSecurityManager$SALT_CACHE267;
    assert {:sourceloc "OSecurityManager.java", 282, -1, -1, -1} true;
    goto anon83_Then, anon83_Else;

  anon83_Else:
    assume {:partition} $r27 == $null;
    call $fakelocal_12 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_12;
    return;

  anon83_Then:
    assume {:partition} $r27 != $null;
    $exception := $exception;
    goto anon33;

  anon33:
    call $r28, $exception := java.util.Map$get$java.lang.Object($r27, r32);
    assert {:sourceloc "OSecurityManager.java", 282, -1, -1, -1} true;
    goto anon84_Then, anon84_Else;

  anon84_Else:
    assume {:partition} !($heap[$r28, $type] <: $intArrayType);
    call $fakelocal_13 := $new(java.lang.ClassCastException);
    $return := $null;
    $exception := $fakelocal_13;
    return;

  anon84_Then:
    assume {:partition} $heap[$r28, $type] <: $intArrayType;
    $exception := $exception;
    goto anon36;

  anon36:
    r33 := $r28;
    assert {:sourceloc "OSecurityManager.java", 283, -1, -1, -1} true;
    goto anon85_Then, anon85_Else;

  anon85_Else:
    assume {:partition} r33 != $null;
    assert {:sourceloc "OSecurityManager.java", 283, -1, -1, -1} {:comment "elseblock"} true;
    goto anon39;

  anon39:
    assert {:sourceloc "OSecurityManager.java", 284, -1, -1, -1} true;
    $return := r33;
    goto block49;

  block49:
    return;

  anon85_Then:
    assume {:partition} r33 == $null;
    assert {:sourceloc "OSecurityManager.java", 283, -1, -1, -1} {:comment "thenblock"} true;
    goto block45;

  block45:
    assert {:sourceloc "OSecurityManager.java", 287, -1, -1, -1} true;
    call $fakelocal_14 := $new(javax.crypto.spec.PBEKeySpec);
    r40 := $fakelocal_14;
    assert {:sourceloc "OSecurityManager.java", 287, -1, -1, -1} true;
    goto anon86_Then, anon86_Else;

  anon86_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_15 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_15;
    return;

  anon86_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon42;

  anon42:
    call $r13, $exception := java.lang.String$toCharArray$(r1);
    assert {:sourceloc "OSecurityManager.java", 287, -1, -1, -1} true;
    $i2 := $mulInt(i1, 8);
    assert {:sourceloc "OSecurityManager.java", 287, -1, -1, -1} true;
    call $exception := javax.crypto.spec.PBEKeySpec$$la$init$ra$$char$lp$$rp$_byte$lp$$rp$_int_int(r40, $r13, r2, i0, $i2);
    assert {:sourceloc "OSecurityManager.java", 287, -1, -1, -1} true;
    r34 := r40;
    goto block46;

  block46:
    assert {:sourceloc "OSecurityManager.java", 290, -1, -1, -1} true;
    call r5, $exception := javax.crypto.SecretKeyFactory$getInstance$java.lang.String(r3);
    goto anon87_Then, anon87_Else;

  anon87_Else:
    assume {:partition} $exception == $null;
    goto anon46;

  anon46:
    assert {:sourceloc "OSecurityManager.java", 291, -1, -1, -1} true;
    goto anon89_Then, anon89_Else;

  anon89_Else:
    assume {:partition} r5 == $null;
    assert {:sourceloc "OSecurityManager.java", 291, -1, -1, -1} true;
    assert {:noverify} true;
    $return := $null;
    call $exception := $new(java.lang.RuntimeException);
    goto block47;

  block47:
    assert {:sourceloc "OSecurityManager.java", 284, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r29 := $exception;
    assert {:sourceloc "OSecurityManager.java", 299, -1, -1, -1} true;
    r36 := $r29;
    assert {:sourceloc "OSecurityManager.java", 300, -1, -1, -1} true;
    call $fakelocal_17 := $new(com.orientechnologies.orient.core.exception.OSecurityException);
    r41 := $fakelocal_17;
    assert {:sourceloc "OSecurityManager.java", 300, -1, -1, -1} true;
    call $exception := com.orientechnologies.orient.core.exception.OSecurityException$$la$init$ra$$java.lang.String(r41, $StringConst16);
    assert {:sourceloc "OSecurityManager.java", 300, -1, -1, -1} true;
    call $r31, $exception := com.orientechnologies.common.exception.OException$wrapException$com.orientechnologies.common.exception.OException_java.lang.Throwable(r41, r36);
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    goto anon99_Then, anon99_Else;

  anon99_Else:
    assume {:partition} !($heap[$r31, $type] <: java.lang.Throwable);
    call $fakelocal_18 := $new(java.lang.ClassCastException);
    $return := $null;
    $exception := $fakelocal_18;
    return;

  anon99_Then:
    assume {:partition} $heap[$r31, $type] <: java.lang.Throwable;
    $exception := $exception;
    goto anon72;

  anon72:
    r42 := $r31;
    assert {:sourceloc "OSecurityManager.java", 300, -1, -1, -1} true;
    $exception := r42;
    goto block49;

  anon89_Then:
    assume {:partition} r5 != $null;
    assert {:sourceloc "OSecurityManager.java", 291, -1, -1, -1} true;
    goto anon49;

  anon49:
    call $r14, $exception := javax.crypto.SecretKeyFactory$generateSecret$java.security.spec.KeySpec(r5, r34);
    goto anon90_Then, anon90_Else;

  anon90_Else:
    assume {:partition} $exception == $null;
    goto anon53;

  anon53:
    assert {:sourceloc "OSecurityManager.java", 291, -1, -1, -1} true;
    goto anon92_Then, anon92_Else;

  anon92_Else:
    assume {:partition} $r14 == $null;
    assert {:sourceloc "OSecurityManager.java", 291, -1, -1, -1} true;
    assert {:noverify} true;
    $return := $null;
    call $exception := $new(java.lang.RuntimeException);
    goto block47;

  anon92_Then:
    assume {:partition} $r14 != $null;
    assert {:sourceloc "OSecurityManager.java", 291, -1, -1, -1} true;
    goto anon56;

  anon56:
    call r35, $exception := java.security.Key$getEncoded$($r14);
    goto anon93_Then, anon93_Else;

  anon93_Else:
    assume {:partition} $exception == $null;
    goto anon60;

  anon60:
    assert {:sourceloc "OSecurityManager.java", 293, -1, -1, -1} true;
    $r15 := java.util.Map$OSecurityManager$SALT_CACHE267;
    assert {:sourceloc "OSecurityManager.java", 293, -1, -1, -1} true;
    goto anon95_Then, anon95_Else;

  anon95_Else:
    assume {:partition} $r15 != $null;
    assert {:sourceloc "OSecurityManager.java", 293, -1, -1, -1} {:comment "elseblock"} true;
    goto anon63;

  anon63:
    assert {:sourceloc "OSecurityManager.java", 295, -1, -1, -1} true;
    $r16 := java.util.Map$OSecurityManager$SALT_CACHE267;
    assert {:sourceloc "OSecurityManager.java", 295, -1, -1, -1} true;
    goto anon96_Then, anon96_Else;

  anon96_Else:
    assume {:partition} $r16 == $null;
    assert {:sourceloc "OSecurityManager.java", 295, -1, -1, -1} true;
    assert {:noverify} true;
    $return := $null;
    call $exception := $new(java.lang.RuntimeException);
    goto block47;

  anon96_Then:
    assume {:partition} $r16 != $null;
    assert {:sourceloc "OSecurityManager.java", 295, -1, -1, -1} true;
    goto anon66;

  anon66:
    call $fakelocal_16, $exception := java.util.Map$put$java.lang.Object_java.lang.Object($r16, r32, r35);
    goto anon97_Then, anon97_Else;

  anon97_Else:
    assume {:partition} $exception == $null;
    goto block48;

  block48:
    assert {:sourceloc "OSecurityManager.java", 298, -1, -1, -1} true;
    $return := r35;
    goto block49;

  anon97_Then:
    assume {:partition} $exception != $null;
    goto anon98_Then, anon98_Else;

  anon98_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto block48;

  anon98_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block47;

  anon95_Then:
    assume {:partition} $r15 == $null;
    assert {:sourceloc "OSecurityManager.java", 293, -1, -1, -1} {:comment "thenblock"} true;
    goto block48;

  anon93_Then:
    assume {:partition} $exception != $null;
    goto anon94_Then, anon94_Else;

  anon94_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon60;

  anon94_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block47;

  anon90_Then:
    assume {:partition} $exception != $null;
    goto anon91_Then, anon91_Else;

  anon91_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.spec.InvalidKeySpecException);
    assert {:clone} true;
    goto anon53;

  anon91_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.spec.InvalidKeySpecException;
    $return := $null;
    goto block47;

  anon87_Then:
    assume {:partition} $exception != $null;
    goto anon88_Then, anon88_Else;

  anon88_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon46;

  anon88_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    $return := $null;
    goto block47;

  anon75_Then:
    assume {:partition} $r11 == $null;
    assert {:sourceloc "OSecurityManager.java", 279, -1, -1, -1} {:comment "thenblock"} true;
    goto block45;
}



implementation OSecurityManager$byteArrayToHexStr$byte$lp$$rp$($in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var $i7: int;
  var $i3: int;
  var $fakelocal_5: ref;
  var $i11: int;
  var $c12: int;
  var $s6: int;
  var r0: ref;
  var $r2: ref;
  var $fakelocal_4: ref;
  var $i9: int;
  var b0: int;
  var $fakelocal_1: ref;
  var $i4: int;
  var r1: ref;
  var $i10: int;
  var $fakelocal_6: ref;
  var $fakelocal_0: ref;
  var i14: int;
  var s1: int;
  var $i16: int;
  var b2: int;
  var $c8: int;
  var $fakelocal_2: ref;
  var $fakelocal_3: ref;
  var $i15: int;
  var $i5: int;
  var $i13: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$return, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "OSecurityManager.java", 305, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} r0 == $null;
    assert {:sourceloc "OSecurityManager.java", 305, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "OSecurityManager.java", 306, -1, -1, -1} true;
    $return := $null;
    goto block57;

  block57:
    return;

  anon28_Then:
    assume {:partition} r0 != $null;
    assert {:sourceloc "OSecurityManager.java", 305, -1, -1, -1} {:comment "thenblock"} true;
    goto block50;

  block50:
    assert {:sourceloc "OSecurityManager.java", 308, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} r0 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon29_Then:
    assume {:partition} r0 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i3 := $arrSizeHeap[r0];
    assert {:sourceloc "OSecurityManager.java", 308, -1, -1, -1} true;
    $i4 := $mulInt($i3, 2);
    assert {:sourceloc "OSecurityManager.java", 308, -1, -1, -1} true;
    call $fakelocal_1 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := $i4];
    r1 := $fakelocal_1;
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} true;
    i14 := 0;
    goto block51;

  block51:
    call $return, $exception, $i7, $fakelocal_5, $i11, $c12, $s6, $fakelocal_4, $i9, b0, $i10, i14, s1, $i16, b2, $c8, $fakelocal_2, $fakelocal_3, $i15, $i5, $i13 := OSecurityManager$byteArrayToHexStr$byte$lp$$rp$_loop_block51($return, $exception, $i7, $fakelocal_5, $i11, $c12, $s6, r0, $fakelocal_4, $i9, b0, r1, $i10, i14, s1, $i16, b2, $c8, $fakelocal_2, $fakelocal_3, $i15, $i5, $i13);
    goto block51_last;

  anon30_Else:
    assume {:partition} r0 == $null;
    call $fakelocal_2 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon30_Then:
    assume {:partition} r0 != $null;
    $exception := $exception;
    goto anon9;

  anon9:
    $i5 := $arrSizeHeap[r0];
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} $i5 > i14;
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "OSecurityManager.java", 310, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !(i14 < $arrSizeHeap[r0] && i14 >= 0);
    call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_3;
    return;

  anon32_Then:
    assume {:partition} i14 < $arrSizeHeap[r0] && i14 >= 0;
    $exception := $exception;
    goto anon15;

  anon15:
    b0 := $intArrHeap[r0][i14];
    assert {:sourceloc "OSecurityManager.java", 311, -1, -1, -1} true;
    $s6 := $bitAnd(b0, 240);
    assert {:sourceloc "OSecurityManager.java", 311, -1, -1, -1} true;
    s1 := $shrInt($s6, 4);
    assert {:sourceloc "OSecurityManager.java", 312, -1, -1, -1} true;
    b2 := $bitAnd(b0, 15);
    assert {:sourceloc "OSecurityManager.java", 313, -1, -1, -1} true;
    $i9 := $mulInt(2, i14);
    assert {:sourceloc "OSecurityManager.java", 313, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} 10 > s1;
    assert {:sourceloc "OSecurityManager.java", 313, -1, -1, -1} {:comment "elseblock"} true;
    goto anon18;

  anon18:
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} true;
    $i15 := 48 + s1;
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} true;
    goto block54;

  block54:
    assert {:sourceloc "OSecurityManager.java", 313, -1, -1, -1} true;
    $c8 := $i15;
    assert {:sourceloc "OSecurityManager.java", 313, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} !($i9 < $arrSizeHeap[r1] && $i9 >= 0);
    call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_4;
    return;

  anon34_Then:
    assume {:partition} $i9 < $arrSizeHeap[r1] && $i9 >= 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $intArrHeap := $intArrHeap[r1 := $intArrHeap[r1][$i9 := $c8]];
    assert {:sourceloc "OSecurityManager.java", 314, -1, -1, -1} true;
    $i10 := $mulInt(2, i14);
    assert {:sourceloc "OSecurityManager.java", 314, -1, -1, -1} true;
    $i13 := $i10 + 1;
    assert {:sourceloc "OSecurityManager.java", 314, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} 10 > b2;
    assert {:sourceloc "OSecurityManager.java", 314, -1, -1, -1} {:comment "elseblock"} true;
    goto anon24;

  anon24:
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} true;
    $i16 := 48 + b2;
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} true;
    goto block56;

  block56:
    assert {:sourceloc "OSecurityManager.java", 314, -1, -1, -1} true;
    $c12 := $i16;
    assert {:sourceloc "OSecurityManager.java", 314, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} !($i13 < $arrSizeHeap[r1] && $i13 >= 0);
    call $fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_5;
    return;

  anon36_Then:
    assume {:partition} $i13 < $arrSizeHeap[r1] && $i13 >= 0;
    $exception := $exception;
    goto anon27;

  anon27:
    $intArrHeap := $intArrHeap[r1 := $intArrHeap[r1][$i13 := $c12]];
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} true;
    i14 := i14 + 1;
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} true;
    goto anon27_dummy;

  anon35_Then:
    assume {:partition} b2 >= 10;
    assert {:sourceloc "OSecurityManager.java", 314, -1, -1, -1} {:comment "thenblock"} true;
    goto block55;

  block55:
    assert {:sourceloc "OSecurityManager.java", 314, -1, -1, -1} true;
    $i11 := 65 + b2;
    assert {:sourceloc "OSecurityManager.java", 314, -1, -1, -1} true;
    $i16 := $i11 - 10;
    goto block56;

  anon33_Then:
    assume {:partition} s1 >= 10;
    assert {:sourceloc "OSecurityManager.java", 313, -1, -1, -1} {:comment "thenblock"} true;
    goto block53;

  block53:
    assert {:sourceloc "OSecurityManager.java", 313, -1, -1, -1} true;
    $i7 := 65 + s1;
    assert {:sourceloc "OSecurityManager.java", 313, -1, -1, -1} true;
    $i15 := $i7 - 10;
    goto block54;

  anon31_Then:
    assume {:partition} i14 >= $i5;
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} {:comment "thenblock"} true;
    goto block52;

  block52:
    assert {:sourceloc "OSecurityManager.java", 316, -1, -1, -1} true;
    call $fakelocal_6 := $new(java.lang.String);
    $r2 := $fakelocal_6;
    assert {:sourceloc "OSecurityManager.java", 316, -1, -1, -1} true;
    call $exception := java.lang.String$$la$init$ra$$char$lp$$rp$($r2, r1);
    assert {:sourceloc "OSecurityManager.java", 316, -1, -1, -1} true;
    $return := $r2;
    goto block57;

  anon27_dummy:
    assume false;
    return;

  block51_last:
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;
}



implementation OSecurityManager$hexToByteArray$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r1: ref;
  var $i2: int;
  var $fakelocal_2: ref;
  var $i0: int;
  var $fakelocal_3: ref;
  var $i1: int;
  var i8: int;
  var $i3: int;
  var $fakelocal_0: ref;
  var $fakelocal_1: ref;
  var r0: ref;
  var $i4: int;
  var $i5: int;
  var $i6: int;
  var $r2: ref;
  var $b7: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "OSecurityManager.java", 320, -1, -1, -1} true;
    $i0 := $stringSizeHeap[r0];
    assert {:sourceloc "OSecurityManager.java", 320, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} 2 == 0;
    call $fakelocal_0 := $new(java.lang.ArithmeticException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon17_Then:
    assume {:partition} 2 != 0;
    $exception := $exception;
    goto anon3;

  anon3:
    $i1 := $divInt($i0, 2);
    assert {:sourceloc "OSecurityManager.java", 320, -1, -1, -1} true;
    call $fakelocal_1 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := $i1];
    r1 := $fakelocal_1;
    assert {:sourceloc "OSecurityManager.java", 321, -1, -1, -1} true;
    i8 := 0;
    goto block58;

  block58:
    call $return, $exception, $i2, $fakelocal_2, $fakelocal_3, i8, $i3, $i4, $i5, $i6, $r2, $b7 := OSecurityManager$hexToByteArray$java.lang.String_loop_block58($return, $exception, r1, $i2, $fakelocal_2, $fakelocal_3, i8, $i3, r0, $i4, $i5, $i6, $r2, $b7);
    goto block58_last;

  anon18_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_2 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon18_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i2 := $arrSizeHeap[r1];
    assert {:sourceloc "OSecurityManager.java", 321, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} $i2 > i8;
    assert {:sourceloc "OSecurityManager.java", 321, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "OSecurityManager.java", 322, -1, -1, -1} true;
    $i5 := $mulInt(2, i8);
    assert {:sourceloc "OSecurityManager.java", 322, -1, -1, -1} true;
    $i3 := $mulInt(2, i8);
    assert {:sourceloc "OSecurityManager.java", 322, -1, -1, -1} true;
    $i4 := $i3 + 2;
    assert {:sourceloc "OSecurityManager.java", 322, -1, -1, -1} true;
    call $r2, $exception := java.lang.String$substring$int_int(r0, $i5, $i4);
    assert {:sourceloc "OSecurityManager.java", 322, -1, -1, -1} true;
    call $i6, $exception := java.lang.Integer$parseInt$java.lang.String_int($r2, 16);
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} $exception == $null;
    goto anon13;

  anon13:
    assert {:sourceloc "OSecurityManager.java", 322, -1, -1, -1} true;
    $b7 := $i6;
    assert {:sourceloc "OSecurityManager.java", 322, -1, -1, -1} true;
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} !(i8 < $arrSizeHeap[r1] && i8 >= 0);
    call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_3;
    return;

  anon22_Then:
    assume {:partition} i8 < $arrSizeHeap[r1] && i8 >= 0;
    $exception := $exception;
    goto anon16;

  anon16:
    $intArrHeap := $intArrHeap[r1 := $intArrHeap[r1][i8 := $b7]];
    assert {:sourceloc "OSecurityManager.java", 321, -1, -1, -1} true;
    i8 := i8 + 1;
    assert {:sourceloc "OSecurityManager.java", 321, -1, -1, -1} true;
    goto anon16_dummy;

  anon20_Then:
    assume {:partition} $exception != $null;
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.NumberFormatException);
    assert {:clone} true;
    goto anon13;

  anon21_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.NumberFormatException;
    $return := $null;
    return;

  anon19_Then:
    assume {:partition} i8 >= $i2;
    assert {:sourceloc "OSecurityManager.java", 321, -1, -1, -1} {:comment "thenblock"} true;
    goto block59;

  block59:
    assert {:sourceloc "OSecurityManager.java", 324, -1, -1, -1} true;
    $return := r1;
    goto block60;

  block60:
    return;

  anon16_dummy:
    assume false;
    return;

  block58_last:
    assert {:sourceloc "OSecurityManager.java", 321, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;
}



implementation OSecurityManager$$la$clinit$ra$$() returns ($exception: ref)
{
  var $fakelocal_1: ref;
  var $fakelocal_2: ref;
  var r4: ref;
  var r6: ref;
  var r5: ref;
  var i0: int;
  var $fakelocal_0: ref;
  var $r1: ref;
  var $fakelocal_3: ref;
  var $r3: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "OSecurityManager.java", 52, -1, -1, -1} true;
    call $fakelocal_0 := $new(OSecurityManager);
    r4 := $fakelocal_0;
    assert {:sourceloc "OSecurityManager.java", 52, -1, -1, -1} true;
    call $exception := OSecurityManager$$la$init$ra$$(r4);
    assert {:sourceloc "OSecurityManager.java", 52, -1, -1, -1} true;
    OSecurityManager$OSecurityManager$instance265 := r4;
    assert {:sourceloc "OSecurityManager.java", 56, -1, -1, -1} true;
    java.util.Map$OSecurityManager$SALT_CACHE267 := $null;
    assert {:sourceloc "OSecurityManager.java", 59, -1, -1, -1} true;
    $r1 := com.orientechnologies.orient.core.config.OGlobalConfiguration$com.orientechnologies.orient.core.config.OGlobalConfiguration$SECURITY_USER_PASSWORD_SALT_CACHE_SIZE368;
    assert {:sourceloc "OSecurityManager.java", 59, -1, -1, -1} true;
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} $r1 == $null;
    call $fakelocal_1 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_1;
    return;

  anon10_Then:
    assume {:partition} $r1 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call i0, $exception := com.orientechnologies.orient.core.config.OGlobalConfiguration$getValueAsInteger$($r1);
    assert {:sourceloc "OSecurityManager.java", 60, -1, -1, -1} true;
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} 0 < i0;
    assert {:sourceloc "OSecurityManager.java", 60, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "OSecurityManager.java", 61, -1, -1, -1} true;
    call $fakelocal_2 := $new(com.orientechnologies.common.collection.OLRUCache);
    r5 := $fakelocal_2;
    assert {:sourceloc "OSecurityManager.java", 61, -1, -1, -1} true;
    call $exception := com.orientechnologies.common.collection.OLRUCache$$la$init$ra$$int(r5, i0);
    assert {:sourceloc "OSecurityManager.java", -1, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($heap[r5, $type] <: java.util.Map);
    call $fakelocal_3 := $new(java.lang.ClassCastException);
    $exception := $fakelocal_3;
    return;

  anon12_Then:
    assume {:partition} $heap[r5, $type] <: java.util.Map;
    $exception := $exception;
    goto anon9;

  anon9:
    r6 := r5;
    assert {:sourceloc "OSecurityManager.java", 61, -1, -1, -1} true;
    call $r3, $exception := java.util.Collections$synchronizedMap$java.util.Map(r6);
    assert {:sourceloc "OSecurityManager.java", 61, -1, -1, -1} true;
    java.util.Map$OSecurityManager$SALT_CACHE267 := $r3;
    goto block61;

  block61:
    assert {:sourceloc "OSecurityManager.java", 63, -1, -1, -1} true;
    goto block62;

  block62:
    return;

  anon11_Then:
    assume {:partition} i0 <= 0;
    assert {:sourceloc "OSecurityManager.java", 60, -1, -1, -1} {:comment "thenblock"} true;
    goto block61;
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
    goto block63;

  block63:
    return;
}



implementation java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var z0: int;
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
    goto block64;

  block64:
    return;
}



implementation java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $z0: int;

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
    goto block65;

  block65:
    return;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation OSecurityManager$isEqual_inline$byte$lp$$rp$_byte$lp$$rp$_loop_block13(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_4: ref, 
    in_$fakelocal_2: ref, 
    in_$b5: int, 
    in_$i2: int, 
    in_$b4: int, 
    in_i7: int, 
    in_b6: int, 
    in_r1: ref, 
    in_$b3: int, 
    in_r0: ref, 
    in_$fakelocal_3: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_2: ref, 
    out_$b5: int, 
    out_$i2: int, 
    out_$b4: int, 
    out_i7: int, 
    out_b6: int, 
    out_$b3: int, 
    out_$fakelocal_3: ref)
{

  entry:
    out_$return, out_$exception, out_$fakelocal_4, out_$fakelocal_2, out_$b5, out_$i2, out_$b4, out_i7, out_b6, out_$b3, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_4, in_$fakelocal_2, in_$b5, in_$i2, in_$b4, in_i7, in_b6, in_$b3, in_$fakelocal_3;
    goto block13;

  block13:
    assert {:sourceloc "OSecurityManager.java", 107, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} in_r0 == $null;
    call out_$fakelocal_2 := $new(java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$fakelocal_4, out_$fakelocal_2, out_$b5, out_$i2, out_$b4, out_i7, out_b6, out_$b3, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_4, in_$fakelocal_2, in_$b5, in_$i2, in_$b4, in_i7, in_b6, in_$b3, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon29:
    out_$b3 := $intArrHeap[in_r1][out_i7];
    assert {:sourceloc "OSecurityManager.java", 108, -1, -1, -1} true;
    out_$b5 := $xorInt(out_$b4, out_$b3);
    assert {:sourceloc "OSecurityManager.java", 108, -1, -1, -1} true;
    out_b6 := $bitOr(out_b6, out_$b5);
    assert {:sourceloc "OSecurityManager.java", 107, -1, -1, -1} true;
    out_i7 := out_i7 + 1;
    assert {:sourceloc "OSecurityManager.java", 107, -1, -1, -1} true;
    goto anon29_dummy;

  anon42_Then:
    assume {:partition} out_i7 < $arrSizeHeap[in_r1] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon29;

  anon26:
    out_$b4 := $intArrHeap[in_r0][out_i7];
    assert {:sourceloc "OSecurityManager.java", 108, -1, -1, -1} true;
    goto anon42_Then, anon42_Else;

  anon42_Else:
    assume {:partition} !(out_i7 < $arrSizeHeap[in_r1] && out_i7 >= 0);
    call out_$fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$fakelocal_4, out_$fakelocal_2, out_$b5, out_$i2, out_$b4, out_i7, out_b6, out_$b3, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_4, in_$fakelocal_2, in_$b5, in_$i2, in_$b4, in_i7, in_b6, in_$b3, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon41_Then:
    assume {:partition} out_i7 < $arrSizeHeap[in_r0] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon26;

  anon23:
    assert {:sourceloc "OSecurityManager.java", 108, -1, -1, -1} true;
    goto anon41_Then, anon41_Else;

  anon41_Else:
    assume {:partition} !(out_i7 < $arrSizeHeap[in_r0] && out_i7 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$fakelocal_4, out_$fakelocal_2, out_$b5, out_$i2, out_$b4, out_i7, out_b6, out_$b3, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_4, in_$fakelocal_2, in_$b5, in_$i2, in_$b4, in_i7, in_b6, in_$b3, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon40_Else:
    assume {:partition} out_$i2 > out_i7;
    assert {:sourceloc "OSecurityManager.java", 107, -1, -1, -1} {:comment "elseblock"} true;
    goto anon23;

  anon20:
    out_$i2 := $arrSizeHeap[in_r0];
    assert {:sourceloc "OSecurityManager.java", 107, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Then:
    assume {:partition} out_i7 >= out_$i2;
    assert {:sourceloc "OSecurityManager.java", 107, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_4, out_$fakelocal_2, out_$b5, out_$i2, out_$b4, out_i7, out_b6, out_$b3, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_4, in_$fakelocal_2, in_$b5, in_$i2, in_$b4, in_i7, in_b6, in_$b3, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon39_Then:
    assume {:partition} in_r0 != $null;
    out_$exception := out_$exception;
    goto anon20;

  anon29_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$fakelocal_4, out_$fakelocal_2, out_$b5, out_$i2, out_$b4, out_i7, out_b6, out_$b3, out_$fakelocal_3 := OSecurityManager$isEqual_inline$byte$lp$$rp$_byte$lp$$rp$_loop_block13(out_$return, out_$exception, out_$fakelocal_4, out_$fakelocal_2, out_$b5, out_$i2, out_$b4, out_i7, out_b6, in_r1, out_$b3, in_r0, out_$fakelocal_3);
    return;

  exit:
    return;
}



procedure OSecurityManager$isEqual_inline$byte$lp$$rp$_byte$lp$$rp$_loop_block13(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_4: ref, 
    in_$fakelocal_2: ref, 
    in_$b5: int, 
    in_$i2: int, 
    in_$b4: int, 
    in_i7: int, 
    in_b6: int, 
    in_r1: ref, 
    in_$b3: int, 
    in_r0: ref, 
    in_$fakelocal_3: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_2: ref, 
    out_$b5: int, 
    out_$i2: int, 
    out_$b4: int, 
    out_i7: int, 
    out_b6: int, 
    out_$b3: int, 
    out_$fakelocal_3: ref);
  modifies $objIndex, $heap;



implementation OSecurityManager$equals_inline$java.lang.String_java.lang.String_loop_block19(in_$return: int, 
    in_$exception: ref, 
    in_$c3: int, 
    in_$c2: int, 
    in_r3: ref, 
    in_r4: ref, 
    in_i4: int, 
    in_$fakelocal_0: ref, 
    in_i5: int, 
    in_$i1: int, 
    in_$fakelocal_1: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$c3: int, 
    out_$c2: int, 
    out_i4: int, 
    out_$fakelocal_0: ref, 
    out_i5: int, 
    out_$i1: int, 
    out_$fakelocal_1: ref)
{

  entry:
    out_$return, out_$exception, out_$c3, out_$c2, out_i4, out_$fakelocal_0, out_i5, out_$i1, out_$fakelocal_1 := in_$return, in_$exception, in_$c3, in_$c2, in_i4, in_$fakelocal_0, in_i5, in_$i1, in_$fakelocal_1;
    goto block19;

  block19:
    assert {:sourceloc "OSecurityManager.java", 119, -1, -1, -1} true;
    out_$i1 := out_i4;
    assert {:sourceloc "OSecurityManager.java", 119, -1, -1, -1} true;
    out_i4 := out_i4 + -1;
    assert {:sourceloc "OSecurityManager.java", 119, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;

  anon17_Then:
    assume {:partition} out_$i1 == 0;
    assert {:sourceloc "OSecurityManager.java", 119, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$c3, out_$c2, out_i4, out_$fakelocal_0, out_i5, out_$i1, out_$fakelocal_1 := in_$return, in_$exception, in_$c3, in_$c2, in_i4, in_$fakelocal_0, in_i5, in_$i1, in_$fakelocal_1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  block21:
    assert {:sourceloc "OSecurityManager.java", 122, -1, -1, -1} true;
    out_i5 := out_i5 + 1;
    assert {:sourceloc "OSecurityManager.java", 122, -1, -1, -1} true;
    goto block21_dummy;

  anon20_Then:
    assume {:partition} out_$c3 == out_$c2;
    assert {:sourceloc "OSecurityManager.java", 120, -1, -1, -1} {:comment "thenblock"} true;
    goto block21;

  anon12:
    out_$c2 := $intArrHeap[in_r4][out_i5];
    assert {:sourceloc "OSecurityManager.java", 120, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} out_$c3 != out_$c2;
    assert {:sourceloc "OSecurityManager.java", 120, -1, -1, -1} {:comment "elseblock"} true;
    out_$return, out_$exception, out_$c3, out_$c2, out_i4, out_$fakelocal_0, out_i5, out_$i1, out_$fakelocal_1 := in_$return, in_$exception, in_$c3, in_$c2, in_i4, in_$fakelocal_0, in_i5, in_$i1, in_$fakelocal_1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon19_Then:
    assume {:partition} out_i5 < $arrSizeHeap[in_r4] && out_i5 >= 0;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    out_$c3 := $intArrHeap[in_r3][out_i5];
    assert {:sourceloc "OSecurityManager.java", 120, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(out_i5 < $arrSizeHeap[in_r4] && out_i5 >= 0);
    call out_$fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$c3, out_$c2, out_i4, out_$fakelocal_0, out_i5, out_$i1, out_$fakelocal_1 := in_$return, in_$exception, in_$c3, in_$c2, in_i4, in_$fakelocal_0, in_i5, in_$i1, in_$fakelocal_1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon18_Then:
    assume {:partition} out_i5 < $arrSizeHeap[in_r3] && out_i5 >= 0;
    out_$exception := out_$exception;
    goto anon9;

  anon6:
    assert {:sourceloc "OSecurityManager.java", 120, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} !(out_i5 < $arrSizeHeap[in_r3] && out_i5 >= 0);
    call out_$fakelocal_0 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_0;
    out_$return, out_$exception, out_$c3, out_$c2, out_i4, out_$fakelocal_0, out_i5, out_$i1, out_$fakelocal_1 := in_$return, in_$exception, in_$c3, in_$c2, in_i4, in_$fakelocal_0, in_i5, in_$i1, in_$fakelocal_1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon17_Else:
    assume {:partition} out_$i1 != 0;
    assert {:sourceloc "OSecurityManager.java", 119, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  block21_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$c3, out_$c2, out_i4, out_$fakelocal_0, out_i5, out_$i1, out_$fakelocal_1 := OSecurityManager$equals_inline$java.lang.String_java.lang.String_loop_block19(out_$return, out_$exception, out_$c3, out_$c2, in_r3, in_r4, out_i4, out_$fakelocal_0, out_i5, out_$i1, out_$fakelocal_1);
    return;

  exit:
    return;
}



procedure OSecurityManager$equals_inline$java.lang.String_java.lang.String_loop_block19(in_$return: int, 
    in_$exception: ref, 
    in_$c3: int, 
    in_$c2: int, 
    in_r3: ref, 
    in_r4: ref, 
    in_i4: int, 
    in_$fakelocal_0: ref, 
    in_i5: int, 
    in_$i1: int, 
    in_$fakelocal_1: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$c3: int, 
    out_$c2: int, 
    out_i4: int, 
    out_$fakelocal_0: ref, 
    out_i5: int, 
    out_$i1: int, 
    out_$fakelocal_1: ref);
  modifies $objIndex, $heap;



implementation OSecurityManager$byteArrayToHexStr$byte$lp$$rp$_loop_block51(in_$return: ref, 
    in_$exception: ref, 
    in_$i7: int, 
    in_$fakelocal_5: ref, 
    in_$i11: int, 
    in_$c12: int, 
    in_$s6: int, 
    in_r0: ref, 
    in_$fakelocal_4: ref, 
    in_$i9: int, 
    in_b0: int, 
    in_r1: ref, 
    in_$i10: int, 
    in_i14: int, 
    in_s1: int, 
    in_$i16: int, 
    in_b2: int, 
    in_$c8: int, 
    in_$fakelocal_2: ref, 
    in_$fakelocal_3: ref, 
    in_$i15: int, 
    in_$i5: int, 
    in_$i13: int)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$i7: int, 
    out_$fakelocal_5: ref, 
    out_$i11: int, 
    out_$c12: int, 
    out_$s6: int, 
    out_$fakelocal_4: ref, 
    out_$i9: int, 
    out_b0: int, 
    out_$i10: int, 
    out_i14: int, 
    out_s1: int, 
    out_$i16: int, 
    out_b2: int, 
    out_$c8: int, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_3: ref, 
    out_$i15: int, 
    out_$i5: int, 
    out_$i13: int)
{

  entry:
    out_$return, out_$exception, out_$i7, out_$fakelocal_5, out_$i11, out_$c12, out_$s6, out_$fakelocal_4, out_$i9, out_b0, out_$i10, out_i14, out_s1, out_$i16, out_b2, out_$c8, out_$fakelocal_2, out_$fakelocal_3, out_$i15, out_$i5, out_$i13 := in_$return, in_$exception, in_$i7, in_$fakelocal_5, in_$i11, in_$c12, in_$s6, in_$fakelocal_4, in_$i9, in_b0, in_$i10, in_i14, in_s1, in_$i16, in_b2, in_$c8, in_$fakelocal_2, in_$fakelocal_3, in_$i15, in_$i5, in_$i13;
    goto block51;

  block51:
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} in_r0 == $null;
    call out_$fakelocal_2 := $new(java.lang.NullPointerException);
    out_$return := $null;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$i7, out_$fakelocal_5, out_$i11, out_$c12, out_$s6, out_$fakelocal_4, out_$i9, out_b0, out_$i10, out_i14, out_s1, out_$i16, out_b2, out_$c8, out_$fakelocal_2, out_$fakelocal_3, out_$i15, out_$i5, out_$i13 := in_$return, in_$exception, in_$i7, in_$fakelocal_5, in_$i11, in_$c12, in_$s6, in_$fakelocal_4, in_$i9, in_b0, in_$i10, in_i14, in_s1, in_$i16, in_b2, in_$c8, in_$fakelocal_2, in_$fakelocal_3, in_$i15, in_$i5, in_$i13;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon27:
    $intArrHeap := $intArrHeap[in_r1 := $intArrHeap[in_r1][out_$i13 := out_$c12]];
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} true;
    out_i14 := out_i14 + 1;
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} true;
    goto anon27_dummy;

  anon36_Then:
    assume {:partition} out_$i13 < $arrSizeHeap[in_r1] && out_$i13 >= 0;
    out_$exception := out_$exception;
    goto anon27;

  block56:
    assert {:sourceloc "OSecurityManager.java", 314, -1, -1, -1} true;
    out_$c12 := out_$i16;
    assert {:sourceloc "OSecurityManager.java", 314, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} !(out_$i13 < $arrSizeHeap[in_r1] && out_$i13 >= 0);
    call out_$fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$i7, out_$fakelocal_5, out_$i11, out_$c12, out_$s6, out_$fakelocal_4, out_$i9, out_b0, out_$i10, out_i14, out_s1, out_$i16, out_b2, out_$c8, out_$fakelocal_2, out_$fakelocal_3, out_$i15, out_$i5, out_$i13 := in_$return, in_$exception, in_$i7, in_$fakelocal_5, in_$i11, in_$c12, in_$s6, in_$fakelocal_4, in_$i9, in_b0, in_$i10, in_i14, in_s1, in_$i16, in_b2, in_$c8, in_$fakelocal_2, in_$fakelocal_3, in_$i15, in_$i5, in_$i13;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon24:
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} true;
    out_$i16 := 48 + out_b2;
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} true;
    goto block56;

  block55:
    assert {:sourceloc "OSecurityManager.java", 314, -1, -1, -1} true;
    out_$i11 := 65 + out_b2;
    assert {:sourceloc "OSecurityManager.java", 314, -1, -1, -1} true;
    out_$i16 := out_$i11 - 10;
    goto block56;

  anon35_Then:
    assume {:partition} out_b2 >= 10;
    assert {:sourceloc "OSecurityManager.java", 314, -1, -1, -1} {:comment "thenblock"} true;
    goto block55;

  anon21:
    $intArrHeap := $intArrHeap[in_r1 := $intArrHeap[in_r1][out_$i9 := out_$c8]];
    assert {:sourceloc "OSecurityManager.java", 314, -1, -1, -1} true;
    out_$i10 := $mulInt(2, out_i14);
    assert {:sourceloc "OSecurityManager.java", 314, -1, -1, -1} true;
    out_$i13 := out_$i10 + 1;
    assert {:sourceloc "OSecurityManager.java", 314, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon34_Then:
    assume {:partition} out_$i9 < $arrSizeHeap[in_r1] && out_$i9 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  block54:
    assert {:sourceloc "OSecurityManager.java", 313, -1, -1, -1} true;
    out_$c8 := out_$i15;
    assert {:sourceloc "OSecurityManager.java", 313, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} !(out_$i9 < $arrSizeHeap[in_r1] && out_$i9 >= 0);
    call out_$fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$i7, out_$fakelocal_5, out_$i11, out_$c12, out_$s6, out_$fakelocal_4, out_$i9, out_b0, out_$i10, out_i14, out_s1, out_$i16, out_b2, out_$c8, out_$fakelocal_2, out_$fakelocal_3, out_$i15, out_$i5, out_$i13 := in_$return, in_$exception, in_$i7, in_$fakelocal_5, in_$i11, in_$c12, in_$s6, in_$fakelocal_4, in_$i9, in_b0, in_$i10, in_i14, in_s1, in_$i16, in_b2, in_$c8, in_$fakelocal_2, in_$fakelocal_3, in_$i15, in_$i5, in_$i13;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon18:
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} true;
    out_$i15 := 48 + out_s1;
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} true;
    goto block54;

  block53:
    assert {:sourceloc "OSecurityManager.java", 313, -1, -1, -1} true;
    out_$i7 := 65 + out_s1;
    assert {:sourceloc "OSecurityManager.java", 313, -1, -1, -1} true;
    out_$i15 := out_$i7 - 10;
    goto block54;

  anon33_Then:
    assume {:partition} out_s1 >= 10;
    assert {:sourceloc "OSecurityManager.java", 313, -1, -1, -1} {:comment "thenblock"} true;
    goto block53;

  anon15:
    out_b0 := $intArrHeap[in_r0][out_i14];
    assert {:sourceloc "OSecurityManager.java", 311, -1, -1, -1} true;
    out_$s6 := $bitAnd(out_b0, 240);
    assert {:sourceloc "OSecurityManager.java", 311, -1, -1, -1} true;
    out_s1 := $shrInt(out_$s6, 4);
    assert {:sourceloc "OSecurityManager.java", 312, -1, -1, -1} true;
    out_b2 := $bitAnd(out_b0, 15);
    assert {:sourceloc "OSecurityManager.java", 313, -1, -1, -1} true;
    out_$i9 := $mulInt(2, out_i14);
    assert {:sourceloc "OSecurityManager.java", 313, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon32_Then:
    assume {:partition} out_i14 < $arrSizeHeap[in_r0] && out_i14 >= 0;
    out_$exception := out_$exception;
    goto anon15;

  anon12:
    assert {:sourceloc "OSecurityManager.java", 310, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !(out_i14 < $arrSizeHeap[in_r0] && out_i14 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$i7, out_$fakelocal_5, out_$i11, out_$c12, out_$s6, out_$fakelocal_4, out_$i9, out_b0, out_$i10, out_i14, out_s1, out_$i16, out_b2, out_$c8, out_$fakelocal_2, out_$fakelocal_3, out_$i15, out_$i5, out_$i13 := in_$return, in_$exception, in_$i7, in_$fakelocal_5, in_$i11, in_$c12, in_$s6, in_$fakelocal_4, in_$i9, in_b0, in_$i10, in_i14, in_s1, in_$i16, in_b2, in_$c8, in_$fakelocal_2, in_$fakelocal_3, in_$i15, in_$i5, in_$i13;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon31_Else:
    assume {:partition} out_$i5 > out_i14;
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon9:
    out_$i5 := $arrSizeHeap[in_r0];
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Then:
    assume {:partition} out_i14 >= out_$i5;
    assert {:sourceloc "OSecurityManager.java", 309, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$i7, out_$fakelocal_5, out_$i11, out_$c12, out_$s6, out_$fakelocal_4, out_$i9, out_b0, out_$i10, out_i14, out_s1, out_$i16, out_b2, out_$c8, out_$fakelocal_2, out_$fakelocal_3, out_$i15, out_$i5, out_$i13 := in_$return, in_$exception, in_$i7, in_$fakelocal_5, in_$i11, in_$c12, in_$s6, in_$fakelocal_4, in_$i9, in_b0, in_$i10, in_i14, in_s1, in_$i16, in_b2, in_$c8, in_$fakelocal_2, in_$fakelocal_3, in_$i15, in_$i5, in_$i13;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon30_Then:
    assume {:partition} in_r0 != $null;
    out_$exception := out_$exception;
    goto anon9;

  anon33_Else:
    assume {:partition} 10 > out_s1;
    assert {:sourceloc "OSecurityManager.java", 313, -1, -1, -1} {:comment "elseblock"} true;
    goto anon18;

  anon35_Else:
    assume {:partition} 10 > out_b2;
    assert {:sourceloc "OSecurityManager.java", 314, -1, -1, -1} {:comment "elseblock"} true;
    goto anon24;

  anon27_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$i7, out_$fakelocal_5, out_$i11, out_$c12, out_$s6, out_$fakelocal_4, out_$i9, out_b0, out_$i10, out_i14, out_s1, out_$i16, out_b2, out_$c8, out_$fakelocal_2, out_$fakelocal_3, out_$i15, out_$i5, out_$i13 := OSecurityManager$byteArrayToHexStr$byte$lp$$rp$_loop_block51(out_$return, out_$exception, out_$i7, out_$fakelocal_5, out_$i11, out_$c12, out_$s6, in_r0, out_$fakelocal_4, out_$i9, out_b0, in_r1, out_$i10, out_i14, out_s1, out_$i16, out_b2, out_$c8, out_$fakelocal_2, out_$fakelocal_3, out_$i15, out_$i5, out_$i13);
    return;

  exit:
    return;
}



procedure OSecurityManager$byteArrayToHexStr$byte$lp$$rp$_loop_block51(in_$return: ref, 
    in_$exception: ref, 
    in_$i7: int, 
    in_$fakelocal_5: ref, 
    in_$i11: int, 
    in_$c12: int, 
    in_$s6: int, 
    in_r0: ref, 
    in_$fakelocal_4: ref, 
    in_$i9: int, 
    in_b0: int, 
    in_r1: ref, 
    in_$i10: int, 
    in_i14: int, 
    in_s1: int, 
    in_$i16: int, 
    in_b2: int, 
    in_$c8: int, 
    in_$fakelocal_2: ref, 
    in_$fakelocal_3: ref, 
    in_$i15: int, 
    in_$i5: int, 
    in_$i13: int)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$i7: int, 
    out_$fakelocal_5: ref, 
    out_$i11: int, 
    out_$c12: int, 
    out_$s6: int, 
    out_$fakelocal_4: ref, 
    out_$i9: int, 
    out_b0: int, 
    out_$i10: int, 
    out_i14: int, 
    out_s1: int, 
    out_$i16: int, 
    out_b2: int, 
    out_$c8: int, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_3: ref, 
    out_$i15: int, 
    out_$i5: int, 
    out_$i13: int);
  modifies $intArrHeap, $objIndex, $heap;



implementation OSecurityManager$hexToByteArray$java.lang.String_loop_block58(in_$return: ref, 
    in_$exception: ref, 
    in_r1: ref, 
    in_$i2: int, 
    in_$fakelocal_2: ref, 
    in_$fakelocal_3: ref, 
    in_i8: int, 
    in_$i3: int, 
    in_r0: ref, 
    in_$i4: int, 
    in_$i5: int, 
    in_$i6: int, 
    in_$r2: ref, 
    in_$b7: int)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$i2: int, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_3: ref, 
    out_i8: int, 
    out_$i3: int, 
    out_$i4: int, 
    out_$i5: int, 
    out_$i6: int, 
    out_$r2: ref, 
    out_$b7: int)
{

  entry:
    out_$return, out_$exception, out_$i2, out_$fakelocal_2, out_$fakelocal_3, out_i8, out_$i3, out_$i4, out_$i5, out_$i6, out_$r2, out_$b7 := in_$return, in_$exception, in_$i2, in_$fakelocal_2, in_$fakelocal_3, in_i8, in_$i3, in_$i4, in_$i5, in_$i6, in_$r2, in_$b7;
    goto block58;

  block58:
    assert {:sourceloc "OSecurityManager.java", 321, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} in_r1 == $null;
    call out_$fakelocal_2 := $new(java.lang.NullPointerException);
    out_$return := $null;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$i2, out_$fakelocal_2, out_$fakelocal_3, out_i8, out_$i3, out_$i4, out_$i5, out_$i6, out_$r2, out_$b7 := in_$return, in_$exception, in_$i2, in_$fakelocal_2, in_$fakelocal_3, in_i8, in_$i3, in_$i4, in_$i5, in_$i6, in_$r2, in_$b7;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon16:
    $intArrHeap := $intArrHeap[in_r1 := $intArrHeap[in_r1][out_i8 := out_$b7]];
    assert {:sourceloc "OSecurityManager.java", 321, -1, -1, -1} true;
    out_i8 := out_i8 + 1;
    assert {:sourceloc "OSecurityManager.java", 321, -1, -1, -1} true;
    goto anon16_dummy;

  anon22_Then:
    assume {:partition} out_i8 < $arrSizeHeap[in_r1] && out_i8 >= 0;
    out_$exception := out_$exception;
    goto anon16;

  anon13:
    assert {:sourceloc "OSecurityManager.java", 322, -1, -1, -1} true;
    out_$b7 := out_$i6;
    assert {:sourceloc "OSecurityManager.java", 322, -1, -1, -1} true;
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} !(out_i8 < $arrSizeHeap[in_r1] && out_i8 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$i2, out_$fakelocal_2, out_$fakelocal_3, out_i8, out_$i3, out_$i4, out_$i5, out_$i6, out_$r2, out_$b7 := in_$return, in_$exception, in_$i2, in_$fakelocal_2, in_$fakelocal_3, in_i8, in_$i3, in_$i4, in_$i5, in_$i6, in_$r2, in_$b7;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon20_Else:
    assume {:partition} out_$exception == $null;
    goto anon13;

  anon21_Else:
    assume {:partition} !($heap[out_$exception, $type] <: java.lang.NumberFormatException);
    assert {:clone} true;
    goto anon13;

  anon20_Then:
    assume {:partition} out_$exception != $null;
    goto anon21_Then, anon21_Else;

  anon21_Then:
    assume {:partition} $heap[out_$exception, $type] <: java.lang.NumberFormatException;
    out_$return := $null;
    out_$return, out_$exception, out_$i2, out_$fakelocal_2, out_$fakelocal_3, out_i8, out_$i3, out_$i4, out_$i5, out_$i6, out_$r2, out_$b7 := in_$return, in_$exception, in_$i2, in_$fakelocal_2, in_$fakelocal_3, in_i8, in_$i3, in_$i4, in_$i5, in_$i6, in_$r2, in_$b7;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon9:
    assert {:sourceloc "OSecurityManager.java", 322, -1, -1, -1} true;
    out_$i5 := $mulInt(2, out_i8);
    assert {:sourceloc "OSecurityManager.java", 322, -1, -1, -1} true;
    out_$i3 := $mulInt(2, out_i8);
    assert {:sourceloc "OSecurityManager.java", 322, -1, -1, -1} true;
    out_$i4 := out_$i3 + 2;
    assert {:sourceloc "OSecurityManager.java", 322, -1, -1, -1} true;
    call out_$r2, out_$exception := java.lang.String$substring$int_int(in_r0, out_$i5, out_$i4);
    assert {:sourceloc "OSecurityManager.java", 322, -1, -1, -1} true;
    call out_$i6, out_$exception := java.lang.Integer$parseInt$java.lang.String_int(out_$r2, 16);
    goto anon20_Then, anon20_Else;

  anon19_Else:
    assume {:partition} out_$i2 > out_i8;
    assert {:sourceloc "OSecurityManager.java", 321, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon6:
    out_$i2 := $arrSizeHeap[in_r1];
    assert {:sourceloc "OSecurityManager.java", 321, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Then:
    assume {:partition} out_i8 >= out_$i2;
    assert {:sourceloc "OSecurityManager.java", 321, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$i2, out_$fakelocal_2, out_$fakelocal_3, out_i8, out_$i3, out_$i4, out_$i5, out_$i6, out_$r2, out_$b7 := in_$return, in_$exception, in_$i2, in_$fakelocal_2, in_$fakelocal_3, in_i8, in_$i3, in_$i4, in_$i5, in_$i6, in_$r2, in_$b7;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon18_Then:
    assume {:partition} in_r1 != $null;
    out_$exception := out_$exception;
    goto anon6;

  anon16_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$i2, out_$fakelocal_2, out_$fakelocal_3, out_i8, out_$i3, out_$i4, out_$i5, out_$i6, out_$r2, out_$b7 := OSecurityManager$hexToByteArray$java.lang.String_loop_block58(out_$return, out_$exception, in_r1, out_$i2, out_$fakelocal_2, out_$fakelocal_3, out_i8, out_$i3, in_r0, out_$i4, out_$i5, out_$i6, out_$r2, out_$b7);
    return;

  exit:
    return;
}



procedure OSecurityManager$hexToByteArray$java.lang.String_loop_block58(in_$return: ref, 
    in_$exception: ref, 
    in_r1: ref, 
    in_$i2: int, 
    in_$fakelocal_2: ref, 
    in_$fakelocal_3: ref, 
    in_i8: int, 
    in_$i3: int, 
    in_r0: ref, 
    in_$i4: int, 
    in_$i5: int, 
    in_$i6: int, 
    in_$r2: ref, 
    in_$b7: int)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$i2: int, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_3: ref, 
    out_i8: int, 
    out_$i3: int, 
    out_$i4: int, 
    out_$i5: int, 
    out_$i6: int, 
    out_$r2: ref, 
    out_$b7: int);
  modifies $intArrHeap, $objIndex, $heap;


