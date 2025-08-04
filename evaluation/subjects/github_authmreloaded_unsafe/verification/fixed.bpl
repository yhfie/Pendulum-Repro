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

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique java.lang.Object: javaType extends complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique fr.xephi.authme.security.crypts.EncryptionMethod: javaType extends complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique fr.xephi.authme.security.crypts.UnsaltedMethod: javaType extends unique java.lang.Object, fr.xephi.authme.security.crypts.EncryptionMethod complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique java.io.Serializable: javaType extends complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique java.lang.Comparable: javaType extends complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique java.lang.CharSequence: javaType extends complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique fr.xephi.authme.security.crypts.HashedPassword: javaType extends complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique java.lang.Throwable: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique java.lang.Exception: javaType extends unique java.lang.Throwable complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique java.lang.RuntimeException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique java.lang.ClassCastException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique java.lang.IndexOutOfBoundsException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique java.lang.ArrayIndexOutOfBoundsException: javaType extends unique java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique sg.edu.nus.comp.tsunami.safe.Safe: javaType extends unique java.lang.Object complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique java.lang.NullPointerException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.String: javaType extends unique java.lang.Object complete;

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

var boolean$fr.xephi.authme.security.crypts.UnsaltedMethod$safeMode0: Field int;

var char$lp$$rp$$java.lang.String$chars300: Field ref;

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
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];
  ensures !old($heap[$obj, $alloc]);
  ensures $objIndex == old($objIndex) + 1;
  ensures $obj == $intToRef(old($objIndex));
  ensures $obj != $null;



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $heap[$other, $type] == $heap[$this, $type];
  ensures $other != $null;
  ensures $heap[$other, $alloc] <==> true;



procedure int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure fr.xephi.authme.security.crypts.UnsaltedMethod$$la$init$ra$$($this: ref) returns ($exception: ref);
  modifies $heap;



procedure java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $heap;



procedure fr.xephi.authme.security.crypts.HashedPassword$$la$init$ra$$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String_java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);
  modifies $heap;



procedure fr.xephi.authme.security.crypts.UnsaltedMethod$comparePassword$java.lang.String_fr.xephi.authme.security.crypts.HashedPassword_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure fr.xephi.authme.security.crypts.HashedPassword$getHash$($this: ref) returns ($return: ref, $exception: ref);



procedure fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure fr.xephi.authme.security.crypts.UnsaltedMethod$generateSalt$($this: ref) returns ($return: ref, $exception: ref);



procedure fr.xephi.authme.security.crypts.UnsaltedMethod$hasSeparateSalt$($this: ref) returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);



procedure fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.String$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.String$toCharArray$($this: ref) returns ($return: ref, $exception: ref);



procedure java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies $heap;



procedure java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



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



implementation fr.xephi.authme.security.crypts.UnsaltedMethod$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $heap[$this, $type] <: fr.xephi.authme.security.crypts.UnsaltedMethod;
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "UnsaltedMethod.java", 20, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "UnsaltedMethod.java", 23, -1, -1, -1} true;
    $heap := $heap[r0, boolean$fr.xephi.authme.security.crypts.UnsaltedMethod$safeMode0 := 0];
    assert {:sourceloc "UnsaltedMethod.java", 23, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var r0: ref;
  var $r3: ref;
  var $r4: ref;
  var r2: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $heap[$this, $type] <: fr.xephi.authme.security.crypts.UnsaltedMethod;
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    assume $heap[$in_parameter__1, $type] <: java.lang.String;
    assume $heap[$return, $type] <: fr.xephi.authme.security.crypts.HashedPassword;
    $exception := $null;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "UnsaltedMethod.java", 29, -1, -1, -1} true;
    call $fakelocal_0 := $new(fr.xephi.authme.security.crypts.HashedPassword);
    $r3 := $fakelocal_0;
    assert {:sourceloc "UnsaltedMethod.java", 29, -1, -1, -1} true;
    call $r4, $exception := fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String(r0, r1);
    assert {:sourceloc "UnsaltedMethod.java", 29, -1, -1, -1} true;
    call $exception := fr.xephi.authme.security.crypts.HashedPassword$$la$init$ra$$java.lang.String($r3, $r4);
    assert {:sourceloc "UnsaltedMethod.java", 29, -1, -1, -1} true;
    $return := $r3;
    goto block2;

  block2:
    return;
}



implementation fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String_java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var r2: ref;
  var $r4: ref;
  var r3: ref;
  var r1: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $heap[$this, $type] <: fr.xephi.authme.security.crypts.UnsaltedMethod;
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__2, $type] <: java.lang.String;
    assume $heap[$return, $type] <: java.lang.String;
    assume $heap[$in_parameter__1, $type] <: java.lang.String;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r3 := $in_parameter__2;
    assert {:sourceloc "UnsaltedMethod.java", 34, -1, -1, -1} true;
    call $r4, $exception := fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String(r0, r1);
    assert {:sourceloc "UnsaltedMethod.java", 34, -1, -1, -1} true;
    $return := $r4;
    goto block3;

  block3:
    return;
}



implementation fr.xephi.authme.security.crypts.UnsaltedMethod$comparePassword$java.lang.String_fr.xephi.authme.security.crypts.HashedPassword_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: int, $exception: ref)
{
  var $r5: ref;
  var r2: ref;
  var $r4: ref;
  var r0: ref;
  var r3: ref;
  var r1: ref;
  var $fakelocal_0: ref;
  var $z0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $heap[$this, $type] <: fr.xephi.authme.security.crypts.UnsaltedMethod;
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    assume $heap[$in_parameter__1, $type] <: fr.xephi.authme.security.crypts.HashedPassword;
    assume $heap[$in_parameter__2, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r3 := $in_parameter__2;
    assert {:sourceloc "UnsaltedMethod.java", 43, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} r2 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon4_Then:
    assume {:partition} r2 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $r4, $exception := fr.xephi.authme.security.crypts.HashedPassword$getHash$(r2);
    assert {:sourceloc "UnsaltedMethod.java", 43, -1, -1, -1} true;
    call $r5, $exception := fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String(r0, r1);
    assert {:sourceloc "UnsaltedMethod.java", 43, -1, -1, -1} true;
    call $z0, $exception := fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object(r0, $r4, $r5);
    assert {:sourceloc "UnsaltedMethod.java", 43, -1, -1, -1} true;
    $return := $z0;
    goto block4;

  block4:
    return;
}



implementation fr.xephi.authme.security.crypts.UnsaltedMethod$generateSalt$($this: ref) returns ($return: ref, $exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $heap[$this, $type] <: fr.xephi.authme.security.crypts.UnsaltedMethod;
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "UnsaltedMethod.java", 49, -1, -1, -1} true;
    $return := $null;
    goto block5;

  block5:
    return;
}



