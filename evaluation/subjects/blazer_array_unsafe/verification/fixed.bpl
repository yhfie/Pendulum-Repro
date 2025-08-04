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

const {:sourceloc "MoreSanity.java", -1, -1, -1, -1} unique sg.edu.nus.comp.tsunami.safe.Safe: javaType extends unique java.lang.Object complete;

const {:sourceloc "MoreSanity.java", -1, -1, -1, -1} unique java.lang.IndexOutOfBoundsException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "MoreSanity.java", -1, -1, -1, -1} unique java.lang.ArrayIndexOutOfBoundsException: javaType extends unique java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "MoreSanity.java", -1, -1, -1, -1} unique java.lang.Number: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "MoreSanity.java", -1, -1, -1, -1} unique java.lang.ArithmeticException: javaType extends unique java.lang.RuntimeException complete;

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
  ensures !old($heap[$obj, $alloc]);
  ensures $objIndex == old($objIndex) + 1;
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];
  ensures $obj != $null;
  ensures $obj == $intToRef(old($objIndex));



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $heap[$other, $alloc] <==> true;
  ensures $other != $null;
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


procedure sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);



procedure MoreSanity$loopAndbranch_safe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure MoreSanity$loopAndbranch_unsafe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0: int) returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
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
  var $i0: int;
  var r1: ref;
  var $i3: int;
  var $fakelocal_0: ref;
  var $i2: int;
  var $i1: int;
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
  var r0: ref;
  var r1: ref;
  var $r2: ref;
  var $fakelocal_0: ref;
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
    assert {:sourceloc "MoreSanity.java", 3, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "MoreSanity.java", 3, -1, -1, -1} true;
    goto block8;

  block8:
    return;
}



