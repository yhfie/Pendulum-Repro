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

const {:sourceloc "Math.java", -1, -1, -1, -1} unique java.lang.Object: javaType extends complete;

const {:sourceloc "Math.java", -1, -1, -1, -1} unique java.lang.Math: javaType extends unique java.lang.Object complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.String: javaType extends unique java.lang.Object complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.io.Serializable: javaType extends complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.Throwable: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.Exception: javaType extends unique java.lang.Throwable complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.RuntimeException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.IndexOutOfBoundsException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.ArrayIndexOutOfBoundsException: javaType extends unique java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique java.lang.Boolean: javaType extends unique java.lang.Object complete;

const {:sourceloc "Safe.java", -1, -1, -1, -1} unique sg.edu.nus.comp.tsunami.safe.Safe: javaType extends unique java.lang.Object complete;

const {:sourceloc "User.java", -1, -1, -1, -1} unique User: javaType extends unique java.lang.Object complete;

const {:sourceloc "User.java", -1, -1, -1, -1} unique java.lang.Comparable: javaType extends complete;

const {:sourceloc "User.java", -1, -1, -1, -1} unique java.lang.CharSequence: javaType extends complete;

const {:sourceloc "User.java", -1, -1, -1, -1} unique java.lang.ClassCastException: javaType extends unique java.lang.RuntimeException complete;

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

var char$lp$$rp$$java.lang.String$chars259: Field ref;

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
  ensures $objIndex == old($objIndex) + 1;
  ensures $obj == $intToRef(old($objIndex));
  ensures $obj != $null;
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];
  ensures !old($heap[$obj, $alloc]);



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $heap[$other, $type] == $heap[$this, $type];
  ensures $heap[$other, $alloc] <==> true;
  ensures $other != $null;



procedure int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure java.lang.Math$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.Math$min$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure java.lang.String$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



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



procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
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



procedure sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);



procedure User$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure User$passwordsEqual_unsafe$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



implementation java.lang.Math$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Math.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.Math;
    assume {:sourceloc "Math.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Math.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Math.java", 3, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "Math.java", 3, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation java.lang.Math$min$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var i0: int;
  var i1: int;
  var $i2: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Math.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Math.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__1;
    assert {:sourceloc "Math.java", 5, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} i1 > i0;
    assert {:sourceloc "Math.java", 5, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Math.java", 5, -1, -1, -1} true;
    $i2 := i0;
    assert {:sourceloc "Math.java", 5, -1, -1, -1} true;
    goto block3;

  block3:
    assert {:sourceloc "Math.java", 5, -1, -1, -1} true;
    $return := $i2;
    goto block4;

  block4:
    return;

  anon4_Then:
    assume {:partition} i0 >= i1;
    assert {:sourceloc "Math.java", 5, -1, -1, -1} {:comment "thenblock"} true;
    goto block2;

  block2:
    assert {:sourceloc "Math.java", 5, -1, -1, -1} true;
    $i2 := i1;
    goto block3;
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
    goto block5;

  block5:
    return;
}



implementation java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $r1: ref;
  var $c1: int;
  var i0: int;
  var $fakelocal_0: ref;

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
    $r1 := $heap[r0, char$lp$$rp$$java.lang.String$chars259];
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
    goto block6;

  block6:
    return;
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
    goto block7;

  block7:
    return;
}



