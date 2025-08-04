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

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.lang.Object: javaType extends complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.io.Serializable: javaType extends complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.lang.Comparable: javaType extends complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.lang.Integer: javaType extends unique java.lang.Object, java.io.Serializable, java.lang.Comparable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.lang.Throwable: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.lang.Exception: javaType extends unique java.lang.Throwable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.lang.RuntimeException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.lang.NullPointerException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.lang.ClassCastException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "MoreSanity.java", -1, -1, -1, -1} unique MoreSanity: javaType extends unique java.lang.Object complete;

const {:sourceloc "MoreSanity.java", -1, -1, -1, -1} unique java.lang.IndexOutOfBoundsException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "MoreSanity.java", -1, -1, -1, -1} unique java.lang.ArrayIndexOutOfBoundsException: javaType extends unique java.lang.IndexOutOfBoundsException complete;

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

axiom (forall index: int :: $intToRef(index) != $null);

axiom (forall i1: int, i2: int :: i1 == i2 <==> $intToRef(i1) == $intToRef(i2));

procedure $new(obj_type: javaType) returns ($obj: ref);
  modifies $objIndex, $heap;
  ensures $objIndex == old($objIndex) + 1;
  ensures $obj != $null;
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];
  ensures $obj == $intToRef(old($objIndex));
  ensures !old($heap[$obj, $alloc]);



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $other != $null;
  ensures $heap[$other, $alloc] <==> true;
  ensures $heap[$other, $type] == $heap[$this, $type];



procedure int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure java.lang.Integer$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies $heap;



procedure java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.Integer$valueOf$int($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Integer$intValue$($this: ref) returns ($return: int, $exception: ref);



procedure java.lang.Integer$compareTo$java.lang.Integer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Integer$compareTo$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure MoreSanity$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure MoreSanity$array_unsafe$int$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;
free requires $arrSizeHeap[$in_parameter__0] > 0;free requires $in_parameter__0 != $null;


procedure MoreSanity$loopAndbranch_safe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure MoreSanity$loopAndbranch_unsafe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



implementation java.lang.Integer$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var r0: ref;
  var i0: int;

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
    goto block1;

  block1:
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
    goto block2;

  block2:
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
    goto block3;

  block3:
    return;
}



implementation java.lang.Integer$compareTo$java.lang.Integer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var $i3: int;
  var $i0: int;
  var $i1: int;
  var $i2: int;
  var r1: ref;
  var $fakelocal_0: ref;
  var r0: ref;

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
    goto block6;

  block6:
    return;

  anon11_Then:
    assume {:partition} $i1 <= $i0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block4;

  block4:
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
    goto block6;

  anon12_Then:
    assume {:partition} $i3 >= $i2;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "thenblock"} true;
    goto block5;

  block5:
    assert {:sourceloc "Integer.java", 27, -1, -1, -1} true;
    $return := 0;
    goto block6;
}



implementation java.lang.Integer$compareTo$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var r1: ref;
  var $r2: ref;
  var $fakelocal_0: ref;
  var r0: ref;
  var $i0: int;

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
    goto block7;

  block7:
    return;
}



implementation MoreSanity$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "MoreSanity.java", -1, -1, -1, -1} $heap[$this, $type] <: MoreSanity;
    assume {:sourceloc "MoreSanity.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "MoreSanity.java", 1, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "MoreSanity.java", 1, -1, -1, -1} true;
    goto block8;

  block8:
    return;
}



