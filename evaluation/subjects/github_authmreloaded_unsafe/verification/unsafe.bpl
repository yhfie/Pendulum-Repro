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
  ensures $obj == $intToRef(old($objIndex));
  ensures $objIndex == old($objIndex) + 1;
  ensures $obj != $null;
  ensures !old($heap[$obj, $alloc]);
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $other != $null;
  ensures $heap[$other, $type] == $heap[$this, $type];
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
    assert {:sourceloc "UnsaltedMethod.java", 16, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "UnsaltedMethod.java", 19, -1, -1, -1} true;
    $heap := $heap[r0, boolean$fr.xephi.authme.security.crypts.UnsaltedMethod$safeMode0 := 0];
    assert {:sourceloc "UnsaltedMethod.java", 19, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref)
{
  var $r4: ref;
  var $fakelocal_0: ref;
  var r2: ref;
  var r0: ref;
  var $r3: ref;
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
    assert {:sourceloc "UnsaltedMethod.java", 25, -1, -1, -1} true;
    call $fakelocal_0 := $new(fr.xephi.authme.security.crypts.HashedPassword);
    $r3 := $fakelocal_0;
    assert {:sourceloc "UnsaltedMethod.java", 25, -1, -1, -1} true;
    call $r4, $exception := fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String(r0, r1);
    assert {:sourceloc "UnsaltedMethod.java", 25, -1, -1, -1} true;
    call $exception := fr.xephi.authme.security.crypts.HashedPassword$$la$init$ra$$java.lang.String($r3, $r4);
    assert {:sourceloc "UnsaltedMethod.java", 25, -1, -1, -1} true;
    $return := $r3;
    goto block2;

  block2:
    return;
}



implementation fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String_java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var $r4: ref;
  var r2: ref;
  var r0: ref;
  var r3: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $heap[$this, $type] <: fr.xephi.authme.security.crypts.UnsaltedMethod;
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__1, $type] <: java.lang.String;
    assume $heap[$return, $type] <: java.lang.String;
    assume $heap[$in_parameter__2, $type] <: java.lang.String;
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
    assert {:sourceloc "UnsaltedMethod.java", 30, -1, -1, -1} true;
    call $r4, $exception := fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String(r0, r1);
    assert {:sourceloc "UnsaltedMethod.java", 30, -1, -1, -1} true;
    $return := $r4;
    goto block3;

  block3:
    return;
}



implementation fr.xephi.authme.security.crypts.UnsaltedMethod$comparePassword$java.lang.String_fr.xephi.authme.security.crypts.HashedPassword_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: int, $exception: ref)
{
  var $r5: ref;
  var $fakelocal_0: ref;
  var $z0: int;
  var r0: ref;
  var r2: ref;
  var r1: ref;
  var $r4: ref;
  var r3: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $heap[$this, $type] <: fr.xephi.authme.security.crypts.UnsaltedMethod;
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__1, $type] <: fr.xephi.authme.security.crypts.HashedPassword;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
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
    assert {:sourceloc "UnsaltedMethod.java", 39, -1, -1, -1} true;
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
    assert {:sourceloc "UnsaltedMethod.java", 39, -1, -1, -1} true;
    call $r5, $exception := fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String(r0, r1);
    assert {:sourceloc "UnsaltedMethod.java", 39, -1, -1, -1} true;
    call $z0, $exception := fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object(r0, $r4, $r5);
    assert {:sourceloc "UnsaltedMethod.java", 39, -1, -1, -1} true;
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
    assert {:sourceloc "UnsaltedMethod.java", 45, -1, -1, -1} true;
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
    assert {:sourceloc "UnsaltedMethod.java", 50, -1, -1, -1} true;
    $return := 0;
    goto block6;

  block6:
    return;
}



