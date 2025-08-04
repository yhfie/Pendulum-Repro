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

const unique $StringConst3: ref extends complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique com.fasterxml.jackson.databind.ObjectMapper: javaType extends complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique com.fasterxml.jackson.core.JsonProcessingException: javaType extends complete;

const {:sourceloc "TokenHandler.java", -1, -1, -1, -1} unique java.lang.ClassCastException: javaType extends unique java.lang.RuntimeException complete;

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
  ensures !old($heap[$obj, $alloc]);
  ensures $objIndex == old($objIndex) + 1;
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];
  ensures $obj != $null;
  ensures $obj == $intToRef(old($objIndex));



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $heap[$other, $type] == $heap[$this, $type];
  ensures $heap[$other, $alloc] <==> true;
  ensures $other != $null;



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



implementation TokenHandler$$la$init$ra$$byte$lp$$rp$_boolean($this: ref, $in_parameter__0: ref, $in_parameter__1: int)
   returns ($exception: ref)
{
  var $fakelocal_1: ref;
  var $r11: ref;
  var $r10: ref;
  var r1: ref;
  var $fakelocal_3: ref;
  var r0: ref;
  var $r7: ref;
  var $fakelocal_2: ref;
  var z0: int;
  var $r9: ref;
  var $r3: ref;
  var $fakelocal_4: ref;
  var $r6: ref;
  var $r4: ref;
  var r2: ref;
  var $r5: ref;
  var $fakelocal_5: ref;
  var $r8: ref;
  var $fakelocal_0: ref;
  var $r12: ref;

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
    assert {:sourceloc "TokenHandler.java", 23, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    goto block1;

  block1:
    assert {:sourceloc "TokenHandler.java", 25, -1, -1, -1} true;
    call $r3, $exception := javax.crypto.Mac$getInstance$java.lang.String($StringConst0);
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} $exception == $null;
    goto anon4;

  anon4:
    assert {:sourceloc "TokenHandler.java", 25, -1, -1, -1} true;
    $heap := $heap[r0, javax.crypto.Mac$TokenHandler$hmac262 := $r3];
    assert {:sourceloc "TokenHandler.java", 26, -1, -1, -1} true;
    $r5 := $heap[r0, javax.crypto.Mac$TokenHandler$hmac262];
    assert {:sourceloc "TokenHandler.java", 26, -1, -1, -1} true;
    call $fakelocal_0 := $new(javax.crypto.spec.SecretKeySpec);
    $r4 := $fakelocal_0;
    assert {:sourceloc "TokenHandler.java", 26, -1, -1, -1} true;
    call $exception := javax.crypto.spec.SecretKeySpec$$la$init$ra$$byte$lp$$rp$_java.lang.String($r4, r1, $StringConst0);
    goto anon23_Then, anon23_Else;

  anon23_Else:
    assume {:partition} $exception == $null;
    goto anon8;

  anon8:
    assert {:sourceloc "TokenHandler.java", 26, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 29, -1, -1, -1} true;
    goto block4;

  block4:
    assert {:sourceloc "TokenHandler.java", 30, -1, -1, -1} true;
    $heap := $heap[r0, boolean$TokenHandler$safeMode0 := z0];
    assert {:sourceloc "TokenHandler.java", 31, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 31, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r6 := $exception;
    assert {:sourceloc "TokenHandler.java", 27, -1, -1, -1} true;
    r2 := $r6;
    assert {:sourceloc "TokenHandler.java", 28, -1, -1, -1} true;
    call $fakelocal_2 := $new(java.lang.IllegalStateException);
    $r7 := $fakelocal_2;
    assert {:sourceloc "TokenHandler.java", 28, -1, -1, -1} true;
    call $fakelocal_3 := $new(java.lang.StringBuilder);
    $r8 := $fakelocal_3;
    assert {:sourceloc "TokenHandler.java", 28, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r8);
    assert {:sourceloc "TokenHandler.java", 28, -1, -1, -1} true;
    call $r9, $exception := java.lang.StringBuilder$append$java.lang.String($r8, $StringConst1);
    assert {:sourceloc "TokenHandler.java", 28, -1, -1, -1} true;
    call $r10, $exception := java.lang.Throwable$getMessage$(r2);
    assert {:sourceloc "TokenHandler.java", 28, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 28, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 28, -1, -1, -1} true;
    call $exception := java.lang.IllegalStateException$$la$init$ra$$java.lang.String_java.lang.Throwable($r7, $r12, r2);
    assert {:sourceloc "TokenHandler.java", 28, -1, -1, -1} true;
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
  var $r2: ref;
  var r0: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $heap[$this, $type] <: TokenHandler;
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: com.jdriven.stateless.security.User;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "TokenHandler.java", 37, -1, -1, -1} true;
    call $r2, $exception := TokenHandler$parseUserFromToken_unsafe$java.lang.String(r0, r1);
    assert {:sourceloc "TokenHandler.java", 37, -1, -1, -1} true;
    $return := $r2;
    goto block6;

  block6:
    return;
}