implementation java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var z0: int;
  var $r0: ref;
  var $fakelocal_0: ref;

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
    goto block8;

  block8:
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
    goto block9;

  block9:
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
    goto block10;

  block10:
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
    goto block11;

  block11:
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 1;
    goto block12;

  block12:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    $return := z1;
    goto block13;

  block13:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block12;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block11;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $z2: int;
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
    goto block14;

  block14:
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
    goto block15;

  block15:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b3: int;
  var l1: int;
  var z0: int;
  var $b2: int;
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
    goto block16;

  block16:
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
    goto block17;

  block17:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    $return := z0;
    goto block18;

  block18:
    return;

  anon8_Then:
    assume {:partition} $b3 > 0;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block17;

  anon7_Then:
    assume {:partition} $b2 <= 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l0: int;
  var l1: int;
  var z0: int;
  var $b2: int;
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
    goto block19;

  block19:
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
    goto block20;

  block20:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    $return := z0;
    goto block21;

  block21:
    return;

  anon8_Then:
    assume {:partition} $b3 < 0;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block20;

  anon7_Then:
    assume {:partition} $b2 >= 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block19;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var l0: int;
  var l1: int;
  var $b3: int;
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
    goto block22;

  block22:
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
    goto block23;

  block23:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    $return := z0;
    goto block24;

  block24:
    return;

  anon8_Then:
    assume {:partition} $b3 >= 0;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block23;

  anon7_Then:
    assume {:partition} $b2 < 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b2: int;
  var l1: int;
  var $b3: int;
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
    goto block25;

  block25:
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
    goto block26;

  block26:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    $return := z0;
    goto block27;

  block27:
    return;

  anon8_Then:
    assume {:partition} $b3 <= 0;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block26;

  anon7_Then:
    assume {:partition} $b2 > 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block25;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var $b3: int;
  var z0: int;
  var l1: int;
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
    goto block28;

  block28:
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
    goto block29;

  block29:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    $return := z0;
    goto block30;

  block30:
    return;

  anon8_Then:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block29;

  anon7_Then:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto block28;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b3: int;
  var l0: int;
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
    goto block31;

  block31:
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
    goto block32;

  block32:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    $return := z0;
    goto block33;

  block33:
    return;

  anon8_Then:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto block32;

  anon7_Then:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block31;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b1: int;
  var z0: int;
  var $b0: int;
  var d0: int;
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
    goto block34;

  block34:
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
    goto block35;

  block35:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    $return := z0;
    goto block36;

  block36:
    return;

  anon8_Then:
    assume {:partition} $b1 > 0;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "thenblock"} true;
    goto block35;

  anon7_Then:
    assume {:partition} $b0 <= 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "thenblock"} true;
    goto block34;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b0: int;
  var d0: int;
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
    goto block37;

  block37:
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
    goto block38;

  block38:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    $return := z0;
    goto block39;

  block39:
    return;

  anon8_Then:
    assume {:partition} $b1 < 0;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block38;

  anon7_Then:
    assume {:partition} $b0 >= 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block37;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
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
    goto block40;

  block40:
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
    goto block41;

  block41:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    $return := z0;
    goto block42;

  block42:
    return;

  anon8_Then:
    assume {:partition} $b1 >= 0;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block41;

  anon7_Then:
    assume {:partition} $b0 < 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block40;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b1: int;
  var $b0: int;
  var d1: int;
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
    goto block43;

  block43:
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
    goto block44;

  block44:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    $return := z0;
    goto block45;

  block45:
    return;

  anon8_Then:
    assume {:partition} $b1 <= 0;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "thenblock"} true;
    goto block44;

  anon7_Then:
    assume {:partition} $b0 > 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block43;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var z0: int;
  var $b0: int;
  var $b1: int;
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
    goto block46;

  block46:
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
    goto block47;

  block47:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    $return := z0;
    goto block48;

  block48:
    return;

  anon8_Then:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "thenblock"} true;
    goto block47;

  anon7_Then:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "thenblock"} true;
    goto block46;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d1: int;
  var z0: int;
  var d0: int;
  var $b0: int;
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
    goto block49;

  block49:
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
    goto block50;

  block50:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    $return := z0;
    goto block51;

  block51:
    return;

  anon8_Then:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "thenblock"} true;
    goto block50;

  anon7_Then:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "thenblock"} true;
    goto block49;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r1: ref;
  var r0: ref;
  var z0: int;

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
    goto block52;

  block52:
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 0;
    goto block53;

  block53:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    $return := z0;
    goto block54;

  block54:
    return;

  anon8_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block53;

  anon7_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block52;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r0: ref;
  var z0: int;
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
    goto block55;

  block55:
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 0;
    goto block56;

  block56:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    $return := z0;
    goto block57;

  block57:
    return;

  anon8_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block56;

  anon7_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block55;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var r2: ref;
  var z0: int;
  var r0: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
    assume $heap[$return, $type] <: java.lang.Object;
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
    goto block58;

  block58:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r1;
    goto block59;

  block59:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    $return := r2;
    goto block60;

  block60:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block59;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block58;
}