implementation fr.xephi.authme.security.crypts.UnsaltedMethod$hasSeparateSalt$($this: ref) returns ($return: int, $exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $heap[$this, $type] <: fr.xephi.authme.security.crypts.UnsaltedMethod;
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "UnsaltedMethod.java", 54, -1, -1, -1} true;
    $return := 0;
    goto block6;

  block6:
    return;
}



implementation fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $r7: ref;
  var $r23: ref;
  var r0: ref;
  var $r10: ref;
  var $r21: ref;
  var $i1: int;
  var z4: int;
  var r4: ref;
  var r2: ref;
  var $fakelocal_1: ref;
  var $fakelocal_9: ref;
  var $fakelocal_8: ref;
  var $z1: int;
  var $r18: ref;
  var r3: ref;
  var r5: ref;
  var $r9: ref;
  var $fakelocal_5: ref;
  var $r13: ref;
  var $fakelocal_7: ref;
  var $r20: ref;
  var $l4: int;
  var z0: int;
  var $r6: ref;
  var $fakelocal_4: ref;
  var $fakelocal_2: ref;
  var $r11: ref;
  var i6: int;
  var $fakelocal_6: ref;
  var $z3: int;
  var $z2: int;
  var z5: int;
  var $r14: ref;
  var i7: int;
  var $l5: int;
  var $r19: ref;
  var $r17: ref;
  var $c3: int;
  var $fakelocal_3: ref;
  var $r15: ref;
  var $fakelocal_10: ref;
  var $r12: ref;
  var $fakelocal_0: ref;
  var $r8: ref;
  var $c2: int;
  var $i0: int;
  var $r16: ref;
  var r1: ref;
  var $r22: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $heap[$this, $type] <: fr.xephi.authme.security.crypts.UnsaltedMethod;
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
    $exception := $null;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "UnsaltedMethod.java", 59, -1, -1, -1} true;
    z4 := 0;
    assert {:sourceloc "UnsaltedMethod.java", 60, -1, -1, -1} true;
    z5 := 0;
    assert {:sourceloc "UnsaltedMethod.java", 61, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} r1 == r2;
    assert {:sourceloc "UnsaltedMethod.java", 61, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "UnsaltedMethod.java", 62, -1, -1, -1} true;
    $return := 1;
    goto block11;

  block11:
    return;

  anon46_Then:
    assume {:partition} r1 != r2;
    assert {:sourceloc "UnsaltedMethod.java", 61, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  block7:
    assert {:sourceloc "UnsaltedMethod.java", 64, -1, -1, -1} true;
    $z1 := $boolToInt(r2 != $null && $heap[r2, $type] <: java.lang.String);
    assert {:sourceloc "UnsaltedMethod.java", 64, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} $z1 != 0;
    assert {:sourceloc "UnsaltedMethod.java", 64, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} !($heap[r2, $type] <: java.lang.String);
    call $fakelocal_0 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon48_Then:
    assume {:partition} $heap[r2, $type] <: java.lang.String;
    $exception := $exception;
    goto anon9;

  anon9:
    r3 := r2;
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    i6 := $stringSizeHeap[r1];
    assert {:sourceloc "UnsaltedMethod.java", 67, -1, -1, -1} true;
    $i0 := $stringSizeHeap[r3];
    assert {:sourceloc "UnsaltedMethod.java", 67, -1, -1, -1} true;
    goto anon49_Then, anon49_Else;

  anon49_Else:
    assume {:partition} i6 == $i0;
    assert {:sourceloc "UnsaltedMethod.java", 67, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "UnsaltedMethod.java", 68, -1, -1, -1} true;
    call r4, $exception := java.lang.String$toCharArray$(r1);
    assert {:sourceloc "UnsaltedMethod.java", 69, -1, -1, -1} true;
    call r5, $exception := java.lang.String$toCharArray$(r3);
    assert {:sourceloc "UnsaltedMethod.java", 70, -1, -1, -1} true;
    i7 := 0;
    goto block9;

  block9:
    call $return, $exception, $r23, $r21, $i1, z4, $fakelocal_1, $r18, $fakelocal_5, $r20, $l4, z0, $fakelocal_4, $fakelocal_2, i6, $fakelocal_6, z5, $r14, i7, $l5, $r19, $r17, $c3, $fakelocal_3, $r15, $c2, $r16, $r22 := fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9($return, $exception, $r23, $r21, $i1, z4, r4, $fakelocal_1, $r18, r5, $fakelocal_5, $r20, $l4, z0, $fakelocal_4, $fakelocal_2, i6, $fakelocal_6, z5, $r14, i7, $l5, $r19, $r17, $c3, $fakelocal_3, $r15, $c2, $r16, $r22);
    goto block9_last;

  anon50_Else:
    assume {:partition} $i1 != 0;
    assert {:sourceloc "UnsaltedMethod.java", 71, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "UnsaltedMethod.java", 72, -1, -1, -1} true;
    goto anon51_Then, anon51_Else;

  anon51_Else:
    assume {:partition} !(i7 < $arrSizeHeap[r4] && i7 >= 0);
    call $fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon51_Then:
    assume {:partition} i7 < $arrSizeHeap[r4] && i7 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $c2 := $intArrHeap[r4][i7];
    assert {:sourceloc "UnsaltedMethod.java", 72, -1, -1, -1} true;
    $l5 := $c2;
    assert {:sourceloc "UnsaltedMethod.java", 72, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} !(i7 < $arrSizeHeap[r5] && i7 >= 0);
    call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon52_Then:
    assume {:partition} i7 < $arrSizeHeap[r5] && i7 >= 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $c3 := $intArrHeap[r5][i7];
    assert {:sourceloc "UnsaltedMethod.java", 72, -1, -1, -1} true;
    $l4 := $c3;
    assert {:sourceloc "UnsaltedMethod.java", 72, -1, -1, -1} true;
    call z0, $exception := sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($l5, $l4);
    assert {:sourceloc "UnsaltedMethod.java", 73, -1, -1, -1} true;
    call $r14, $exception := java.lang.Boolean$valueOf$boolean(z4);
    assert {:sourceloc "UnsaltedMethod.java", 73, -1, -1, -1} true;
    call $r15, $exception := java.lang.Boolean$valueOf$boolean(0);
    assert {:sourceloc "UnsaltedMethod.java", 73, -1, -1, -1} true;
    call $r16, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z5, $r14, $r15);
    assert {:sourceloc "UnsaltedMethod.java", 73, -1, -1, -1} true;
    call $r17, $exception := java.lang.Boolean$valueOf$boolean(z4);
    assert {:sourceloc "UnsaltedMethod.java", 73, -1, -1, -1} true;
    call $r18, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r16, $r17);
    assert {:sourceloc "UnsaltedMethod.java", 73, -1, -1, -1} true;
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} !($heap[$r18, $type] <: java.lang.Boolean);
    call $fakelocal_3 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon53_Then:
    assume {:partition} $heap[$r18, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon24;

  anon24:
    $r19 := $r18;
    assert {:sourceloc "UnsaltedMethod.java", 73, -1, -1, -1} true;
    goto anon54_Then, anon54_Else;

  anon54_Else:
    assume {:partition} $r19 == $null;
    call $fakelocal_4 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon54_Then:
    assume {:partition} $r19 != $null;
    $exception := $exception;
    goto anon27;

  anon27:
    call z4, $exception := java.lang.Boolean$booleanValue$($r19);
    assert {:sourceloc "UnsaltedMethod.java", 74, -1, -1, -1} true;
    call $r20, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "UnsaltedMethod.java", 74, -1, -1, -1} true;
    call $r21, $exception := java.lang.Boolean$valueOf$boolean(z5);
    assert {:sourceloc "UnsaltedMethod.java", 74, -1, -1, -1} true;
    call $r22, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r20, $r21);
    assert {:sourceloc "UnsaltedMethod.java", 74, -1, -1, -1} true;
    goto anon55_Then, anon55_Else;

  anon55_Else:
    assume {:partition} !($heap[$r22, $type] <: java.lang.Boolean);
    call $fakelocal_5 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon55_Then:
    assume {:partition} $heap[$r22, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon30;

  anon30:
    $r23 := $r22;
    assert {:sourceloc "UnsaltedMethod.java", 74, -1, -1, -1} true;
    goto anon56_Then, anon56_Else;

  anon56_Else:
    assume {:partition} $r23 == $null;
    call $fakelocal_6 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon56_Then:
    assume {:partition} $r23 != $null;
    $exception := $exception;
    goto anon33;

  anon33:
    call z5, $exception := java.lang.Boolean$booleanValue$($r23);
    assert {:sourceloc "UnsaltedMethod.java", 76, -1, -1, -1} true;
    i7 := i7 + 1;
    assert {:sourceloc "UnsaltedMethod.java", 77, -1, -1, -1} true;
    goto anon33_dummy;

  anon50_Then:
    assume {:partition} $i1 == 0;
    assert {:sourceloc "UnsaltedMethod.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "UnsaltedMethod.java", 78, -1, -1, -1} true;
    call $r10, $exception := java.lang.Boolean$valueOf$boolean(z4);
    assert {:sourceloc "UnsaltedMethod.java", 78, -1, -1, -1} true;
    call $r11, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "UnsaltedMethod.java", 78, -1, -1, -1} true;
    call $r12, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z5, $r10, $r11);
    assert {:sourceloc "UnsaltedMethod.java", 78, -1, -1, -1} true;
    goto anon57_Then, anon57_Else;

  anon57_Else:
    assume {:partition} !($heap[$r12, $type] <: java.lang.Boolean);
    call $fakelocal_7 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_7;
    return;

  anon57_Then:
    assume {:partition} $heap[$r12, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon36;

  anon36:
    $r13 := $r12;
    assert {:sourceloc "UnsaltedMethod.java", 78, -1, -1, -1} true;
    goto anon58_Then, anon58_Else;

  anon58_Else:
    assume {:partition} $r13 == $null;
    call $fakelocal_8 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_8;
    return;

  anon58_Then:
    assume {:partition} $r13 != $null;
    $exception := $exception;
    goto anon39;

  anon39:
    call $z3, $exception := java.lang.Boolean$booleanValue$($r13);
    assert {:sourceloc "UnsaltedMethod.java", 78, -1, -1, -1} true;
    $return := $z3;
    goto block11;

  anon49_Then:
    assume {:partition} i6 != $i0;
    assert {:sourceloc "UnsaltedMethod.java", 67, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "UnsaltedMethod.java", 81, -1, -1, -1} true;
    call $r6, $exception := java.lang.Boolean$valueOf$boolean(z4);
    assert {:sourceloc "UnsaltedMethod.java", 81, -1, -1, -1} true;
    call $r7, $exception := java.lang.Boolean$valueOf$boolean(0);
    assert {:sourceloc "UnsaltedMethod.java", 81, -1, -1, -1} true;
    call $r8, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z5, $r6, $r7);
    assert {:sourceloc "UnsaltedMethod.java", 81, -1, -1, -1} true;
    goto anon59_Then, anon59_Else;

  anon59_Else:
    assume {:partition} !($heap[$r8, $type] <: java.lang.Boolean);
    call $fakelocal_9 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_9;
    return;

  anon59_Then:
    assume {:partition} $heap[$r8, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon42;

  anon42:
    $r9 := $r8;
    assert {:sourceloc "UnsaltedMethod.java", 81, -1, -1, -1} true;
    goto anon60_Then, anon60_Else;

  anon60_Else:
    assume {:partition} $r9 == $null;
    call $fakelocal_10 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_10;
    return;

  anon60_Then:
    assume {:partition} $r9 != $null;
    $exception := $exception;
    goto anon45;

  anon45:
    call $z2, $exception := java.lang.Boolean$booleanValue$($r9);
    assert {:sourceloc "UnsaltedMethod.java", 81, -1, -1, -1} true;
    $return := $z2;
    goto block11;

  anon47_Then:
    assume {:partition} $z1 == 0;
    assert {:sourceloc "UnsaltedMethod.java", 64, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  anon33_dummy:
    assume false;
    return;

  block9_last:
    assert {:sourceloc "UnsaltedMethod.java", 71, -1, -1, -1} true;
    $i1 := i6;
    assert {:sourceloc "UnsaltedMethod.java", 71, -1, -1, -1} true;
    i6 := i6 + -1;
    assert {:sourceloc "UnsaltedMethod.java", 71, -1, -1, -1} true;
    goto anon50_Then, anon50_Else;
}



implementation fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var b6: int;
  var $fakelocal_0: ref;
  var $i2: int;
  var $b4: int;
  var $i0: int;
  var $fakelocal_1: ref;
  var $b3: int;
  var r0: ref;
  var $i1: int;
  var r1: ref;
  var $b5: int;
  var i7: int;
  var $fakelocal_4: ref;
  var $z0: int;
  var $fakelocal_2: ref;
  var $fakelocal_3: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "UnsaltedMethod.java", 101, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "UnsaltedMethod.java", 101, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    $return := 1;
    goto block20;

  block20:
    return;

  anon33_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "UnsaltedMethod.java", 101, -1, -1, -1} {:comment "thenblock"} true;
    goto block12;

  block12:
    assert {:sourceloc "UnsaltedMethod.java", 102, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} r0 != $null;
    assert {:sourceloc "UnsaltedMethod.java", 102, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} r1 == $null;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} {:comment "elseblock"} true;
    goto block13;

  block13:
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    $return := 0;
    goto block20;

  anon35_Then:
    assume {:partition} r1 != $null;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "UnsaltedMethod.java", 105, -1, -1, -1} true;
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
    assert {:sourceloc "UnsaltedMethod.java", 105, -1, -1, -1} true;
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
    assert {:sourceloc "UnsaltedMethod.java", 105, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} $i1 != $i0;
    assert {:sourceloc "UnsaltedMethod.java", 105, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "UnsaltedMethod.java", 106, -1, -1, -1} true;
    $return := 0;
    goto block20;

  anon38_Then:
    assume {:partition} $i1 == $i0;
    assert {:sourceloc "UnsaltedMethod.java", 105, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  block15:
    assert {:sourceloc "UnsaltedMethod.java", 109, -1, -1, -1} true;
    b6 := 0;
    assert {:sourceloc "UnsaltedMethod.java", 111, -1, -1, -1} true;
    i7 := 0;
    goto block16;

  block16:
    call $return, $exception, b6, $i2, $b4, $b3, $b5, i7, $fakelocal_4, $fakelocal_2, $fakelocal_3 := fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block16($return, $exception, b6, $i2, $b4, $b3, r0, r1, $b5, i7, $fakelocal_4, $fakelocal_2, $fakelocal_3);
    goto block16_last;

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
    assert {:sourceloc "UnsaltedMethod.java", 111, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Else:
    assume {:partition} $i2 > i7;
    assert {:sourceloc "UnsaltedMethod.java", 111, -1, -1, -1} {:comment "elseblock"} true;
    goto anon23;

  anon23:
    assert {:sourceloc "UnsaltedMethod.java", 112, -1, -1, -1} true;
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
    assert {:sourceloc "UnsaltedMethod.java", 112, -1, -1, -1} true;
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
    assert {:sourceloc "UnsaltedMethod.java", 112, -1, -1, -1} true;
    $b5 := $xorInt($b4, $b3);
    assert {:sourceloc "UnsaltedMethod.java", 112, -1, -1, -1} true;
    b6 := $bitOr(b6, $b5);
    assert {:sourceloc "UnsaltedMethod.java", 111, -1, -1, -1} true;
    i7 := i7 + 1;
    assert {:sourceloc "UnsaltedMethod.java", 111, -1, -1, -1} true;
    goto anon29_dummy;

  anon40_Then:
    assume {:partition} i7 >= $i2;
    assert {:sourceloc "UnsaltedMethod.java", 111, -1, -1, -1} {:comment "thenblock"} true;
    goto block17;

  block17:
    assert {:sourceloc "UnsaltedMethod.java", 114, -1, -1, -1} true;
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} b6 == 0;
    assert {:sourceloc "UnsaltedMethod.java", 114, -1, -1, -1} {:comment "elseblock"} true;
    goto anon32;

  anon32:
    assert {:sourceloc "UnsaltedMethod.java", 114, -1, -1, -1} true;
    $z0 := 1;
    assert {:sourceloc "UnsaltedMethod.java", 114, -1, -1, -1} true;
    goto block19;

  block19:
    assert {:sourceloc "UnsaltedMethod.java", 114, -1, -1, -1} true;
    $return := $z0;
    goto block20;

  anon43_Then:
    assume {:partition} b6 != 0;
    assert {:sourceloc "UnsaltedMethod.java", 114, -1, -1, -1} {:comment "thenblock"} true;
    goto block18;

  block18:
    assert {:sourceloc "UnsaltedMethod.java", 114, -1, -1, -1} true;
    $z0 := 0;
    goto block19;

  anon34_Then:
    assume {:partition} r0 == $null;
    assert {:sourceloc "UnsaltedMethod.java", 102, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  anon29_dummy:
    assume false;
    return;

  block16_last:
    assert {:sourceloc "UnsaltedMethod.java", 111, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;
}



implementation java.lang.String$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "String.java", 3, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "String.java", 3, -1, -1, -1} true;
    goto block21;

  block21:
    return;
}



