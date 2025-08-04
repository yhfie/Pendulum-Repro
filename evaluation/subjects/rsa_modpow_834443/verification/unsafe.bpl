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

const {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} unique java.lang.ArithmeticException: javaType extends unique java.lang.RuntimeException complete;

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
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];
  ensures $obj == $intToRef(old($objIndex));
  ensures $obj != $null;
  ensures $objIndex == old($objIndex) + 1;
  ensures !old($heap[$obj, $alloc]);



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $heap[$other, $alloc] <==> true;
  ensures $heap[$other, $type] == $heap[$this, $type];
  ensures $other != $null;



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
  var $i2: int;
  var i0: int;
  var i1: int;

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
  var $c1: int;
  var r0: ref;
  var i0: int;
  var $fakelocal_0: ref;
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
  var $r0: ref;
  var i0: int;
  var $fakelocal_0: ref;

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
  var r0: ref;
  var $i2: int;
  var $i0: int;
  var r1: ref;
  var $i3: int;
  var $fakelocal_0: ref;
  var $i1: int;

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
  var r1: ref;
  var r0: ref;
  var $i0: int;
  var $r2: ref;
  var $fakelocal_0: ref;

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
    assert {:sourceloc "SimplifiedRSA.java", 3, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "SimplifiedRSA.java", 3, -1, -1, -1} true;
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
  var $d2: int;
  var i0: int;
  var i10: int;
  var $i6: int;
  var $d1: int;
  var i11: int;
  var i8: int;
  var i12: int;
  var i9: int;
  var i3: int;
  var $i7: int;
  var $fakelocal_2: ref;
  var i4: int;
  var $fakelocal_3: ref;
  var $i5: int;
  var $d3: int;
  var $fakelocal_0: ref;
  var $d0: int;
  var i2: int;
  var i1: int;
  var $fakelocal_1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} true;
    i8 := $in_parameter__1;
    assert {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__2;
    assert {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} true;
    i2 := $in_parameter__3;
    assert {:sourceloc "SimplifiedRSA.java", 8, -1, -1, -1} true;
    i9 := 1;
    assert {:sourceloc "SimplifiedRSA.java", 9, -1, -1, -1} true;
    i3 := i0;
    assert {:sourceloc "SimplifiedRSA.java", 10, -1, -1, -1} true;
    i10 := 0;
    assert {:sourceloc "SimplifiedRSA.java", 12, -1, -1, -1} true;
    $i5 := i2 + 1;
    assert {:sourceloc "SimplifiedRSA.java", 12, -1, -1, -1} true;
    $d0 := $i5;
    assert {:sourceloc "SimplifiedRSA.java", 12, -1, -1, -1} true;
    call $d1, $exception := java.lang.Math$log$double($d0);
    assert {:sourceloc "SimplifiedRSA.java", 12, -1, -1, -1} true;
    call $d2, $exception := java.lang.Math$log$double($DoubleConst1);
    assert {:sourceloc "SimplifiedRSA.java", 12, -1, -1, -1} true;
    $d3 := $realOp32241($d1, $d2);
    assert {:sourceloc "SimplifiedRSA.java", 12, -1, -1, -1} true;
    i4 := $d3;
    assert {:sourceloc "SimplifiedRSA.java", 14, -1, -1, -1} true;
    i11 := 0;
    goto block19;

  block19:
    call $return, $exception, i10, $i6, i11, i8, i12, i9, $i7, $fakelocal_2, $fakelocal_3, $fakelocal_0, $fakelocal_1 := modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19($return, $exception, i10, $i6, i11, i8, i12, i9, i3, $i7, $fakelocal_2, i4, $fakelocal_3, $fakelocal_0, i1, $fakelocal_1);
    goto block19_last;

  anon25_Else:
    assume {:partition} 0 < i8;
    assert {:sourceloc "SimplifiedRSA.java", 15, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} 2 == 0;
    call $fakelocal_0 := $new(java.lang.ArithmeticException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon26_Then:
    assume {:partition} 2 != 0;
    $exception := $exception;
    goto anon6;

  anon6:
    $i6 := $modInt(i8, 2);
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} $i6 == 1;
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "SimplifiedRSA.java", 19, -1, -1, -1} true;
    i12 := $mulInt(i9, i3);
    assert {:sourceloc "SimplifiedRSA.java", 20, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} i1 < i12;
    assert {:sourceloc "SimplifiedRSA.java", 20, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "SimplifiedRSA.java", 21, -1, -1, -1} true;
    i12 := i12 - i1;
    goto block22;

  block22:
    assert {:sourceloc "SimplifiedRSA.java", 23, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} i1 == 0;
    call $fakelocal_1 := $new(java.lang.ArithmeticException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon29_Then:
    assume {:partition} i1 != 0;
    $exception := $exception;
    goto anon15;

  anon15:
    i10 := $modInt(i12, i1);
    assert {:sourceloc "SimplifiedRSA.java", 24, -1, -1, -1} true;
    goto block23;

  block23:
    assert {:sourceloc "SimplifiedRSA.java", 27, -1, -1, -1} true;
    $i7 := $mulInt(i10, i10);
    assert {:sourceloc "SimplifiedRSA.java", 27, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} i1 == 0;
    call $fakelocal_2 := $new(java.lang.ArithmeticException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon30_Then:
    assume {:partition} i1 != 0;
    $exception := $exception;
    goto anon18;

  anon18:
    i9 := $modInt($i7, i1);
    assert {:sourceloc "SimplifiedRSA.java", 28, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} 2 == 0;
    call $fakelocal_3 := $new(java.lang.ArithmeticException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon31_Then:
    assume {:partition} 2 != 0;
    $exception := $exception;
    goto anon21;

  anon21:
    i8 := $divInt(i8, 2);
    assert {:sourceloc "SimplifiedRSA.java", 29, -1, -1, -1} true;
    i11 := i11 + 1;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} i11 == i4;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} {:comment "elseblock"} true;
    goto anon24;

  anon24:
    assert {:sourceloc "SimplifiedRSA.java", 15, -1, -1, -1} true;
    goto block20;

  block20:
    assert {:sourceloc "SimplifiedRSA.java", 33, -1, -1, -1} true;
    $return := i10;
    goto block24;

  block24:
    return;

  anon32_Then:
    assume {:partition} i11 != i4;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} {:comment "thenblock"} true;
    goto anon32_Then_dummy;

  anon28_Then:
    assume {:partition} i12 <= i1;
    assert {:sourceloc "SimplifiedRSA.java", 20, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;

  anon27_Then:
    assume {:partition} $i6 != 1;
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} {:comment "thenblock"} true;
    goto block21;

  block21:
    assert {:sourceloc "SimplifiedRSA.java", 25, -1, -1, -1} true;
    i10 := i9;
    goto block23;

  anon25_Then:
    assume {:partition} i8 <= 0;
    assert {:sourceloc "SimplifiedRSA.java", 15, -1, -1, -1} {:comment "thenblock"} true;
    goto block20;

  anon32_Then_dummy:
    assume false;
    return;

  block19_last:
    assert {:sourceloc "SimplifiedRSA.java", 15, -1, -1, -1} true;
    goto anon25_Then, anon25_Else;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19(in_$return: int, 
    in_$exception: ref, 
    in_i10: int, 
    in_$i6: int, 
    in_i11: int, 
    in_i8: int, 
    in_i12: int, 
    in_i9: int, 
    in_i3: int, 
    in_$i7: int, 
    in_$fakelocal_2: ref, 
    in_i4: int, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_0: ref, 
    in_i1: int, 
    in_$fakelocal_1: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_i10: int, 
    out_$i6: int, 
    out_i11: int, 
    out_i8: int, 
    out_i12: int, 
    out_i9: int, 
    out_$i7: int, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_0: ref, 
    out_$fakelocal_1: ref)
{

  entry:
    out_$return, out_$exception, out_i10, out_$i6, out_i11, out_i8, out_i12, out_i9, out_$i7, out_$fakelocal_2, out_$fakelocal_3, out_$fakelocal_0, out_$fakelocal_1 := in_$return, in_$exception, in_i10, in_$i6, in_i11, in_i8, in_i12, in_i9, in_$i7, in_$fakelocal_2, in_$fakelocal_3, in_$fakelocal_0, in_$fakelocal_1;
    goto block19;

  block19:
    assert {:sourceloc "SimplifiedRSA.java", 15, -1, -1, -1} true;
    goto anon25_Then, anon25_Else;

  anon25_Then:
    assume {:partition} out_i8 <= 0;
    assert {:sourceloc "SimplifiedRSA.java", 15, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_i10, out_$i6, out_i11, out_i8, out_i12, out_i9, out_$i7, out_$fakelocal_2, out_$fakelocal_3, out_$fakelocal_0, out_$fakelocal_1 := in_$return, in_$exception, in_i10, in_$i6, in_i11, in_i8, in_i12, in_i9, in_$i7, in_$fakelocal_2, in_$fakelocal_3, in_$fakelocal_0, in_$fakelocal_1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon32_Then:
    assume {:partition} out_i11 != in_i4;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} {:comment "thenblock"} true;
    goto anon32_Then_dummy;

  anon21:
    out_i8 := $divInt(out_i8, 2);
    assert {:sourceloc "SimplifiedRSA.java", 29, -1, -1, -1} true;
    out_i11 := out_i11 + 1;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} out_i11 == in_i4;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} {:comment "elseblock"} true;
    out_$return, out_$exception, out_i10, out_$i6, out_i11, out_i8, out_i12, out_i9, out_$i7, out_$fakelocal_2, out_$fakelocal_3, out_$fakelocal_0, out_$fakelocal_1 := in_$return, in_$exception, in_i10, in_$i6, in_i11, in_i8, in_i12, in_i9, in_$i7, in_$fakelocal_2, in_$fakelocal_3, in_$fakelocal_0, in_$fakelocal_1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon31_Then:
    assume {:partition} 2 != 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    out_i9 := $modInt(out_$i7, in_i1);
    assert {:sourceloc "SimplifiedRSA.java", 28, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} 2 == 0;
    call out_$fakelocal_3 := $new(java.lang.ArithmeticException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_i10, out_$i6, out_i11, out_i8, out_i12, out_i9, out_$i7, out_$fakelocal_2, out_$fakelocal_3, out_$fakelocal_0, out_$fakelocal_1 := in_$return, in_$exception, in_i10, in_$i6, in_i11, in_i8, in_i12, in_i9, in_$i7, in_$fakelocal_2, in_$fakelocal_3, in_$fakelocal_0, in_$fakelocal_1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon30_Then:
    assume {:partition} in_i1 != 0;
    out_$exception := out_$exception;
    goto anon18;

  block23:
    assert {:sourceloc "SimplifiedRSA.java", 27, -1, -1, -1} true;
    out_$i7 := $mulInt(out_i10, out_i10);
    assert {:sourceloc "SimplifiedRSA.java", 27, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} in_i1 == 0;
    call out_$fakelocal_2 := $new(java.lang.ArithmeticException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_i10, out_$i6, out_i11, out_i8, out_i12, out_i9, out_$i7, out_$fakelocal_2, out_$fakelocal_3, out_$fakelocal_0, out_$fakelocal_1 := in_$return, in_$exception, in_i10, in_$i6, in_i11, in_i8, in_i12, in_i9, in_$i7, in_$fakelocal_2, in_$fakelocal_3, in_$fakelocal_0, in_$fakelocal_1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon15:
    out_i10 := $modInt(out_i12, in_i1);
    assert {:sourceloc "SimplifiedRSA.java", 24, -1, -1, -1} true;
    goto block23;

  block21:
    assert {:sourceloc "SimplifiedRSA.java", 25, -1, -1, -1} true;
    out_i10 := out_i9;
    goto block23;

  anon27_Then:
    assume {:partition} out_$i6 != 1;
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} {:comment "thenblock"} true;
    goto block21;

  anon6:
    out_$i6 := $modInt(out_i8, 2);
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon26_Then:
    assume {:partition} 2 != 0;
    out_$exception := out_$exception;
    goto anon6;

  anon3:
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} 2 == 0;
    call out_$fakelocal_0 := $new(java.lang.ArithmeticException);
    out_$return := 0;
    out_$exception := out_$fakelocal_0;
    out_$return, out_$exception, out_i10, out_$i6, out_i11, out_i8, out_i12, out_i9, out_$i7, out_$fakelocal_2, out_$fakelocal_3, out_$fakelocal_0, out_$fakelocal_1 := in_$return, in_$exception, in_i10, in_$i6, in_i11, in_i8, in_i12, in_i9, in_$i7, in_$fakelocal_2, in_$fakelocal_3, in_$fakelocal_0, in_$fakelocal_1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon25_Else:
    assume {:partition} 0 < out_i8;
    assert {:sourceloc "SimplifiedRSA.java", 15, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon29_Then:
    assume {:partition} in_i1 != 0;
    out_$exception := out_$exception;
    goto anon15;

  block22:
    assert {:sourceloc "SimplifiedRSA.java", 23, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} in_i1 == 0;
    call out_$fakelocal_1 := $new(java.lang.ArithmeticException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_i10, out_$i6, out_i11, out_i8, out_i12, out_i9, out_$i7, out_$fakelocal_2, out_$fakelocal_3, out_$fakelocal_0, out_$fakelocal_1 := in_$return, in_$exception, in_i10, in_$i6, in_i11, in_i8, in_i12, in_i9, in_$i7, in_$fakelocal_2, in_$fakelocal_3, in_$fakelocal_0, in_$fakelocal_1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon12:
    assert {:sourceloc "SimplifiedRSA.java", 21, -1, -1, -1} true;
    out_i12 := out_i12 - in_i1;
    goto block22;

  anon28_Then:
    assume {:partition} out_i12 <= in_i1;
    assert {:sourceloc "SimplifiedRSA.java", 20, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;

  anon9:
    assert {:sourceloc "SimplifiedRSA.java", 19, -1, -1, -1} true;
    out_i12 := $mulInt(out_i9, in_i3);
    assert {:sourceloc "SimplifiedRSA.java", 20, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon27_Else:
    assume {:partition} out_$i6 == 1;
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon28_Else:
    assume {:partition} in_i1 < out_i12;
    assert {:sourceloc "SimplifiedRSA.java", 20, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon32_Then_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_i10, out_$i6, out_i11, out_i8, out_i12, out_i9, out_$i7, out_$fakelocal_2, out_$fakelocal_3, out_$fakelocal_0, out_$fakelocal_1 := modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19(out_$return, out_$exception, out_i10, out_$i6, out_i11, out_i8, out_i12, out_i9, in_i3, out_$i7, out_$fakelocal_2, in_i4, out_$fakelocal_3, out_$fakelocal_0, in_i1, out_$fakelocal_1);
    return;

  exit:
    return;
}



procedure modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19(in_$return: int, 
    in_$exception: ref, 
    in_i10: int, 
    in_$i6: int, 
    in_i11: int, 
    in_i8: int, 
    in_i12: int, 
    in_i9: int, 
    in_i3: int, 
    in_$i7: int, 
    in_$fakelocal_2: ref, 
    in_i4: int, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_0: ref, 
    in_i1: int, 
    in_$fakelocal_1: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_i10: int, 
    out_$i6: int, 
    out_i11: int, 
    out_i8: int, 
    out_i12: int, 
    out_i9: int, 
    out_$i7: int, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_0: ref, 
    out_$fakelocal_1: ref);
  modifies $objIndex, $heap;