implementation MoreSanity$array_unsafe$int$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $r2: ref;
  var $l1: int;
  var $fakelocal_0: ref;
  var $i4: int;
  var $r7: ref;
  var $fakelocal_3: ref;
  var $fakelocal_2: ref;
  var i7: int;
  var i6: int;
  var $fakelocal_1: ref;
  var $r5: ref;
  var b8: int;
  var r0: ref;
  var $fakelocal_7: ref;
  var $fakelocal_6: ref;
  var $i2: int;
  var $fakelocal_4: ref;
  var $fakelocal_8: int;
  var $r4: ref;
  var $fakelocal_5: ref;
  var $r8: ref;
  var i0: int;
  var z0: int;
  var $r3: ref;
  var $r1: ref;
  var $i5: int;
  var $i3: int;
  var $r6: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__1;
    assert {:sourceloc "MoreSanity.java", 23, -1, -1, -1} true;
    i6 := 0;
    assert {:sourceloc "MoreSanity.java", 24, -1, -1, -1} true;
    $l1 := i0;
    assert {:sourceloc "MoreSanity.java", 24, -1, -1, -1} true;
    call z0, $exception := sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($l1, 0);
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} r0 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon28_Then:
    assume {:partition} r0 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    $i2 := $arrSizeHeap[r0];
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} true;
    i7 := $i2 - 1;
    goto block9;

  block9:
    call $return, $exception, $r7, $fakelocal_3, $fakelocal_2, i7, i6, $fakelocal_1, $r5, $r8, $i5, $r6 := MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9($return, $exception, $r7, $fakelocal_3, $fakelocal_2, i7, i6, $fakelocal_1, $r5, r0, $r8, z0, $i5, $r6);
    goto block9_last;

  anon29_Else:
    assume {:partition} 0 <= i7;
    assert {:sourceloc "MoreSanity.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(i7 < $arrSizeHeap[r0] && i7 >= 0);
    call $fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon30_Then:
    assume {:partition} i7 < $arrSizeHeap[r0] && i7 >= 0;
    $exception := $exception;
    goto anon9;

  anon9:
    $i5 := $intArrHeap[r0][i7];
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    call $r5, $exception := java.lang.Integer$valueOf$int($i5);
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    call $r6, $exception := java.lang.Integer$valueOf$int(i6);
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    call $r7, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r5, $r6);
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !($heap[$r7, $type] <: java.lang.Integer);
    call $fakelocal_2 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon31_Then:
    assume {:partition} $heap[$r7, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon12;

  anon12:
    $r8 := $r7;
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} $r8 == $null;
    call $fakelocal_3 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon32_Then:
    assume {:partition} $r8 != $null;
    $exception := $exception;
    goto anon15;

  anon15:
    call i6, $exception := java.lang.Integer$intValue$($r8);
    assert {:sourceloc "MoreSanity.java", 30, -1, -1, -1} true;
    i7 := i7 + -1;
    assert {:sourceloc "MoreSanity.java", 30, -1, -1, -1} true;
    goto anon15_dummy;

  anon29_Then:
    assume {:partition} i7 < 0;
    assert {:sourceloc "MoreSanity.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "MoreSanity.java", 32, -1, -1, -1} true;
    b8 := 0;
    assert {:sourceloc "MoreSanity.java", 33, -1, -1, -1} true;
    call $r1, $exception := java.lang.Integer$valueOf$int(i6);
    assert {:sourceloc "MoreSanity.java", 33, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !(b8 < $arrSizeHeap[r0] && b8 >= 0);
    call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon33_Then:
    assume {:partition} b8 < $arrSizeHeap[r0] && b8 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $i3 := $intArrHeap[r0][b8];
    assert {:sourceloc "MoreSanity.java", 33, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} 2 == 0;
    call $fakelocal_5 := $new(java.lang.ArithmeticException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon34_Then:
    assume {:partition} 2 != 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $i4 := $divInt($i3, 2);
    assert {:sourceloc "MoreSanity.java", 33, -1, -1, -1} true;
    call $r2, $exception := java.lang.Integer$valueOf$int($i4);
    assert {:sourceloc "MoreSanity.java", 33, -1, -1, -1} true;
    call $r3, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1, $r2);
    assert {:sourceloc "MoreSanity.java", 33, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} !($heap[$r3, $type] <: java.lang.Integer);
    call $fakelocal_6 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon35_Then:
    assume {:partition} $heap[$r3, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon24;

  anon24:
    $r4 := $r3;
    assert {:sourceloc "MoreSanity.java", 33, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} $r4 == $null;
    call $fakelocal_7 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_7;
    return;

  anon36_Then:
    assume {:partition} $r4 != $null;
    $exception := $exception;
    goto anon27;

  anon27:
    call $fakelocal_8, $exception := java.lang.Integer$intValue$($r4);
    assert {:sourceloc "MoreSanity.java", 36, -1, -1, -1} true;
    $return := 0;
    goto block11;

  block11:
    return;

  anon15_dummy:
    assume false;
    return;

  block9_last:
    assert {:sourceloc "MoreSanity.java", 28, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;
}



implementation MoreSanity$loopAndbranch_safe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var i4: int;
  var i0: int;
  var i5: int;
  var i1: int;
  var i2: int;
  var i3: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__1;
    assert {:sourceloc "MoreSanity.java", 40, -1, -1, -1} true;
    i2 := i0;
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} 0 > i1;
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} {:comment "elseblock"} true;
    goto block13;

  block13:
    call i2 := MoreSanity$loopAndbranch_safe$int_int_loop_block13(i2);
    goto block13_last;

  anon19_Else:
    assume {:partition} 0 < i2;
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} {:comment "elseblock"} true;
    goto anon5;

  anon5:
    assert {:sourceloc "MoreSanity.java", 44, -1, -1, -1} true;
    i2 := i2 + -1;
    assert {:sourceloc "MoreSanity.java", 44, -1, -1, -1} true;
    goto anon5_dummy;

  anon19_Then:
    assume {:partition} i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "MoreSanity.java", 64, -1, -1, -1} true;
    $return := 1;
    goto block19;

  block19:
    return;

  anon18_Then:
    assume {:partition} i1 >= 0;
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block12;

  block12:
    assert {:sourceloc "MoreSanity.java", 48, -1, -1, -1} true;
    i3 := i1 + 10;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} 10 <= i3;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto anon8;

  anon8:
    assert {:sourceloc "MoreSanity.java", 51, -1, -1, -1} true;
    i4 := i0;
    goto block16;

  block16:
    call i4 := MoreSanity$loopAndbranch_safe$int_int_loop_block16(i4);
    goto block16_last;

  anon21_Else:
    assume {:partition} 0 < i4;
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} {:comment "elseblock"} true;
    goto anon11;

  anon11:
    assert {:sourceloc "MoreSanity.java", 53, -1, -1, -1} true;
    i4 := i4 + -1;
    assert {:sourceloc "MoreSanity.java", 53, -1, -1, -1} true;
    goto anon11_dummy;

  anon21_Then:
    assume {:partition} i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} {:comment "thenblock"} true;
    goto block17;

  block17:
    assert {:sourceloc "MoreSanity.java", 55, -1, -1, -1} true;
    goto block14;

  anon20_Then:
    assume {:partition} i3 < 10;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  block15:
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} true;
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} 0 > i0;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto anon14;

  anon14:
    assert {:sourceloc "MoreSanity.java", 57, -1, -1, -1} true;
    i5 := i0;
    goto block18;

  block18:
    call i5 := MoreSanity$loopAndbranch_safe$int_int_loop_block18(i5);
    goto block18_last;

  anon23_Else:
    assume {:partition} 0 < i5;
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "MoreSanity.java", 59, -1, -1, -1} true;
    i5 := i5 + -1;
    assert {:sourceloc "MoreSanity.java", 59, -1, -1, -1} true;
    goto anon17_dummy;

  anon23_Then:
    assume {:partition} i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  anon22_Then:
    assume {:partition} i0 >= 0;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  anon5_dummy:
    assume false;
    return;

  block13_last:
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon11_dummy:
    assume false;
    return;

  block16_last:
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;

  anon17_dummy:
    assume false;
    return;

  block18_last:
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;
}