implementation MoreSanity$array_unsafe$int$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $i1: int;
  var $i2: int;
  var b5: int;
  var i4: int;
  var i3: int;
  var r0: ref;
  var $fakelocal_0: ref;
  var i0: int;
  var $fakelocal_1: ref;
  var $fakelocal_2: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__1;
    assert {:sourceloc "MoreSanity.java", 22, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} 0 > i0;
    assert {:sourceloc "MoreSanity.java", 22, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "MoreSanity.java", 23, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} r0 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon17_Then:
    assume {:partition} r0 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i2 := $arrSizeHeap[r0];
    assert {:sourceloc "MoreSanity.java", 23, -1, -1, -1} true;
    i3 := $i2 - 1;
    goto block10;

  block10:
    call $return, $exception, i4, i3, $fakelocal_1 := MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10($return, $exception, i4, i3, r0, $fakelocal_1);
    goto block10_last;

  anon18_Else:
    assume {:partition} 0 <= i3;
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "MoreSanity.java", 26, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(i3 < $arrSizeHeap[r0] && i3 >= 0);
    call $fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon19_Then:
    assume {:partition} i3 < $arrSizeHeap[r0] && i3 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    i4 := $intArrHeap[r0][i3];
    assert {:sourceloc "MoreSanity.java", 27, -1, -1, -1} true;
    i3 := i3 + -1;
    assert {:sourceloc "MoreSanity.java", 27, -1, -1, -1} true;
    goto anon12_dummy;

  anon18_Then:
    assume {:partition} i3 < 0;
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  block11:
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto block12;

  block12:
    assert {:sourceloc "MoreSanity.java", 34, -1, -1, -1} true;
    $return := 0;
    goto block13;

  block13:
    return;

  anon16_Then:
    assume {:partition} i0 >= 0;
    assert {:sourceloc "MoreSanity.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block9;

  block9:
    assert {:sourceloc "MoreSanity.java", 30, -1, -1, -1} true;
    b5 := 0;
    assert {:sourceloc "MoreSanity.java", 31, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !(b5 < $arrSizeHeap[r0] && b5 >= 0);
    call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon20_Then:
    assume {:partition} b5 < $arrSizeHeap[r0] && b5 >= 0;
    $exception := $exception;
    goto anon15;

  anon15:
    $i1 := $intArrHeap[r0][b5];
    goto block12;

  anon12_dummy:
    assume false;
    return;

  block10_last:
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;
}



implementation MoreSanity$loopAndbranch_safe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var i1: int;
  var i5: int;
  var i4: int;
  var i3: int;
  var i0: int;
  var i2: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__1;
    assert {:sourceloc "MoreSanity.java", 38, -1, -1, -1} true;
    i2 := i0;
    assert {:sourceloc "MoreSanity.java", 40, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} 0 > i1;
    assert {:sourceloc "MoreSanity.java", 40, -1, -1, -1} {:comment "elseblock"} true;
    goto block15;

  block15:
    call i2 := MoreSanity$loopAndbranch_safe$int_int_loop_block15(i2);
    goto block15_last;

  anon19_Else:
    assume {:partition} 0 < i2;
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} {:comment "elseblock"} true;
    goto anon5;

  anon5:
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} true;
    i2 := i2 + -1;
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} true;
    goto anon5_dummy;

  anon19_Then:
    assume {:partition} i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  block16:
    assert {:sourceloc "MoreSanity.java", 62, -1, -1, -1} true;
    $return := 1;
    goto block21;

  block21:
    return;

  anon18_Then:
    assume {:partition} i1 >= 0;
    assert {:sourceloc "MoreSanity.java", 40, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "MoreSanity.java", 46, -1, -1, -1} true;
    i3 := i1 + 10;
    assert {:sourceloc "MoreSanity.java", 48, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} 10 <= i3;
    assert {:sourceloc "MoreSanity.java", 48, -1, -1, -1} {:comment "elseblock"} true;
    goto anon8;

  anon8:
    assert {:sourceloc "MoreSanity.java", 49, -1, -1, -1} true;
    i4 := i0;
    goto block18;

  block18:
    call i4 := MoreSanity$loopAndbranch_safe$int_int_loop_block18(i4);
    goto block18_last;

  anon21_Else:
    assume {:partition} 0 < i4;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto anon11;

  anon11:
    assert {:sourceloc "MoreSanity.java", 51, -1, -1, -1} true;
    i4 := i4 + -1;
    assert {:sourceloc "MoreSanity.java", 51, -1, -1, -1} true;
    goto anon11_dummy;

  anon21_Then:
    assume {:partition} i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block19;

  block19:
    assert {:sourceloc "MoreSanity.java", 53, -1, -1, -1} true;
    goto block16;

  anon20_Then:
    assume {:partition} i3 < 10;
    assert {:sourceloc "MoreSanity.java", 48, -1, -1, -1} {:comment "thenblock"} true;
    goto block17;

  block17:
    assert {:sourceloc "MoreSanity.java", 54, -1, -1, -1} true;
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} 0 > i0;
    assert {:sourceloc "MoreSanity.java", 54, -1, -1, -1} {:comment "elseblock"} true;
    goto anon14;

  anon14:
    assert {:sourceloc "MoreSanity.java", 55, -1, -1, -1} true;
    i5 := i0;
    goto block20;

  block20:
    call i5 := MoreSanity$loopAndbranch_safe$int_int_loop_block20(i5);
    goto block20_last;

  anon23_Else:
    assume {:partition} 0 < i5;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "MoreSanity.java", 57, -1, -1, -1} true;
    i5 := i5 + -1;
    assert {:sourceloc "MoreSanity.java", 57, -1, -1, -1} true;
    goto anon17_dummy;

  anon23_Then:
    assume {:partition} i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  anon22_Then:
    assume {:partition} i0 >= 0;
    assert {:sourceloc "MoreSanity.java", 54, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  anon5_dummy:
    assume false;
    return;

  block15_last:
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon11_dummy:
    assume false;
    return;

  block18_last:
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;

  anon17_dummy:
    assume false;
    return;

  block20_last:
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;
}