implementation fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $fakelocal_1: ref;
  var $z0: int;
  var $c3: int;
  var r4: ref;
  var r3: ref;
  var r1: ref;
  var $fakelocal_2: ref;
  var r2: ref;
  var $c2: int;
  var r5: ref;
  var $fakelocal_0: ref;
  var i5: int;
  var i4: int;
  var $i1: int;
  var $i0: int;

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
    assert {:sourceloc "UnsaltedMethod.java", 55, -1, -1, -1} true;
    goto anon25_Then, anon25_Else;

  anon25_Else:
    assume {:partition} r1 == r2;
    assert {:sourceloc "UnsaltedMethod.java", 55, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "UnsaltedMethod.java", 56, -1, -1, -1} true;
    $return := 1;
    goto block12;

  block12:
    return;

  anon25_Then:
    assume {:partition} r1 != r2;
    assert {:sourceloc "UnsaltedMethod.java", 55, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  block7:
    assert {:sourceloc "UnsaltedMethod.java", 58, -1, -1, -1} true;
    $z0 := $boolToInt(r2 != $null && $heap[r2, $type] <: java.lang.String);
    assert {:sourceloc "UnsaltedMethod.java", 58, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "UnsaltedMethod.java", 58, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "UnsaltedMethod.java", 59, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} !($heap[r2, $type] <: java.lang.String);
    call $fakelocal_0 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon27_Then:
    assume {:partition} $heap[r2, $type] <: java.lang.String;
    $exception := $exception;
    goto anon9;

  anon9:
    r3 := r2;
    assert {:sourceloc "UnsaltedMethod.java", 60, -1, -1, -1} true;
    i4 := $stringSizeHeap[r1];
    assert {:sourceloc "UnsaltedMethod.java", 61, -1, -1, -1} true;
    $i0 := $stringSizeHeap[r3];
    assert {:sourceloc "UnsaltedMethod.java", 61, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} i4 == $i0;
    assert {:sourceloc "UnsaltedMethod.java", 61, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "UnsaltedMethod.java", 62, -1, -1, -1} true;
    call r4, $exception := java.lang.String$toCharArray$(r1);
    assert {:sourceloc "UnsaltedMethod.java", 63, -1, -1, -1} true;
    call r5, $exception := java.lang.String$toCharArray$(r3);
    assert {:sourceloc "UnsaltedMethod.java", 64, -1, -1, -1} true;
    i5 := 0;
    goto block9;

  block9:
    call $return, $exception, $fakelocal_1, $c3, $fakelocal_2, $c2, i5, i4, $i1 := fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9($return, $exception, $fakelocal_1, $c3, r4, $fakelocal_2, $c2, r5, i5, i4, $i1);
    goto block9_last;

  anon29_Else:
    assume {:partition} $i1 != 0;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(i5 < $arrSizeHeap[r4] && i5 >= 0);
    call $fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon30_Then:
    assume {:partition} i5 < $arrSizeHeap[r4] && i5 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $c3 := $intArrHeap[r4][i5];
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(i5 < $arrSizeHeap[r5] && i5 >= 0);
    call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon31_Then:
    assume {:partition} i5 < $arrSizeHeap[r5] && i5 >= 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $c2 := $intArrHeap[r5][i5];
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} $c3 != $c2;
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} {:comment "elseblock"} true;
    goto anon24;

  anon24:
    assert {:sourceloc "UnsaltedMethod.java", 67, -1, -1, -1} true;
    $return := 0;
    goto block12;

  anon32_Then:
    assume {:partition} $c3 == $c2;
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  block11:
    assert {:sourceloc "UnsaltedMethod.java", 68, -1, -1, -1} true;
    i5 := i5 + 1;
    assert {:sourceloc "UnsaltedMethod.java", 68, -1, -1, -1} true;
    goto block11_dummy;

  anon29_Then:
    assume {:partition} $i1 == 0;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "UnsaltedMethod.java", 70, -1, -1, -1} true;
    $return := 1;
    goto block12;

  anon28_Then:
    assume {:partition} i4 != $i0;
    assert {:sourceloc "UnsaltedMethod.java", 61, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "UnsaltedMethod.java", 73, -1, -1, -1} true;
    $return := 0;
    goto block12;

  anon26_Then:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "UnsaltedMethod.java", 58, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block11_dummy:
    assume false;
    return;

  block9_last:
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    $i1 := i4;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    i4 := i4 + -1;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;
}