implementation MoreSanity$loopAndbranch_unsafe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var i1: int;
  var i5: int;
  var i0: int;
  var i2: int;
  var i4: int;
  var i3: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__1;
    assert {:sourceloc "MoreSanity.java", 68, -1, -1, -1} true;
    i2 := i0;
    assert {:sourceloc "MoreSanity.java", 70, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} 0 > i1;
    assert {:sourceloc "MoreSanity.java", 70, -1, -1, -1} {:comment "elseblock"} true;
    goto block21;

  block21:
    call i2 := MoreSanity$loopAndbranch_unsafe$int_int_loop_block21(i2);
    goto block21_last;

  anon19_Else:
    assume {:partition} 0 < i2;
    assert {:sourceloc "MoreSanity.java", 71, -1, -1, -1} {:comment "elseblock"} true;
    goto anon5;

  anon5:
    assert {:sourceloc "MoreSanity.java", 72, -1, -1, -1} true;
    i2 := i2 + -1;
    assert {:sourceloc "MoreSanity.java", 72, -1, -1, -1} true;
    goto anon5_dummy;

  anon19_Then:
    assume {:partition} i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;

  block22:
    assert {:sourceloc "MoreSanity.java", 92, -1, -1, -1} true;
    $return := 1;
    goto block27;

  block27:
    return;

  anon18_Then:
    assume {:partition} i1 >= 0;
    assert {:sourceloc "MoreSanity.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block20;

  block20:
    assert {:sourceloc "MoreSanity.java", 76, -1, -1, -1} true;
    i3 := i1 - 10;
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} 10 <= i3;
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} {:comment "elseblock"} true;
    goto anon8;

  anon8:
    assert {:sourceloc "MoreSanity.java", 79, -1, -1, -1} true;
    i4 := i0;
    goto block24;

  block24:
    call i4 := MoreSanity$loopAndbranch_unsafe$int_int_loop_block24(i4);
    goto block24_last;

  anon21_Else:
    assume {:partition} 0 < i4;
    assert {:sourceloc "MoreSanity.java", 80, -1, -1, -1} {:comment "elseblock"} true;
    goto anon11;

  anon11:
    assert {:sourceloc "MoreSanity.java", 81, -1, -1, -1} true;
    i4 := i4 + -1;
    assert {:sourceloc "MoreSanity.java", 81, -1, -1, -1} true;
    goto anon11_dummy;

  anon21_Then:
    assume {:partition} i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 80, -1, -1, -1} {:comment "thenblock"} true;
    goto block25;

  block25:
    assert {:sourceloc "MoreSanity.java", 83, -1, -1, -1} true;
    goto block22;

  anon20_Then:
    assume {:partition} i3 < 10;
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block23;

  block23:
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} true;
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} 0 > i0;
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} {:comment "elseblock"} true;
    goto anon14;

  anon14:
    assert {:sourceloc "MoreSanity.java", 85, -1, -1, -1} true;
    i5 := i0;
    goto block26;

  block26:
    call i5 := MoreSanity$loopAndbranch_unsafe$int_int_loop_block26(i5);
    goto block26_last;

  anon23_Else:
    assume {:partition} 0 < i5;
    assert {:sourceloc "MoreSanity.java", 86, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "MoreSanity.java", 87, -1, -1, -1} true;
    i5 := i5 + -1;
    assert {:sourceloc "MoreSanity.java", 87, -1, -1, -1} true;
    goto anon17_dummy;

  anon23_Then:
    assume {:partition} i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 86, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;

  anon22_Then:
    assume {:partition} i0 >= 0;
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;

  anon5_dummy:
    assume false;
    return;

  block21_last:
    assert {:sourceloc "MoreSanity.java", 71, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon11_dummy:
    assume false;
    return;

  block24_last:
    assert {:sourceloc "MoreSanity.java", 80, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;

  anon17_dummy:
    assume false;
    return;

  block26_last:
    assert {:sourceloc "MoreSanity.java", 86, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;
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
    goto block28;

  block28:
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
    goto block29;

  block29:
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 1;
    goto block30;

  block30:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    $return := z1;
    goto block31;

  block31:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block30;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block29;
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
    goto block32;

  block32:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
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
    assert {:sourceloc "Safe.java", 16, -1, -1, -1} true;
    $z2 := $bitOr(z0, z1);
    assert {:sourceloc "Safe.java", 16, -1, -1, -1} true;
    $return := $z2;
    goto block33;

  block33:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
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
    goto block34;

  block34:
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
    goto block35;

  block35:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    $return := z0;
    goto block36;

  block36:
    return;

  anon8_Then:
    assume {:partition} $b3 > 0;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block35;

  anon7_Then:
    assume {:partition} $b2 <= 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    goto block34;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
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
    goto block37;

  block37:
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
    goto block38;

  block38:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    $return := z0;
    goto block39;

  block39:
    return;

  anon8_Then:
    assume {:partition} $b3 < 0;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block38;

  anon7_Then:
    assume {:partition} $b2 >= 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block37;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var l1: int;
  var $b3: int;
  var l0: int;
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
    goto block40;

  block40:
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
    goto block41;

  block41:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    $return := z0;
    goto block42;

  block42:
    return;

  anon8_Then:
    assume {:partition} $b3 >= 0;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block41;

  anon7_Then:
    assume {:partition} $b2 < 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block40;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l1: int;
  var l0: int;
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
    goto block43;

  block43:
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
    goto block44;

  block44:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    $return := z0;
    goto block45;

  block45:
    return;

  anon8_Then:
    assume {:partition} $b3 <= 0;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block44;

  anon7_Then:
    assume {:partition} $b2 > 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block43;
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
    goto block46;

  block46:
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
    goto block47;

  block47:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    $return := z0;
    goto block48;

  block48:
    return;

  anon8_Then:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block47;

  anon7_Then:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto block46;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l1: int;
  var $b3: int;
  var l0: int;
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
    goto block49;

  block49:
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
    goto block50;

  block50:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    $return := z0;
    goto block51;

  block51:
    return;

  anon8_Then:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto block50;

  anon7_Then:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block49;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b0: int;
  var d0: int;
  var $b1: int;
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
    goto block52;

  block52:
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
    goto block53;

  block53:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    $return := z0;
    goto block54;

  block54:
    return;

  anon8_Then:
    assume {:partition} $b1 > 0;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "thenblock"} true;
    goto block53;

  anon7_Then:
    assume {:partition} $b0 <= 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "thenblock"} true;
    goto block52;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b1: int;
  var d0: int;
  var d1: int;
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
    goto block55;

  block55:
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
    goto block56;

  block56:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    $return := z0;
    goto block57;

  block57:
    return;

  anon8_Then:
    assume {:partition} $b1 < 0;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block56;

  anon7_Then:
    assume {:partition} $b0 >= 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block55;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b1: int;
  var $b0: int;
  var d1: int;
  var d0: int;
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
    goto block58;

  block58:
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
    goto block59;

  block59:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    $return := z0;
    goto block60;

  block60:
    return;

  anon8_Then:
    assume {:partition} $b1 >= 0;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block59;

  anon7_Then:
    assume {:partition} $b0 < 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block58;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var $b1: int;
  var z0: int;
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
    goto block61;

  block61:
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
    goto block62;

  block62:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    $return := z0;
    goto block63;

  block63:
    return;

  anon8_Then:
    assume {:partition} $b1 <= 0;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "thenblock"} true;
    goto block62;

  anon7_Then:
    assume {:partition} $b0 > 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block61;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b1: int;
  var d1: int;
  var d0: int;
  var z0: int;
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
    goto block64;

  block64:
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
    goto block65;

  block65:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    $return := z0;
    goto block66;

  block66:
    return;

  anon8_Then:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "thenblock"} true;
    goto block65;

  anon7_Then:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "thenblock"} true;
    goto block64;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var d1: int;
  var z0: int;
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
    goto block67;

  block67:
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
    goto block68;

  block68:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    $return := z0;
    goto block69;

  block69:
    return;

  anon8_Then:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "thenblock"} true;
    goto block68;

  anon7_Then:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "thenblock"} true;
    goto block67;
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
    goto block70;

  block70:
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 0;
    goto block71;

  block71:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    $return := z0;
    goto block72;

  block72:
    return;

  anon8_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block71;

  anon7_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block70;
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
    goto block73;

  block73:
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 0;
    goto block74;

  block74:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    $return := z0;
    goto block75;

  block75:
    return;

  anon8_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block74;

  anon7_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block73;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var r1: ref;
  var r2: ref;
  var r0: ref;
  var z0: int;

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
    goto block76;

  block76:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r1;
    goto block77;

  block77:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    $return := r2;
    goto block78;

  block78:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block77;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block76;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9(in_$return: int, 
    in_$exception: ref, 
    in_$r7: ref, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_2: ref, 
    in_i7: int, 
    in_i6: int, 
    in_$fakelocal_1: ref, 
    in_$r5: ref, 
    in_r0: ref, 
    in_$r8: ref, 
    in_z0: int, 
    in_$i5: int, 
    in_$r6: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$r7: ref, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_2: ref, 
    out_i7: int, 
    out_i6: int, 
    out_$fakelocal_1: ref, 
    out_$r5: ref, 
    out_$r8: ref, 
    out_$i5: int, 
    out_$r6: ref)
{

  entry:
    out_$return, out_$exception, out_$r7, out_$fakelocal_3, out_$fakelocal_2, out_i7, out_i6, out_$fakelocal_1, out_$r5, out_$r8, out_$i5, out_$r6 := in_$return, in_$exception, in_$r7, in_$fakelocal_3, in_$fakelocal_2, in_i7, in_i6, in_$fakelocal_1, in_$r5, in_$r8, in_$i5, in_$r6;
    goto block9;

  block9:
    assert {:sourceloc "MoreSanity.java", 28, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Then:
    assume {:partition} out_i7 < 0;
    assert {:sourceloc "MoreSanity.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$r7, out_$fakelocal_3, out_$fakelocal_2, out_i7, out_i6, out_$fakelocal_1, out_$r5, out_$r8, out_$i5, out_$r6 := in_$return, in_$exception, in_$r7, in_$fakelocal_3, in_$fakelocal_2, in_i7, in_i6, in_$fakelocal_1, in_$r5, in_$r8, in_$i5, in_$r6;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon15:
    call out_i6, out_$exception := java.lang.Integer$intValue$(out_$r8);
    assert {:sourceloc "MoreSanity.java", 30, -1, -1, -1} true;
    out_i7 := out_i7 + -1;
    assert {:sourceloc "MoreSanity.java", 30, -1, -1, -1} true;
    goto anon15_dummy;

  anon32_Then:
    assume {:partition} out_$r8 != $null;
    out_$exception := out_$exception;
    goto anon15;

  anon12:
    out_$r8 := out_$r7;
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} out_$r8 == $null;
    call out_$fakelocal_3 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$r7, out_$fakelocal_3, out_$fakelocal_2, out_i7, out_i6, out_$fakelocal_1, out_$r5, out_$r8, out_$i5, out_$r6 := in_$return, in_$exception, in_$r7, in_$fakelocal_3, in_$fakelocal_2, in_i7, in_i6, in_$fakelocal_1, in_$r5, in_$r8, in_$i5, in_$r6;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon31_Then:
    assume {:partition} $heap[out_$r7, $type] <: java.lang.Integer;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    out_$i5 := $intArrHeap[in_r0][out_i7];
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    call out_$r5, out_$exception := java.lang.Integer$valueOf$int(out_$i5);
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    call out_$r6, out_$exception := java.lang.Integer$valueOf$int(out_i6);
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    call out_$r7, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(in_z0, out_$r5, out_$r6);
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !($heap[out_$r7, $type] <: java.lang.Integer);
    call out_$fakelocal_2 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$r7, out_$fakelocal_3, out_$fakelocal_2, out_i7, out_i6, out_$fakelocal_1, out_$r5, out_$r8, out_$i5, out_$r6 := in_$return, in_$exception, in_$r7, in_$fakelocal_3, in_$fakelocal_2, in_i7, in_i6, in_$fakelocal_1, in_$r5, in_$r8, in_$i5, in_$r6;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon30_Then:
    assume {:partition} out_i7 < $arrSizeHeap[in_r0] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon9;

  anon6:
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(out_i7 < $arrSizeHeap[in_r0] && out_i7 >= 0);
    call out_$fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$r7, out_$fakelocal_3, out_$fakelocal_2, out_i7, out_i6, out_$fakelocal_1, out_$r5, out_$r8, out_$i5, out_$r6 := in_$return, in_$exception, in_$r7, in_$fakelocal_3, in_$fakelocal_2, in_i7, in_i6, in_$fakelocal_1, in_$r5, in_$r8, in_$i5, in_$r6;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon29_Else:
    assume {:partition} 0 <= out_i7;
    assert {:sourceloc "MoreSanity.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon15_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$r7, out_$fakelocal_3, out_$fakelocal_2, out_i7, out_i6, out_$fakelocal_1, out_$r5, out_$r8, out_$i5, out_$r6 := MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9(out_$return, out_$exception, out_$r7, out_$fakelocal_3, out_$fakelocal_2, out_i7, out_i6, out_$fakelocal_1, out_$r5, in_r0, out_$r8, in_z0, out_$i5, out_$r6);
    return;

  exit:
    return;
}



procedure MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9(in_$return: int, 
    in_$exception: ref, 
    in_$r7: ref, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_2: ref, 
    in_i7: int, 
    in_i6: int, 
    in_$fakelocal_1: ref, 
    in_$r5: ref, 
    in_r0: ref, 
    in_$r8: ref, 
    in_z0: int, 
    in_$i5: int, 
    in_$r6: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$r7: ref, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_2: ref, 
    out_i7: int, 
    out_i6: int, 
    out_$fakelocal_1: ref, 
    out_$r5: ref, 
    out_$r8: ref, 
    out_$i5: int, 
    out_$r6: ref);
  modifies $objIndex, $heap;



implementation MoreSanity$loopAndbranch_safe$int_int_loop_block13(in_i2: int) returns (out_i2: int)
{

  entry:
    out_i2 := in_i2;
    goto block13;

  block13:
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Then:
    assume {:partition} out_i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    out_i2 := in_i2;
    return;

  anon5:
    assert {:sourceloc "MoreSanity.java", 44, -1, -1, -1} true;
    out_i2 := out_i2 + -1;
    assert {:sourceloc "MoreSanity.java", 44, -1, -1, -1} true;
    goto anon5_dummy;

  anon19_Else:
    assume {:partition} 0 < out_i2;
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} {:comment "elseblock"} true;
    goto anon5;

  anon5_dummy:
    call {:si_unique_call 1} out_i2 := MoreSanity$loopAndbranch_safe$int_int_loop_block13(out_i2);
    return;

  exit:
    return;
}



procedure MoreSanity$loopAndbranch_safe$int_int_loop_block13(in_i2: int) returns (out_i2: int);



implementation MoreSanity$loopAndbranch_safe$int_int_loop_block16(in_i4: int) returns (out_i4: int)
{

  entry:
    out_i4 := in_i4;
    goto block16;

  block16:
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;

  anon21_Then:
    assume {:partition} out_i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} {:comment "thenblock"} true;
    out_i4 := in_i4;
    return;

  anon11:
    assert {:sourceloc "MoreSanity.java", 53, -1, -1, -1} true;
    out_i4 := out_i4 + -1;
    assert {:sourceloc "MoreSanity.java", 53, -1, -1, -1} true;
    goto anon11_dummy;

  anon21_Else:
    assume {:partition} 0 < out_i4;
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} {:comment "elseblock"} true;
    goto anon11;

  anon11_dummy:
    call {:si_unique_call 1} out_i4 := MoreSanity$loopAndbranch_safe$int_int_loop_block16(out_i4);
    return;

  exit:
    return;
}



