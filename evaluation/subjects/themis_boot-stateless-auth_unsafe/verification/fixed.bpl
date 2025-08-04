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

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.lang.Object: javaType extends complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique TokenHandler: javaType extends unique java.lang.Object complete;

const unique $StringConst0: ref extends complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.lang.Cloneable: javaType extends complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique javax.crypto.Mac: javaType extends unique java.lang.Object, java.lang.Cloneable complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.io.Serializable: javaType extends complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.lang.Comparable: javaType extends complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.lang.CharSequence: javaType extends complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.lang.String: javaType extends unique java.lang.Object, java.io.Serializable, java.lang.Comparable, java.lang.CharSequence complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.lang.Throwable: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.lang.Exception: javaType extends unique java.lang.Throwable complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.security.GeneralSecurityException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.security.NoSuchAlgorithmException: javaType extends unique java.security.GeneralSecurityException complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.security.spec.KeySpec: javaType extends complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.security.Key: javaType extends java.io.Serializable complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique javax.security.auth.Destroyable: javaType extends complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique javax.crypto.SecretKey: javaType extends java.security.Key, javax.security.auth.Destroyable complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique javax.crypto.spec.SecretKeySpec: javaType extends unique java.lang.Object, java.security.spec.KeySpec, javax.crypto.SecretKey complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.lang.RuntimeException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.security.KeyException: javaType extends unique java.security.GeneralSecurityException complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.security.InvalidKeyException: javaType extends unique java.security.KeyException complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.lang.IllegalStateException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.lang.Appendable: javaType extends complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.lang.AbstractStringBuilder: javaType extends unique java.lang.Object, java.lang.Appendable, java.lang.CharSequence complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.lang.StringBuilder: javaType extends unique java.lang.AbstractStringBuilder, java.io.Serializable, java.lang.CharSequence complete;

const unique $StringConst1: ref extends complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique com.jdriven.stateless.security.User: javaType extends complete;

const unique $StringConst2: ref extends complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.lang.NullPointerException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.lang.IndexOutOfBoundsException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.lang.ArrayIndexOutOfBoundsException: javaType extends unique java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.lang.IllegalArgumentException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.util.Date: javaType extends unique java.lang.Object, java.io.Serializable, java.lang.Cloneable, java.lang.Comparable complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique sg.edu.nus.comp.tsunami.safe.Safe: javaType extends unique java.lang.Object complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.lang.Boolean: javaType extends unique java.lang.Object, java.io.Serializable, java.lang.Comparable complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.lang.ClassCastException: javaType extends unique java.lang.RuntimeException complete;

const unique $StringConst3: ref extends complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique com.fasterxml.jackson.databind.ObjectMapper: javaType extends complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique com.fasterxml.jackson.core.JsonProcessingException: javaType extends complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique javax.xml.bind.DatatypeConverter: javaType extends unique java.lang.Object complete;

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

var javax.crypto.Mac$TokenHandler$hmac262: Field ref;

var boolean$TokenHandler$safeMode0: Field int;

var com.jdriven.stateless.security.User$TokenHandler$VALID_USER263: ref;

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
  ensures $obj == $intToRef(old($objIndex));
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];
  ensures $objIndex == old($objIndex) + 1;
  ensures $obj != $null;
  ensures !old($heap[$obj, $alloc]);



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $heap[$other, $type] == $heap[$this, $type];
  ensures $other != $null;
  ensures $heap[$other, $alloc] <==> true;