implementation fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $fakelocal_3: ref;
  var $b3: int;
  var $i2: int;
  var $b4: int;
  var i7: int;
  var $fakelocal_4: ref;
  var $i1: int;
  var $fakelocal_1: ref;
  var $b5: int;
  var $z0: int;
  var $fakelocal_0: ref;
  var r1: ref;
  var $i0: int;
  var b6: int;
  var $fakelocal_2: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "UnsaltedMethod.java", 93, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "UnsaltedMethod.java", 93, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "UnsaltedMethod.java", 95, -1, -1, -1} true;
    $return := 1;
    goto block21;

  block21:
    return;

  anon33_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "UnsaltedMethod.java", 93, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  block13:
    assert {:sourceloc "UnsaltedMethod.java", 94, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} r0 != $null;
    assert {:sourceloc "UnsaltedMethod.java", 94, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "UnsaltedMethod.java", 95, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} r1 == $null;
    assert {:sourceloc "UnsaltedMethod.java", 95, -1, -1, -1} {:comment "elseblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "UnsaltedMethod.java", 95, -1, -1, -1} true;
    $return := 0;
    goto block21;

  anon35_Then:
    assume {:partition} r1 != $null;
    assert {:sourceloc "UnsaltedMethod.java", 95, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  block15:
    assert {:sourceloc "UnsaltedMethod.java", 97, -1, -1, -1} true;
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
    assert {:sourceloc "UnsaltedMethod.java", 97, -1, -1, -1} true;
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
    assert {:sourceloc "UnsaltedMethod.java", 97, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} $i1 != $i0;
    assert {:sourceloc "UnsaltedMethod.java", 97, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "UnsaltedMethod.java", 98, -1, -1, -1} true;
    $return := 0;
    goto block21;

  anon38_Then:
    assume {:partition} $i1 == $i0;
    assert {:sourceloc "UnsaltedMethod.java", 97, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  block16:
    assert {:sourceloc "UnsaltedMethod.java", 101, -1, -1, -1} true;
    b6 := 0;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    i7 := 0;
    goto block17;

  block17:
    call $return, $exception, $fakelocal_3, $b3, $i2, $b4, i7, $fakelocal_4, $b5, b6, $fakelocal_2 := fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17($return, $exception, $fakelocal_3, $b3, $i2, $b4, i7, $fakelocal_4, $b5, r1, b6, $fakelocal_2, r0);
    goto block17_last;

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
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Else:
    assume {:partition} $i2 > i7;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} {:comment "elseblock"} true;
    goto anon23;

  anon23:
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
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
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
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
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    $b5 := $xorInt($b4, $b3);
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    b6 := $bitOr(b6, $b5);
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    i7 := i7 + 1;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    goto anon29_dummy;

  anon40_Then:
    assume {:partition} i7 >= $i2;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} {:comment "thenblock"} true;
    goto block18;

  block18:
    assert {:sourceloc "UnsaltedMethod.java", 106, -1, -1, -1} true;
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} b6 == 0;
    assert {:sourceloc "UnsaltedMethod.java", 106, -1, -1, -1} {:comment "elseblock"} true;
    goto anon32;

  anon32:
    assert {:sourceloc "UnsaltedMethod.java", 106, -1, -1, -1} true;
    $z0 := 1;
    assert {:sourceloc "UnsaltedMethod.java", 106, -1, -1, -1} true;
    goto block20;

  block20:
    assert {:sourceloc "UnsaltedMethod.java", 106, -1, -1, -1} true;
    $return := $z0;
    goto block21;

  anon43_Then:
    assume {:partition} b6 != 0;
    assert {:sourceloc "UnsaltedMethod.java", 106, -1, -1, -1} {:comment "thenblock"} true;
    goto block19;

  block19:
    assert {:sourceloc "UnsaltedMethod.java", 106, -1, -1, -1} true;
    $z0 := 0;
    goto block20;

  anon34_Then:
    assume {:partition} r0 == $null;
    assert {:sourceloc "UnsaltedMethod.java", 94, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  anon29_dummy:
    assume false;
    return;

  block17_last:
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
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
    goto block22;

  block22:
    return;
}