procedure MoreSanity$loopAndbranch_safe$int_int_loop_block16(in_i4: int) returns (out_i4: int);



implementation MoreSanity$loopAndbranch_safe$int_int_loop_block18(in_i5: int) returns (out_i5: int)
{

  entry:
    out_i5 := in_i5;
    goto block18;

  block18:
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;

  anon23_Then:
    assume {:partition} out_i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} {:comment "thenblock"} true;
    out_i5 := in_i5;
    return;

  anon17:
    assert {:sourceloc "MoreSanity.java", 59, -1, -1, -1} true;
    out_i5 := out_i5 + -1;
    assert {:sourceloc "MoreSanity.java", 59, -1, -1, -1} true;
    goto anon17_dummy;

  anon23_Else:
    assume {:partition} 0 < out_i5;
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17_dummy:
    call {:si_unique_call 1} out_i5 := MoreSanity$loopAndbranch_safe$int_int_loop_block18(out_i5);
    return;

  exit:
    return;
}



procedure MoreSanity$loopAndbranch_safe$int_int_loop_block18(in_i5: int) returns (out_i5: int);



implementation MoreSanity$loopAndbranch_unsafe$int_int_loop_block21(in_i2: int) returns (out_i2: int)
{

  entry:
    out_i2 := in_i2;
    goto block21;

  block21:
    assert {:sourceloc "MoreSanity.java", 71, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Then:
    assume {:partition} out_i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    out_i2 := in_i2;
    return;

  anon5:
    assert {:sourceloc "MoreSanity.java", 72, -1, -1, -1} true;
    out_i2 := out_i2 + -1;
    assert {:sourceloc "MoreSanity.java", 72, -1, -1, -1} true;
    goto anon5_dummy;

  anon19_Else:
    assume {:partition} 0 < out_i2;
    assert {:sourceloc "MoreSanity.java", 71, -1, -1, -1} {:comment "elseblock"} true;
    goto anon5;

  anon5_dummy:
    call {:si_unique_call 1} out_i2 := MoreSanity$loopAndbranch_unsafe$int_int_loop_block21(out_i2);
    return;

  exit:
    return;
}



procedure MoreSanity$loopAndbranch_unsafe$int_int_loop_block21(in_i2: int) returns (out_i2: int);



implementation MoreSanity$loopAndbranch_unsafe$int_int_loop_block24(in_i4: int) returns (out_i4: int)
{

  entry:
    out_i4 := in_i4;
    goto block24;

  block24:
    assert {:sourceloc "MoreSanity.java", 80, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;

  anon21_Then:
    assume {:partition} out_i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 80, -1, -1, -1} {:comment "thenblock"} true;
    out_i4 := in_i4;
    return;

  anon11:
    assert {:sourceloc "MoreSanity.java", 81, -1, -1, -1} true;
    out_i4 := out_i4 + -1;
    assert {:sourceloc "MoreSanity.java", 81, -1, -1, -1} true;
    goto anon11_dummy;

  anon21_Else:
    assume {:partition} 0 < out_i4;
    assert {:sourceloc "MoreSanity.java", 80, -1, -1, -1} {:comment "elseblock"} true;
    goto anon11;

  anon11_dummy:
    call {:si_unique_call 1} out_i4 := MoreSanity$loopAndbranch_unsafe$int_int_loop_block24(out_i4);
    return;

  exit:
    return;
}



procedure MoreSanity$loopAndbranch_unsafe$int_int_loop_block24(in_i4: int) returns (out_i4: int);



implementation MoreSanity$loopAndbranch_unsafe$int_int_loop_block26(in_i5: int) returns (out_i5: int)
{

  entry:
    out_i5 := in_i5;
    goto block26;

  block26:
    assert {:sourceloc "MoreSanity.java", 86, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;

  anon23_Then:
    assume {:partition} out_i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 86, -1, -1, -1} {:comment "thenblock"} true;
    out_i5 := in_i5;
    return;

  anon17:
    assert {:sourceloc "MoreSanity.java", 87, -1, -1, -1} true;
    out_i5 := out_i5 + -1;
    assert {:sourceloc "MoreSanity.java", 87, -1, -1, -1} true;
    goto anon17_dummy;

  anon23_Else:
    assume {:partition} 0 < out_i5;
    assert {:sourceloc "MoreSanity.java", 86, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17_dummy:
    call {:si_unique_call 1} out_i5 := MoreSanity$loopAndbranch_unsafe$int_int_loop_block26(out_i5);
    return;

  exit:
    return;
}



procedure MoreSanity$loopAndbranch_unsafe$int_int_loop_block26(in_i5: int) returns (out_i5: int);


