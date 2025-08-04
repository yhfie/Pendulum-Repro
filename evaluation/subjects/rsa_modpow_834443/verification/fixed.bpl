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

const unique $DoubleConst0: int extends complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.String: javaType extends unique java.lang.Object complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.io.Serializable: javaType extends complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.Throwable: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.Exception: javaType extends unique java.lang.Throwable complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.RuntimeException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.IndexOutOfBoundsException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.ArrayIndexOutOfBoundsException: javaType extends unique java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique java.lang.Boolean: javaType extends unique java.lang.Object complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.lang.Comparable: javaType extends complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.lang.Integer: javaType extends unique java.lang.Object, java.io.Serializable, java.lang.Comparable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.lang.NullPointerException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.lang.ClassCastException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} unique modpow.SimplifiedRSA: javaType extends unique java.lang.Object complete;

const unique $DoubleConst1: int extends complete;

const {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} unique sg.edu.nus.comp.tsunami.safe.Safe: javaType extends unique java.lang.Object complete;

const {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} unique java.lang.ArithmeticException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} unique java.lang.Number: javaType extends unique java.lang.Object, java.io.Serializable complete;

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

var int$java.lang.Integer$value0: Field int;

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

function $realOp32241(x: int, y: int) : int;

axiom (forall index: int :: $intToRef(index) != $null);

axiom (forall i1: int, i2: int :: i1 == i2 <==> $intToRef(i1) == $intToRef(i2));

procedure $new(obj_type: javaType) returns ($obj: ref);
  modifies $objIndex, $heap;
  ensures $objIndex == old($objIndex) + 1;
  ensures $obj == $intToRef(old($objIndex));
  ensures $obj != $null;
  ensures !old($heap[$obj, $alloc]);
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $other != $null;
  ensures $heap[$other, $alloc] <==> true;
  ensures $heap[$other, $type] == $heap[$this, $type];



procedure int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure java.lang.Math$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.Math$min$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure java.lang.Math$log$double($in_parameter__0: int) returns ($return: int, $exception: ref);



procedure java.lang.String$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies $heap;



procedure java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



procedure java.lang.Integer$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies $heap;



procedure java.lang.Integer$valueOf$int($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Integer$intValue$($this: ref) returns ($return: int, $exception: ref);



procedure java.lang.Integer$compareTo$java.lang.Integer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Integer$compareTo$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure modpow.SimplifiedRSA$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int($in_parameter__0: int, 
    $in_parameter__1: int, 
    $in_parameter__2: int, 
    $in_parameter__3: int)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;
free requires $in_parameter__2 == 834443;


procedure sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0: int) returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
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
  var i1: int;
  var i0: int;
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



implementation java.lang.Math$log$double($in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var d0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Math.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Math.java", 10, -1, -1, -1} true;
    $return := $DoubleConst0;
    goto block5;

  block5:
    return;
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
    goto block6;

  block6:
    return;
}



implementation java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var $r1: ref;
  var i0: int;
  var r0: ref;
  var $c1: int;
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
    goto block7;

  block7:
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
    goto block8;

  block8:
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
    goto block9;

  block9:
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
    goto block10;

  block10:
    return;
}



implementation java.lang.Integer$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var i0: int;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 8, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "Integer.java", 9, -1, -1, -1} true;
    $heap := $heap[r0, int$java.lang.Integer$value0 := i0];
    assert {:sourceloc "Integer.java", 10, -1, -1, -1} true;
    goto block11;

  block11:
    return;
}



implementation java.lang.Integer$valueOf$int($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var $r0: ref;
  var i0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$return, $type] <: java.lang.Integer;
    $exception := $null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.Integer);
    $r0 := $fakelocal_0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    call $exception := java.lang.Integer$$la$init$ra$$int($r0, i0);
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    $return := $r0;
    goto block12;

  block12:
    return;
}



implementation java.lang.Integer$intValue$($this: ref) returns ($return: int, $exception: ref)
{
  var $i0: int;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    $i0 := $heap[r0, int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    $return := $i0;
    goto block13;

  block13:
    return;
}



implementation java.lang.Integer$compareTo$java.lang.Integer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var $i2: int;
  var $i1: int;
  var $i3: int;
  var r0: ref;
  var $i0: int;
  var $fakelocal_0: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.Integer;
    $exception := $null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    $i1 := $heap[r0, int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon10_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    $i0 := $heap[r1, int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} $i0 < $i1;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Integer.java", 23, -1, -1, -1} true;
    $return := 1;
    goto block16;

  block16:
    return;

  anon11_Then:
    assume {:partition} $i1 <= $i0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    $i3 := $heap[r0, int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    $i2 := $heap[r1, int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} $i2 > $i3;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "Integer.java", 25, -1, -1, -1} true;
    $return := -1;
    goto block16;

  anon12_Then:
    assume {:partition} $i3 >= $i2;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  block15:
    assert {:sourceloc "Integer.java", 27, -1, -1, -1} true;
    $return := 0;
    goto block16;
}



implementation java.lang.Integer$compareTo$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var $i0: int;
  var r0: ref;
  var $r2: ref;
  var $fakelocal_0: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.Object;
    $exception := $null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 5, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} !($heap[r1, $type] <: java.lang.Integer);
    call $fakelocal_0 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon4_Then:
    assume {:partition} $heap[r1, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon3;

  anon3:
    $r2 := r1;
    assert {:sourceloc "Integer.java", 5, -1, -1, -1} true;
    call $i0, $exception := java.lang.Integer$compareTo$java.lang.Integer(r0, $r2);
    assert {:sourceloc "Integer.java", 5, -1, -1, -1} true;
    $return := $i0;
    goto block17;

  block17:
    return;
}



implementation modpow.SimplifiedRSA$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} $heap[$this, $type] <: modpow.SimplifiedRSA;
    assume {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "SimplifiedRSA.java", 7, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "SimplifiedRSA.java", 7, -1, -1, -1} true;
    goto block18;

  block18:
    return;
}