implementation MoreSanity$loopAndbranch_unsafe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var i1: int;
  var i5: int;
  var i4: int;
  var i3: int;
  var i0: int;
  var i2: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__1;
    assert {:sourceloc "MoreSanity.java", 66, -1, -1, -1} true;
    i2 := i0;
    assert {:sourceloc "MoreSanity.java", 68, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} 0 > i1;
    assert {:sourceloc "MoreSanity.java", 68, -1, -1, -1} {:comment "elseblock"} true;
    goto block23;

  block23:
    call i2 := MoreSanity$loopAndbranch_unsafe$int_int_loop_block23(i2);
    goto block23_last;

  anon19_Else:
    assume {:partition} 0 < i2;
    assert {:sourceloc "MoreSanity.java", 69, -1, -1, -1} {:comment "elseblock"} true;
    goto anon5;

  anon5:
    assert {:sourceloc "MoreSanity.java", 70, -1, -1, -1} true;
    i2 := i2 + -1;
    assert {:sourceloc "MoreSanity.java", 70, -1, -1, -1} true;
    goto anon5_dummy;

  anon19_Then:
    assume {:partition} i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 69, -1, -1, -1} {:comment "thenblock"} true;
    goto block24;

  block24:
    assert {:sourceloc "MoreSanity.java", 90, -1, -1, -1} true;
    $return := 1;
    goto block29;

  block29:
    return;

  anon18_Then:
    assume {:partition} i1 >= 0;
    assert {:sourceloc "MoreSanity.java", 68, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;

  block22:
    assert {:sourceloc "MoreSanity.java", 74, -1, -1, -1} true;
    i3 := i1 - 10;
    assert {:sourceloc "MoreSanity.java", 76, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} 10 <= i3;
    assert {:sourceloc "MoreSanity.java", 76, -1, -1, -1} {:comment "elseblock"} true;
    goto anon8;

  anon8:
    assert {:sourceloc "MoreSanity.java", 77, -1, -1, -1} true;
    i4 := i0;
    goto block26;

  block26:
    call i4 := MoreSanity$loopAndbranch_unsafe$int_int_loop_block26(i4);
    goto block26_last;

  anon21_Else:
    assume {:partition} 0 < i4;
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} {:comment "elseblock"} true;
    goto anon11;

  anon11:
    assert {:sourceloc "MoreSanity.java", 79, -1, -1, -1} true;
    i4 := i4 + -1;
    assert {:sourceloc "MoreSanity.java", 79, -1, -1, -1} true;
    goto anon11_dummy;

  anon21_Then:
    assume {:partition} i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block27;

  block27:
    assert {:sourceloc "MoreSanity.java", 81, -1, -1, -1} true;
    goto block24;

  anon20_Then:
    assume {:partition} i3 < 10;
    assert {:sourceloc "MoreSanity.java", 76, -1, -1, -1} {:comment "thenblock"} true;
    goto block25;

  block25:
    assert {:sourceloc "MoreSanity.java", 82, -1, -1, -1} true;
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} 0 > i0;
    assert {:sourceloc "MoreSanity.java", 82, -1, -1, -1} {:comment "elseblock"} true;
    goto anon14;

  anon14:
    assert {:sourceloc "MoreSanity.java", 83, -1, -1, -1} true;
    i5 := i0;
    goto block28;

  block28:
    call i5 := MoreSanity$loopAndbranch_unsafe$int_int_loop_block28(i5);
    goto block28_last;

  anon23_Else:
    assume {:partition} 0 < i5;
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "MoreSanity.java", 85, -1, -1, -1} true;
    i5 := i5 + -1;
    assert {:sourceloc "MoreSanity.java", 85, -1, -1, -1} true;
    goto anon17_dummy;

  anon23_Then:
    assume {:partition} i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block24;

  anon22_Then:
    assume {:partition} i0 >= 0;
    assert {:sourceloc "MoreSanity.java", 82, -1, -1, -1} {:comment "thenblock"} true;
    goto block24;

  anon5_dummy:
    assume false;
    return;

  block23_last:
    assert {:sourceloc "MoreSanity.java", 69, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon11_dummy:
    assume false;
    return;

  block26_last:
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;

  anon17_dummy:
    assume false;
    return;

  block28_last:
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10(in_$return: int, 
    in_$exception: ref, 
    in_i4: int, 
    in_i3: int, 
    in_r0: ref, 
    in_$fakelocal_1: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_i4: int, 
    out_i3: int, 
    out_$fakelocal_1: ref)
{

  entry:
    out_$return, out_$exception, out_i4, out_i3, out_$fakelocal_1 := in_$return, in_$exception, in_i4, in_i3, in_$fakelocal_1;
    goto block10;

  block10:
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Then:
    assume {:partition} out_i3 < 0;
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_i4, out_i3, out_$fakelocal_1 := in_$return, in_$exception, in_i4, in_i3, in_$fakelocal_1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon12:
    out_i4 := $intArrHeap[in_r0][out_i3];
    assert {:sourceloc "MoreSanity.java", 27, -1, -1, -1} true;
    out_i3 := out_i3 + -1;
    assert {:sourceloc "MoreSanity.java", 27, -1, -1, -1} true;
    goto anon12_dummy;

  anon19_Then:
    assume {:partition} out_i3 < $arrSizeHeap[in_r0] && out_i3 >= 0;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    assert {:sourceloc "MoreSanity.java", 26, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(out_i3 < $arrSizeHeap[in_r0] && out_i3 >= 0);
    call out_$fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_i4, out_i3, out_$fakelocal_1 := in_$return, in_$exception, in_i4, in_i3, in_$fakelocal_1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon18_Else:
    assume {:partition} 0 <= out_i3;
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon12_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_i4, out_i3, out_$fakelocal_1 := MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10(out_$return, out_$exception, out_i4, out_i3, in_r0, out_$fakelocal_1);
    return;

  exit:
    return;
}



procedure MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10(in_$return: int, 
    in_$exception: ref, 
    in_i4: int, 
    in_i3: int, 
    in_r0: ref, 
    in_$fakelocal_1: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_i4: int, 
    out_i3: int, 
    out_$fakelocal_1: ref);
  modifies $objIndex, $heap;



implementation MoreSanity$loopAndbranch_safe$int_int_loop_block15(in_i2: int) returns (out_i2: int)
{

  entry:
    out_i2 := in_i2;
    goto block15;

  block15:
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Then:
    assume {:partition} out_i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} {:comment "thenblock"} true;
    out_i2 := in_i2;
    return;

  anon5:
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} true;
    out_i2 := out_i2 + -1;
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} true;
    goto anon5_dummy;

  anon19_Else:
    assume {:partition} 0 < out_i2;
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} {:comment "elseblock"} true;
    goto anon5;

  anon5_dummy:
    call {:si_unique_call 1} out_i2 := MoreSanity$loopAndbranch_safe$int_int_loop_block15(out_i2);
    return;

  exit:
    return;
}