procedure int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure TokenHandler$$la$init$ra$$byte$lp$$rp$_boolean($this: ref, $in_parameter__0: ref, $in_parameter__1: int)
   returns ($exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure javax.crypto.Mac$getInstance$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure javax.crypto.spec.SecretKeySpec$$la$init$ra$$byte$lp$$rp$_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($exception: ref);



procedure javax.crypto.Mac$init$java.security.Key($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure java.lang.StringBuilder$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.StringBuilder$append$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure java.lang.Throwable$getMessage$($this: ref) returns ($return: ref, $exception: ref);



procedure java.lang.StringBuilder$toString$($this: ref) returns ($return: ref, $exception: ref);



procedure java.lang.IllegalStateException$$la$init$ra$$java.lang.String_java.lang.Throwable($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($exception: ref);



procedure TokenHandler$parseUserFromToken$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure TokenHandler$parseUserFromToken_unsafe$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.String$split$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure TokenHandler$fromBase64$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure TokenHandler$createHmac$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure TokenHandler$unsafe_isEqual$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure TokenHandler$fromJSON$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure java.util.Date$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.util.Date$getTime$($this: ref) returns ($return: int, $exception: ref);



procedure com.jdriven.stateless.security.User$getExpires$($this: ref) returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);



procedure java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



procedure TokenHandler$createTokenForUser$com.jdriven.stateless.security.User($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure TokenHandler$toJSON$com.jdriven.stateless.security.User($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.StringBuilder$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref);



procedure TokenHandler$toBase64$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure com.fasterxml.jackson.databind.ObjectMapper$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure com.fasterxml.jackson.databind.ObjectMapper$writeValueAsBytes$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure java.lang.IllegalStateException$$la$init$ra$$java.lang.Throwable($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure javax.xml.bind.DatatypeConverter$printBase64Binary$byte$lp$$rp$($in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure javax.xml.bind.DatatypeConverter$parseBase64Binary$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure javax.crypto.Mac$doFinal$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure TokenHandler$$la$clinit$ra$$() returns ($exception: ref);
  modifies com.jdriven.stateless.security.User$TokenHandler$VALID_USER263, $objIndex, $heap;



procedure com.jdriven.stateless.security.User$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure com.jdriven.stateless.security.User$setExpires$long($this: ref, $in_parameter__0: int) returns ($exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0: int) returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);



implementation TokenHandler$$la$init$ra$$byte$lp$$rp$_boolean($this: ref, $in_parameter__0: ref, $in_parameter__1: int)
   returns ($exception: ref)
{
  var $r12: ref;
  var $r9: ref;
  var $r5: ref;
  var r2: ref;
  var r1: ref;
  var $fakelocal_0: ref;
  var $fakelocal_4: ref;
  var $r11: ref;
  var z0: int;
  var $r6: ref;
  var $r7: ref;
  var r0: ref;
  var $fakelocal_2: ref;
  var $fakelocal_3: ref;
  var $r10: ref;
  var $fakelocal_1: ref;
  var $r8: ref;
  var $fakelocal_5: ref;
  var $r3: ref;
  var $r4: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $heap[$this, $type] <: TokenHandler;
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__1;
    assert {:sourceloc "TokenHandler.java", 25, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    goto block1;

  block1:
    assert {:sourceloc "TokenHandler.java", 27, -1, -1, -1} true;
    call $r3, $exception := javax.crypto.Mac$getInstance$java.lang.String($StringConst0);
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} $exception == $null;
    goto anon4;

  anon4:
    assert {:sourceloc "TokenHandler.java", 27, -1, -1, -1} true;
    $heap := $heap[r0, javax.crypto.Mac$TokenHandler$hmac262 := $r3];
    assert {:sourceloc "TokenHandler.java", 28, -1, -1, -1} true;
    $r5 := $heap[r0, javax.crypto.Mac$TokenHandler$hmac262];
    assert {:sourceloc "TokenHandler.java", 28, -1, -1, -1} true;
    call $fakelocal_0 := $new(javax.crypto.spec.SecretKeySpec);
    $r4 := $fakelocal_0;
    assert {:sourceloc "TokenHandler.java", 28, -1, -1, -1} true;
    call $exception := javax.crypto.spec.SecretKeySpec$$la$init$ra$$byte$lp$$rp$_java.lang.String($r4, r1, $StringConst0);
    goto anon23_Then, anon23_Else;

  anon23_Else:
    assume {:partition} $exception == $null;
    goto anon8;

  anon8:
    assert {:sourceloc "TokenHandler.java", 28, -1, -1, -1} true;
    goto anon25_Then, anon25_Else;

  anon25_Else:
    assume {:partition} $r5 == $null;
    call $fakelocal_1 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_1;
    return;

  anon25_Then:
    assume {:partition} $r5 != $null;
    $exception := $exception;
    goto anon11;

  anon11:
    call $exception := javax.crypto.Mac$init$java.security.Key($r5, $r4);
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} $exception == $null;
    goto block3;

  block3:
    assert {:sourceloc "TokenHandler.java", 31, -1, -1, -1} true;
    goto block4;

  block4:
    assert {:sourceloc "TokenHandler.java", 32, -1, -1, -1} true;
    $heap := $heap[r0, boolean$TokenHandler$safeMode0 := z0];
    assert {:sourceloc "TokenHandler.java", 33, -1, -1, -1} true;
    goto block5;

  block5:
    return;

  anon26_Then:
    assume {:partition} $exception != $null;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.InvalidKeyException);
    assert {:clone} true;
    goto block3;

  anon27_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.InvalidKeyException;
    goto block2;

  block2:
    assert {:sourceloc "TokenHandler.java", 33, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r6 := $exception;
    assert {:sourceloc "TokenHandler.java", 29, -1, -1, -1} true;
    r2 := $r6;
    assert {:sourceloc "TokenHandler.java", 30, -1, -1, -1} true;
    call $fakelocal_2 := $new(java.lang.IllegalStateException);
    $r7 := $fakelocal_2;
    assert {:sourceloc "TokenHandler.java", 30, -1, -1, -1} true;
    call $fakelocal_3 := $new(java.lang.StringBuilder);
    $r8 := $fakelocal_3;
    assert {:sourceloc "TokenHandler.java", 30, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r8);
    assert {:sourceloc "TokenHandler.java", 30, -1, -1, -1} true;
    call $r9, $exception := java.lang.StringBuilder$append$java.lang.String($r8, $StringConst1);
    assert {:sourceloc "TokenHandler.java", 30, -1, -1, -1} true;
    call $r10, $exception := java.lang.Throwable$getMessage$(r2);
    assert {:sourceloc "TokenHandler.java", 30, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} $r9 == $null;
    call $fakelocal_4 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_4;
    return;

  anon28_Then:
    assume {:partition} $r9 != $null;
    $exception := $exception;
    goto anon17;

  anon17:
    call $r11, $exception := java.lang.StringBuilder$append$java.lang.String($r9, $r10);
    assert {:sourceloc "TokenHandler.java", 30, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} $r11 == $null;
    call $fakelocal_5 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_5;
    return;

  anon29_Then:
    assume {:partition} $r11 != $null;
    $exception := $exception;
    goto anon20;

  anon20:
    call $r12, $exception := java.lang.StringBuilder$toString$($r11);
    assert {:sourceloc "TokenHandler.java", 30, -1, -1, -1} true;
    call $exception := java.lang.IllegalStateException$$la$init$ra$$java.lang.String_java.lang.Throwable($r7, $r12, r2);
    assert {:sourceloc "TokenHandler.java", 30, -1, -1, -1} true;
    $exception := $r7;
    goto block5;

  anon23_Then:
    assume {:partition} $exception != $null;
    goto anon24_Then, anon24_Else;

  anon24_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon8;

  anon24_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    assert {:clone} true;
    $r4 := $null;
    goto block2;

  anon21_Then:
    assume {:partition} $exception != $null;
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon4;

  anon22_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    goto block2;
}



implementation TokenHandler$parseUserFromToken$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r0: ref;
  var r1: ref;
  var $r2: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $heap[$this, $type] <: TokenHandler;
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    assume $heap[$return, $type] <: com.jdriven.stateless.security.User;
    $exception := $null;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "TokenHandler.java", 39, -1, -1, -1} true;
    call $r2, $exception := TokenHandler$parseUserFromToken_unsafe$java.lang.String(r0, r1);
    assert {:sourceloc "TokenHandler.java", 39, -1, -1, -1} true;
    $return := $r2;
    goto block6;

  block6:
    return;
}



implementation TokenHandler$parseUserFromToken_unsafe$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var $r11: ref;
  var $i1: int;
  var $r5: ref;
  var r4: ref;
  var z0: int;
  var $fakelocal_5: ref;
  var $r9: ref;
  var $fakelocal_2: ref;
  var $fakelocal_7: ref;
  var $r8: ref;
  var $i2: int;
  var $l3: int;
  var r2: ref;
  var $r10: ref;
  var $l4: int;
  var $fakelocal_4: ref;
  var $r7: ref;
  var $i0: int;
  var $fakelocal_3: ref;
  var $fakelocal_6: ref;
  var $r6: ref;
  var $b5: int;
  var $fakelocal_1: ref;
  var $fakelocal_0: ref;
  var r1: ref;
  var r0: ref;
  var r12: ref;
  var r3: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $heap[$this, $type] <: TokenHandler;
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    assume $heap[$return, $type] <: com.jdriven.stateless.security.User;
    $exception := $null;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "TokenHandler.java", 67, -1, -1, -1} true;
    goto anon67_Then, anon67_Else;

  anon67_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon67_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call r2, $exception := java.lang.String$split$java.lang.String(r1, $StringConst2);
    assert {:sourceloc "TokenHandler.java", 68, -1, -1, -1} true;
    goto anon68_Then, anon68_Else;

  anon68_Else:
    assume {:partition} r2 == $null;
    call $fakelocal_1 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_1;
    return;

  anon68_Then:
    assume {:partition} r2 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i0 := $arrSizeHeap[r2];
    assert {:sourceloc "TokenHandler.java", 68, -1, -1, -1} true;
    goto anon69_Then, anon69_Else;

  anon69_Else:
    assume {:partition} $i0 == 2;
    assert {:sourceloc "TokenHandler.java", 68, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "TokenHandler.java", 87, -1, -1, -1} true;
    goto anon70_Then, anon70_Else;

  anon70_Else:
    assume {:partition} !(0 < $arrSizeHeap[r2] && 0 >= 0);
    call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon70_Then:
    assume {:partition} 0 < $arrSizeHeap[r2] && 0 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    $r5 := $refArrHeap[r2][0];
    assert {:sourceloc "TokenHandler.java", 87, -1, -1, -1} true;
    $i1 := $stringSizeHeap[$r5];
    assert {:sourceloc "TokenHandler.java", 87, -1, -1, -1} true;
    goto anon71_Then, anon71_Else;

  anon71_Else:
    assume {:partition} 0 < $i1;
    assert {:sourceloc "TokenHandler.java", 87, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "TokenHandler.java", 87, -1, -1, -1} true;
    goto anon72_Then, anon72_Else;

  anon72_Else:
    assume {:partition} !(1 < $arrSizeHeap[r2] && 1 >= 0);
    call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_3;
    return;

  anon72_Then:
    assume {:partition} 1 < $arrSizeHeap[r2] && 1 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $r6 := $refArrHeap[r2][1];
    assert {:sourceloc "TokenHandler.java", 87, -1, -1, -1} true;
    $i2 := $stringSizeHeap[$r6];
    assert {:sourceloc "TokenHandler.java", 87, -1, -1, -1} true;
    goto anon73_Then, anon73_Else;

  anon73_Else:
    assume {:partition} 0 < $i2;
    assert {:sourceloc "TokenHandler.java", 87, -1, -1, -1} {:comment "elseblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "TokenHandler.java", 70, -1, -1, -1} true;
    goto anon74_Then, anon74_Else;

  anon74_Else:
    assume {:partition} !(0 < $arrSizeHeap[r2] && 0 >= 0);
    call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_4;
    return;

  anon74_Then:
    assume {:partition} 0 < $arrSizeHeap[r2] && 0 >= 0;
    $exception := $exception;
    goto anon23;

  anon23:
    $r7 := $refArrHeap[r2][0];
    assert {:sourceloc "TokenHandler.java", 70, -1, -1, -1} true;
    call r12, $exception := TokenHandler$fromBase64$java.lang.String(r0, $r7);
    goto anon75_Then, anon75_Else;

  anon75_Else:
    assume {:partition} $exception == $null;
    goto anon27;

  anon27:
    assert {:sourceloc "TokenHandler.java", 71, -1, -1, -1} true;
    goto anon77_Then, anon77_Else;

  anon77_Else:
    assume {:partition} !(1 < $arrSizeHeap[r2] && 1 >= 0);
    call $fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_5;
    return;

  anon77_Then:
    assume {:partition} 1 < $arrSizeHeap[r2] && 1 >= 0;
    $exception := $exception;
    goto anon30;

  anon30:
    $r8 := $refArrHeap[r2][1];
    assert {:sourceloc "TokenHandler.java", 71, -1, -1, -1} true;
    call r3, $exception := TokenHandler$fromBase64$java.lang.String(r0, $r8);
    goto anon78_Then, anon78_Else;

  anon78_Else:
    assume {:partition} $exception == $null;
    goto anon34;

  anon34:
    assert {:sourceloc "TokenHandler.java", 75, -1, -1, -1} true;
    call $r9, $exception := TokenHandler$createHmac$byte$lp$$rp$(r0, r12);
    goto anon80_Then, anon80_Else;

  anon80_Else:
    assume {:partition} $exception == $null;
    goto anon38;

  anon38:
    assert {:sourceloc "TokenHandler.java", 75, -1, -1, -1} true;
    call z0, $exception := TokenHandler$unsafe_isEqual$byte$lp$$rp$_byte$lp$$rp$($r9, r3);
    goto anon82_Then, anon82_Else;

  anon82_Else:
    assume {:partition} $exception == $null;
    goto anon42;

  anon42:
    assert {:sourceloc "TokenHandler.java", 76, -1, -1, -1} true;
    goto anon84_Then, anon84_Else;

  anon84_Else:
    assume {:partition} z0 != 0;
    assert {:sourceloc "TokenHandler.java", 76, -1, -1, -1} {:comment "elseblock"} true;
    goto anon45;

  anon45:
    assert {:sourceloc "TokenHandler.java", 77, -1, -1, -1} true;
    call r4, $exception := TokenHandler$fromJSON$byte$lp$$rp$(r0, r12);
    goto anon85_Then, anon85_Else;

  anon85_Else:
    assume {:partition} $exception == $null;
    goto anon49;

  anon49:
    assert {:sourceloc "TokenHandler.java", 78, -1, -1, -1} true;
    call $fakelocal_6 := $new(java.util.Date);
    $r10 := $fakelocal_6;
    assert {:sourceloc "TokenHandler.java", 78, -1, -1, -1} true;
    call $exception := java.util.Date$$la$init$ra$$($r10);
    goto anon87_Then, anon87_Else;

  anon87_Else:
    assume {:partition} $exception == $null;
    goto anon53;

  anon53:
    assert {:sourceloc "TokenHandler.java", 78, -1, -1, -1} true;
    call $l3, $exception := java.util.Date$getTime$($r10);
    goto anon89_Then, anon89_Else;

  anon89_Else:
    assume {:partition} $exception == $null;
    goto anon57;

  anon57:
    assert {:sourceloc "TokenHandler.java", 78, -1, -1, -1} true;
    goto anon91_Then, anon91_Else;

  anon91_Else:
    assume {:partition} r4 == $null;
    call $fakelocal_7 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_7;
    return;

  anon91_Then:
    assume {:partition} r4 != $null;
    $exception := $exception;
    goto anon60;

  anon60:
    call $l4, $exception := com.jdriven.stateless.security.User$getExpires$(r4);
    goto anon92_Then, anon92_Else;

  anon92_Else:
    assume {:partition} $exception == $null;
    goto anon64;

  anon64:
    assert {:sourceloc "TokenHandler.java", 78, -1, -1, -1} true;
    $b5 := $cmpInt($l3, $l4);
    assert {:sourceloc "TokenHandler.java", 78, -1, -1, -1} true;
    goto anon94_Then, anon94_Else;

  anon94_Else:
    assume {:partition} 0 > $b5;
    assert {:sourceloc "TokenHandler.java", 78, -1, -1, -1} {:comment "elseblock"} true;
    goto block12;

  block12:
    assert {:sourceloc "TokenHandler.java", 79, -1, -1, -1} true;
    $return := r4;
    goto block13;

  block13:
    return;

  anon94_Then:
    assume {:partition} $b5 >= 0;
    assert {:sourceloc "TokenHandler.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  block11:
    assert {:sourceloc "TokenHandler.java", 81, -1, -1, -1} true;
    $return := r4;
    goto block13;

  anon92_Then:
    assume {:partition} $exception != $null;
    goto anon93_Then, anon93_Else;

  anon93_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.IllegalArgumentException);
    assert {:clone} true;
    goto anon64;

  anon93_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.IllegalArgumentException;
    assert {:clone} true;
    goto block9;

  block9:
    assert {:sourceloc "TokenHandler.java", 79, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r11 := $exception;
    goto block7;

  block7:
    assert {:sourceloc "TokenHandler.java", 87, -1, -1, -1} true;
    $return := $null;
    goto block13;

  anon89_Then:
    assume {:partition} $exception != $null;
    goto anon90_Then, anon90_Else;

  anon90_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.IllegalArgumentException);
    assert {:clone} true;
    goto anon57;

  anon90_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.IllegalArgumentException;
    assert {:clone} true;
    goto block9;

  anon87_Then:
    assume {:partition} $exception != $null;
    goto anon88_Then, anon88_Else;

  anon88_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.IllegalArgumentException);
    assert {:clone} true;
    goto anon53;

  anon88_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.IllegalArgumentException;
    assert {:clone} true;
    $r10 := $null;
    goto block9;

  anon85_Then:
    assume {:partition} $exception != $null;
    goto anon86_Then, anon86_Else;

  anon86_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.IllegalArgumentException);
    assert {:clone} true;
    goto anon49;

  anon86_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.IllegalArgumentException;
    assert {:clone} true;
    goto block9;

  anon84_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "TokenHandler.java", 76, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "TokenHandler.java", 85, -1, -1, -1} true;
    goto block7;

  anon82_Then:
    assume {:partition} $exception != $null;
    goto anon83_Then, anon83_Else;

  anon83_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.IllegalArgumentException);
    assert {:clone} true;
    goto anon42;

  anon83_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.IllegalArgumentException;
    assert {:clone} true;
    goto block9;

  anon80_Then:
    assume {:partition} $exception != $null;
    goto anon81_Then, anon81_Else;

  anon81_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.IllegalArgumentException);
    assert {:clone} true;
    goto anon38;

  anon81_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.IllegalArgumentException;
    assert {:clone} true;
    goto block9;

  anon78_Then:
    assume {:partition} $exception != $null;
    goto anon79_Then, anon79_Else;

  anon79_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.IllegalArgumentException);
    assert {:clone} true;
    goto anon34;

  anon79_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.IllegalArgumentException;
    assert {:clone} true;
    goto block9;

  anon75_Then:
    assume {:partition} $exception != $null;
    goto anon76_Then, anon76_Else;

  anon76_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.IllegalArgumentException);
    assert {:clone} true;
    goto anon27;

  anon76_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.IllegalArgumentException;
    assert {:clone} true;
    goto block9;

  anon73_Then:
    assume {:partition} $i2 <= 0;
    assert {:sourceloc "TokenHandler.java", 87, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  anon71_Then:
    assume {:partition} $i1 <= 0;
    assert {:sourceloc "TokenHandler.java", 87, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  anon69_Then:
    assume {:partition} $i0 != 2;
    assert {:sourceloc "TokenHandler.java", 68, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;
}



implementation TokenHandler$unsafe_isEqual$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $r9: ref;
  var $fakelocal_9: ref;
  var $r15: ref;
  var $r2: ref;
  var $r13: ref;
  var $fakelocal_3: ref;
  var $fakelocal_1: ref;
  var $fakelocal_2: ref;
  var $b2: int;
  var $r10: ref;
  var z0: int;
  var i0: int;
  var $z1: int;
  var r1: ref;
  var $r4: ref;
  var $fakelocal_5: ref;
  var $r3: ref;
  var $r8: ref;
  var $fakelocal_8: ref;
  var $r6: ref;
  var $fakelocal_0: ref;
  var $r11: ref;
  var $fakelocal_6: ref;
  var z2: int;
  var $r5: ref;
  var $i1: int;
  var $r12: ref;
  var $l5: int;
  var $fakelocal_4: ref;
  var $b3: int;
  var $fakelocal_7: ref;
  var $r14: ref;
  var $r7: ref;
  var $l4: int;
  var r0: ref;
  var z3: int;
  var i6: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "TokenHandler.java", 103, -1, -1, -1} true;
    z2 := 0;
    assert {:sourceloc "TokenHandler.java", 104, -1, -1, -1} true;
    z3 := 0;
    assert {:sourceloc "TokenHandler.java", 105, -1, -1, -1} true;
    goto anon45_Then, anon45_Else;

  anon45_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "TokenHandler.java", 105, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "TokenHandler.java", 106, -1, -1, -1} true;
    $return := 1;
    goto block20;

  block20:
    return;

  anon45_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "TokenHandler.java", 105, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "TokenHandler.java", 107, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} r0 != $null;
    assert {:sourceloc "TokenHandler.java", 107, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "TokenHandler.java", 108, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} r1 == $null;
    assert {:sourceloc "TokenHandler.java", 108, -1, -1, -1} {:comment "elseblock"} true;
    goto block15;

  block15:
    assert {:sourceloc "TokenHandler.java", 108, -1, -1, -1} true;
    $return := 0;
    goto block20;

  anon47_Then:
    assume {:partition} r1 != $null;
    assert {:sourceloc "TokenHandler.java", 108, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  block16:
    assert {:sourceloc "TokenHandler.java", 110, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} r0 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon48_Then:
    assume {:partition} r0 != $null;
    $exception := $exception;
    goto anon11;

  anon11:
    i0 := $arrSizeHeap[r0];
    assert {:sourceloc "TokenHandler.java", 111, -1, -1, -1} true;
    goto anon49_Then, anon49_Else;

  anon49_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_1 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon49_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon14;

  anon14:
    $i1 := $arrSizeHeap[r1];
    assert {:sourceloc "TokenHandler.java", 111, -1, -1, -1} true;
    goto anon50_Then, anon50_Else;

  anon50_Else:
    assume {:partition} $i1 != i0;
    assert {:sourceloc "TokenHandler.java", 111, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "TokenHandler.java", 112, -1, -1, -1} true;
    $return := 0;
    goto block20;

  anon50_Then:
    assume {:partition} $i1 == i0;
    assert {:sourceloc "TokenHandler.java", 111, -1, -1, -1} {:comment "thenblock"} true;
    goto block17;

  block17:
    assert {:sourceloc "TokenHandler.java", 114, -1, -1, -1} true;
    i6 := 0;
    goto block18;

  block18:
    call $return, $exception, $r9, $r15, $r13, $fakelocal_3, $fakelocal_2, $b2, $r10, z0, $fakelocal_5, $r8, $r6, $r11, $fakelocal_6, z2, $r12, $l5, $fakelocal_4, $b3, $fakelocal_7, $r14, $r7, $l4, z3, i6 := TokenHandler$unsafe_isEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block18($return, $exception, $r9, $r15, $r13, $fakelocal_3, $fakelocal_2, $b2, $r10, z0, i0, r1, $fakelocal_5, $r8, $r6, $r11, $fakelocal_6, z2, $r12, $l5, $fakelocal_4, $b3, $fakelocal_7, $r14, $r7, $l4, r0, z3, i6);
    goto block18_last;

  anon51_Else:
    assume {:partition} i0 > i6;
    assert {:sourceloc "TokenHandler.java", 114, -1, -1, -1} {:comment "elseblock"} true;
    goto anon20;

  anon20:
    assert {:sourceloc "TokenHandler.java", 117, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} !(i6 < $arrSizeHeap[r0] && i6 >= 0);
    call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon52_Then:
    assume {:partition} i6 < $arrSizeHeap[r0] && i6 >= 0;
    $exception := $exception;
    goto anon23;

  anon23:
    $b2 := $intArrHeap[r0][i6];
    assert {:sourceloc "TokenHandler.java", 117, -1, -1, -1} true;
    $l5 := $b2;
    assert {:sourceloc "TokenHandler.java", 117, -1, -1, -1} true;
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} !(i6 < $arrSizeHeap[r1] && i6 >= 0);
    call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon53_Then:
    assume {:partition} i6 < $arrSizeHeap[r1] && i6 >= 0;
    $exception := $exception;
    goto anon26;

  anon26:
    $b3 := $intArrHeap[r1][i6];
    assert {:sourceloc "TokenHandler.java", 117, -1, -1, -1} true;
    $l4 := $b3;
    assert {:sourceloc "TokenHandler.java", 117, -1, -1, -1} true;
    call z0, $exception := sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($l5, $l4);
    assert {:sourceloc "TokenHandler.java", 118, -1, -1, -1} true;
    call $r6, $exception := java.lang.Boolean$valueOf$boolean(z2);
    assert {:sourceloc "TokenHandler.java", 118, -1, -1, -1} true;
    call $r7, $exception := java.lang.Boolean$valueOf$boolean(0);
    assert {:sourceloc "TokenHandler.java", 118, -1, -1, -1} true;
    call $r8, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z3, $r6, $r7);
    assert {:sourceloc "TokenHandler.java", 118, -1, -1, -1} true;
    call $r9, $exception := java.lang.Boolean$valueOf$boolean(z2);
    assert {:sourceloc "TokenHandler.java", 118, -1, -1, -1} true;
    call $r10, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r8, $r9);
    assert {:sourceloc "TokenHandler.java", 118, -1, -1, -1} true;
    goto anon54_Then, anon54_Else;

  anon54_Else:
    assume {:partition} !($heap[$r10, $type] <: java.lang.Boolean);
    call $fakelocal_4 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon54_Then:
    assume {:partition} $heap[$r10, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon29;

  anon29:
    $r11 := $r10;
    assert {:sourceloc "TokenHandler.java", 118, -1, -1, -1} true;
    goto anon55_Then, anon55_Else;

  anon55_Else:
    assume {:partition} $r11 == $null;
    call $fakelocal_5 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon55_Then:
    assume {:partition} $r11 != $null;
    $exception := $exception;
    goto anon32;

  anon32:
    call z2, $exception := java.lang.Boolean$booleanValue$($r11);
    assert {:sourceloc "TokenHandler.java", 119, -1, -1, -1} true;
    call $r12, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "TokenHandler.java", 119, -1, -1, -1} true;
    call $r13, $exception := java.lang.Boolean$valueOf$boolean(z3);
    assert {:sourceloc "TokenHandler.java", 119, -1, -1, -1} true;
    call $r14, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r12, $r13);
    assert {:sourceloc "TokenHandler.java", 119, -1, -1, -1} true;
    goto anon56_Then, anon56_Else;

  anon56_Else:
    assume {:partition} !($heap[$r14, $type] <: java.lang.Boolean);
    call $fakelocal_6 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon56_Then:
    assume {:partition} $heap[$r14, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon35;

  anon35:
    $r15 := $r14;
    assert {:sourceloc "TokenHandler.java", 119, -1, -1, -1} true;
    goto anon57_Then, anon57_Else;

  anon57_Else:
    assume {:partition} $r15 == $null;
    call $fakelocal_7 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_7;
    return;

  anon57_Then:
    assume {:partition} $r15 != $null;
    $exception := $exception;
    goto anon38;

  anon38:
    call z3, $exception := java.lang.Boolean$booleanValue$($r15);
    assert {:sourceloc "TokenHandler.java", 114, -1, -1, -1} true;
    i6 := i6 + 1;
    assert {:sourceloc "TokenHandler.java", 114, -1, -1, -1} true;
    goto anon38_dummy;

  anon51_Then:
    assume {:partition} i6 >= i0;
    assert {:sourceloc "TokenHandler.java", 114, -1, -1, -1} {:comment "thenblock"} true;
    goto block19;

  block19:
    assert {:sourceloc "TokenHandler.java", 124, -1, -1, -1} true;
    call $r2, $exception := java.lang.Boolean$valueOf$boolean(z2);
    assert {:sourceloc "TokenHandler.java", 124, -1, -1, -1} true;
    call $r3, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "TokenHandler.java", 124, -1, -1, -1} true;
    call $r4, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z3, $r2, $r3);
    assert {:sourceloc "TokenHandler.java", 124, -1, -1, -1} true;
    goto anon58_Then, anon58_Else;

  anon58_Else:
    assume {:partition} !($heap[$r4, $type] <: java.lang.Boolean);
    call $fakelocal_8 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_8;
    return;

  anon58_Then:
    assume {:partition} $heap[$r4, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon41;

  anon41:
    $r5 := $r4;
    assert {:sourceloc "TokenHandler.java", 124, -1, -1, -1} true;
    goto anon59_Then, anon59_Else;

  anon59_Else:
    assume {:partition} $r5 == $null;
    call $fakelocal_9 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_9;
    return;

  anon59_Then:
    assume {:partition} $r5 != $null;
    $exception := $exception;
    goto anon44;

  anon44:
    call $z1, $exception := java.lang.Boolean$booleanValue$($r5);
    assert {:sourceloc "TokenHandler.java", 124, -1, -1, -1} true;
    $return := $z1;
    goto block20;

  anon46_Then:
    assume {:partition} r0 == $null;
    assert {:sourceloc "TokenHandler.java", 107, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  anon38_dummy:
    assume false;
    return;

  block18_last:
    assert {:sourceloc "TokenHandler.java", 114, -1, -1, -1} true;
    goto anon51_Then, anon51_Else;
}



implementation TokenHandler$createTokenForUser$com.jdriven.stateless.security.User($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var $r5: ref;
  var r2: ref;
  var r1: ref;
  var $fakelocal_2: ref;
  var r3: ref;
  var $fakelocal_3: ref;
  var $r9: ref;
  var $r6: ref;
  var $r11: ref;
  var $fakelocal_1: ref;
  var $fakelocal_0: ref;
  var r0: ref;
  var r4: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $heap[$this, $type] <: TokenHandler;
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: java.lang.String;
    assume $heap[$in_parameter__0, $type] <: com.jdriven.stateless.security.User;
    $exception := $null;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "TokenHandler.java", 128, -1, -1, -1} true;
    call r2, $exception := TokenHandler$toJSON$com.jdriven.stateless.security.User(r0, r1);
    assert {:sourceloc "TokenHandler.java", 129, -1, -1, -1} true;
    call r3, $exception := TokenHandler$createHmac$byte$lp$$rp$(r0, r2);
    assert {:sourceloc "TokenHandler.java", 130, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r5 := $fakelocal_0;
    assert {:sourceloc "TokenHandler.java", 130, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$int($r5, 170);
    assert {:sourceloc "TokenHandler.java", 130, -1, -1, -1} true;
    r4 := $r5;
    assert {:sourceloc "TokenHandler.java", 131, -1, -1, -1} true;
    call $r6, $exception := TokenHandler$toBase64$byte$lp$$rp$(r0, r2);
    assert {:sourceloc "TokenHandler.java", 131, -1, -1, -1} true;
    call $fakelocal_1, $exception := java.lang.StringBuilder$append$java.lang.String(r4, $r6);
    assert {:sourceloc "TokenHandler.java", 132, -1, -1, -1} true;
    call $fakelocal_2, $exception := java.lang.StringBuilder$append$java.lang.String(r4, $StringConst3);
    assert {:sourceloc "TokenHandler.java", 133, -1, -1, -1} true;
    call $r9, $exception := TokenHandler$toBase64$byte$lp$$rp$(r0, r3);
    assert {:sourceloc "TokenHandler.java", 133, -1, -1, -1} true;
    call $fakelocal_3, $exception := java.lang.StringBuilder$append$java.lang.String(r4, $r9);
    assert {:sourceloc "TokenHandler.java", 134, -1, -1, -1} true;
    call $r11, $exception := java.lang.StringBuilder$toString$(r4);
    assert {:sourceloc "TokenHandler.java", 134, -1, -1, -1} true;
    $return := $r11;
    goto block21;

  block21:
    return;
}



implementation TokenHandler$fromJSON$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r1: ref;
  var r0: ref;
  var $r2: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $heap[$this, $type] <: TokenHandler;
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: com.jdriven.stateless.security.User;
    $exception := $null;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "TokenHandler.java", 148, -1, -1, -1} true;
    $r2 := com.jdriven.stateless.security.User$TokenHandler$VALID_USER263;
    assert {:sourceloc "TokenHandler.java", 148, -1, -1, -1} true;
    $return := $r2;
    goto block22;

  block22:
    return;
}