implementation java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var $c1: int;
  var $fakelocal_0: ref;
  var r0: ref;
  var $r1: ref;
  var i0: int;

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
    goto block23;

  block23:
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
    goto block24;

  block24:
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
    goto block25;

  block25:
    return;
}



implementation java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var $r0: ref;
  var z0: int;

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
    goto block26;

  block26:
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
    goto block27;

  block27:
    return;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_1: ref, 
    in_$c3: int, 
    in_r4: ref, 
    in_$fakelocal_2: ref, 
    in_$c2: int, 
    in_r5: ref, 
    in_i5: int, 
    in_i4: int, 
    in_$i1: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_1: ref, 
    out_$c3: int, 
    out_$fakelocal_2: ref, 
    out_$c2: int, 
    out_i5: int, 
    out_i4: int, 
    out_$i1: int)
{

  entry:
    out_$return, out_$exception, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2, out_i5, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_1, in_$c3, in_$fakelocal_2, in_$c2, in_i5, in_i4, in_$i1;
    goto block9;

  block9:
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    out_$i1 := out_i4;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    out_i4 := out_i4 + -1;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Then:
    assume {:partition} out_$i1 == 0;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2, out_i5, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_1, in_$c3, in_$fakelocal_2, in_$c2, in_i5, in_i4, in_$i1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  block11:
    assert {:sourceloc "UnsaltedMethod.java", 68, -1, -1, -1} true;
    out_i5 := out_i5 + 1;
    assert {:sourceloc "UnsaltedMethod.java", 68, -1, -1, -1} true;
    goto block11_dummy;

  anon32_Then:
    assume {:partition} out_$c3 == out_$c2;
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  anon21:
    out_$c2 := $intArrHeap[in_r5][out_i5];
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} out_$c3 != out_$c2;
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} {:comment "elseblock"} true;
    out_$return, out_$exception, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2, out_i5, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_1, in_$c3, in_$fakelocal_2, in_$c2, in_i5, in_i4, in_$i1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon31_Then:
    assume {:partition} out_i5 < $arrSizeHeap[in_r5] && out_i5 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    out_$c3 := $intArrHeap[in_r4][out_i5];
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(out_i5 < $arrSizeHeap[in_r5] && out_i5 >= 0);
    call out_$fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2, out_i5, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_1, in_$c3, in_$fakelocal_2, in_$c2, in_i5, in_i4, in_$i1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon30_Then:
    assume {:partition} out_i5 < $arrSizeHeap[in_r4] && out_i5 >= 0;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(out_i5 < $arrSizeHeap[in_r4] && out_i5 >= 0);
    call out_$fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2, out_i5, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_1, in_$c3, in_$fakelocal_2, in_$c2, in_i5, in_i4, in_$i1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon29_Else:
    assume {:partition} out_$i1 != 0;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  block11_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2, out_i5, out_i4, out_$i1 := fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9(out_$return, out_$exception, out_$fakelocal_1, out_$c3, in_r4, out_$fakelocal_2, out_$c2, in_r5, out_i5, out_i4, out_$i1);
    return;

  exit:
    return;
}



procedure fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_1: ref, 
    in_$c3: int, 
    in_r4: ref, 
    in_$fakelocal_2: ref, 
    in_$c2: int, 
    in_r5: ref, 
    in_i5: int, 
    in_i4: int, 
    in_$i1: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_1: ref, 
    out_$c3: int, 
    out_$fakelocal_2: ref, 
    out_$c2: int, 
    out_i5: int, 
    out_i4: int, 
    out_$i1: int);
  modifies $objIndex, $heap;