implementation modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int($in_parameter__0: int, 
    $in_parameter__1: int, 
    $in_parameter__2: int, 
    $in_parameter__3: int)
   returns ($return: int, $exception: ref)
{
  var $fakelocal_7: ref;
  var $r23: ref;
  var $d1: int;
  var $z3: int;
  var i21: int;
  var $r26: ref;
  var $l9: int;
  var $r24: ref;
  var $r2: ref;
  var $fakelocal_16: ref;
  var $r21: ref;
  var $r5: ref;
  var z4: int;
  var $r22: ref;
  var $r3: ref;
  var $r31: ref;
  var $r15: ref;
  var $i15: int;
  var $r12: ref;
  var $fakelocal_4: ref;
  var $fakelocal_17: ref;
  var $r18: ref;
  var $r9: ref;
  var i20: int;
  var z0: int;
  var $fakelocal_5: ref;
  var $i7: int;
  var i19: int;
  var $r17: ref;
  var $r11: ref;
  var i2: int;
  var $r10: ref;
  var i24: int;
  var $r14: ref;
  var $fakelocal_8: ref;
  var $r20: ref;
  var $fakelocal_9: ref;
  var $fakelocal_13: ref;
  var $i5: int;
  var $i11: int;
  var $l8: int;
  var $d2: int;
  var $r29: ref;
  var i18: int;
  var z2: int;
  var $fakelocal_6: ref;
  var $fakelocal_1: ref;
  var $fakelocal_2: ref;
  var i0: int;
  var $fakelocal_0: ref;
  var $r27: ref;
  var $l6: int;
  var i17: int;
  var z1: int;
  var $r1: ref;
  var $fakelocal_11: ref;
  var $r7: ref;
  var i22: int;
  var i23: int;
  var $i12: int;
  var $r28: ref;
  var $r8: ref;
  var $fakelocal_10: ref;
  var $i13: int;
  var $r13: ref;
  var $fakelocal_12: ref;
  var $r4: ref;
  var $r25: ref;
  var i4: int;
  var $r0: ref;
  var i1: int;
  var $r6: ref;
  var $fakelocal_15: ref;
  var $i16: int;
  var $i14: int;
  var $l10: int;
  var $d3: int;
  var $r30: ref;
  var $r19: ref;
  var $r16: ref;
  var $d0: int;
  var i3: int;
  var $fakelocal_14: ref;
  var $fakelocal_3: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} true;
    i17 := $in_parameter__1;
    assert {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__2;
    assert {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} true;
    i2 := $in_parameter__3;
    assert {:sourceloc "SimplifiedRSA.java", 12, -1, -1, -1} true;
    i18 := 1;
    assert {:sourceloc "SimplifiedRSA.java", 13, -1, -1, -1} true;
    i3 := i0;
    assert {:sourceloc "SimplifiedRSA.java", 14, -1, -1, -1} true;
    i19 := 0;
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} true;
    $i5 := i2 + 1;
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} true;
    $d0 := $i5;
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} true;
    call $d1, $exception := java.lang.Math$log$double($d0);
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} true;
    call $d2, $exception := java.lang.Math$log$double($DoubleConst1);
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} true;
    $d3 := $realOp32241($d1, $d2);
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} true;
    i4 := $d3;
    assert {:sourceloc "SimplifiedRSA.java", 18, -1, -1, -1} true;
    i20 := 0;
    assert {:sourceloc "SimplifiedRSA.java", 19, -1, -1, -1} true;
    i21 := 32;
    assert {:sourceloc "SimplifiedRSA.java", 20, -1, -1, -1} true;
    z4 := 0;
    goto block19;

  block19:
    call $return, $exception, $fakelocal_7, $r23, $z3, i21, $r26, $l9, $r24, $r2, $fakelocal_16, $r21, $r5, z4, $r22, $r3, $r31, $r15, $i15, $r12, $fakelocal_4, $fakelocal_17, $r18, $r9, i20, z0, $fakelocal_5, $i7, i19, $r17, $r11, $r10, i24, $r14, $fakelocal_8, $r20, $fakelocal_9, $fakelocal_13, $i11, $l8, $r29, i18, z2, $fakelocal_6, $fakelocal_1, $fakelocal_2, $fakelocal_0, $r27, $l6, i17, z1, $r1, $fakelocal_11, $r7, i22, i23, $i12, $r28, $r8, $fakelocal_10, $i13, $r13, $fakelocal_12, $r4, $r25, $r0, $r6, $fakelocal_15, $i16, $i14, $l10, $r30, $r19, $r16, $fakelocal_14, $fakelocal_3 := modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19($return, $exception, $fakelocal_7, $r23, $z3, i21, $r26, $l9, $r24, $r2, $fakelocal_16, $r21, $r5, z4, $r22, $r3, $r31, $r15, $i15, $r12, $fakelocal_4, $fakelocal_17, $r18, $r9, i20, z0, $fakelocal_5, $i7, i19, $r17, $r11, $r10, i24, $r14, $fakelocal_8, $r20, $fakelocal_9, $fakelocal_13, $i11, $l8, $r29, i18, z2, $fakelocal_6, $fakelocal_1, $fakelocal_2, $fakelocal_0, $r27, $l6, i17, z1, $r1, $fakelocal_11, $r7, i22, i23, $i12, $r28, $r8, $fakelocal_10, $i13, $r13, $fakelocal_12, $r4, $r25, i4, $r0, i1, $r6, $fakelocal_15, $i16, $i14, $l10, $r30, $r19, $r16, i3, $fakelocal_14, $fakelocal_3);
    goto block19_last;

  anon61_Else:
    assume {:partition} 0 < i21;
    assert {:sourceloc "SimplifiedRSA.java", 21, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "SimplifiedRSA.java", 22, -1, -1, -1} true;
    $l6 := i17;
    assert {:sourceloc "SimplifiedRSA.java", 22, -1, -1, -1} true;
    call $z3, $exception := sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($l6, 0);
    assert {:sourceloc "SimplifiedRSA.java", 22, -1, -1, -1} true;
    call z0, $exception := sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($z3);
    assert {:sourceloc "SimplifiedRSA.java", 24, -1, -1, -1} true;
    call $r0, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "SimplifiedRSA.java", 24, -1, -1, -1} true;
    call $r1, $exception := java.lang.Boolean$valueOf$boolean(z4);
    assert {:sourceloc "SimplifiedRSA.java", 24, -1, -1, -1} true;
    call $r2, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r0, $r1);
    assert {:sourceloc "SimplifiedRSA.java", 24, -1, -1, -1} true;
    goto anon62_Then, anon62_Else;

  anon62_Else:
    assume {:partition} !($heap[$r2, $type] <: java.lang.Boolean);
    call $fakelocal_0 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon62_Then:
    assume {:partition} $heap[$r2, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon6;

  anon6:
    $r3 := $r2;
    assert {:sourceloc "SimplifiedRSA.java", 24, -1, -1, -1} true;
    goto anon63_Then, anon63_Else;

  anon63_Else:
    assume {:partition} $r3 == $null;
    call $fakelocal_1 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon63_Then:
    assume {:partition} $r3 != $null;
    $exception := $exception;
    goto anon9;

  anon9:
    call z4, $exception := java.lang.Boolean$booleanValue$($r3);
    assert {:sourceloc "SimplifiedRSA.java", 26, -1, -1, -1} true;
    goto anon64_Then, anon64_Else;

  anon64_Else:
    assume {:partition} 2 == 0;
    call $fakelocal_2 := $new(java.lang.ArithmeticException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon64_Then:
    assume {:partition} 2 != 0;
    $exception := $exception;
    goto anon12;

  anon12:
    $i7 := $modInt(i17, 2);
    assert {:sourceloc "SimplifiedRSA.java", 26, -1, -1, -1} true;
    $l8 := $i7;
    assert {:sourceloc "SimplifiedRSA.java", 26, -1, -1, -1} true;
    call z1, $exception := sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($l8, 1);
    assert {:sourceloc "SimplifiedRSA.java", 28, -1, -1, -1} true;
    i22 := $mulInt(i18, i3);
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} true;
    $l10 := i22;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} true;
    $l9 := i1;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} true;
    call z2, $exception := sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($l10, $l9);
    assert {:sourceloc "SimplifiedRSA.java", 34, -1, -1, -1} true;
    $i11 := i22 - i1;
    assert {:sourceloc "SimplifiedRSA.java", 34, -1, -1, -1} true;
    call $r4, $exception := java.lang.Integer$valueOf$int($i11);
    assert {:sourceloc "SimplifiedRSA.java", 34, -1, -1, -1} true;
    call $r5, $exception := java.lang.Integer$valueOf$int(i22);
    assert {:sourceloc "SimplifiedRSA.java", 34, -1, -1, -1} true;
    call $r6, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z2, $r4, $r5);
    assert {:sourceloc "SimplifiedRSA.java", 34, -1, -1, -1} true;
    goto anon65_Then, anon65_Else;

  anon65_Else:
    assume {:partition} !($heap[$r6, $type] <: java.lang.Integer);
    call $fakelocal_3 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon65_Then:
    assume {:partition} $heap[$r6, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon15;

  anon15:
    $r7 := $r6;
    assert {:sourceloc "SimplifiedRSA.java", 34, -1, -1, -1} true;
    goto anon66_Then, anon66_Else;

  anon66_Else:
    assume {:partition} $r7 == $null;
    call $fakelocal_4 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon66_Then:
    assume {:partition} $r7 != $null;
    $exception := $exception;
    goto anon18;

  anon18:
    call i23, $exception := java.lang.Integer$intValue$($r7);
    assert {:sourceloc "SimplifiedRSA.java", 36, -1, -1, -1} true;
    call $r8, $exception := java.lang.Integer$valueOf$int(i19);
    assert {:sourceloc "SimplifiedRSA.java", 36, -1, -1, -1} true;
    goto anon67_Then, anon67_Else;

  anon67_Else:
    assume {:partition} i1 == 0;
    call $fakelocal_5 := $new(java.lang.ArithmeticException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon67_Then:
    assume {:partition} i1 != 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $i12 := $modInt(i23, i1);
    assert {:sourceloc "SimplifiedRSA.java", 36, -1, -1, -1} true;
    call $r9, $exception := java.lang.Integer$valueOf$int($i12);
    assert {:sourceloc "SimplifiedRSA.java", 36, -1, -1, -1} true;
    call $r10, $exception := java.lang.Integer$valueOf$int(i19);
    assert {:sourceloc "SimplifiedRSA.java", 36, -1, -1, -1} true;
    call $r11, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z1, $r9, $r10);
    assert {:sourceloc "SimplifiedRSA.java", 36, -1, -1, -1} true;
    call $r12, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z4, $r8, $r11);
    assert {:sourceloc "SimplifiedRSA.java", 36, -1, -1, -1} true;
    goto anon68_Then, anon68_Else;

  anon68_Else:
    assume {:partition} !($heap[$r12, $type] <: java.lang.Integer);
    call $fakelocal_6 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon68_Then:
    assume {:partition} $heap[$r12, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon24;

  anon24:
    $r13 := $r12;
    assert {:sourceloc "SimplifiedRSA.java", 36, -1, -1, -1} true;
    goto anon69_Then, anon69_Else;

  anon69_Else:
    assume {:partition} $r13 == $null;
    call $fakelocal_7 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_7;
    return;

  anon69_Then:
    assume {:partition} $r13 != $null;
    $exception := $exception;
    goto anon27;

  anon27:
    call i24, $exception := java.lang.Integer$intValue$($r13);
    assert {:sourceloc "SimplifiedRSA.java", 37, -1, -1, -1} true;
    call $r14, $exception := java.lang.Integer$valueOf$int(i24);
    assert {:sourceloc "SimplifiedRSA.java", 37, -1, -1, -1} true;
    call $r15, $exception := java.lang.Integer$valueOf$int(i24);
    assert {:sourceloc "SimplifiedRSA.java", 37, -1, -1, -1} true;
    call $r16, $exception := java.lang.Integer$valueOf$int(i18);
    assert {:sourceloc "SimplifiedRSA.java", 37, -1, -1, -1} true;
    call $r17, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z1, $r15, $r16);
    assert {:sourceloc "SimplifiedRSA.java", 37, -1, -1, -1} true;
    call $r18, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z4, $r14, $r17);
    assert {:sourceloc "SimplifiedRSA.java", 37, -1, -1, -1} true;
    goto anon70_Then, anon70_Else;

  anon70_Else:
    assume {:partition} !($heap[$r18, $type] <: java.lang.Integer);
    call $fakelocal_8 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_8;
    return;

  anon70_Then:
    assume {:partition} $heap[$r18, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon30;

  anon30:
    $r19 := $r18;
    assert {:sourceloc "SimplifiedRSA.java", 37, -1, -1, -1} true;
    goto anon71_Then, anon71_Else;

  anon71_Else:
    assume {:partition} $r19 == $null;
    call $fakelocal_9 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_9;
    return;

  anon71_Then:
    assume {:partition} $r19 != $null;
    $exception := $exception;
    goto anon33;

  anon33:
    call i19, $exception := java.lang.Integer$intValue$($r19);
    assert {:sourceloc "SimplifiedRSA.java", 39, -1, -1, -1} true;
    call $r20, $exception := java.lang.Integer$valueOf$int(i18);
    assert {:sourceloc "SimplifiedRSA.java", 39, -1, -1, -1} true;
    $i13 := $mulInt(i19, i19);
    assert {:sourceloc "SimplifiedRSA.java", 39, -1, -1, -1} true;
    goto anon72_Then, anon72_Else;

  anon72_Else:
    assume {:partition} i1 == 0;
    call $fakelocal_10 := $new(java.lang.ArithmeticException);
    $return := 0;
    $exception := $fakelocal_10;
    return;

  anon72_Then:
    assume {:partition} i1 != 0;
    $exception := $exception;
    goto anon36;

  anon36:
    $i14 := $modInt($i13, i1);
    assert {:sourceloc "SimplifiedRSA.java", 39, -1, -1, -1} true;
    call $r21, $exception := java.lang.Integer$valueOf$int($i14);
    assert {:sourceloc "SimplifiedRSA.java", 39, -1, -1, -1} true;
    call $r22, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z4, $r20, $r21);
    assert {:sourceloc "SimplifiedRSA.java", 39, -1, -1, -1} true;
    goto anon73_Then, anon73_Else;

  anon73_Else:
    assume {:partition} !($heap[$r22, $type] <: java.lang.Integer);
    call $fakelocal_11 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_11;
    return;

  anon73_Then:
    assume {:partition} $heap[$r22, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon39;

  anon39:
    $r23 := $r22;
    assert {:sourceloc "SimplifiedRSA.java", 39, -1, -1, -1} true;
    goto anon74_Then, anon74_Else;

  anon74_Else:
    assume {:partition} $r23 == $null;
    call $fakelocal_12 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_12;
    return;

  anon74_Then:
    assume {:partition} $r23 != $null;
    $exception := $exception;
    goto anon42;

  anon42:
    call i18, $exception := java.lang.Integer$intValue$($r23);
    assert {:sourceloc "SimplifiedRSA.java", 40, -1, -1, -1} true;
    call $r24, $exception := java.lang.Integer$valueOf$int(i17);
    assert {:sourceloc "SimplifiedRSA.java", 40, -1, -1, -1} true;
    goto anon75_Then, anon75_Else;

  anon75_Else:
    assume {:partition} 2 == 0;
    call $fakelocal_13 := $new(java.lang.ArithmeticException);
    $return := 0;
    $exception := $fakelocal_13;
    return;

  anon75_Then:
    assume {:partition} 2 != 0;
    $exception := $exception;
    goto anon45;

  anon45:
    $i15 := $divInt(i17, 2);
    assert {:sourceloc "SimplifiedRSA.java", 40, -1, -1, -1} true;
    call $r25, $exception := java.lang.Integer$valueOf$int($i15);
    assert {:sourceloc "SimplifiedRSA.java", 40, -1, -1, -1} true;
    call $r26, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z4, $r24, $r25);
    assert {:sourceloc "SimplifiedRSA.java", 40, -1, -1, -1} true;
    goto anon76_Then, anon76_Else;

  anon76_Else:
    assume {:partition} !($heap[$r26, $type] <: java.lang.Integer);
    call $fakelocal_14 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_14;
    return;

  anon76_Then:
    assume {:partition} $heap[$r26, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon48;

  anon48:
    $r27 := $r26;
    assert {:sourceloc "SimplifiedRSA.java", 40, -1, -1, -1} true;
    goto anon77_Then, anon77_Else;

  anon77_Else:
    assume {:partition} $r27 == $null;
    call $fakelocal_15 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_15;
    return;

  anon77_Then:
    assume {:partition} $r27 != $null;
    $exception := $exception;
    goto anon51;

  anon51:
    call i17, $exception := java.lang.Integer$intValue$($r27);
    assert {:sourceloc "SimplifiedRSA.java", 41, -1, -1, -1} true;
    call $r28, $exception := java.lang.Integer$valueOf$int(i20);
    assert {:sourceloc "SimplifiedRSA.java", 41, -1, -1, -1} true;
    $i16 := i20 + 1;
    assert {:sourceloc "SimplifiedRSA.java", 41, -1, -1, -1} true;
    call $r29, $exception := java.lang.Integer$valueOf$int($i16);
    assert {:sourceloc "SimplifiedRSA.java", 41, -1, -1, -1} true;
    call $r30, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z4, $r28, $r29);
    assert {:sourceloc "SimplifiedRSA.java", 41, -1, -1, -1} true;
    goto anon78_Then, anon78_Else;

  anon78_Else:
    assume {:partition} !($heap[$r30, $type] <: java.lang.Integer);
    call $fakelocal_16 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_16;
    return;

  anon78_Then:
    assume {:partition} $heap[$r30, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon54;

  anon54:
    $r31 := $r30;
    assert {:sourceloc "SimplifiedRSA.java", 41, -1, -1, -1} true;
    goto anon79_Then, anon79_Else;

  anon79_Else:
    assume {:partition} $r31 == $null;
    call $fakelocal_17 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_17;
    return;

  anon79_Then:
    assume {:partition} $r31 != $null;
    $exception := $exception;
    goto anon57;

  anon57:
    call i20, $exception := java.lang.Integer$intValue$($r31);
    assert {:sourceloc "SimplifiedRSA.java", 43, -1, -1, -1} true;
    goto anon80_Then, anon80_Else;

  anon80_Else:
    assume {:partition} i20 == i4;
    assert {:sourceloc "SimplifiedRSA.java", 43, -1, -1, -1} {:comment "elseblock"} true;
    goto anon60;

  anon60:
    assert {:sourceloc "SimplifiedRSA.java", 21, -1, -1, -1} true;
    goto block20;

  block20:
    assert {:sourceloc "SimplifiedRSA.java", 45, -1, -1, -1} true;
    $return := i19;
    goto block22;

  block22:
    return;

  anon80_Then:
    assume {:partition} i20 != i4;
    assert {:sourceloc "SimplifiedRSA.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block21;

  block21:
    assert {:sourceloc "SimplifiedRSA.java", 44, -1, -1, -1} true;
    goto block21_dummy;

  anon61_Then:
    assume {:partition} i21 <= 0;
    assert {:sourceloc "SimplifiedRSA.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    goto block20;

  block21_dummy:
    assume false;
    return;

  block19_last:
    assert {:sourceloc "SimplifiedRSA.java", 21, -1, -1, -1} true;
    i21 := i21 + -1;
    assert {:sourceloc "SimplifiedRSA.java", 21, -1, -1, -1} true;
    goto anon61_Then, anon61_Else;
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
    goto block23;

  block23:
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
    goto block24;

  block24:
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 1;
    goto block25;

  block25:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    $return := z1;
    goto block26;

  block26:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block25;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block24;
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
    goto block27;

  block27:
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
    goto block28;

  block28:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l1: int;
  var $b3: int;
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
    goto block29;

  block29:
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
    goto block30;

  block30:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    $return := z0;
    goto block31;

  block31:
    return;

  anon8_Then:
    assume {:partition} $b3 > 0;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block30;

  anon7_Then:
    assume {:partition} $b2 <= 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    goto block29;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
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
    goto block32;

  block32:
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
    goto block33;

  block33:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    $return := z0;
    goto block34;

  block34:
    return;

  anon8_Then:
    assume {:partition} $b3 < 0;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block33;

  anon7_Then:
    assume {:partition} $b2 >= 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block32;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
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
    goto block35;

  block35:
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
    goto block36;

  block36:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    $return := z0;
    goto block37;

  block37:
    return;

  anon8_Then:
    assume {:partition} $b3 >= 0;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block36;

  anon7_Then:
    assume {:partition} $b2 < 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block35;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l1: int;
  var l0: int;
  var $b3: int;
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
    goto block38;

  block38:
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
    goto block39;

  block39:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    $return := z0;
    goto block40;

  block40:
    return;

  anon8_Then:
    assume {:partition} $b3 <= 0;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block39;

  anon7_Then:
    assume {:partition} $b2 > 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block38;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b2: int;
  var $b3: int;
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
    goto block41;

  block41:
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
    goto block42;

  block42:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    $return := z0;
    goto block43;

  block43:
    return;

  anon8_Then:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block42;

  anon7_Then:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto block41;
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
    goto block44;

  block44:
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
    goto block45;

  block45:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    $return := z0;
    goto block46;

  block46:
    return;

  anon8_Then:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto block45;

  anon7_Then:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block44;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b0: int;
  var $b1: int;
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
    goto block47;

  block47:
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
    goto block48;

  block48:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    $return := z0;
    goto block49;

  block49:
    return;

  anon8_Then:
    assume {:partition} $b1 > 0;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "thenblock"} true;
    goto block48;

  anon7_Then:
    assume {:partition} $b0 <= 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "thenblock"} true;
    goto block47;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
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
    goto block50;

  block50:
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
    goto block51;

  block51:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    $return := z0;
    goto block52;

  block52:
    return;

  anon8_Then:
    assume {:partition} $b1 < 0;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block51;

  anon7_Then:
    assume {:partition} $b0 >= 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block50;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var $b1: int;
  var $b0: int;
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
    goto block53;

  block53:
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
    goto block54;

  block54:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    $return := z0;
    goto block55;

  block55:
    return;

  anon8_Then:
    assume {:partition} $b1 >= 0;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block54;

  anon7_Then:
    assume {:partition} $b0 < 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block53;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d1: int;
  var z0: int;
  var $b1: int;
  var $b0: int;
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
    goto block56;

  block56:
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
    goto block57;

  block57:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    $return := z0;
    goto block58;

  block58:
    return;

  anon8_Then:
    assume {:partition} $b1 <= 0;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "thenblock"} true;
    goto block57;

  anon7_Then:
    assume {:partition} $b0 > 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block56;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var $b0: int;
  var d1: int;
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
    goto block59;

  block59:
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
    goto block60;

  block60:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    $return := z0;
    goto block61;

  block61:
    return;

  anon8_Then:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "thenblock"} true;
    goto block60;

  anon7_Then:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "thenblock"} true;
    goto block59;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b1: int;
  var z0: int;
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
    goto block62;

  block62:
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
    goto block63;

  block63:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    $return := z0;
    goto block64;

  block64:
    return;

  anon8_Then:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "thenblock"} true;
    goto block63;

  anon7_Then:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "thenblock"} true;
    goto block62;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
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
    goto block65;

  block65:
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 0;
    goto block66;

  block66:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    $return := z0;
    goto block67;

  block67:
    return;

  anon8_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block66;

  anon7_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block65;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r1: ref;
  var z0: int;
  var r0: ref;

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
    goto block68;

  block68:
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 0;
    goto block69;

  block69:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    $return := z0;
    goto block70;

  block70:
    return;

  anon8_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block69;

  anon7_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block68;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var z0: int;
  var r0: ref;
  var r2: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$return, $type] <: java.lang.Object;
    assume $heap[$in_parameter__2, $type] <: java.lang.Object;
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
    goto block71;

  block71:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r1;
    goto block72;

  block72:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    $return := r2;
    goto block73;

  block73:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block72;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block71;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_7: ref, 
    in_$r23: ref, 
    in_$z3: int, 
    in_i21: int, 
    in_$r26: ref, 
    in_$l9: int, 
    in_$r24: ref, 
    in_$r2: ref, 
    in_$fakelocal_16: ref, 
    in_$r21: ref, 
    in_$r5: ref, 
    in_z4: int, 
    in_$r22: ref, 
    in_$r3: ref, 
    in_$r31: ref, 
    in_$r15: ref, 
    in_$i15: int, 
    in_$r12: ref, 
    in_$fakelocal_4: ref, 
    in_$fakelocal_17: ref, 
    in_$r18: ref, 
    in_$r9: ref, 
    in_i20: int, 
    in_z0: int, 
    in_$fakelocal_5: ref, 
    in_$i7: int, 
    in_i19: int, 
    in_$r17: ref, 
    in_$r11: ref, 
    in_$r10: ref, 
    in_i24: int, 
    in_$r14: ref, 
    in_$fakelocal_8: ref, 
    in_$r20: ref, 
    in_$fakelocal_9: ref, 
    in_$fakelocal_13: ref, 
    in_$i11: int, 
    in_$l8: int, 
    in_$r29: ref, 
    in_i18: int, 
    in_z2: int, 
    in_$fakelocal_6: ref, 
    in_$fakelocal_1: ref, 
    in_$fakelocal_2: ref, 
    in_$fakelocal_0: ref, 
    in_$r27: ref, 
    in_$l6: int, 
    in_i17: int, 
    in_z1: int, 
    in_$r1: ref, 
    in_$fakelocal_11: ref, 
    in_$r7: ref, 
    in_i22: int, 
    in_i23: int, 
    in_$i12: int, 
    in_$r28: ref, 
    in_$r8: ref, 
    in_$fakelocal_10: ref, 
    in_$i13: int, 
    in_$r13: ref, 
    in_$fakelocal_12: ref, 
    in_$r4: ref, 
    in_$r25: ref, 
    in_i4: int, 
    in_$r0: ref, 
    in_i1: int, 
    in_$r6: ref, 
    in_$fakelocal_15: ref, 
    in_$i16: int, 
    in_$i14: int, 
    in_$l10: int, 
    in_$r30: ref, 
    in_$r19: ref, 
    in_$r16: ref, 
    in_i3: int, 
    in_$fakelocal_14: ref, 
    in_$fakelocal_3: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_7: ref, 
    out_$r23: ref, 
    out_$z3: int, 
    out_i21: int, 
    out_$r26: ref, 
    out_$l9: int, 
    out_$r24: ref, 
    out_$r2: ref, 
    out_$fakelocal_16: ref, 
    out_$r21: ref, 
    out_$r5: ref, 
    out_z4: int, 
    out_$r22: ref, 
    out_$r3: ref, 
    out_$r31: ref, 
    out_$r15: ref, 
    out_$i15: int, 
    out_$r12: ref, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_17: ref, 
    out_$r18: ref, 
    out_$r9: ref, 
    out_i20: int, 
    out_z0: int, 
    out_$fakelocal_5: ref, 
    out_$i7: int, 
    out_i19: int, 
    out_$r17: ref, 
    out_$r11: ref, 
    out_$r10: ref, 
    out_i24: int, 
    out_$r14: ref, 
    out_$fakelocal_8: ref, 
    out_$r20: ref, 
    out_$fakelocal_9: ref, 
    out_$fakelocal_13: ref, 
    out_$i11: int, 
    out_$l8: int, 
    out_$r29: ref, 
    out_i18: int, 
    out_z2: int, 
    out_$fakelocal_6: ref, 
    out_$fakelocal_1: ref, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_0: ref, 
    out_$r27: ref, 
    out_$l6: int, 
    out_i17: int, 
    out_z1: int, 
    out_$r1: ref, 
    out_$fakelocal_11: ref, 
    out_$r7: ref, 
    out_i22: int, 
    out_i23: int, 
    out_$i12: int, 
    out_$r28: ref, 
    out_$r8: ref, 
    out_$fakelocal_10: ref, 
    out_$i13: int, 
    out_$r13: ref, 
    out_$fakelocal_12: ref, 
    out_$r4: ref, 
    out_$r25: ref, 
    out_$r0: ref, 
    out_$r6: ref, 
    out_$fakelocal_15: ref, 
    out_$i16: int, 
    out_$i14: int, 
    out_$l10: int, 
    out_$r30: ref, 
    out_$r19: ref, 
    out_$r16: ref, 
    out_$fakelocal_14: ref, 
    out_$fakelocal_3: ref)
{

  entry:
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    goto block19;

  block19:
    assert {:sourceloc "SimplifiedRSA.java", 21, -1, -1, -1} true;
    out_i21 := out_i21 + -1;
    assert {:sourceloc "SimplifiedRSA.java", 21, -1, -1, -1} true;
    goto anon61_Then, anon61_Else;

  anon61_Then:
    assume {:partition} out_i21 <= 0;
    assert {:sourceloc "SimplifiedRSA.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  block21:
    assert {:sourceloc "SimplifiedRSA.java", 44, -1, -1, -1} true;
    goto block21_dummy;

  anon80_Then:
    assume {:partition} out_i20 != in_i4;
    assert {:sourceloc "SimplifiedRSA.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block21;

  anon57:
    call out_i20, out_$exception := java.lang.Integer$intValue$(out_$r31);
    assert {:sourceloc "SimplifiedRSA.java", 43, -1, -1, -1} true;
    goto anon80_Then, anon80_Else;

  anon80_Else:
    assume {:partition} out_i20 == in_i4;
    assert {:sourceloc "SimplifiedRSA.java", 43, -1, -1, -1} {:comment "elseblock"} true;
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon79_Then:
    assume {:partition} out_$r31 != $null;
    out_$exception := out_$exception;
    goto anon57;

  anon54:
    out_$r31 := out_$r30;
    assert {:sourceloc "SimplifiedRSA.java", 41, -1, -1, -1} true;
    goto anon79_Then, anon79_Else;

  anon79_Else:
    assume {:partition} out_$r31 == $null;
    call out_$fakelocal_17 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_17;
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon78_Then:
    assume {:partition} $heap[out_$r30, $type] <: java.lang.Integer;
    out_$exception := out_$exception;
    goto anon54;

  anon51:
    call out_i17, out_$exception := java.lang.Integer$intValue$(out_$r27);
    assert {:sourceloc "SimplifiedRSA.java", 41, -1, -1, -1} true;
    call out_$r28, out_$exception := java.lang.Integer$valueOf$int(out_i20);
    assert {:sourceloc "SimplifiedRSA.java", 41, -1, -1, -1} true;
    out_$i16 := out_i20 + 1;
    assert {:sourceloc "SimplifiedRSA.java", 41, -1, -1, -1} true;
    call out_$r29, out_$exception := java.lang.Integer$valueOf$int(out_$i16);
    assert {:sourceloc "SimplifiedRSA.java", 41, -1, -1, -1} true;
    call out_$r30, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z4, out_$r28, out_$r29);
    assert {:sourceloc "SimplifiedRSA.java", 41, -1, -1, -1} true;
    goto anon78_Then, anon78_Else;

  anon78_Else:
    assume {:partition} !($heap[out_$r30, $type] <: java.lang.Integer);
    call out_$fakelocal_16 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_16;
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon77_Then:
    assume {:partition} out_$r27 != $null;
    out_$exception := out_$exception;
    goto anon51;

  anon48:
    out_$r27 := out_$r26;
    assert {:sourceloc "SimplifiedRSA.java", 40, -1, -1, -1} true;
    goto anon77_Then, anon77_Else;

  anon77_Else:
    assume {:partition} out_$r27 == $null;
    call out_$fakelocal_15 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_15;
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon76_Then:
    assume {:partition} $heap[out_$r26, $type] <: java.lang.Integer;
    out_$exception := out_$exception;
    goto anon48;

  anon45:
    out_$i15 := $divInt(out_i17, 2);
    assert {:sourceloc "SimplifiedRSA.java", 40, -1, -1, -1} true;
    call out_$r25, out_$exception := java.lang.Integer$valueOf$int(out_$i15);
    assert {:sourceloc "SimplifiedRSA.java", 40, -1, -1, -1} true;
    call out_$r26, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z4, out_$r24, out_$r25);
    assert {:sourceloc "SimplifiedRSA.java", 40, -1, -1, -1} true;
    goto anon76_Then, anon76_Else;

  anon76_Else:
    assume {:partition} !($heap[out_$r26, $type] <: java.lang.Integer);
    call out_$fakelocal_14 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_14;
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon75_Then:
    assume {:partition} 2 != 0;
    out_$exception := out_$exception;
    goto anon45;

  anon42:
    call out_i18, out_$exception := java.lang.Integer$intValue$(out_$r23);
    assert {:sourceloc "SimplifiedRSA.java", 40, -1, -1, -1} true;
    call out_$r24, out_$exception := java.lang.Integer$valueOf$int(out_i17);
    assert {:sourceloc "SimplifiedRSA.java", 40, -1, -1, -1} true;
    goto anon75_Then, anon75_Else;

  anon75_Else:
    assume {:partition} 2 == 0;
    call out_$fakelocal_13 := $new(java.lang.ArithmeticException);
    out_$return := 0;
    out_$exception := out_$fakelocal_13;
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon74_Then:
    assume {:partition} out_$r23 != $null;
    out_$exception := out_$exception;
    goto anon42;

  anon39:
    out_$r23 := out_$r22;
    assert {:sourceloc "SimplifiedRSA.java", 39, -1, -1, -1} true;
    goto anon74_Then, anon74_Else;

  anon74_Else:
    assume {:partition} out_$r23 == $null;
    call out_$fakelocal_12 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_12;
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon73_Then:
    assume {:partition} $heap[out_$r22, $type] <: java.lang.Integer;
    out_$exception := out_$exception;
    goto anon39;

  anon36:
    out_$i14 := $modInt(out_$i13, in_i1);
    assert {:sourceloc "SimplifiedRSA.java", 39, -1, -1, -1} true;
    call out_$r21, out_$exception := java.lang.Integer$valueOf$int(out_$i14);
    assert {:sourceloc "SimplifiedRSA.java", 39, -1, -1, -1} true;
    call out_$r22, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z4, out_$r20, out_$r21);
    assert {:sourceloc "SimplifiedRSA.java", 39, -1, -1, -1} true;
    goto anon73_Then, anon73_Else;

  anon73_Else:
    assume {:partition} !($heap[out_$r22, $type] <: java.lang.Integer);
    call out_$fakelocal_11 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_11;
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon72_Then:
    assume {:partition} in_i1 != 0;
    out_$exception := out_$exception;
    goto anon36;

  anon33:
    call out_i19, out_$exception := java.lang.Integer$intValue$(out_$r19);
    assert {:sourceloc "SimplifiedRSA.java", 39, -1, -1, -1} true;
    call out_$r20, out_$exception := java.lang.Integer$valueOf$int(out_i18);
    assert {:sourceloc "SimplifiedRSA.java", 39, -1, -1, -1} true;
    out_$i13 := $mulInt(out_i19, out_i19);
    assert {:sourceloc "SimplifiedRSA.java", 39, -1, -1, -1} true;
    goto anon72_Then, anon72_Else;

  anon72_Else:
    assume {:partition} in_i1 == 0;
    call out_$fakelocal_10 := $new(java.lang.ArithmeticException);
    out_$return := 0;
    out_$exception := out_$fakelocal_10;
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon71_Then:
    assume {:partition} out_$r19 != $null;
    out_$exception := out_$exception;
    goto anon33;

  anon30:
    out_$r19 := out_$r18;
    assert {:sourceloc "SimplifiedRSA.java", 37, -1, -1, -1} true;
    goto anon71_Then, anon71_Else;

  anon71_Else:
    assume {:partition} out_$r19 == $null;
    call out_$fakelocal_9 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_9;
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon70_Then:
    assume {:partition} $heap[out_$r18, $type] <: java.lang.Integer;
    out_$exception := out_$exception;
    goto anon30;

  anon27:
    call out_i24, out_$exception := java.lang.Integer$intValue$(out_$r13);
    assert {:sourceloc "SimplifiedRSA.java", 37, -1, -1, -1} true;
    call out_$r14, out_$exception := java.lang.Integer$valueOf$int(out_i24);
    assert {:sourceloc "SimplifiedRSA.java", 37, -1, -1, -1} true;
    call out_$r15, out_$exception := java.lang.Integer$valueOf$int(out_i24);
    assert {:sourceloc "SimplifiedRSA.java", 37, -1, -1, -1} true;
    call out_$r16, out_$exception := java.lang.Integer$valueOf$int(out_i18);
    assert {:sourceloc "SimplifiedRSA.java", 37, -1, -1, -1} true;
    call out_$r17, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z1, out_$r15, out_$r16);
    assert {:sourceloc "SimplifiedRSA.java", 37, -1, -1, -1} true;
    call out_$r18, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z4, out_$r14, out_$r17);
    assert {:sourceloc "SimplifiedRSA.java", 37, -1, -1, -1} true;
    goto anon70_Then, anon70_Else;

  anon70_Else:
    assume {:partition} !($heap[out_$r18, $type] <: java.lang.Integer);
    call out_$fakelocal_8 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_8;
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon69_Then:
    assume {:partition} out_$r13 != $null;
    out_$exception := out_$exception;
    goto anon27;

  anon24:
    out_$r13 := out_$r12;
    assert {:sourceloc "SimplifiedRSA.java", 36, -1, -1, -1} true;
    goto anon69_Then, anon69_Else;

  anon69_Else:
    assume {:partition} out_$r13 == $null;
    call out_$fakelocal_7 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_7;
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon68_Then:
    assume {:partition} $heap[out_$r12, $type] <: java.lang.Integer;
    out_$exception := out_$exception;
    goto anon24;

  anon21:
    out_$i12 := $modInt(out_i23, in_i1);
    assert {:sourceloc "SimplifiedRSA.java", 36, -1, -1, -1} true;
    call out_$r9, out_$exception := java.lang.Integer$valueOf$int(out_$i12);
    assert {:sourceloc "SimplifiedRSA.java", 36, -1, -1, -1} true;
    call out_$r10, out_$exception := java.lang.Integer$valueOf$int(out_i19);
    assert {:sourceloc "SimplifiedRSA.java", 36, -1, -1, -1} true;
    call out_$r11, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z1, out_$r9, out_$r10);
    assert {:sourceloc "SimplifiedRSA.java", 36, -1, -1, -1} true;
    call out_$r12, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z4, out_$r8, out_$r11);
    assert {:sourceloc "SimplifiedRSA.java", 36, -1, -1, -1} true;
    goto anon68_Then, anon68_Else;

  anon68_Else:
    assume {:partition} !($heap[out_$r12, $type] <: java.lang.Integer);
    call out_$fakelocal_6 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_6;
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon67_Then:
    assume {:partition} in_i1 != 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    call out_i23, out_$exception := java.lang.Integer$intValue$(out_$r7);
    assert {:sourceloc "SimplifiedRSA.java", 36, -1, -1, -1} true;
    call out_$r8, out_$exception := java.lang.Integer$valueOf$int(out_i19);
    assert {:sourceloc "SimplifiedRSA.java", 36, -1, -1, -1} true;
    goto anon67_Then, anon67_Else;

  anon67_Else:
    assume {:partition} in_i1 == 0;
    call out_$fakelocal_5 := $new(java.lang.ArithmeticException);
    out_$return := 0;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon66_Then:
    assume {:partition} out_$r7 != $null;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    out_$r7 := out_$r6;
    assert {:sourceloc "SimplifiedRSA.java", 34, -1, -1, -1} true;
    goto anon66_Then, anon66_Else;

  anon66_Else:
    assume {:partition} out_$r7 == $null;
    call out_$fakelocal_4 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon65_Then:
    assume {:partition} $heap[out_$r6, $type] <: java.lang.Integer;
    out_$exception := out_$exception;
    goto anon15;

  anon12:
    out_$i7 := $modInt(out_i17, 2);
    assert {:sourceloc "SimplifiedRSA.java", 26, -1, -1, -1} true;
    out_$l8 := out_$i7;
    assert {:sourceloc "SimplifiedRSA.java", 26, -1, -1, -1} true;
    call out_z1, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long(out_$l8, 1);
    assert {:sourceloc "SimplifiedRSA.java", 28, -1, -1, -1} true;
    out_i22 := $mulInt(out_i18, in_i3);
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} true;
    out_$l10 := out_i22;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} true;
    out_$l9 := in_i1;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} true;
    call out_z2, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long(out_$l10, out_$l9);
    assert {:sourceloc "SimplifiedRSA.java", 34, -1, -1, -1} true;
    out_$i11 := out_i22 - in_i1;
    assert {:sourceloc "SimplifiedRSA.java", 34, -1, -1, -1} true;
    call out_$r4, out_$exception := java.lang.Integer$valueOf$int(out_$i11);
    assert {:sourceloc "SimplifiedRSA.java", 34, -1, -1, -1} true;
    call out_$r5, out_$exception := java.lang.Integer$valueOf$int(out_i22);
    assert {:sourceloc "SimplifiedRSA.java", 34, -1, -1, -1} true;
    call out_$r6, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z2, out_$r4, out_$r5);
    assert {:sourceloc "SimplifiedRSA.java", 34, -1, -1, -1} true;
    goto anon65_Then, anon65_Else;

  anon65_Else:
    assume {:partition} !($heap[out_$r6, $type] <: java.lang.Integer);
    call out_$fakelocal_3 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon64_Then:
    assume {:partition} 2 != 0;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    call out_z4, out_$exception := java.lang.Boolean$booleanValue$(out_$r3);
    assert {:sourceloc "SimplifiedRSA.java", 26, -1, -1, -1} true;
    goto anon64_Then, anon64_Else;

  anon64_Else:
    assume {:partition} 2 == 0;
    call out_$fakelocal_2 := $new(java.lang.ArithmeticException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon63_Then:
    assume {:partition} out_$r3 != $null;
    out_$exception := out_$exception;
    goto anon9;

  anon6:
    out_$r3 := out_$r2;
    assert {:sourceloc "SimplifiedRSA.java", 24, -1, -1, -1} true;
    goto anon63_Then, anon63_Else;

  anon63_Else:
    assume {:partition} out_$r3 == $null;
    call out_$fakelocal_1 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon62_Then:
    assume {:partition} $heap[out_$r2, $type] <: java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon6;

  anon3:
    assert {:sourceloc "SimplifiedRSA.java", 22, -1, -1, -1} true;
    out_$l6 := out_i17;
    assert {:sourceloc "SimplifiedRSA.java", 22, -1, -1, -1} true;
    call out_$z3, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long(out_$l6, 0);
    assert {:sourceloc "SimplifiedRSA.java", 22, -1, -1, -1} true;
    call out_z0, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$not$boolean(out_$z3);
    assert {:sourceloc "SimplifiedRSA.java", 24, -1, -1, -1} true;
    call out_$r0, out_$exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "SimplifiedRSA.java", 24, -1, -1, -1} true;
    call out_$r1, out_$exception := java.lang.Boolean$valueOf$boolean(out_z4);
    assert {:sourceloc "SimplifiedRSA.java", 24, -1, -1, -1} true;
    call out_$r2, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z0, out_$r0, out_$r1);
    assert {:sourceloc "SimplifiedRSA.java", 24, -1, -1, -1} true;
    goto anon62_Then, anon62_Else;

  anon62_Else:
    assume {:partition} !($heap[out_$r2, $type] <: java.lang.Boolean);
    call out_$fakelocal_0 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_0;
    out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := in_$return, in_$exception, in_$fakelocal_7, in_$r23, in_$z3, in_i21, in_$r26, in_$l9, in_$r24, in_$r2, in_$fakelocal_16, in_$r21, in_$r5, in_z4, in_$r22, in_$r3, in_$r31, in_$r15, in_$i15, in_$r12, in_$fakelocal_4, in_$fakelocal_17, in_$r18, in_$r9, in_i20, in_z0, in_$fakelocal_5, in_$i7, in_i19, in_$r17, in_$r11, in_$r10, in_i24, in_$r14, in_$fakelocal_8, in_$r20, in_$fakelocal_9, in_$fakelocal_13, in_$i11, in_$l8, in_$r29, in_i18, in_z2, in_$fakelocal_6, in_$fakelocal_1, in_$fakelocal_2, in_$fakelocal_0, in_$r27, in_$l6, in_i17, in_z1, in_$r1, in_$fakelocal_11, in_$r7, in_i22, in_i23, in_$i12, in_$r28, in_$r8, in_$fakelocal_10, in_$i13, in_$r13, in_$fakelocal_12, in_$r4, in_$r25, in_$r0, in_$r6, in_$fakelocal_15, in_$i16, in_$i14, in_$l10, in_$r30, in_$r19, in_$r16, in_$fakelocal_14, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon61_Else:
    assume {:partition} 0 < out_i21;
    assert {:sourceloc "SimplifiedRSA.java", 21, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  block21_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, out_$r0, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, out_$fakelocal_14, out_$fakelocal_3 := modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19(out_$return, out_$exception, out_$fakelocal_7, out_$r23, out_$z3, out_i21, out_$r26, out_$l9, out_$r24, out_$r2, out_$fakelocal_16, out_$r21, out_$r5, out_z4, out_$r22, out_$r3, out_$r31, out_$r15, out_$i15, out_$r12, out_$fakelocal_4, out_$fakelocal_17, out_$r18, out_$r9, out_i20, out_z0, out_$fakelocal_5, out_$i7, out_i19, out_$r17, out_$r11, out_$r10, out_i24, out_$r14, out_$fakelocal_8, out_$r20, out_$fakelocal_9, out_$fakelocal_13, out_$i11, out_$l8, out_$r29, out_i18, out_z2, out_$fakelocal_6, out_$fakelocal_1, out_$fakelocal_2, out_$fakelocal_0, out_$r27, out_$l6, out_i17, out_z1, out_$r1, out_$fakelocal_11, out_$r7, out_i22, out_i23, out_$i12, out_$r28, out_$r8, out_$fakelocal_10, out_$i13, out_$r13, out_$fakelocal_12, out_$r4, out_$r25, in_i4, out_$r0, in_i1, out_$r6, out_$fakelocal_15, out_$i16, out_$i14, out_$l10, out_$r30, out_$r19, out_$r16, in_i3, out_$fakelocal_14, out_$fakelocal_3);
    return;

  exit:
    return;
}