procedure MoreSanity$loopAndbranch_safe$int_int_loop_block15(in_i2: int) returns (out_i2: int);



implementation MoreSanity$loopAndbranch_safe$int_int_loop_block18(in_i4: int) returns (out_i4: int)
{

  entry:
    out_i4 := in_i4;
    goto block18;

  block18:
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;

  anon21_Then:
    assume {:partition} out_i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    out_i4 := in_i4;
    return;

  anon11:
    assert {:sourceloc "MoreSanity.java", 51, -1, -1, -1} true;
    out_i4 := out_i4 + -1;
    assert {:sourceloc "MoreSanity.java", 51, -1, -1, -1} true;
    goto anon11_dummy;

  anon21_Else:
    assume {:partition} 0 < out_i4;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto anon11;

  anon11_dummy:
    call {:si_unique_call 1} out_i4 := MoreSanity$loopAndbranch_safe$int_int_loop_block18(out_i4);
    return;

  exit:
    return;
}



procedure MoreSanity$loopAndbranch_safe$int_int_loop_block18(in_i4: int) returns (out_i4: int);



implementation MoreSanity$loopAndbranch_safe$int_int_loop_block20(in_i5: int) returns (out_i5: int)
{

  entry:
    out_i5 := in_i5;
    goto block20;

  block20:
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;

  anon23_Then:
    assume {:partition} out_i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    out_i5 := in_i5;
    return;

  anon17:
    assert {:sourceloc "MoreSanity.java", 57, -1, -1, -1} true;
    out_i5 := out_i5 + -1;
    assert {:sourceloc "MoreSanity.java", 57, -1, -1, -1} true;
    goto anon17_dummy;

  anon23_Else:
    assume {:partition} 0 < out_i5;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17_dummy:
    call {:si_unique_call 1} out_i5 := MoreSanity$loopAndbranch_safe$int_int_loop_block20(out_i5);
    return;

  exit:
    return;
}