implementation fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_3: ref, 
    in_$b3: int, 
    in_$i2: int, 
    in_$b4: int, 
    in_i7: int, 
    in_$fakelocal_4: ref, 
    in_$b5: int, 
    in_r1: ref, 
    in_b6: int, 
    in_$fakelocal_2: ref, 
    in_r0: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_3: ref, 
    out_$b3: int, 
    out_$i2: int, 
    out_$b4: int, 
    out_i7: int, 
    out_$fakelocal_4: ref, 
    out_$b5: int, 
    out_b6: int, 
    out_$fakelocal_2: ref)
{

  entry:
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$i2, out_$b4, out_i7, out_$fakelocal_4, out_$b5, out_b6, out_$fakelocal_2 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$i2, in_$b4, in_i7, in_$fakelocal_4, in_$b5, in_b6, in_$fakelocal_2;
    goto block17;

  block17:
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} in_r0 == $null;
    call out_$fakelocal_2 := $new(java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$i2, out_$b4, out_i7, out_$fakelocal_4, out_$b5, out_b6, out_$fakelocal_2 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$i2, in_$b4, in_i7, in_$fakelocal_4, in_$b5, in_b6, in_$fakelocal_2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon29:
    out_$b3 := $intArrHeap[in_r1][out_i7];
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    out_$b5 := $xorInt(out_$b4, out_$b3);
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    out_b6 := $bitOr(out_b6, out_$b5);
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    out_i7 := out_i7 + 1;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    goto anon29_dummy;

  anon42_Then:
    assume {:partition} out_i7 < $arrSizeHeap[in_r1] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon29;

  anon26:
    out_$b4 := $intArrHeap[in_r0][out_i7];
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    goto anon42_Then, anon42_Else;

  anon42_Else:
    assume {:partition} !(out_i7 < $arrSizeHeap[in_r1] && out_i7 >= 0);
    call out_$fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$i2, out_$b4, out_i7, out_$fakelocal_4, out_$b5, out_b6, out_$fakelocal_2 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$i2, in_$b4, in_i7, in_$fakelocal_4, in_$b5, in_b6, in_$fakelocal_2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon41_Then:
    assume {:partition} out_i7 < $arrSizeHeap[in_r0] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon26;

  anon23:
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    goto anon41_Then, anon41_Else;

  anon41_Else:
    assume {:partition} !(out_i7 < $arrSizeHeap[in_r0] && out_i7 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$i2, out_$b4, out_i7, out_$fakelocal_4, out_$b5, out_b6, out_$fakelocal_2 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$i2, in_$b4, in_i7, in_$fakelocal_4, in_$b5, in_b6, in_$fakelocal_2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon40_Else:
    assume {:partition} out_$i2 > out_i7;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} {:comment "elseblock"} true;
    goto anon23;

  anon20:
    out_$i2 := $arrSizeHeap[in_r0];
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Then:
    assume {:partition} out_i7 >= out_$i2;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$i2, out_$b4, out_i7, out_$fakelocal_4, out_$b5, out_b6, out_$fakelocal_2 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$i2, in_$b4, in_i7, in_$fakelocal_4, in_$b5, in_b6, in_$fakelocal_2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon39_Then:
    assume {:partition} in_r0 != $null;
    out_$exception := out_$exception;
    goto anon20;

  anon29_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$i2, out_$b4, out_i7, out_$fakelocal_4, out_$b5, out_b6, out_$fakelocal_2 := fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17(out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$i2, out_$b4, out_i7, out_$fakelocal_4, out_$b5, in_r1, out_b6, out_$fakelocal_2, in_r0);
    return;

  exit:
    return;
}



procedure fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_3: ref, 
    in_$b3: int, 
    in_$i2: int, 
    in_$b4: int, 
    in_i7: int, 
    in_$fakelocal_4: ref, 
    in_$b5: int, 
    in_r1: ref, 
    in_b6: int, 
    in_$fakelocal_2: ref, 
    in_r0: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_3: ref, 
    out_$b3: int, 
    out_$i2: int, 
    out_$b4: int, 
    out_i7: int, 
    out_$fakelocal_4: ref, 
    out_$b5: int, 
    out_b6: int, 
    out_$fakelocal_2: ref);
  modifies $objIndex, $heap;