implementation TokenHandler$parseUserFromToken_unsafe$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r3: ref;
  var $fakelocal_5: ref;
  var $fakelocal_7: ref;
  var $fakelocal_2: ref;
  var r2: ref;
  var $fakelocal_1: ref;
  var $l3: int;
  var $r6: ref;
  var $r5: ref;
  var $r7: ref;
  var $b5: int;
  var $r8: ref;
  var $r11: ref;
  var r0: ref;
  var $r9: ref;
  var r1: ref;
  var $i1: int;
  var $fakelocal_3: ref;
  var $fakelocal_0: ref;
  var r4: ref;
  var $fakelocal_4: ref;
  var $i0: int;
  var $i2: int;
  var r12: ref;
  var $r10: ref;
  var $l4: int;
  var z0: int;
  var $fakelocal_6: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $heap[$this, $type] <: TokenHandler;
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: com.jdriven.stateless.security.User;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "TokenHandler.java", 65, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 66, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 66, -1, -1, -1} true;
    goto anon69_Then, anon69_Else;

  anon69_Else:
    assume {:partition} $i0 == 2;
    assert {:sourceloc "TokenHandler.java", 66, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "TokenHandler.java", 85, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 85, -1, -1, -1} true;
    $i1 := $stringSizeHeap[$r5];
    assert {:sourceloc "TokenHandler.java", 85, -1, -1, -1} true;
    goto anon71_Then, anon71_Else;

  anon71_Else:
    assume {:partition} 0 < $i1;
    assert {:sourceloc "TokenHandler.java", 85, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "TokenHandler.java", 85, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 85, -1, -1, -1} true;
    $i2 := $stringSizeHeap[$r6];
    assert {:sourceloc "TokenHandler.java", 85, -1, -1, -1} true;
    goto anon73_Then, anon73_Else;

  anon73_Else:
    assume {:partition} 0 < $i2;
    assert {:sourceloc "TokenHandler.java", 85, -1, -1, -1} {:comment "elseblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "TokenHandler.java", 68, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 68, -1, -1, -1} true;
    call r12, $exception := TokenHandler$fromBase64$java.lang.String(r0, $r7);
    goto anon75_Then, anon75_Else;

  anon75_Else:
    assume {:partition} $exception == $null;
    goto anon27;

  anon27:
    assert {:sourceloc "TokenHandler.java", 69, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 69, -1, -1, -1} true;
    call r3, $exception := TokenHandler$fromBase64$java.lang.String(r0, $r8);
    goto anon78_Then, anon78_Else;

  anon78_Else:
    assume {:partition} $exception == $null;
    goto anon34;

  anon34:
    assert {:sourceloc "TokenHandler.java", 73, -1, -1, -1} true;
    call $r9, $exception := TokenHandler$createHmac$byte$lp$$rp$(r0, r12);
    goto anon80_Then, anon80_Else;

  anon80_Else:
    assume {:partition} $exception == $null;
    goto anon38;

  anon38:
    assert {:sourceloc "TokenHandler.java", 73, -1, -1, -1} true;
    call z0, $exception := TokenHandler$unsafe_isEqual$byte$lp$$rp$_byte$lp$$rp$($r9, r3);
    goto anon82_Then, anon82_Else;

  anon82_Else:
    assume {:partition} $exception == $null;
    goto anon42;

  anon42:
    assert {:sourceloc "TokenHandler.java", 74, -1, -1, -1} true;
    goto anon84_Then, anon84_Else;

  anon84_Else:
    assume {:partition} z0 != 0;
    assert {:sourceloc "TokenHandler.java", 74, -1, -1, -1} {:comment "elseblock"} true;
    goto anon45;

  anon45:
    assert {:sourceloc "TokenHandler.java", 75, -1, -1, -1} true;
    call r4, $exception := TokenHandler$fromJSON$byte$lp$$rp$(r0, r12);
    goto anon85_Then, anon85_Else;

  anon85_Else:
    assume {:partition} $exception == $null;
    goto anon49;

  anon49:
    assert {:sourceloc "TokenHandler.java", 76, -1, -1, -1} true;
    call $fakelocal_6 := $new(java.util.Date);
    $r10 := $fakelocal_6;
    assert {:sourceloc "TokenHandler.java", 76, -1, -1, -1} true;
    call $exception := java.util.Date$$la$init$ra$$($r10);
    goto anon87_Then, anon87_Else;

  anon87_Else:
    assume {:partition} $exception == $null;
    goto anon53;

  anon53:
    assert {:sourceloc "TokenHandler.java", 76, -1, -1, -1} true;
    call $l3, $exception := java.util.Date$getTime$($r10);
    goto anon89_Then, anon89_Else;

  anon89_Else:
    assume {:partition} $exception == $null;
    goto anon57;

  anon57:
    assert {:sourceloc "TokenHandler.java", 76, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 76, -1, -1, -1} true;
    $b5 := $cmpInt($l3, $l4);
    assert {:sourceloc "TokenHandler.java", 76, -1, -1, -1} true;
    goto anon94_Then, anon94_Else;

  anon94_Else:
    assume {:partition} 0 > $b5;
    assert {:sourceloc "TokenHandler.java", 76, -1, -1, -1} {:comment "elseblock"} true;
    goto block12;

  block12:
    assert {:sourceloc "TokenHandler.java", 77, -1, -1, -1} true;
    $return := r4;
    goto block13;

  block13:
    return;

  anon94_Then:
    assume {:partition} $b5 >= 0;
    assert {:sourceloc "TokenHandler.java", 76, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  block11:
    assert {:sourceloc "TokenHandler.java", 79, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 77, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r11 := $exception;
    goto block7;

  block7:
    assert {:sourceloc "TokenHandler.java", 85, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 74, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "TokenHandler.java", 83, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 85, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  anon71_Then:
    assume {:partition} $i1 <= 0;
    assert {:sourceloc "TokenHandler.java", 85, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  anon69_Then:
    assume {:partition} $i0 != 2;
    assert {:sourceloc "TokenHandler.java", 66, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;
}



implementation TokenHandler$unsafe_isEqual$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var r0: ref;
  var $b3: int;
  var $fakelocal_3: ref;
  var i4: int;
  var $fakelocal_1: ref;
  var r1: ref;
  var $fakelocal_2: ref;
  var $fakelocal_0: ref;
  var i0: int;
  var $i1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "TokenHandler.java", 101, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "TokenHandler.java", 101, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "TokenHandler.java", 102, -1, -1, -1} true;
    $return := 1;
    goto block21;

  block21:
    return;

  anon30_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "TokenHandler.java", 101, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "TokenHandler.java", 103, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} r0 != $null;
    assert {:sourceloc "TokenHandler.java", 103, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "TokenHandler.java", 104, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} r1 == $null;
    assert {:sourceloc "TokenHandler.java", 104, -1, -1, -1} {:comment "elseblock"} true;
    goto block15;

  block15:
    assert {:sourceloc "TokenHandler.java", 104, -1, -1, -1} true;
    $return := 0;
    goto block21;

  anon32_Then:
    assume {:partition} r1 != $null;
    assert {:sourceloc "TokenHandler.java", 104, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  block16:
    assert {:sourceloc "TokenHandler.java", 106, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 107, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 107, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} $i1 != i0;
    assert {:sourceloc "TokenHandler.java", 107, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "TokenHandler.java", 108, -1, -1, -1} true;
    $return := 0;
    goto block21;

  anon35_Then:
    assume {:partition} $i1 == i0;
    assert {:sourceloc "TokenHandler.java", 107, -1, -1, -1} {:comment "thenblock"} true;
    goto block17;

  block17:
    assert {:sourceloc "TokenHandler.java", 110, -1, -1, -1} true;
    i4 := 0;
    goto block18;

  block18:
    call $return, $exception, $b2, $b3, $fakelocal_3, i4, $fakelocal_2 := TokenHandler$unsafe_isEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block18($return, $exception, $b2, r0, $b3, $fakelocal_3, i4, r1, $fakelocal_2, i0);
    goto block18_last;

  anon36_Else:
    assume {:partition} i0 > i4;
    assert {:sourceloc "TokenHandler.java", 110, -1, -1, -1} {:comment "elseblock"} true;
    goto anon20;

  anon20:
    assert {:sourceloc "TokenHandler.java", 111, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 111, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 111, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} $b3 != $b2;
    assert {:sourceloc "TokenHandler.java", 111, -1, -1, -1} {:comment "elseblock"} true;
    goto anon29;

  anon29:
    assert {:sourceloc "TokenHandler.java", 112, -1, -1, -1} true;
    $return := 0;
    goto block21;

  anon39_Then:
    assume {:partition} $b3 == $b2;
    assert {:sourceloc "TokenHandler.java", 111, -1, -1, -1} {:comment "thenblock"} true;
    goto block20;

  block20:
    assert {:sourceloc "TokenHandler.java", 110, -1, -1, -1} true;
    i4 := i4 + 1;
    assert {:sourceloc "TokenHandler.java", 110, -1, -1, -1} true;
    goto block20_dummy;

  anon36_Then:
    assume {:partition} i4 >= i0;
    assert {:sourceloc "TokenHandler.java", 110, -1, -1, -1} {:comment "thenblock"} true;
    goto block19;

  block19:
    assert {:sourceloc "TokenHandler.java", 114, -1, -1, -1} true;
    $return := 1;
    goto block21;

  anon31_Then:
    assume {:partition} r0 == $null;
    assert {:sourceloc "TokenHandler.java", 103, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  block20_dummy:
    assume false;
    return;

  block18_last:
    assert {:sourceloc "TokenHandler.java", 110, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;
}



implementation TokenHandler$createTokenForUser$com.jdriven.stateless.security.User($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r2: ref;
  var $r11: ref;
  var $fakelocal_2: ref;
  var $fakelocal_1: ref;
  var r1: ref;
  var $fakelocal_3: ref;
  var $r6: ref;
  var r4: ref;
  var $fakelocal_0: ref;
  var $r9: ref;
  var r3: ref;
  var $r5: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $heap[$this, $type] <: TokenHandler;
    assume {:sourceloc "TokenHandler.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: com.jdriven.stateless.security.User;
    assume $heap[$return, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "TokenHandler.java", 118, -1, -1, -1} true;
    call r2, $exception := TokenHandler$toJSON$com.jdriven.stateless.security.User(r0, r1);
    assert {:sourceloc "TokenHandler.java", 119, -1, -1, -1} true;
    call r3, $exception := TokenHandler$createHmac$byte$lp$$rp$(r0, r2);
    assert {:sourceloc "TokenHandler.java", 120, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r5 := $fakelocal_0;
    assert {:sourceloc "TokenHandler.java", 120, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$int($r5, 170);
    assert {:sourceloc "TokenHandler.java", 120, -1, -1, -1} true;
    r4 := $r5;
    assert {:sourceloc "TokenHandler.java", 121, -1, -1, -1} true;
    call $r6, $exception := TokenHandler$toBase64$byte$lp$$rp$(r0, r2);
    assert {:sourceloc "TokenHandler.java", 121, -1, -1, -1} true;
    call $fakelocal_1, $exception := java.lang.StringBuilder$append$java.lang.String(r4, $r6);
    assert {:sourceloc "TokenHandler.java", 122, -1, -1, -1} true;
    call $fakelocal_2, $exception := java.lang.StringBuilder$append$java.lang.String(r4, $StringConst3);
    assert {:sourceloc "TokenHandler.java", 123, -1, -1, -1} true;
    call $r9, $exception := TokenHandler$toBase64$byte$lp$$rp$(r0, r3);
    assert {:sourceloc "TokenHandler.java", 123, -1, -1, -1} true;
    call $fakelocal_3, $exception := java.lang.StringBuilder$append$java.lang.String(r4, $r9);
    assert {:sourceloc "TokenHandler.java", 124, -1, -1, -1} true;
    call $r11, $exception := java.lang.StringBuilder$toString$(r4);
    assert {:sourceloc "TokenHandler.java", 124, -1, -1, -1} true;
    $return := $r11;
    goto block22;

  block22:
    return;
}



implementation TokenHandler$fromJSON$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
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
    assume $heap[$return, $type] <: com.jdriven.stateless.security.User;
    $exception := $null;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "TokenHandler.java", 138, -1, -1, -1} true;
    $r2 := com.jdriven.stateless.security.User$TokenHandler$VALID_USER263;
    assert {:sourceloc "TokenHandler.java", 138, -1, -1, -1} true;
    $return := $r2;
    goto block23;

  block23:
    return;
}



implementation TokenHandler$toJSON$com.jdriven.stateless.security.User($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r8: ref;
  var $r4: ref;
  var $fakelocal_1: ref;
  var $r5: ref;
  var r9: ref;
  var r2: ref;
  var r0: ref;
  var r7: ref;
  var r1: ref;
  var $fakelocal_2: ref;
  var $fakelocal_0: ref;

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
    goto block24;

  block24:
    assert {:sourceloc "TokenHandler.java", 143, -1, -1, -1} true;
    call $fakelocal_0 := $new(com.fasterxml.jackson.databind.ObjectMapper);
    r7 := $fakelocal_0;
    assert {:sourceloc "TokenHandler.java", 143, -1, -1, -1} true;
    call $exception := com.fasterxml.jackson.databind.ObjectMapper$$la$init$ra$$(r7);
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} $exception == $null;
    goto anon4;

  anon4:
    assert {:sourceloc "TokenHandler.java", 143, -1, -1, -1} true;
    call $r4, $exception := com.fasterxml.jackson.databind.ObjectMapper$writeValueAsBytes$java.lang.Object(r7, r1);
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} $exception == $null;
    goto block26;

  block26:
    assert {:sourceloc "TokenHandler.java", 143, -1, -1, -1} true;
    $return := $r4;
    goto block27;

  block27:
    return;

  anon13_Then:
    assume {:partition} $exception != $null;
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !($heap[$exception, $type] <: com.fasterxml.jackson.core.JsonProcessingException);
    assert {:clone} true;
    goto block26;

  anon14_Then:
    assume {:partition} $heap[$exception, $type] <: com.fasterxml.jackson.core.JsonProcessingException;
    assert {:clone} true;
    goto block25;

  block25:
    assert {:sourceloc "TokenHandler.java", 143, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r5 := $exception;
    assert {:sourceloc "TokenHandler.java", 144, -1, -1, -1} true;
    r2 := $r5;
    assert {:sourceloc "TokenHandler.java", 145, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 145, -1, -1, -1} true;
    call $exception := java.lang.IllegalStateException$$la$init$ra$$java.lang.Throwable(r8, r9);
    assert {:sourceloc "TokenHandler.java", 145, -1, -1, -1} true;
    $exception := r8;
    goto block27;

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
    goto block25;
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
    assert {:sourceloc "TokenHandler.java", 150, -1, -1, -1} true;
    call $r2, $exception := javax.xml.bind.DatatypeConverter$printBase64Binary$byte$lp$$rp$(r1);
    assert {:sourceloc "TokenHandler.java", 150, -1, -1, -1} true;
    $return := $r2;
    goto block28;

  block28:
    return;
}



implementation TokenHandler$fromBase64$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
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
    $exception := $null;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "TokenHandler.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "TokenHandler.java", 154, -1, -1, -1} true;
    call $r2, $exception := javax.xml.bind.DatatypeConverter$parseBase64Binary$java.lang.String(r1);
    assert {:sourceloc "TokenHandler.java", 154, -1, -1, -1} true;
    $return := $r2;
    goto block29;

  block29:
    return;
}



implementation TokenHandler$createHmac$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var $r2: ref;
  var r1: ref;
  var $r3: ref;
  var r0: ref;

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
    assert {:sourceloc "TokenHandler.java", 159, -1, -1, -1} true;
    $r2 := $heap[r0, javax.crypto.Mac$TokenHandler$hmac262];
    assert {:sourceloc "TokenHandler.java", 159, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 159, -1, -1, -1} true;
    $return := $r3;
    goto block30;

  block30:
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
  var $l1: int;
  var $r1: ref;
  var $r2: ref;
  var $l0: int;
  var $fakelocal_1: ref;
  var $fakelocal_2: ref;
  var $r0: ref;
  var $fakelocal_0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "TokenHandler.java", 128, -1, -1, -1} true;
    call $fakelocal_0 := $new(com.jdriven.stateless.security.User);
    $r0 := $fakelocal_0;
    assert {:sourceloc "TokenHandler.java", 128, -1, -1, -1} true;
    call $exception := com.jdriven.stateless.security.User$$la$init$ra$$($r0);
    assert {:sourceloc "TokenHandler.java", 128, -1, -1, -1} true;
    com.jdriven.stateless.security.User$TokenHandler$VALID_USER263 := $r0;
    assert {:sourceloc "TokenHandler.java", 130, -1, -1, -1} true;
    $r2 := com.jdriven.stateless.security.User$TokenHandler$VALID_USER263;
    assert {:sourceloc "TokenHandler.java", 130, -1, -1, -1} true;
    call $fakelocal_1 := $new(java.util.Date);
    $r1 := $fakelocal_1;
    assert {:sourceloc "TokenHandler.java", 130, -1, -1, -1} true;
    call $exception := java.util.Date$$la$init$ra$$($r1);
    assert {:sourceloc "TokenHandler.java", 130, -1, -1, -1} true;
    call $l0, $exception := java.util.Date$getTime$($r1);
    assert {:sourceloc "TokenHandler.java", 130, -1, -1, -1} true;
    $l1 := $l0 + 100000;
    assert {:sourceloc "TokenHandler.java", 130, -1, -1, -1} true;
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
    assert {:sourceloc "TokenHandler.java", 131, -1, -1, -1} true;
    goto block31;

  block31:
    return;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation TokenHandler$unsafe_isEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block18(in_$return: int, 
    in_$exception: ref, 
    in_$b2: int, 
    in_r0: ref, 
    in_$b3: int, 
    in_$fakelocal_3: ref, 
    in_i4: int, 
    in_r1: ref, 
    in_$fakelocal_2: ref, 
    in_i0: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$b2: int, 
    out_$b3: int, 
    out_$fakelocal_3: ref, 
    out_i4: int, 
    out_$fakelocal_2: ref)
{

  entry:
    out_$return, out_$exception, out_$b2, out_$b3, out_$fakelocal_3, out_i4, out_$fakelocal_2 := in_$return, in_$exception, in_$b2, in_$b3, in_$fakelocal_3, in_i4, in_$fakelocal_2;
    goto block18;

  block18:
    assert {:sourceloc "TokenHandler.java", 110, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Then:
    assume {:partition} out_i4 >= in_i0;
    assert {:sourceloc "TokenHandler.java", 110, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$b2, out_$b3, out_$fakelocal_3, out_i4, out_$fakelocal_2 := in_$return, in_$exception, in_$b2, in_$b3, in_$fakelocal_3, in_i4, in_$fakelocal_2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  block20:
    assert {:sourceloc "TokenHandler.java", 110, -1, -1, -1} true;
    out_i4 := out_i4 + 1;
    assert {:sourceloc "TokenHandler.java", 110, -1, -1, -1} true;
    goto block20_dummy;

  anon39_Then:
    assume {:partition} out_$b3 == out_$b2;
    assert {:sourceloc "TokenHandler.java", 111, -1, -1, -1} {:comment "thenblock"} true;
    goto block20;

  anon26:
    out_$b2 := $intArrHeap[in_r1][out_i4];
    assert {:sourceloc "TokenHandler.java", 111, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} out_$b3 != out_$b2;
    assert {:sourceloc "TokenHandler.java", 111, -1, -1, -1} {:comment "elseblock"} true;
    out_$return, out_$exception, out_$b2, out_$b3, out_$fakelocal_3, out_i4, out_$fakelocal_2 := in_$return, in_$exception, in_$b2, in_$b3, in_$fakelocal_3, in_i4, in_$fakelocal_2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon38_Then:
    assume {:partition} out_i4 < $arrSizeHeap[in_r1] && out_i4 >= 0;
    out_$exception := out_$exception;
    goto anon26;

  anon23:
    out_$b3 := $intArrHeap[in_r0][out_i4];
    assert {:sourceloc "TokenHandler.java", 111, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} !(out_i4 < $arrSizeHeap[in_r1] && out_i4 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$b2, out_$b3, out_$fakelocal_3, out_i4, out_$fakelocal_2 := in_$return, in_$exception, in_$b2, in_$b3, in_$fakelocal_3, in_i4, in_$fakelocal_2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon37_Then:
    assume {:partition} out_i4 < $arrSizeHeap[in_r0] && out_i4 >= 0;
    out_$exception := out_$exception;
    goto anon23;

  anon20:
    assert {:sourceloc "TokenHandler.java", 111, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon37_Else:
    assume {:partition} !(out_i4 < $arrSizeHeap[in_r0] && out_i4 >= 0);
    call out_$fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$b2, out_$b3, out_$fakelocal_3, out_i4, out_$fakelocal_2 := in_$return, in_$exception, in_$b2, in_$b3, in_$fakelocal_3, in_i4, in_$fakelocal_2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon36_Else:
    assume {:partition} in_i0 > out_i4;
    assert {:sourceloc "TokenHandler.java", 110, -1, -1, -1} {:comment "elseblock"} true;
    goto anon20;

  block20_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$b2, out_$b3, out_$fakelocal_3, out_i4, out_$fakelocal_2 := TokenHandler$unsafe_isEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block18(out_$return, out_$exception, out_$b2, in_r0, out_$b3, out_$fakelocal_3, out_i4, in_r1, out_$fakelocal_2, in_i0);
    return;

  exit:
    return;
}



procedure TokenHandler$unsafe_isEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block18(in_$return: int, 
    in_$exception: ref, 
    in_$b2: int, 
    in_r0: ref, 
    in_$b3: int, 
    in_$fakelocal_3: ref, 
    in_i4: int, 
    in_r1: ref, 
    in_$fakelocal_2: ref, 
    in_i0: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$b2: int, 
    out_$b3: int, 
    out_$fakelocal_3: ref, 
    out_i4: int, 
    out_$fakelocal_2: ref);
  modifies $objIndex, $heap;