implementation TokenHandler$toJSON$com.jdriven.stateless.security.User($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r9: ref;
  var r2: ref;
  var r7: ref;
  var $fakelocal_0: ref;
  var $r5: ref;
  var $fakelocal_1: ref;
  var r1: ref;
  var r0: ref;
  var $fakelocal_2: ref;
  var $r4: ref;
  var r8: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $heap[$this, $type] <: TokenHandler;
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: com.jdriven.stateless.security.User;
    $exception := $null;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    goto block23;

  block23:
    assert {:sourceloc "TokenHandler.java", 153, -1, -1, -1} true;
    call $fakelocal_0 := $new(com.fasterxml.jackson.databind.ObjectMapper);
    r7 := $fakelocal_0;
    assert {:sourceloc "TokenHandler.java", 153, -1, -1, -1} true;
    call $exception := com.fasterxml.jackson.databind.ObjectMapper$$la$init$ra$$(r7);
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} $exception == $null;
    goto anon4;

  anon4:
    assert {:sourceloc "TokenHandler.java", 153, -1, -1, -1} true;
    call $r4, $exception := com.fasterxml.jackson.databind.ObjectMapper$writeValueAsBytes$java.lang.Object(r7, r1);
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} $exception == $null;
    goto block25;

  block25:
    assert {:sourceloc "TokenHandler.java", 153, -1, -1, -1} true;
    $return := $r4;
    goto block26;

  block26:
    return;

  anon13_Then:
    assume {:partition} $exception != $null;
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !($heap[$exception, $type] <: com.fasterxml.jackson.core.JsonProcessingException);
    assert {:clone} true;
    goto block25;

  anon14_Then:
    assume {:partition} $heap[$exception, $type] <: com.fasterxml.jackson.core.JsonProcessingException;
    assert {:clone} true;
    goto block24;

  block24:
    assert {:sourceloc "TokenHandler.java", 153, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r5 := $exception;
    assert {:sourceloc "TokenHandler.java", 154, -1, -1, -1} true;
    r2 := $r5;
    assert {:sourceloc "TokenHandler.java", 155, -1, -1, -1} true;
    call $fakelocal_1 := $new(java.lang.IllegalStateException);
    r8 := $fakelocal_1;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !($heap[r2, $type] <: java.lang.Throwable);
    call $fakelocal_2 := $new(java.lang.ClassCastException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon15_Then:
    assume {:partition} $heap[r2, $type] <: java.lang.Throwable;
    $exception := $exception;
    goto anon10;

  anon10:
    r9 := r2;
    assert {:sourceloc "TokenHandler.java", 155, -1, -1, -1} true;
    call $exception := java.lang.IllegalStateException$$la$init$ra$$java.lang.Throwable(r8, r9);
    assert {:sourceloc "TokenHandler.java", 155, -1, -1, -1} true;
    $exception := r8;
    goto block26;

  anon11_Then:
    assume {:partition} $exception != $null;
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($heap[$exception, $type] <: com.fasterxml.jackson.core.JsonProcessingException);
    assert {:clone} true;
    goto anon4;

  anon12_Then:
    assume {:partition} $heap[$exception, $type] <: com.fasterxml.jackson.core.JsonProcessingException;
    assert {:clone} true;
    r7 := $null;
    goto block24;
}



implementation TokenHandler$toBase64$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r1: ref;
  var r0: ref;
  var $r2: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $heap[$this, $type] <: TokenHandler;
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "TokenHandler.java", 160, -1, -1, -1} true;
    call $r2, $exception := javax.xml.bind.DatatypeConverter$printBase64Binary$byte$lp$$rp$(r1);
    assert {:sourceloc "TokenHandler.java", 160, -1, -1, -1} true;
    $return := $r2;
    goto block27;

  block27:
    return;
}