implementation java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $r1: ref;
  var $fakelocal_0: ref;
  var i0: int;
  var $c1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    $r1 := $heap[r0, char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} !(i0 < $arrSizeHeap[$r1] && i0 >= 0);
    call $fakelocal_0 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon4_Then:
    assume {:partition} i0 < $arrSizeHeap[$r1] && i0 >= 0;
    $exception := $exception;
    goto anon3;

  anon3:
    $c1 := $intArrHeap[$r1][i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    $return := $c1;
    goto block22;

  block22:
    return;
}



implementation java.lang.String$toCharArray$($this: ref) returns ($return: ref, $exception: ref)
{
  var r0: ref;
  var $r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    $r1 := $heap[r0, char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    $return := $r1;
    goto block23;

  block23:
    return;
}



implementation java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var r0: ref;
  var z0: int;

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
    goto block24;

  block24:
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
    goto block25;

  block25:
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
    goto block26;

  block26:
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
    goto block27;

  block27:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var z0: int;
  var z1: int;

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
    goto block28;

  block28:
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 1;
    goto block29;

  block29:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    $return := z1;
    goto block30;

  block30:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block29;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block28;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
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
    assert {:sourceloc "Safe.java", 12, -1, -1, -1} true;
    $z2 := $bitAnd(z0, z1);
    assert {:sourceloc "Safe.java", 12, -1, -1, -1} true;
    $return := $z2;
    goto block31;

  block31:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var z1: int;
  var $z2: int;

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
    goto block32;

  block32:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l0: int;
  var $b3: int;
  var z0: int;
  var l1: int;
  var $b2: int;

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
    goto block33;

  block33:
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
    goto block34;

  block34:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    $return := z0;
    goto block35;

  block35:
    return;

  anon8_Then:
    assume {:partition} $b3 > 0;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block34;

  anon7_Then:
    assume {:partition} $b2 <= 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    goto block33;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l0: int;
  var $b3: int;
  var z0: int;
  var $b2: int;
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
    goto block36;

  block36:
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
    goto block37;

  block37:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    $return := z0;
    goto block38;

  block38:
    return;

  anon8_Then:
    assume {:partition} $b3 < 0;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block37;

  anon7_Then:
    assume {:partition} $b2 >= 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block36;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b3: int;
  var l1: int;
  var l0: int;
  var $b2: int;

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
    goto block39;

  block39:
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
    goto block40;

  block40:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    $return := z0;
    goto block41;

  block41:
    return;

  anon8_Then:
    assume {:partition} $b3 >= 0;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block40;

  anon7_Then:
    assume {:partition} $b2 < 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block39;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var $b3: int;
  var l1: int;
  var z0: int;
  var l0: int;

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
    goto block42;

  block42:
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
    goto block43;

  block43:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    $return := z0;
    goto block44;

  block44:
    return;

  anon8_Then:
    assume {:partition} $b3 <= 0;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block43;

  anon7_Then:
    assume {:partition} $b2 > 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block42;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l0: int;
  var $b2: int;
  var z0: int;
  var $b3: int;
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
    goto block45;

  block45:
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
    goto block46;

  block46:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    $return := z0;
    goto block47;

  block47:
    return;

  anon8_Then:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block46;

  anon7_Then:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto block45;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var l1: int;
  var $b3: int;
  var z0: int;
  var l0: int;

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
    goto block48;

  block48:
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
    goto block49;

  block49:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    $return := z0;
    goto block50;

  block50:
    return;

  anon8_Then:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto block49;

  anon7_Then:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block48;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b1: int;
  var d1: int;
  var d0: int;
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
    goto block51;

  block51:
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
    goto block52;

  block52:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    $return := z0;
    goto block53;

  block53:
    return;

  anon8_Then:
    assume {:partition} $b1 > 0;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "thenblock"} true;
    goto block52;

  anon7_Then:
    assume {:partition} $b0 <= 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "thenblock"} true;
    goto block51;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var $b0: int;
  var d1: int;
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
    goto block54;

  block54:
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
    goto block55;

  block55:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    $return := z0;
    goto block56;

  block56:
    return;

  anon8_Then:
    assume {:partition} $b1 < 0;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block55;

  anon7_Then:
    assume {:partition} $b0 >= 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block54;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var d1: int;
  var z0: int;
  var $b1: int;
  var $b0: int;

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
    goto block57;

  block57:
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
    goto block58;

  block58:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    $return := z0;
    goto block59;

  block59:
    return;

  anon8_Then:
    assume {:partition} $b1 >= 0;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block58;

  anon7_Then:
    assume {:partition} $b0 < 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block57;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d1: int;
  var z0: int;
  var $b0: int;
  var $b1: int;
  var d0: int;

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
    goto block60;

  block60:
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
    goto block61;

  block61:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    $return := z0;
    goto block62;

  block62:
    return;

  anon8_Then:
    assume {:partition} $b1 <= 0;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "thenblock"} true;
    goto block61;

  anon7_Then:
    assume {:partition} $b0 > 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block60;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d1: int;
  var $b0: int;
  var d0: int;
  var $b1: int;
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
    goto block63;

  block63:
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
    goto block64;

  block64:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    $return := z0;
    goto block65;

  block65:
    return;

  anon8_Then:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "thenblock"} true;
    goto block64;

  anon7_Then:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "thenblock"} true;
    goto block63;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b1: int;
  var d0: int;
  var $b0: int;
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
    goto block66;

  block66:
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
    goto block67;

  block67:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    $return := z0;
    goto block68;

  block68:
    return;

  anon8_Then:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "thenblock"} true;
    goto block67;

  anon7_Then:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "thenblock"} true;
    goto block66;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r1: ref;
  var z0: int;
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
    goto block69;

  block69:
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 0;
    goto block70;

  block70:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    $return := z0;
    goto block71;

  block71:
    return;

  anon8_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block70;

  anon7_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block69;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var r0: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0, $type] <: java.lang.Object;
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
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
    goto block72;

  block72:
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 0;
    goto block73;

  block73:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    $return := z0;
    goto block74;

  block74:
    return;

  anon8_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block73;

  anon7_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block72;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var r2: ref;
  var r0: ref;
  var z0: int;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__2, $type] <: java.lang.Object;
    assume $heap[$return, $type] <: java.lang.Object;
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
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
    goto block75;

  block75:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r1;
    goto block76;

  block76:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    $return := r2;
    goto block77;

  block77:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block76;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block75;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9(in_$return: int, 
    in_$exception: ref, 
    in_$r23: ref, 
    in_$r21: ref, 
    in_$i1: int, 
    in_z4: int, 
    in_r4: ref, 
    in_$fakelocal_1: ref, 
    in_$r18: ref, 
    in_r5: ref, 
    in_$fakelocal_5: ref, 
    in_$r20: ref, 
    in_$l4: int, 
    in_z0: int, 
    in_$fakelocal_4: ref, 
    in_$fakelocal_2: ref, 
    in_i6: int, 
    in_$fakelocal_6: ref, 
    in_z5: int, 
    in_$r14: ref, 
    in_i7: int, 
    in_$l5: int, 
    in_$r19: ref, 
    in_$r17: ref, 
    in_$c3: int, 
    in_$fakelocal_3: ref, 
    in_$r15: ref, 
    in_$c2: int, 
    in_$r16: ref, 
    in_$r22: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$r23: ref, 
    out_$r21: ref, 
    out_$i1: int, 
    out_z4: int, 
    out_$fakelocal_1: ref, 
    out_$r18: ref, 
    out_$fakelocal_5: ref, 
    out_$r20: ref, 
    out_$l4: int, 
    out_z0: int, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_2: ref, 
    out_i6: int, 
    out_$fakelocal_6: ref, 
    out_z5: int, 
    out_$r14: ref, 
    out_i7: int, 
    out_$l5: int, 
    out_$r19: ref, 
    out_$r17: ref, 
    out_$c3: int, 
    out_$fakelocal_3: ref, 
    out_$r15: ref, 
    out_$c2: int, 
    out_$r16: ref, 
    out_$r22: ref)
{

  entry:
    out_$return, out_$exception, out_$r23, out_$r21, out_$i1, out_z4, out_$fakelocal_1, out_$r18, out_$fakelocal_5, out_$r20, out_$l4, out_z0, out_$fakelocal_4, out_$fakelocal_2, out_i6, out_$fakelocal_6, out_z5, out_$r14, out_i7, out_$l5, out_$r19, out_$r17, out_$c3, out_$fakelocal_3, out_$r15, out_$c2, out_$r16, out_$r22 := in_$return, in_$exception, in_$r23, in_$r21, in_$i1, in_z4, in_$fakelocal_1, in_$r18, in_$fakelocal_5, in_$r20, in_$l4, in_z0, in_$fakelocal_4, in_$fakelocal_2, in_i6, in_$fakelocal_6, in_z5, in_$r14, in_i7, in_$l5, in_$r19, in_$r17, in_$c3, in_$fakelocal_3, in_$r15, in_$c2, in_$r16, in_$r22;
    goto block9;

  block9:
    assert {:sourceloc "UnsaltedMethod.java", 71, -1, -1, -1} true;
    out_$i1 := out_i6;
    assert {:sourceloc "UnsaltedMethod.java", 71, -1, -1, -1} true;
    out_i6 := out_i6 + -1;
    assert {:sourceloc "UnsaltedMethod.java", 71, -1, -1, -1} true;
    goto anon50_Then, anon50_Else;

  anon50_Then:
    assume {:partition} out_$i1 == 0;
    assert {:sourceloc "UnsaltedMethod.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$r23, out_$r21, out_$i1, out_z4, out_$fakelocal_1, out_$r18, out_$fakelocal_5, out_$r20, out_$l4, out_z0, out_$fakelocal_4, out_$fakelocal_2, out_i6, out_$fakelocal_6, out_z5, out_$r14, out_i7, out_$l5, out_$r19, out_$r17, out_$c3, out_$fakelocal_3, out_$r15, out_$c2, out_$r16, out_$r22 := in_$return, in_$exception, in_$r23, in_$r21, in_$i1, in_z4, in_$fakelocal_1, in_$r18, in_$fakelocal_5, in_$r20, in_$l4, in_z0, in_$fakelocal_4, in_$fakelocal_2, in_i6, in_$fakelocal_6, in_z5, in_$r14, in_i7, in_$l5, in_$r19, in_$r17, in_$c3, in_$fakelocal_3, in_$r15, in_$c2, in_$r16, in_$r22;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon33:
    call out_z5, out_$exception := java.lang.Boolean$booleanValue$(out_$r23);
    assert {:sourceloc "UnsaltedMethod.java", 76, -1, -1, -1} true;
    out_i7 := out_i7 + 1;
    assert {:sourceloc "UnsaltedMethod.java", 77, -1, -1, -1} true;
    goto anon33_dummy;

  anon56_Then:
    assume {:partition} out_$r23 != $null;
    out_$exception := out_$exception;
    goto anon33;

  anon30:
    out_$r23 := out_$r22;
    assert {:sourceloc "UnsaltedMethod.java", 74, -1, -1, -1} true;
    goto anon56_Then, anon56_Else;

  anon56_Else:
    assume {:partition} out_$r23 == $null;
    call out_$fakelocal_6 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_6;
    out_$return, out_$exception, out_$r23, out_$r21, out_$i1, out_z4, out_$fakelocal_1, out_$r18, out_$fakelocal_5, out_$r20, out_$l4, out_z0, out_$fakelocal_4, out_$fakelocal_2, out_i6, out_$fakelocal_6, out_z5, out_$r14, out_i7, out_$l5, out_$r19, out_$r17, out_$c3, out_$fakelocal_3, out_$r15, out_$c2, out_$r16, out_$r22 := in_$return, in_$exception, in_$r23, in_$r21, in_$i1, in_z4, in_$fakelocal_1, in_$r18, in_$fakelocal_5, in_$r20, in_$l4, in_z0, in_$fakelocal_4, in_$fakelocal_2, in_i6, in_$fakelocal_6, in_z5, in_$r14, in_i7, in_$l5, in_$r19, in_$r17, in_$c3, in_$fakelocal_3, in_$r15, in_$c2, in_$r16, in_$r22;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon55_Then:
    assume {:partition} $heap[out_$r22, $type] <: java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon30;

  anon27:
    call out_z4, out_$exception := java.lang.Boolean$booleanValue$(out_$r19);
    assert {:sourceloc "UnsaltedMethod.java", 74, -1, -1, -1} true;
    call out_$r20, out_$exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "UnsaltedMethod.java", 74, -1, -1, -1} true;
    call out_$r21, out_$exception := java.lang.Boolean$valueOf$boolean(out_z5);
    assert {:sourceloc "UnsaltedMethod.java", 74, -1, -1, -1} true;
    call out_$r22, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z0, out_$r20, out_$r21);
    assert {:sourceloc "UnsaltedMethod.java", 74, -1, -1, -1} true;
    goto anon55_Then, anon55_Else;

  anon55_Else:
    assume {:partition} !($heap[out_$r22, $type] <: java.lang.Boolean);
    call out_$fakelocal_5 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$r23, out_$r21, out_$i1, out_z4, out_$fakelocal_1, out_$r18, out_$fakelocal_5, out_$r20, out_$l4, out_z0, out_$fakelocal_4, out_$fakelocal_2, out_i6, out_$fakelocal_6, out_z5, out_$r14, out_i7, out_$l5, out_$r19, out_$r17, out_$c3, out_$fakelocal_3, out_$r15, out_$c2, out_$r16, out_$r22 := in_$return, in_$exception, in_$r23, in_$r21, in_$i1, in_z4, in_$fakelocal_1, in_$r18, in_$fakelocal_5, in_$r20, in_$l4, in_z0, in_$fakelocal_4, in_$fakelocal_2, in_i6, in_$fakelocal_6, in_z5, in_$r14, in_i7, in_$l5, in_$r19, in_$r17, in_$c3, in_$fakelocal_3, in_$r15, in_$c2, in_$r16, in_$r22;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon54_Then:
    assume {:partition} out_$r19 != $null;
    out_$exception := out_$exception;
    goto anon27;

  anon24:
    out_$r19 := out_$r18;
    assert {:sourceloc "UnsaltedMethod.java", 73, -1, -1, -1} true;
    goto anon54_Then, anon54_Else;

  anon54_Else:
    assume {:partition} out_$r19 == $null;
    call out_$fakelocal_4 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$r23, out_$r21, out_$i1, out_z4, out_$fakelocal_1, out_$r18, out_$fakelocal_5, out_$r20, out_$l4, out_z0, out_$fakelocal_4, out_$fakelocal_2, out_i6, out_$fakelocal_6, out_z5, out_$r14, out_i7, out_$l5, out_$r19, out_$r17, out_$c3, out_$fakelocal_3, out_$r15, out_$c2, out_$r16, out_$r22 := in_$return, in_$exception, in_$r23, in_$r21, in_$i1, in_z4, in_$fakelocal_1, in_$r18, in_$fakelocal_5, in_$r20, in_$l4, in_z0, in_$fakelocal_4, in_$fakelocal_2, in_i6, in_$fakelocal_6, in_z5, in_$r14, in_i7, in_$l5, in_$r19, in_$r17, in_$c3, in_$fakelocal_3, in_$r15, in_$c2, in_$r16, in_$r22;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon53_Then:
    assume {:partition} $heap[out_$r18, $type] <: java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon24;

  anon21:
    out_$c3 := $intArrHeap[in_r5][out_i7];
    assert {:sourceloc "UnsaltedMethod.java", 72, -1, -1, -1} true;
    out_$l4 := out_$c3;
    assert {:sourceloc "UnsaltedMethod.java", 72, -1, -1, -1} true;
    call out_z0, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long(out_$l5, out_$l4);
    assert {:sourceloc "UnsaltedMethod.java", 73, -1, -1, -1} true;
    call out_$r14, out_$exception := java.lang.Boolean$valueOf$boolean(out_z4);
    assert {:sourceloc "UnsaltedMethod.java", 73, -1, -1, -1} true;
    call out_$r15, out_$exception := java.lang.Boolean$valueOf$boolean(0);
    assert {:sourceloc "UnsaltedMethod.java", 73, -1, -1, -1} true;
    call out_$r16, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z5, out_$r14, out_$r15);
    assert {:sourceloc "UnsaltedMethod.java", 73, -1, -1, -1} true;
    call out_$r17, out_$exception := java.lang.Boolean$valueOf$boolean(out_z4);
    assert {:sourceloc "UnsaltedMethod.java", 73, -1, -1, -1} true;
    call out_$r18, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z0, out_$r16, out_$r17);
    assert {:sourceloc "UnsaltedMethod.java", 73, -1, -1, -1} true;
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} !($heap[out_$r18, $type] <: java.lang.Boolean);
    call out_$fakelocal_3 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$r23, out_$r21, out_$i1, out_z4, out_$fakelocal_1, out_$r18, out_$fakelocal_5, out_$r20, out_$l4, out_z0, out_$fakelocal_4, out_$fakelocal_2, out_i6, out_$fakelocal_6, out_z5, out_$r14, out_i7, out_$l5, out_$r19, out_$r17, out_$c3, out_$fakelocal_3, out_$r15, out_$c2, out_$r16, out_$r22 := in_$return, in_$exception, in_$r23, in_$r21, in_$i1, in_z4, in_$fakelocal_1, in_$r18, in_$fakelocal_5, in_$r20, in_$l4, in_z0, in_$fakelocal_4, in_$fakelocal_2, in_i6, in_$fakelocal_6, in_z5, in_$r14, in_i7, in_$l5, in_$r19, in_$r17, in_$c3, in_$fakelocal_3, in_$r15, in_$c2, in_$r16, in_$r22;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon52_Then:
    assume {:partition} out_i7 < $arrSizeHeap[in_r5] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    out_$c2 := $intArrHeap[in_r4][out_i7];
    assert {:sourceloc "UnsaltedMethod.java", 72, -1, -1, -1} true;
    out_$l5 := out_$c2;
    assert {:sourceloc "UnsaltedMethod.java", 72, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} !(out_i7 < $arrSizeHeap[in_r5] && out_i7 >= 0);
    call out_$fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$r23, out_$r21, out_$i1, out_z4, out_$fakelocal_1, out_$r18, out_$fakelocal_5, out_$r20, out_$l4, out_z0, out_$fakelocal_4, out_$fakelocal_2, out_i6, out_$fakelocal_6, out_z5, out_$r14, out_i7, out_$l5, out_$r19, out_$r17, out_$c3, out_$fakelocal_3, out_$r15, out_$c2, out_$r16, out_$r22 := in_$return, in_$exception, in_$r23, in_$r21, in_$i1, in_z4, in_$fakelocal_1, in_$r18, in_$fakelocal_5, in_$r20, in_$l4, in_z0, in_$fakelocal_4, in_$fakelocal_2, in_i6, in_$fakelocal_6, in_z5, in_$r14, in_i7, in_$l5, in_$r19, in_$r17, in_$c3, in_$fakelocal_3, in_$r15, in_$c2, in_$r16, in_$r22;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon51_Then:
    assume {:partition} out_i7 < $arrSizeHeap[in_r4] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    assert {:sourceloc "UnsaltedMethod.java", 72, -1, -1, -1} true;
    goto anon51_Then, anon51_Else;

  anon51_Else:
    assume {:partition} !(out_i7 < $arrSizeHeap[in_r4] && out_i7 >= 0);
    call out_$fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$r23, out_$r21, out_$i1, out_z4, out_$fakelocal_1, out_$r18, out_$fakelocal_5, out_$r20, out_$l4, out_z0, out_$fakelocal_4, out_$fakelocal_2, out_i6, out_$fakelocal_6, out_z5, out_$r14, out_i7, out_$l5, out_$r19, out_$r17, out_$c3, out_$fakelocal_3, out_$r15, out_$c2, out_$r16, out_$r22 := in_$return, in_$exception, in_$r23, in_$r21, in_$i1, in_z4, in_$fakelocal_1, in_$r18, in_$fakelocal_5, in_$r20, in_$l4, in_z0, in_$fakelocal_4, in_$fakelocal_2, in_i6, in_$fakelocal_6, in_z5, in_$r14, in_i7, in_$l5, in_$r19, in_$r17, in_$c3, in_$fakelocal_3, in_$r15, in_$c2, in_$r16, in_$r22;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon50_Else:
    assume {:partition} out_$i1 != 0;
    assert {:sourceloc "UnsaltedMethod.java", 71, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon33_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$r23, out_$r21, out_$i1, out_z4, out_$fakelocal_1, out_$r18, out_$fakelocal_5, out_$r20, out_$l4, out_z0, out_$fakelocal_4, out_$fakelocal_2, out_i6, out_$fakelocal_6, out_z5, out_$r14, out_i7, out_$l5, out_$r19, out_$r17, out_$c3, out_$fakelocal_3, out_$r15, out_$c2, out_$r16, out_$r22 := fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9(out_$return, out_$exception, out_$r23, out_$r21, out_$i1, out_z4, in_r4, out_$fakelocal_1, out_$r18, in_r5, out_$fakelocal_5, out_$r20, out_$l4, out_z0, out_$fakelocal_4, out_$fakelocal_2, out_i6, out_$fakelocal_6, out_z5, out_$r14, out_i7, out_$l5, out_$r19, out_$r17, out_$c3, out_$fakelocal_3, out_$r15, out_$c2, out_$r16, out_$r22);
    return;

  exit:
    return;
}