implementation User$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "User.java", -1, -1, -1, -1} $heap[$this, $type] <: User;
    assume {:sourceloc "User.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "User.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "User.java", 3, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "User.java", 3, -1, -1, -1} true;
    goto block61;

  block61:
    return;
}



implementation User$passwordsEqual_unsafe$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $r12: ref;
  var $fakelocal_5: ref;
  var $r7: ref;
  var $r9: ref;
  var $r3: ref;
  var $r4: ref;
  var i7: int;
  var i2: int;
  var z4: int;
  var $r19: ref;
  var $fakelocal_2: ref;
  var $r13: ref;
  var z0: int;
  var $r6: ref;
  var r0: ref;
  var $r17: ref;
  var $z1: int;
  var $c3: int;
  var i0: int;
  var z2: int;
  var i1: int;
  var $r8: ref;
  var z5: int;
  var $r2: ref;
  var $fakelocal_3: ref;
  var $r10: ref;
  var $c5: int;
  var $fakelocal_1: ref;
  var $r15: ref;
  var $r5: ref;
  var $l6: int;
  var $l4: int;
  var $r11: ref;
  var $fakelocal_7: ref;
  var $fakelocal_6: ref;
  var $fakelocal_0: ref;
  var $fakelocal_4: ref;
  var $r14: ref;
  var $r16: ref;
  var z3: int;
  var r1: ref;
  var $r18: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1, $type] <: java.lang.String;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "User.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "User.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "User.java", 29, -1, -1, -1} true;
    z2 := 0;
    assert {:sourceloc "User.java", 30, -1, -1, -1} true;
    z3 := 0;
    assert {:sourceloc "User.java", 31, -1, -1, -1} true;
    z4 := 1;
    assert {:sourceloc "User.java", 32, -1, -1, -1} true;
    z5 := 1;
    assert {:sourceloc "User.java", 33, -1, -1, -1} true;
    i0 := $stringSizeHeap[r0];
    assert {:sourceloc "User.java", 34, -1, -1, -1} true;
    i1 := $stringSizeHeap[r1];
    assert {:sourceloc "User.java", 35, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} i0 != i1;
    assert {:sourceloc "User.java", 35, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "User.java", 36, -1, -1, -1} true;
    z4 := 0;
    goto block62;

  block62:
    assert {:sourceloc "User.java", 38, -1, -1, -1} true;
    call i2, $exception := java.lang.Math$min$int_int(i0, i1);
    assert {:sourceloc "User.java", 39, -1, -1, -1} true;
    i7 := 0;
    goto block63;

  block63:
    call $return, $exception, $r12, $fakelocal_5, $r7, $r9, i7, $r19, $fakelocal_2, $r13, z0, $r6, $r17, $c3, z2, $r8, z5, $fakelocal_3, $r10, $c5, $fakelocal_1, $r15, $l6, $l4, $r11, $fakelocal_0, $fakelocal_4, $r14, $r16, z3, $r18 := User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63($return, $exception, $r12, $fakelocal_5, $r7, $r9, i7, i2, $r19, $fakelocal_2, $r13, z0, $r6, r0, $r17, $c3, z2, $r8, z5, $fakelocal_3, $r10, $c5, $fakelocal_1, $r15, $l6, $l4, $r11, $fakelocal_0, $fakelocal_4, $r14, $r16, z3, r1, $r18);
    goto block63_last;

  anon32_Else:
    assume {:partition} i2 > i7;
    assert {:sourceloc "User.java", 39, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    call $c3, $exception := java.lang.String$charAt$int(r0, i7);
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    $l4 := $c3;
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    call $c5, $exception := java.lang.String$charAt$int(r1, i7);
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    $l6 := $c5;
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    call z0, $exception := sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($l4, $l6);
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    call $r6, $exception := java.lang.Boolean$valueOf$boolean(z2);
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    call $r7, $exception := java.lang.Boolean$valueOf$boolean(0);
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    call $r8, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z3, $r6, $r7);
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    call $r9, $exception := java.lang.Boolean$valueOf$boolean(z2);
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    call $r10, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r8, $r9);
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !($heap[$r10, $type] <: java.lang.Boolean);
    call $fakelocal_0 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon33_Then:
    assume {:partition} $heap[$r10, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon9;

  anon9:
    $r11 := $r10;
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} $r11 == $null;
    call $fakelocal_1 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon34_Then:
    assume {:partition} $r11 != $null;
    $exception := $exception;
    goto anon12;

  anon12:
    call z2, $exception := java.lang.Boolean$booleanValue$($r11);
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    call $r12, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    call $r13, $exception := java.lang.Boolean$valueOf$boolean(z3);
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    call $r14, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r12, $r13);
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} !($heap[$r14, $type] <: java.lang.Boolean);
    call $fakelocal_2 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon35_Then:
    assume {:partition} $heap[$r14, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon15;

  anon15:
    $r15 := $r14;
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} $r15 == $null;
    call $fakelocal_3 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon36_Then:
    assume {:partition} $r15 != $null;
    $exception := $exception;
    goto anon18;

  anon18:
    call z3, $exception := java.lang.Boolean$booleanValue$($r15);
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    call $r16, $exception := java.lang.Boolean$valueOf$boolean(z5);
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    call $r17, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    call $r18, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r16, $r17);
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon37_Else:
    assume {:partition} !($heap[$r18, $type] <: java.lang.Boolean);
    call $fakelocal_4 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon37_Then:
    assume {:partition} $heap[$r18, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon21;

  anon21:
    $r19 := $r18;
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} $r19 == $null;
    call $fakelocal_5 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon38_Then:
    assume {:partition} $r19 != $null;
    $exception := $exception;
    goto anon24;

  anon24:
    call z5, $exception := java.lang.Boolean$booleanValue$($r19);
    assert {:sourceloc "User.java", 39, -1, -1, -1} true;
    i7 := i7 + 1;
    assert {:sourceloc "User.java", 39, -1, -1, -1} true;
    goto anon24_dummy;

  anon32_Then:
    assume {:partition} i7 >= i2;
    assert {:sourceloc "User.java", 39, -1, -1, -1} {:comment "thenblock"} true;
    goto block64;

  block64:
    assert {:sourceloc "User.java", 52, -1, -1, -1} true;
    call $r2, $exception := java.lang.Boolean$valueOf$boolean(z2);
    assert {:sourceloc "User.java", 52, -1, -1, -1} true;
    call $r3, $exception := java.lang.Boolean$valueOf$boolean(z4);
    assert {:sourceloc "User.java", 52, -1, -1, -1} true;
    call $r4, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z3, $r2, $r3);
    assert {:sourceloc "User.java", 52, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} !($heap[$r4, $type] <: java.lang.Boolean);
    call $fakelocal_6 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon39_Then:
    assume {:partition} $heap[$r4, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon27;

  anon27:
    $r5 := $r4;
    assert {:sourceloc "User.java", 52, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Else:
    assume {:partition} $r5 == $null;
    call $fakelocal_7 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_7;
    return;

  anon40_Then:
    assume {:partition} $r5 != $null;
    $exception := $exception;
    goto anon30;

  anon30:
    call $z1, $exception := java.lang.Boolean$booleanValue$($r5);
    assert {:sourceloc "User.java", 52, -1, -1, -1} true;
    $return := $z1;
    goto block65;

  block65:
    return;

  anon31_Then:
    assume {:partition} i0 == i1;
    assert {:sourceloc "User.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block62;

  anon24_dummy:
    assume false;
    return;

  block63_last:
    assert {:sourceloc "User.java", 39, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63(in_$return: int, 
    in_$exception: ref, 
    in_$r12: ref, 
    in_$fakelocal_5: ref, 
    in_$r7: ref, 
    in_$r9: ref, 
    in_i7: int, 
    in_i2: int, 
    in_$r19: ref, 
    in_$fakelocal_2: ref, 
    in_$r13: ref, 
    in_z0: int, 
    in_$r6: ref, 
    in_r0: ref, 
    in_$r17: ref, 
    in_$c3: int, 
    in_z2: int, 
    in_$r8: ref, 
    in_z5: int, 
    in_$fakelocal_3: ref, 
    in_$r10: ref, 
    in_$c5: int, 
    in_$fakelocal_1: ref, 
    in_$r15: ref, 
    in_$l6: int, 
    in_$l4: int, 
    in_$r11: ref, 
    in_$fakelocal_0: ref, 
    in_$fakelocal_4: ref, 
    in_$r14: ref, 
    in_$r16: ref, 
    in_z3: int, 
    in_r1: ref, 
    in_$r18: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$r12: ref, 
    out_$fakelocal_5: ref, 
    out_$r7: ref, 
    out_$r9: ref, 
    out_i7: int, 
    out_$r19: ref, 
    out_$fakelocal_2: ref, 
    out_$r13: ref, 
    out_z0: int, 
    out_$r6: ref, 
    out_$r17: ref, 
    out_$c3: int, 
    out_z2: int, 
    out_$r8: ref, 
    out_z5: int, 
    out_$fakelocal_3: ref, 
    out_$r10: ref, 
    out_$c5: int, 
    out_$fakelocal_1: ref, 
    out_$r15: ref, 
    out_$l6: int, 
    out_$l4: int, 
    out_$r11: ref, 
    out_$fakelocal_0: ref, 
    out_$fakelocal_4: ref, 
    out_$r14: ref, 
    out_$r16: ref, 
    out_z3: int, 
    out_$r18: ref)
{

  entry:
    out_$return, out_$exception, out_$r12, out_$fakelocal_5, out_$r7, out_$r9, out_i7, out_$r19, out_$fakelocal_2, out_$r13, out_z0, out_$r6, out_$r17, out_$c3, out_z2, out_$r8, out_z5, out_$fakelocal_3, out_$r10, out_$c5, out_$fakelocal_1, out_$r15, out_$l6, out_$l4, out_$r11, out_$fakelocal_0, out_$fakelocal_4, out_$r14, out_$r16, out_z3, out_$r18 := in_$return, in_$exception, in_$r12, in_$fakelocal_5, in_$r7, in_$r9, in_i7, in_$r19, in_$fakelocal_2, in_$r13, in_z0, in_$r6, in_$r17, in_$c3, in_z2, in_$r8, in_z5, in_$fakelocal_3, in_$r10, in_$c5, in_$fakelocal_1, in_$r15, in_$l6, in_$l4, in_$r11, in_$fakelocal_0, in_$fakelocal_4, in_$r14, in_$r16, in_z3, in_$r18;
    goto block63;

  block63:
    assert {:sourceloc "User.java", 39, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Then:
    assume {:partition} out_i7 >= in_i2;
    assert {:sourceloc "User.java", 39, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$r12, out_$fakelocal_5, out_$r7, out_$r9, out_i7, out_$r19, out_$fakelocal_2, out_$r13, out_z0, out_$r6, out_$r17, out_$c3, out_z2, out_$r8, out_z5, out_$fakelocal_3, out_$r10, out_$c5, out_$fakelocal_1, out_$r15, out_$l6, out_$l4, out_$r11, out_$fakelocal_0, out_$fakelocal_4, out_$r14, out_$r16, out_z3, out_$r18 := in_$return, in_$exception, in_$r12, in_$fakelocal_5, in_$r7, in_$r9, in_i7, in_$r19, in_$fakelocal_2, in_$r13, in_z0, in_$r6, in_$r17, in_$c3, in_z2, in_$r8, in_z5, in_$fakelocal_3, in_$r10, in_$c5, in_$fakelocal_1, in_$r15, in_$l6, in_$l4, in_$r11, in_$fakelocal_0, in_$fakelocal_4, in_$r14, in_$r16, in_z3, in_$r18;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon24:
    call out_z5, out_$exception := java.lang.Boolean$booleanValue$(out_$r19);
    assert {:sourceloc "User.java", 39, -1, -1, -1} true;
    out_i7 := out_i7 + 1;
    assert {:sourceloc "User.java", 39, -1, -1, -1} true;
    goto anon24_dummy;

  anon38_Then:
    assume {:partition} out_$r19 != $null;
    out_$exception := out_$exception;
    goto anon24;

  anon21:
    out_$r19 := out_$r18;
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} out_$r19 == $null;
    call out_$fakelocal_5 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$r12, out_$fakelocal_5, out_$r7, out_$r9, out_i7, out_$r19, out_$fakelocal_2, out_$r13, out_z0, out_$r6, out_$r17, out_$c3, out_z2, out_$r8, out_z5, out_$fakelocal_3, out_$r10, out_$c5, out_$fakelocal_1, out_$r15, out_$l6, out_$l4, out_$r11, out_$fakelocal_0, out_$fakelocal_4, out_$r14, out_$r16, out_z3, out_$r18 := in_$return, in_$exception, in_$r12, in_$fakelocal_5, in_$r7, in_$r9, in_i7, in_$r19, in_$fakelocal_2, in_$r13, in_z0, in_$r6, in_$r17, in_$c3, in_z2, in_$r8, in_z5, in_$fakelocal_3, in_$r10, in_$c5, in_$fakelocal_1, in_$r15, in_$l6, in_$l4, in_$r11, in_$fakelocal_0, in_$fakelocal_4, in_$r14, in_$r16, in_z3, in_$r18;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon37_Then:
    assume {:partition} $heap[out_$r18, $type] <: java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    call out_z3, out_$exception := java.lang.Boolean$booleanValue$(out_$r15);
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    call out_$r16, out_$exception := java.lang.Boolean$valueOf$boolean(out_z5);
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    call out_$r17, out_$exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    call out_$r18, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z0, out_$r16, out_$r17);
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon37_Else:
    assume {:partition} !($heap[out_$r18, $type] <: java.lang.Boolean);
    call out_$fakelocal_4 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$r12, out_$fakelocal_5, out_$r7, out_$r9, out_i7, out_$r19, out_$fakelocal_2, out_$r13, out_z0, out_$r6, out_$r17, out_$c3, out_z2, out_$r8, out_z5, out_$fakelocal_3, out_$r10, out_$c5, out_$fakelocal_1, out_$r15, out_$l6, out_$l4, out_$r11, out_$fakelocal_0, out_$fakelocal_4, out_$r14, out_$r16, out_z3, out_$r18 := in_$return, in_$exception, in_$r12, in_$fakelocal_5, in_$r7, in_$r9, in_i7, in_$r19, in_$fakelocal_2, in_$r13, in_z0, in_$r6, in_$r17, in_$c3, in_z2, in_$r8, in_z5, in_$fakelocal_3, in_$r10, in_$c5, in_$fakelocal_1, in_$r15, in_$l6, in_$l4, in_$r11, in_$fakelocal_0, in_$fakelocal_4, in_$r14, in_$r16, in_z3, in_$r18;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon36_Then:
    assume {:partition} out_$r15 != $null;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    out_$r15 := out_$r14;
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} out_$r15 == $null;
    call out_$fakelocal_3 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$r12, out_$fakelocal_5, out_$r7, out_$r9, out_i7, out_$r19, out_$fakelocal_2, out_$r13, out_z0, out_$r6, out_$r17, out_$c3, out_z2, out_$r8, out_z5, out_$fakelocal_3, out_$r10, out_$c5, out_$fakelocal_1, out_$r15, out_$l6, out_$l4, out_$r11, out_$fakelocal_0, out_$fakelocal_4, out_$r14, out_$r16, out_z3, out_$r18 := in_$return, in_$exception, in_$r12, in_$fakelocal_5, in_$r7, in_$r9, in_i7, in_$r19, in_$fakelocal_2, in_$r13, in_z0, in_$r6, in_$r17, in_$c3, in_z2, in_$r8, in_z5, in_$fakelocal_3, in_$r10, in_$c5, in_$fakelocal_1, in_$r15, in_$l6, in_$l4, in_$r11, in_$fakelocal_0, in_$fakelocal_4, in_$r14, in_$r16, in_z3, in_$r18;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon35_Then:
    assume {:partition} $heap[out_$r14, $type] <: java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon15;

  anon12:
    call out_z2, out_$exception := java.lang.Boolean$booleanValue$(out_$r11);
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    call out_$r12, out_$exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    call out_$r13, out_$exception := java.lang.Boolean$valueOf$boolean(out_z3);
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    call out_$r14, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z0, out_$r12, out_$r13);
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} !($heap[out_$r14, $type] <: java.lang.Boolean);
    call out_$fakelocal_2 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$r12, out_$fakelocal_5, out_$r7, out_$r9, out_i7, out_$r19, out_$fakelocal_2, out_$r13, out_z0, out_$r6, out_$r17, out_$c3, out_z2, out_$r8, out_z5, out_$fakelocal_3, out_$r10, out_$c5, out_$fakelocal_1, out_$r15, out_$l6, out_$l4, out_$r11, out_$fakelocal_0, out_$fakelocal_4, out_$r14, out_$r16, out_z3, out_$r18 := in_$return, in_$exception, in_$r12, in_$fakelocal_5, in_$r7, in_$r9, in_i7, in_$r19, in_$fakelocal_2, in_$r13, in_z0, in_$r6, in_$r17, in_$c3, in_z2, in_$r8, in_z5, in_$fakelocal_3, in_$r10, in_$c5, in_$fakelocal_1, in_$r15, in_$l6, in_$l4, in_$r11, in_$fakelocal_0, in_$fakelocal_4, in_$r14, in_$r16, in_z3, in_$r18;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon34_Then:
    assume {:partition} out_$r11 != $null;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    out_$r11 := out_$r10;
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} out_$r11 == $null;
    call out_$fakelocal_1 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$r12, out_$fakelocal_5, out_$r7, out_$r9, out_i7, out_$r19, out_$fakelocal_2, out_$r13, out_z0, out_$r6, out_$r17, out_$c3, out_z2, out_$r8, out_z5, out_$fakelocal_3, out_$r10, out_$c5, out_$fakelocal_1, out_$r15, out_$l6, out_$l4, out_$r11, out_$fakelocal_0, out_$fakelocal_4, out_$r14, out_$r16, out_z3, out_$r18 := in_$return, in_$exception, in_$r12, in_$fakelocal_5, in_$r7, in_$r9, in_i7, in_$r19, in_$fakelocal_2, in_$r13, in_z0, in_$r6, in_$r17, in_$c3, in_z2, in_$r8, in_z5, in_$fakelocal_3, in_$r10, in_$c5, in_$fakelocal_1, in_$r15, in_$l6, in_$l4, in_$r11, in_$fakelocal_0, in_$fakelocal_4, in_$r14, in_$r16, in_z3, in_$r18;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon33_Then:
    assume {:partition} $heap[out_$r10, $type] <: java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon9;

  anon6:
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    call out_$c3, out_$exception := java.lang.String$charAt$int(in_r0, out_i7);
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    out_$l4 := out_$c3;
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    call out_$c5, out_$exception := java.lang.String$charAt$int(in_r1, out_i7);
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    out_$l6 := out_$c5;
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    call out_z0, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long(out_$l4, out_$l6);
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    call out_$r6, out_$exception := java.lang.Boolean$valueOf$boolean(out_z2);
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    call out_$r7, out_$exception := java.lang.Boolean$valueOf$boolean(0);
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    call out_$r8, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z3, out_$r6, out_$r7);
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    call out_$r9, out_$exception := java.lang.Boolean$valueOf$boolean(out_z2);
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    call out_$r10, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z0, out_$r8, out_$r9);
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !($heap[out_$r10, $type] <: java.lang.Boolean);
    call out_$fakelocal_0 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_0;
    out_$return, out_$exception, out_$r12, out_$fakelocal_5, out_$r7, out_$r9, out_i7, out_$r19, out_$fakelocal_2, out_$r13, out_z0, out_$r6, out_$r17, out_$c3, out_z2, out_$r8, out_z5, out_$fakelocal_3, out_$r10, out_$c5, out_$fakelocal_1, out_$r15, out_$l6, out_$l4, out_$r11, out_$fakelocal_0, out_$fakelocal_4, out_$r14, out_$r16, out_z3, out_$r18 := in_$return, in_$exception, in_$r12, in_$fakelocal_5, in_$r7, in_$r9, in_i7, in_$r19, in_$fakelocal_2, in_$r13, in_z0, in_$r6, in_$r17, in_$c3, in_z2, in_$r8, in_z5, in_$fakelocal_3, in_$r10, in_$c5, in_$fakelocal_1, in_$r15, in_$l6, in_$l4, in_$r11, in_$fakelocal_0, in_$fakelocal_4, in_$r14, in_$r16, in_z3, in_$r18;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon32_Else:
    assume {:partition} in_i2 > out_i7;
    assert {:sourceloc "User.java", 39, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon24_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$r12, out_$fakelocal_5, out_$r7, out_$r9, out_i7, out_$r19, out_$fakelocal_2, out_$r13, out_z0, out_$r6, out_$r17, out_$c3, out_z2, out_$r8, out_z5, out_$fakelocal_3, out_$r10, out_$c5, out_$fakelocal_1, out_$r15, out_$l6, out_$l4, out_$r11, out_$fakelocal_0, out_$fakelocal_4, out_$r14, out_$r16, out_z3, out_$r18 := User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63(out_$return, out_$exception, out_$r12, out_$fakelocal_5, out_$r7, out_$r9, out_i7, in_i2, out_$r19, out_$fakelocal_2, out_$r13, out_z0, out_$r6, in_r0, out_$r17, out_$c3, out_z2, out_$r8, out_z5, out_$fakelocal_3, out_$r10, out_$c5, out_$fakelocal_1, out_$r15, out_$l6, out_$l4, out_$r11, out_$fakelocal_0, out_$fakelocal_4, out_$r14, out_$r16, out_z3, in_r1, out_$r18);
    return;

  exit:
    return;
}