implementation TokenHandler$fromBase64$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var $r2: ref;
  var r0: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $heap[$this, $type] <: TokenHandler;
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "TokenHandler.java", 164, -1, -1, -1} true;
    call $r2, $exception := javax.xml.bind.DatatypeConverter$parseBase64Binary$java.lang.String(r1);
    assert {:sourceloc "TokenHandler.java", 164, -1, -1, -1} true;
    $return := $r2;
    goto block28;

  block28:
    return;
}



implementation TokenHandler$createHmac$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var $r3: ref;
  var $r2: ref;
  var r0: ref;
  var r1: ref;
  var $fakelocal_0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $heap[$this, $type] <: TokenHandler;
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "TokenHandler.java", 169, -1, -1, -1} true;
    $r2 := $heap[r0, javax.crypto.Mac$TokenHandler$hmac262];
    assert {:sourceloc "TokenHandler.java", 169, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $r2 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon8_Then:
    assume {:partition} $r2 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $r3, $exception := javax.crypto.Mac$doFinal$byte$lp$$rp$($r2, r1);
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} $exception == $null;
    goto anon7;

  anon7:
    assert {:sourceloc "TokenHandler.java", 169, -1, -1, -1} true;
    $return := $r3;
    goto block29;

  block29:
    return;

  anon9_Then:
    assume {:partition} $exception != $null;
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.IllegalStateException);
    assert {:clone} true;
    goto anon7;

  anon10_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.IllegalStateException;
    $return := $null;
    return;
}