procedure MoreSanity$loopAndbranch_safe$int_int_loop_block20(in_i5: int) returns (out_i5: int);



implementation MoreSanity$loopAndbranch_unsafe$int_int_loop_block23(in_i2: int) returns (out_i2: int)
{

  entry:
    out_i2 := in_i2;
    goto block23;

  block23:
    assert {:sourceloc "MoreSanity.java", 69, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Then:
    assume {:partition} out_i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 69, -1, -1, -1} {:comment "thenblock"} true;
    out_i2 := in_i2;
    return;

  anon5:
    assert {:sourceloc "MoreSanity.java", 70, -1, -1, -1} true;
    out_i2 := out_i2 + -1;
    assert {:sourceloc "MoreSanity.java", 70, -1, -1, -1} true;
    goto anon5_dummy;

  anon19_Else:
    assume {:partition} 0 < out_i2;
    assert {:sourceloc "MoreSanity.java", 69, -1, -1, -1} {:comment "elseblock"} true;
    goto anon5;

  anon5_dummy:
    call {:si_unique_call 1} out_i2 := MoreSanity$loopAndbranch_unsafe$int_int_loop_block23(out_i2);
    return;

  exit:
    return;
}



procedure MoreSanity$loopAndbranch_unsafe$int_int_loop_block23(in_i2: int) returns (out_i2: int);



implementation MoreSanity$loopAndbranch_unsafe$int_int_loop_block26(in_i4: int) returns (out_i4: int)
{

  entry:
    out_i4 := in_i4;
    goto block26;

  block26:
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;

  anon21_Then:
    assume {:partition} out_i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    out_i4 := in_i4;
    return;

  anon11:
    assert {:sourceloc "MoreSanity.java", 79, -1, -1, -1} true;
    out_i4 := out_i4 + -1;
    assert {:sourceloc "MoreSanity.java", 79, -1, -1, -1} true;
    goto anon11_dummy;

  anon21_Else:
    assume {:partition} 0 < out_i4;
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} {:comment "elseblock"} true;
    goto anon11;

  anon11_dummy:
    call {:si_unique_call 1} out_i4 := MoreSanity$loopAndbranch_unsafe$int_int_loop_block26(out_i4);
    return;

  exit:
    return;
}



procedure MoreSanity$loopAndbranch_unsafe$int_int_loop_block26(in_i4: int) returns (out_i4: int);



implementation MoreSanity$loopAndbranch_unsafe$int_int_loop_block28(in_i5: int) returns (out_i5: int)
{

  entry:
    out_i5 := in_i5;
    goto block28;

  block28:
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;

  anon23_Then:
    assume {:partition} out_i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    out_i5 := in_i5;
    return;

  anon17:
    assert {:sourceloc "MoreSanity.java", 85, -1, -1, -1} true;
    out_i5 := out_i5 + -1;
    assert {:sourceloc "MoreSanity.java", 85, -1, -1, -1} true;
    goto anon17_dummy;

  anon23_Else:
    assume {:partition} 0 < out_i5;
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17_dummy:
    call {:si_unique_call 1} out_i5 := MoreSanity$loopAndbranch_unsafe$int_int_loop_block28(out_i5);
    return;

  exit:
    return;
}



procedure MoreSanity$loopAndbranch_unsafe$int_int_loop_block28(in_i5: int) returns (out_i5: int);