procedure fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9(in_$return: int, 
    in_$exception: ref, 
    in_$r23: ref, 
    in_$r21: ref, 
    in_$i1: int, 
    in_z4: int, 
    in_r4: ref, 
    in_$fakelocal_1: ref, 
    in_$r18: ref, 
    in_r5: ref, 
    in_$fakelocal_5: ref, 
    in_$r20: ref, 
    in_$l4: int, 
    in_z0: int, 
    in_$fakelocal_4: ref, 
    in_$fakelocal_2: ref, 
    in_i6: int, 
    in_$fakelocal_6: ref, 
    in_z5: int, 
    in_$r14: ref, 
    in_i7: int, 
    in_$l5: int, 
    in_$r19: ref, 
    in_$r17: ref, 
    in_$c3: int, 
    in_$fakelocal_3: ref, 
    in_$r15: ref, 
    in_$c2: int, 
    in_$r16: ref, 
    in_$r22: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$r23: ref, 
    out_$r21: ref, 
    out_$i1: int, 
    out_z4: int, 
    out_$fakelocal_1: ref, 
    out_$r18: ref, 
    out_$fakelocal_5: ref, 
    out_$r20: ref, 
    out_$l4: int, 
    out_z0: int, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_2: ref, 
    out_i6: int, 
    out_$fakelocal_6: ref, 
    out_z5: int, 
    out_$r14: ref, 
    out_i7: int, 
    out_$l5: int, 
    out_$r19: ref, 
    out_$r17: ref, 
    out_$c3: int, 
    out_$fakelocal_3: ref, 
    out_$r15: ref, 
    out_$c2: int, 
    out_$r16: ref, 
    out_$r22: ref);
  modifies $objIndex, $heap;