implementation TokenHandler$$la$clinit$ra$$() returns ($exception: ref)
{
  var $r2: ref;
  var $fakelocal_1: ref;
  var $l0: int;
  var $r1: ref;
  var $r0: ref;
  var $fakelocal_0: ref;
  var $l1: int;
  var $fakelocal_2: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "TokenHandler.java", 138, -1, -1, -1} true;
    call $fakelocal_0 := $new(com.jdriven.stateless.security.User);
    $r0 := $fakelocal_0;
    assert {:sourceloc "TokenHandler.java", 138, -1, -1, -1} true;
    call $exception := com.jdriven.stateless.security.User$$la$init$ra$$($r0);
    assert {:sourceloc "TokenHandler.java", 138, -1, -1, -1} true;
    com.jdriven.stateless.security.User$TokenHandler$VALID_USER263 := $r0;
    assert {:sourceloc "TokenHandler.java", 140, -1, -1, -1} true;
    $r2 := com.jdriven.stateless.security.User$TokenHandler$VALID_USER263;
    assert {:sourceloc "TokenHandler.java", 140, -1, -1, -1} true;
    call $fakelocal_1 := $new(java.util.Date);
    $r1 := $fakelocal_1;
    assert {:sourceloc "TokenHandler.java", 140, -1, -1, -1} true;
    call $exception := java.util.Date$$la$init$ra$$($r1);
    assert {:sourceloc "TokenHandler.java", 140, -1, -1, -1} true;
    call $l0, $exception := java.util.Date$getTime$($r1);
    assert {:sourceloc "TokenHandler.java", 140, -1, -1, -1} true;
    $l1 := $l0 + 100000;
    assert {:sourceloc "TokenHandler.java", 140, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} $r2 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_2;
    return;

  anon4_Then:
    assume {:partition} $r2 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $exception := com.jdriven.stateless.security.User$setExpires$long($r2, $l1);
    assert {:sourceloc "TokenHandler.java", 141, -1, -1, -1} true;
    goto block30;

  block30:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Safe.java", -1, -1, -1, -1} $heap[$this, $type] <: sg.edu.nus.comp.tsunami.safe.Safe;
    assume {:sourceloc "Safe.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Safe.java", 3, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "Safe.java", 3, -1, -1, -1} true;
    goto block31;

  block31:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var z1: int;
  var z0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", 5, -1, -1, -1} true;
    z1 := 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 0;
    goto block32;

  block32:
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 1;
    goto block33;

  block33:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    $return := z1;
    goto block34;

  block34:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block33;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block32;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $z2: int;
  var z0: int;
  var z1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 12, -1, -1, -1} true;
    $z2 := $bitAnd(z0, z1);
    assert {:sourceloc "Safe.java", 12, -1, -1, -1} true;
    $return := $z2;
    goto block35;

  block35:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z1: int;
  var $z2: int;
  var z0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 16, -1, -1, -1} true;
    $z2 := $bitOr(z0, z1);
    assert {:sourceloc "Safe.java", 16, -1, -1, -1} true;
    $return := $z2;
    goto block36;

  block36:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l0: int;
  var $b2: int;
  var $b3: int;
  var z0: int;
  var l1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 20, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} true;
    $b2 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 < $b2;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    z0 := 1;
    goto block37;

  block37:
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} true;
    $b3 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 >= $b3;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    z0 := 0;
    goto block38;

  block38:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    $return := z0;
    goto block39;

  block39:
    return;

  anon8_Then:
    assume {:partition} $b3 > 0;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block38;

  anon7_Then:
    assume {:partition} $b2 <= 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    goto block37;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l0: int;
  var $b2: int;
  var l1: int;
  var z0: int;
  var $b3: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 27, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} true;
    $b2 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 > $b2;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    z0 := 1;
    goto block40;

  block40:
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} true;
    $b3 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 <= $b3;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    z0 := 0;
    goto block41;

  block41:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    $return := z0;
    goto block42;

  block42:
    return;

  anon8_Then:
    assume {:partition} $b3 < 0;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block41;

  anon7_Then:
    assume {:partition} $b2 >= 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block40;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b3: int;
  var l0: int;
  var l1: int;
  var $b2: int;
  var z0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 34, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} true;
    $b2 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 <= $b2;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    z0 := 1;
    goto block43;

  block43:
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} true;
    $b3 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 > $b3;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    z0 := 0;
    goto block44;

  block44:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    $return := z0;
    goto block45;

  block45:
    return;

  anon8_Then:
    assume {:partition} $b3 >= 0;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block44;

  anon7_Then:
    assume {:partition} $b2 < 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block43;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var $b3: int;
  var l0: int;
  var z0: int;
  var l1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 41, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} true;
    $b2 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 >= $b2;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    z0 := 1;
    goto block46;

  block46:
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} true;
    $b3 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 < $b3;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    z0 := 0;
    goto block47;

  block47:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    $return := z0;
    goto block48;

  block48:
    return;

  anon8_Then:
    assume {:partition} $b3 <= 0;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block47;

  anon7_Then:
    assume {:partition} $b2 > 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block46;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var l0: int;
  var $b3: int;
  var z0: int;
  var l1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 48, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    $b2 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    z0 := 1;
    goto block49;

  block49:
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    $b3 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    z0 := 0;
    goto block50;

  block50:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    $return := z0;
    goto block51;

  block51:
    return;

  anon8_Then:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block50;

  anon7_Then:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto block49;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var l0: int;
  var $b3: int;
  var l1: int;
  var z0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 55, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    $b2 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    z0 := 1;
    goto block52;

  block52:
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    $b3 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    z0 := 0;
    goto block53;

  block53:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    $return := z0;
    goto block54;

  block54:
    return;

  anon8_Then:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto block53;

  anon7_Then:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block52;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var d1: int;
  var $b0: int;
  var d0: int;
  var $b1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 62, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} true;
    $b0 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 < $b0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    z0 := 1;
    goto block55;

  block55:
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} true;
    $b1 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 >= $b1;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    z0 := 0;
    goto block56;

  block56:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    $return := z0;
    goto block57;

  block57:
    return;

  anon8_Then:
    assume {:partition} $b1 > 0;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "thenblock"} true;
    goto block56;

  anon7_Then:
    assume {:partition} $b0 <= 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "thenblock"} true;
    goto block55;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b0: int;
  var $b1: int;
  var d0: int;
  var d1: int;
  var z0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 69, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} true;
    $b0 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 > $b0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    z0 := 1;
    goto block58;

  block58:
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} true;
    $b1 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 <= $b1;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    z0 := 0;
    goto block59;

  block59:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    $return := z0;
    goto block60;

  block60:
    return;

  anon8_Then:
    assume {:partition} $b1 < 0;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block59;

  anon7_Then:
    assume {:partition} $b0 >= 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block58;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d1: int;
  var d0: int;
  var $b1: int;
  var $b0: int;
  var z0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 76, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} true;
    $b0 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 <= $b0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    z0 := 1;
    goto block61;

  block61:
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} true;
    $b1 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 > $b1;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    z0 := 0;
    goto block62;

  block62:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    $return := z0;
    goto block63;

  block63:
    return;

  anon8_Then:
    assume {:partition} $b1 >= 0;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block62;

  anon7_Then:
    assume {:partition} $b0 < 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block61;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b0: int;
  var d0: int;
  var $b1: int;
  var d1: int;
  var z0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 83, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} true;
    $b0 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 >= $b0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    z0 := 1;
    goto block64;

  block64:
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} true;
    $b1 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 < $b1;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    z0 := 0;
    goto block65;

  block65:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    $return := z0;
    goto block66;

  block66:
    return;

  anon8_Then:
    assume {:partition} $b1 <= 0;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "thenblock"} true;
    goto block65;

  anon7_Then:
    assume {:partition} $b0 > 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block64;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var d1: int;
  var $b0: int;
  var z0: int;
  var $b1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 90, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} true;
    $b0 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    z0 := 1;
    goto block67;

  block67:
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} true;
    $b1 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    z0 := 0;
    goto block68;

  block68:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    $return := z0;
    goto block69;

  block69:
    return;

  anon8_Then:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "thenblock"} true;
    goto block68;

  anon7_Then:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "thenblock"} true;
    goto block67;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b1: int;
  var $b0: int;
  var d0: int;
  var z0: int;
  var d1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 97, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} true;
    $b0 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    z0 := 1;
    goto block70;

  block70:
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} true;
    $b1 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    z0 := 0;
    goto block71;

  block71:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    $return := z0;
    goto block72;

  block72:
    return;

  anon8_Then:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "thenblock"} true;
    goto block71;

  anon7_Then:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "thenblock"} true;
    goto block70;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var r0: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
    assume $heap[$in_parameter__0, $type] <: java.lang.Object;
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 104, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 1;
    goto block73;

  block73:
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 0;
    goto block74;

  block74:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    $return := z0;
    goto block75;

  block75:
    return;

  anon8_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block74;

  anon7_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block73;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var r1: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
    assume $heap[$in_parameter__0, $type] <: java.lang.Object;
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 111, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 1;
    goto block76;

  block76:
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 0;
    goto block77;

  block77:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    $return := z0;
    goto block78;

  block78:
    return;

  anon8_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block77;

  anon7_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block76;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var z0: int;
  var r2: ref;
  var r0: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$return, $type] <: java.lang.Object;
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
    assume $heap[$in_parameter__2, $type] <: java.lang.Object;
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    r2 := $null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r0;
    goto block79;

  block79:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r1;
    goto block80;

  block80:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    $return := r2;
    goto block81;

  block81:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block80;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block79;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation TokenHandler$unsafe_isEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block18(in_$return: int, 
    in_$exception: ref, 
    in_$r9: ref, 
    in_$r15: ref, 
    in_$r13: ref, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_2: ref, 
    in_$b2: int, 
    in_$r10: ref, 
    in_z0: int, 
    in_i0: int, 
    in_r1: ref, 
    in_$fakelocal_5: ref, 
    in_$r8: ref, 
    in_$r6: ref, 
    in_$r11: ref, 
    in_$fakelocal_6: ref, 
    in_z2: int, 
    in_$r12: ref, 
    in_$l5: int, 
    in_$fakelocal_4: ref, 
    in_$b3: int, 
    in_$fakelocal_7: ref, 
    in_$r14: ref, 
    in_$r7: ref, 
    in_$l4: int, 
    in_r0: ref, 
    in_z3: int, 
    in_i6: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$r9: ref, 
    out_$r15: ref, 
    out_$r13: ref, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_2: ref, 
    out_$b2: int, 
    out_$r10: ref, 
    out_z0: int, 
    out_$fakelocal_5: ref, 
    out_$r8: ref, 
    out_$r6: ref, 
    out_$r11: ref, 
    out_$fakelocal_6: ref, 
    out_z2: int, 
    out_$r12: ref, 
    out_$l5: int, 
    out_$fakelocal_4: ref, 
    out_$b3: int, 
    out_$fakelocal_7: ref, 
    out_$r14: ref, 
    out_$r7: ref, 
    out_$l4: int, 
    out_z3: int, 
    out_i6: int)
{

  entry:
    out_$return, out_$exception, out_$r9, out_$r15, out_$r13, out_$fakelocal_3, out_$fakelocal_2, out_$b2, out_$r10, out_z0, out_$fakelocal_5, out_$r8, out_$r6, out_$r11, out_$fakelocal_6, out_z2, out_$r12, out_$l5, out_$fakelocal_4, out_$b3, out_$fakelocal_7, out_$r14, out_$r7, out_$l4, out_z3, out_i6 := in_$return, in_$exception, in_$r9, in_$r15, in_$r13, in_$fakelocal_3, in_$fakelocal_2, in_$b2, in_$r10, in_z0, in_$fakelocal_5, in_$r8, in_$r6, in_$r11, in_$fakelocal_6, in_z2, in_$r12, in_$l5, in_$fakelocal_4, in_$b3, in_$fakelocal_7, in_$r14, in_$r7, in_$l4, in_z3, in_i6;
    goto block18;

  block18:
    assert {:sourceloc "TokenHandler.java", 114, -1, -1, -1} true;
    goto anon51_Then, anon51_Else;

  anon51_Then:
    assume {:partition} out_i6 >= in_i0;
    assert {:sourceloc "TokenHandler.java", 114, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$r9, out_$r15, out_$r13, out_$fakelocal_3, out_$fakelocal_2, out_$b2, out_$r10, out_z0, out_$fakelocal_5, out_$r8, out_$r6, out_$r11, out_$fakelocal_6, out_z2, out_$r12, out_$l5, out_$fakelocal_4, out_$b3, out_$fakelocal_7, out_$r14, out_$r7, out_$l4, out_z3, out_i6 := in_$return, in_$exception, in_$r9, in_$r15, in_$r13, in_$fakelocal_3, in_$fakelocal_2, in_$b2, in_$r10, in_z0, in_$fakelocal_5, in_$r8, in_$r6, in_$r11, in_$fakelocal_6, in_z2, in_$r12, in_$l5, in_$fakelocal_4, in_$b3, in_$fakelocal_7, in_$r14, in_$r7, in_$l4, in_z3, in_i6;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon38:
    call out_z3, out_$exception := java.lang.Boolean$booleanValue$(out_$r15);
    assert {:sourceloc "TokenHandler.java", 114, -1, -1, -1} true;
    out_i6 := out_i6 + 1;
    assert {:sourceloc "TokenHandler.java", 114, -1, -1, -1} true;
    goto anon38_dummy;

  anon57_Then:
    assume {:partition} out_$r15 != $null;
    out_$exception := out_$exception;
    goto anon38;

  anon35:
    out_$r15 := out_$r14;
    assert {:sourceloc "TokenHandler.java", 119, -1, -1, -1} true;
    goto anon57_Then, anon57_Else;

  anon57_Else:
    assume {:partition} out_$r15 == $null;
    call out_$fakelocal_7 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_7;
    out_$return, out_$exception, out_$r9, out_$r15, out_$r13, out_$fakelocal_3, out_$fakelocal_2, out_$b2, out_$r10, out_z0, out_$fakelocal_5, out_$r8, out_$r6, out_$r11, out_$fakelocal_6, out_z2, out_$r12, out_$l5, out_$fakelocal_4, out_$b3, out_$fakelocal_7, out_$r14, out_$r7, out_$l4, out_z3, out_i6 := in_$return, in_$exception, in_$r9, in_$r15, in_$r13, in_$fakelocal_3, in_$fakelocal_2, in_$b2, in_$r10, in_z0, in_$fakelocal_5, in_$r8, in_$r6, in_$r11, in_$fakelocal_6, in_z2, in_$r12, in_$l5, in_$fakelocal_4, in_$b3, in_$fakelocal_7, in_$r14, in_$r7, in_$l4, in_z3, in_i6;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon56_Then:
    assume {:partition} $heap[out_$r14, $type] <: java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon35;

  anon32:
    call out_z2, out_$exception := java.lang.Boolean$booleanValue$(out_$r11);
    assert {:sourceloc "TokenHandler.java", 119, -1, -1, -1} true;
    call out_$r12, out_$exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "TokenHandler.java", 119, -1, -1, -1} true;
    call out_$r13, out_$exception := java.lang.Boolean$valueOf$boolean(out_z3);
    assert {:sourceloc "TokenHandler.java", 119, -1, -1, -1} true;
    call out_$r14, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z0, out_$r12, out_$r13);
    assert {:sourceloc "TokenHandler.java", 119, -1, -1, -1} true;
    goto anon56_Then, anon56_Else;

  anon56_Else:
    assume {:partition} !($heap[out_$r14, $type] <: java.lang.Boolean);
    call out_$fakelocal_6 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_6;
    out_$return, out_$exception, out_$r9, out_$r15, out_$r13, out_$fakelocal_3, out_$fakelocal_2, out_$b2, out_$r10, out_z0, out_$fakelocal_5, out_$r8, out_$r6, out_$r11, out_$fakelocal_6, out_z2, out_$r12, out_$l5, out_$fakelocal_4, out_$b3, out_$fakelocal_7, out_$r14, out_$r7, out_$l4, out_z3, out_i6 := in_$return, in_$exception, in_$r9, in_$r15, in_$r13, in_$fakelocal_3, in_$fakelocal_2, in_$b2, in_$r10, in_z0, in_$fakelocal_5, in_$r8, in_$r6, in_$r11, in_$fakelocal_6, in_z2, in_$r12, in_$l5, in_$fakelocal_4, in_$b3, in_$fakelocal_7, in_$r14, in_$r7, in_$l4, in_z3, in_i6;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon55_Then:
    assume {:partition} out_$r11 != $null;
    out_$exception := out_$exception;
    goto anon32;

  anon29:
    out_$r11 := out_$r10;
    assert {:sourceloc "TokenHandler.java", 118, -1, -1, -1} true;
    goto anon55_Then, anon55_Else;

  anon55_Else:
    assume {:partition} out_$r11 == $null;
    call out_$fakelocal_5 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$r9, out_$r15, out_$r13, out_$fakelocal_3, out_$fakelocal_2, out_$b2, out_$r10, out_z0, out_$fakelocal_5, out_$r8, out_$r6, out_$r11, out_$fakelocal_6, out_z2, out_$r12, out_$l5, out_$fakelocal_4, out_$b3, out_$fakelocal_7, out_$r14, out_$r7, out_$l4, out_z3, out_i6 := in_$return, in_$exception, in_$r9, in_$r15, in_$r13, in_$fakelocal_3, in_$fakelocal_2, in_$b2, in_$r10, in_z0, in_$fakelocal_5, in_$r8, in_$r6, in_$r11, in_$fakelocal_6, in_z2, in_$r12, in_$l5, in_$fakelocal_4, in_$b3, in_$fakelocal_7, in_$r14, in_$r7, in_$l4, in_z3, in_i6;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon54_Then:
    assume {:partition} $heap[out_$r10, $type] <: java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon29;

  anon26:
    out_$b3 := $intArrHeap[in_r1][out_i6];
    assert {:sourceloc "TokenHandler.java", 117, -1, -1, -1} true;
    out_$l4 := out_$b3;
    assert {:sourceloc "TokenHandler.java", 117, -1, -1, -1} true;
    call out_z0, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long(out_$l5, out_$l4);
    assert {:sourceloc "TokenHandler.java", 118, -1, -1, -1} true;
    call out_$r6, out_$exception := java.lang.Boolean$valueOf$boolean(out_z2);
    assert {:sourceloc "TokenHandler.java", 118, -1, -1, -1} true;
    call out_$r7, out_$exception := java.lang.Boolean$valueOf$boolean(0);
    assert {:sourceloc "TokenHandler.java", 118, -1, -1, -1} true;
    call out_$r8, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z3, out_$r6, out_$r7);
    assert {:sourceloc "TokenHandler.java", 118, -1, -1, -1} true;
    call out_$r9, out_$exception := java.lang.Boolean$valueOf$boolean(out_z2);
    assert {:sourceloc "TokenHandler.java", 118, -1, -1, -1} true;
    call out_$r10, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z0, out_$r8, out_$r9);
    assert {:sourceloc "TokenHandler.java", 118, -1, -1, -1} true;
    goto anon54_Then, anon54_Else;

  anon54_Else:
    assume {:partition} !($heap[out_$r10, $type] <: java.lang.Boolean);
    call out_$fakelocal_4 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$r9, out_$r15, out_$r13, out_$fakelocal_3, out_$fakelocal_2, out_$b2, out_$r10, out_z0, out_$fakelocal_5, out_$r8, out_$r6, out_$r11, out_$fakelocal_6, out_z2, out_$r12, out_$l5, out_$fakelocal_4, out_$b3, out_$fakelocal_7, out_$r14, out_$r7, out_$l4, out_z3, out_i6 := in_$return, in_$exception, in_$r9, in_$r15, in_$r13, in_$fakelocal_3, in_$fakelocal_2, in_$b2, in_$r10, in_z0, in_$fakelocal_5, in_$r8, in_$r6, in_$r11, in_$fakelocal_6, in_z2, in_$r12, in_$l5, in_$fakelocal_4, in_$b3, in_$fakelocal_7, in_$r14, in_$r7, in_$l4, in_z3, in_i6;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon53_Then:
    assume {:partition} out_i6 < $arrSizeHeap[in_r1] && out_i6 >= 0;
    out_$exception := out_$exception;
    goto anon26;

  anon23:
    out_$b2 := $intArrHeap[in_r0][out_i6];
    assert {:sourceloc "TokenHandler.java", 117, -1, -1, -1} true;
    out_$l5 := out_$b2;
    assert {:sourceloc "TokenHandler.java", 117, -1, -1, -1} true;
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} !(out_i6 < $arrSizeHeap[in_r1] && out_i6 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$r9, out_$r15, out_$r13, out_$fakelocal_3, out_$fakelocal_2, out_$b2, out_$r10, out_z0, out_$fakelocal_5, out_$r8, out_$r6, out_$r11, out_$fakelocal_6, out_z2, out_$r12, out_$l5, out_$fakelocal_4, out_$b3, out_$fakelocal_7, out_$r14, out_$r7, out_$l4, out_z3, out_i6 := in_$return, in_$exception, in_$r9, in_$r15, in_$r13, in_$fakelocal_3, in_$fakelocal_2, in_$b2, in_$r10, in_z0, in_$fakelocal_5, in_$r8, in_$r6, in_$r11, in_$fakelocal_6, in_z2, in_$r12, in_$l5, in_$fakelocal_4, in_$b3, in_$fakelocal_7, in_$r14, in_$r7, in_$l4, in_z3, in_i6;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon52_Then:
    assume {:partition} out_i6 < $arrSizeHeap[in_r0] && out_i6 >= 0;
    out_$exception := out_$exception;
    goto anon23;

  anon20:
    assert {:sourceloc "TokenHandler.java", 117, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} !(out_i6 < $arrSizeHeap[in_r0] && out_i6 >= 0);
    call out_$fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$r9, out_$r15, out_$r13, out_$fakelocal_3, out_$fakelocal_2, out_$b2, out_$r10, out_z0, out_$fakelocal_5, out_$r8, out_$r6, out_$r11, out_$fakelocal_6, out_z2, out_$r12, out_$l5, out_$fakelocal_4, out_$b3, out_$fakelocal_7, out_$r14, out_$r7, out_$l4, out_z3, out_i6 := in_$return, in_$exception, in_$r9, in_$r15, in_$r13, in_$fakelocal_3, in_$fakelocal_2, in_$b2, in_$r10, in_z0, in_$fakelocal_5, in_$r8, in_$r6, in_$r11, in_$fakelocal_6, in_z2, in_$r12, in_$l5, in_$fakelocal_4, in_$b3, in_$fakelocal_7, in_$r14, in_$r7, in_$l4, in_z3, in_i6;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon51_Else:
    assume {:partition} in_i0 > out_i6;
    assert {:sourceloc "TokenHandler.java", 114, -1, -1, -1} {:comment "elseblock"} true;
    goto anon20;

  anon38_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$r9, out_$r15, out_$r13, out_$fakelocal_3, out_$fakelocal_2, out_$b2, out_$r10, out_z0, out_$fakelocal_5, out_$r8, out_$r6, out_$r11, out_$fakelocal_6, out_z2, out_$r12, out_$l5, out_$fakelocal_4, out_$b3, out_$fakelocal_7, out_$r14, out_$r7, out_$l4, out_z3, out_i6 := TokenHandler$unsafe_isEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block18(out_$return, out_$exception, out_$r9, out_$r15, out_$r13, out_$fakelocal_3, out_$fakelocal_2, out_$b2, out_$r10, out_z0, in_i0, in_r1, out_$fakelocal_5, out_$r8, out_$r6, out_$r11, out_$fakelocal_6, out_z2, out_$r12, out_$l5, out_$fakelocal_4, out_$b3, out_$fakelocal_7, out_$r14, out_$r7, out_$l4, in_r0, out_z3, out_i6);
    return;

  exit:
    return;
}