procedure User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63(in_$return: int, 
    in_$exception: ref, 
    in_$r12: ref, 
    in_$fakelocal_5: ref, 
    in_$r7: ref, 
    in_$r9: ref, 
    in_i7: int, 
    in_i2: int, 
    in_$r19: ref, 
    in_$fakelocal_2: ref, 
    in_$r13: ref, 
    in_z0: int, 
    in_$r6: ref, 
    in_r0: ref, 
    in_$r17: ref, 
    in_$c3: int, 
    in_z2: int, 
    in_$r8: ref, 
    in_z5: int, 
    in_$fakelocal_3: ref, 
    in_$r10: ref, 
    in_$c5: int, 
    in_$fakelocal_1: ref, 
    in_$r15: ref, 
    in_$l6: int, 
    in_$l4: int, 
    in_$r11: ref, 
    in_$fakelocal_0: ref, 
    in_$fakelocal_4: ref, 
    in_$r14: ref, 
    in_$r16: ref, 
    in_z3: int, 
    in_r1: ref, 
    in_$r18: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$r12: ref, 
    out_$fakelocal_5: ref, 
    out_$r7: ref, 
    out_$r9: ref, 
    out_i7: int, 
    out_$r19: ref, 
    out_$fakelocal_2: ref, 
    out_$r13: ref, 
    out_z0: int, 
    out_$r6: ref, 
    out_$r17: ref, 
    out_$c3: int, 
    out_z2: int, 
    out_$r8: ref, 
    out_z5: int, 
    out_$fakelocal_3: ref, 
    out_$r10: ref, 
    out_$c5: int, 
    out_$fakelocal_1: ref, 
    out_$r15: ref, 
    out_$l6: int, 
    out_$l4: int, 
    out_$r11: ref, 
    out_$fakelocal_0: ref, 
    out_$fakelocal_4: ref, 
    out_$r14: ref, 
    out_$r16: ref, 
    out_z3: int, 
    out_$r18: ref);
  modifies $objIndex, $heap;