procedure modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_7: ref, 
    in_$r23: ref, 
    in_$z3: int, 
    in_i21: int, 
    in_$r26: ref, 
    in_$l9: int, 
    in_$r24: ref, 
    in_$r2: ref, 
    in_$fakelocal_16: ref, 
    in_$r21: ref, 
    in_$r5: ref, 
    in_z4: int, 
    in_$r22: ref, 
    in_$r3: ref, 
    in_$r31: ref, 
    in_$r15: ref, 
    in_$i15: int, 
    in_$r12: ref, 
    in_$fakelocal_4: ref, 
    in_$fakelocal_17: ref, 
    in_$r18: ref, 
    in_$r9: ref, 
    in_i20: int, 
    in_z0: int, 
    in_$fakelocal_5: ref, 
    in_$i7: int, 
    in_i19: int, 
    in_$r17: ref, 
    in_$r11: ref, 
    in_$r10: ref, 
    in_i24: int, 
    in_$r14: ref, 
    in_$fakelocal_8: ref, 
    in_$r20: ref, 
    in_$fakelocal_9: ref, 
    in_$fakelocal_13: ref, 
    in_$i11: int, 
    in_$l8: int, 
    in_$r29: ref, 
    in_i18: int, 
    in_z2: int, 
    in_$fakelocal_6: ref, 
    in_$fakelocal_1: ref, 
    in_$fakelocal_2: ref, 
    in_$fakelocal_0: ref, 
    in_$r27: ref, 
    in_$l6: int, 
    in_i17: int, 
    in_z1: int, 
    in_$r1: ref, 
    in_$fakelocal_11: ref, 
    in_$r7: ref, 
    in_i22: int, 
    in_i23: int, 
    in_$i12: int, 
    in_$r28: ref, 
    in_$r8: ref, 
    in_$fakelocal_10: ref, 
    in_$i13: int, 
    in_$r13: ref, 
    in_$fakelocal_12: ref, 
    in_$r4: ref, 
    in_$r25: ref, 
    in_i4: int, 
    in_$r0: ref, 
    in_i1: int, 
    in_$r6: ref, 
    in_$fakelocal_15: ref, 
    in_$i16: int, 
    in_$i14: int, 
    in_$l10: int, 
    in_$r30: ref, 
    in_$r19: ref, 
    in_$r16: ref, 
    in_i3: int, 
    in_$fakelocal_14: ref, 
    in_$fakelocal_3: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_7: ref, 
    out_$r23: ref, 
    out_$z3: int, 
    out_i21: int, 
    out_$r26: ref, 
    out_$l9: int, 
    out_$r24: ref, 
    out_$r2: ref, 
    out_$fakelocal_16: ref, 
    out_$r21: ref, 
    out_$r5: ref, 
    out_z4: int, 
    out_$r22: ref, 
    out_$r3: ref, 
    out_$r31: ref, 
    out_$r15: ref, 
    out_$i15: int, 
    out_$r12: ref, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_17: ref, 
    out_$r18: ref, 
    out_$r9: ref, 
    out_i20: int, 
    out_z0: int, 
    out_$fakelocal_5: ref, 
    out_$i7: int, 
    out_i19: int, 
    out_$r17: ref, 
    out_$r11: ref, 
    out_$r10: ref, 
    out_i24: int, 
    out_$r14: ref, 
    out_$fakelocal_8: ref, 
    out_$r20: ref, 
    out_$fakelocal_9: ref, 
    out_$fakelocal_13: ref, 
    out_$i11: int, 
    out_$l8: int, 
    out_$r29: ref, 
    out_i18: int, 
    out_z2: int, 
    out_$fakelocal_6: ref, 
    out_$fakelocal_1: ref, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_0: ref, 
    out_$r27: ref, 
    out_$l6: int, 
    out_i17: int, 
    out_z1: int, 
    out_$r1: ref, 
    out_$fakelocal_11: ref, 
    out_$r7: ref, 
    out_i22: int, 
    out_i23: int, 
    out_$i12: int, 
    out_$r28: ref, 
    out_$r8: ref, 
    out_$fakelocal_10: ref, 
    out_$i13: int, 
    out_$r13: ref, 
    out_$fakelocal_12: ref, 
    out_$r4: ref, 
    out_$r25: ref, 
    out_$r0: ref, 
    out_$r6: ref, 
    out_$fakelocal_15: ref, 
    out_$i16: int, 
    out_$i14: int, 
    out_$l10: int, 
    out_$r30: ref, 
    out_$r19: ref, 
    out_$r16: ref, 
    out_$fakelocal_14: ref, 
    out_$fakelocal_3: ref);
  modifies $objIndex, $heap;