procedure TokenHandler$unsafe_isEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block18(in_$return: int, 
    in_$exception: ref, 
    in_$r9: ref, 
    in_$r15: ref, 
    in_$r13: ref, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_2: ref, 
    in_$b2: int, 
    in_$r10: ref, 
    in_z0: int, 
    in_i0: int, 
    in_r1: ref, 
    in_$fakelocal_5: ref, 
    in_$r8: ref, 
    in_$r6: ref, 
    in_$r11: ref, 
    in_$fakelocal_6: ref, 
    in_z2: int, 
    in_$r12: ref, 
    in_$l5: int, 
    in_$fakelocal_4: ref, 
    in_$b3: int, 
    in_$fakelocal_7: ref, 
    in_$r14: ref, 
    in_$r7: ref, 
    in_$l4: int, 
    in_r0: ref, 
    in_z3: int, 
    in_i6: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$r9: ref, 
    out_$r15: ref, 
    out_$r13: ref, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_2: ref, 
    out_$b2: int, 
    out_$r10: ref, 
    out_z0: int, 
    out_$fakelocal_5: ref, 
    out_$r8: ref, 
    out_$r6: ref, 
    out_$r11: ref, 
    out_$fakelocal_6: ref, 
    out_z2: int, 
    out_$r12: ref, 
    out_$l5: int, 
    out_$fakelocal_4: ref, 
    out_$b3: int, 
    out_$fakelocal_7: ref, 
    out_$r14: ref, 
    out_$r7: ref, 
    out_$l4: int, 
    out_z3: int, 
    out_i6: int);
  modifies $objIndex, $heap;