implementation fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block16(in_$return: int, 
    in_$exception: ref, 
    in_b6: int, 
    in_$i2: int, 
    in_$b4: int, 
    in_$b3: int, 
    in_r0: ref, 
    in_r1: ref, 
    in_$b5: int, 
    in_i7: int, 
    in_$fakelocal_4: ref, 
    in_$fakelocal_2: ref, 
    in_$fakelocal_3: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_b6: int, 
    out_$i2: int, 
    out_$b4: int, 
    out_$b3: int, 
    out_$b5: int, 
    out_i7: int, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_3: ref)
{

  entry:
    out_$return, out_$exception, out_b6, out_$i2, out_$b4, out_$b3, out_$b5, out_i7, out_$fakelocal_4, out_$fakelocal_2, out_$fakelocal_3 := in_$return, in_$exception, in_b6, in_$i2, in_$b4, in_$b3, in_$b5, in_i7, in_$fakelocal_4, in_$fakelocal_2, in_$fakelocal_3;
    goto block16;

  block16:
    assert {:sourceloc "UnsaltedMethod.java", 111, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} in_r0 == $null;
    call out_$fakelocal_2 := $new(java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_b6, out_$i2, out_$b4, out_$b3, out_$b5, out_i7, out_$fakelocal_4, out_$fakelocal_2, out_$fakelocal_3 := in_$return, in_$exception, in_b6, in_$i2, in_$b4, in_$b3, in_$b5, in_i7, in_$fakelocal_4, in_$fakelocal_2, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon29:
    out_$b3 := $intArrHeap[in_r1][out_i7];
    assert {:sourceloc "UnsaltedMethod.java", 112, -1, -1, -1} true;
    out_$b5 := $xorInt(out_$b4, out_$b3);
    assert {:sourceloc "UnsaltedMethod.java", 112, -1, -1, -1} true;
    out_b6 := $bitOr(out_b6, out_$b5);
    assert {:sourceloc "UnsaltedMethod.java", 111, -1, -1, -1} true;
    out_i7 := out_i7 + 1;
    assert {:sourceloc "UnsaltedMethod.java", 111, -1, -1, -1} true;
    goto anon29_dummy;

  anon42_Then:
    assume {:partition} out_i7 < $arrSizeHeap[in_r1] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon29;

  anon26:
    out_$b4 := $intArrHeap[in_r0][out_i7];
    assert {:sourceloc "UnsaltedMethod.java", 112, -1, -1, -1} true;
    goto anon42_Then, anon42_Else;

  anon42_Else:
    assume {:partition} !(out_i7 < $arrSizeHeap[in_r1] && out_i7 >= 0);
    call out_$fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_b6, out_$i2, out_$b4, out_$b3, out_$b5, out_i7, out_$fakelocal_4, out_$fakelocal_2, out_$fakelocal_3 := in_$return, in_$exception, in_b6, in_$i2, in_$b4, in_$b3, in_$b5, in_i7, in_$fakelocal_4, in_$fakelocal_2, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon41_Then:
    assume {:partition} out_i7 < $arrSizeHeap[in_r0] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon26;

  anon23:
    assert {:sourceloc "UnsaltedMethod.java", 112, -1, -1, -1} true;
    goto anon41_Then, anon41_Else;

  anon41_Else:
    assume {:partition} !(out_i7 < $arrSizeHeap[in_r0] && out_i7 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_b6, out_$i2, out_$b4, out_$b3, out_$b5, out_i7, out_$fakelocal_4, out_$fakelocal_2, out_$fakelocal_3 := in_$return, in_$exception, in_b6, in_$i2, in_$b4, in_$b3, in_$b5, in_i7, in_$fakelocal_4, in_$fakelocal_2, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon40_Else:
    assume {:partition} out_$i2 > out_i7;
    assert {:sourceloc "UnsaltedMethod.java", 111, -1, -1, -1} {:comment "elseblock"} true;
    goto anon23;

  anon20:
    out_$i2 := $arrSizeHeap[in_r0];
    assert {:sourceloc "UnsaltedMethod.java", 111, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Then:
    assume {:partition} out_i7 >= out_$i2;
    assert {:sourceloc "UnsaltedMethod.java", 111, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_b6, out_$i2, out_$b4, out_$b3, out_$b5, out_i7, out_$fakelocal_4, out_$fakelocal_2, out_$fakelocal_3 := in_$return, in_$exception, in_b6, in_$i2, in_$b4, in_$b3, in_$b5, in_i7, in_$fakelocal_4, in_$fakelocal_2, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon39_Then:
    assume {:partition} in_r0 != $null;
    out_$exception := out_$exception;
    goto anon20;

  anon29_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_b6, out_$i2, out_$b4, out_$b3, out_$b5, out_i7, out_$fakelocal_4, out_$fakelocal_2, out_$fakelocal_3 := fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block16(out_$return, out_$exception, out_b6, out_$i2, out_$b4, out_$b3, in_r0, in_r1, out_$b5, out_i7, out_$fakelocal_4, out_$fakelocal_2, out_$fakelocal_3);
    return;

  exit:
    return;
}



procedure fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block16(in_$return: int, 
    in_$exception: ref, 
    in_b6: int, 
    in_$i2: int, 
    in_$b4: int, 
    in_$b3: int, 
    in_r0: ref, 
    in_r1: ref, 
    in_$b5: int, 
    in_i7: int, 
    in_$fakelocal_4: ref, 
    in_$fakelocal_2: ref, 
    in_$fakelocal_3: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_b6: int, 
    out_$i2: int, 
    out_$b4: int, 
    out_$b3: int, 
    out_$b5: int, 
    out_i7: int, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_3: ref);
  modifies $objIndex, $heap;


