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

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique java.lang.Object: javaType extends complete;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique java.lang.Boolean: javaType extends unique java.lang.Object complete;

const {:sourceloc "PWCheck.java", -1, -1, -1, -1} unique PWCheck: javaType extends unique java.lang.Object complete;

const {:sourceloc "PWCheck.java", -1, -1, -1, -1} unique java.io.Serializable: javaType extends complete;

const {:sourceloc "PWCheck.java", -1, -1, -1, -1} unique java.lang.Throwable: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "PWCheck.java", -1, -1, -1, -1} unique java.lang.Exception: javaType extends unique java.lang.Throwable complete;

const {:sourceloc "PWCheck.java", -1, -1, -1, -1} unique java.lang.RuntimeException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "PWCheck.java", -1, -1, -1, -1} unique java.lang.NullPointerException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "PWCheck.java", -1, -1, -1, -1} unique java.lang.IndexOutOfBoundsException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "PWCheck.java", -1, -1, -1, -1} unique java.lang.ArrayIndexOutOfBoundsException: javaType extends unique java.lang.IndexOutOfBoundsException complete;

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
  ensures $objIndex == old($objIndex) + 1;
  ensures !old($heap[$obj, $alloc]);
  ensures $obj == $intToRef(old($objIndex));
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $other != $null;
  ensures $heap[$other, $alloc] <==> true;
  ensures $heap[$other, $type] == $heap[$this, $type];



procedure int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies $heap;



procedure java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



procedure PWCheck$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



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
    goto block1;

  block1:
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
    goto block2;

  block2:
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
    goto block3;

  block3:
    return;
}



implementation PWCheck$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "PWCheck.java", -1, -1, -1, -1} $heap[$this, $type] <: PWCheck;
    assume {:sourceloc "PWCheck.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "PWCheck.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "PWCheck.java", 1, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "PWCheck.java", 1, -1, -1, -1} true;
    goto block4;

  block4:
    return;
}



implementation PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $b4: int;
  var $i0: int;
  var $b3: int;
  var $i1: int;
  var $fakelocal_3: ref;
  var $fakelocal_2: ref;
  var $fakelocal_0: ref;
  var $fakelocal_1: ref;
  var r1: ref;
  var $i2: int;
  var i5: int;
  var r0: ref;
  var $fakelocal_4: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "PWCheck.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "PWCheck.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "PWCheck.java", 3, -1, -1, -1} true;
    goto anon25_Then, anon25_Else;

  anon25_Else:
    assume {:partition} r0 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon25_Then:
    assume {:partition} r0 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    $i1 := $arrSizeHeap[r0];
    assert {:sourceloc "PWCheck.java", 3, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_1 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon26_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i0 := $arrSizeHeap[r1];
    assert {:sourceloc "PWCheck.java", 3, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} $i1 != $i0;
    assert {:sourceloc "PWCheck.java", 3, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "PWCheck.java", 4, -1, -1, -1} true;
    $return := 0;
    goto block9;

  block9:
    return;

  anon27_Then:
    assume {:partition} $i1 == $i0;
    assert {:sourceloc "PWCheck.java", 3, -1, -1, -1} {:comment "thenblock"} true;
    goto block5;

  block5:
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    i5 := 0;
    goto block6;

  block6:
    call $return, $exception, $b4, $b3, $fakelocal_3, $fakelocal_2, $i2, i5, $fakelocal_4 := PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6($return, $exception, $b4, $b3, $fakelocal_3, $fakelocal_2, r1, $i2, i5, r0, $fakelocal_4);
    goto block6_last;

  anon28_Else:
    assume {:partition} r0 == $null;
    call $fakelocal_2 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon28_Then:
    assume {:partition} r0 != $null;
    $exception := $exception;
    goto anon12;

  anon12:
    $i2 := $arrSizeHeap[r0];
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} $i2 > i5;
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(i5 < $arrSizeHeap[r0] && i5 >= 0);
    call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon30_Then:
    assume {:partition} i5 < $arrSizeHeap[r0] && i5 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $b4 := $intArrHeap[r0][i5];
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(i5 < $arrSizeHeap[r1] && i5 >= 0);
    call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon31_Then:
    assume {:partition} i5 < $arrSizeHeap[r1] && i5 >= 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $b3 := $intArrHeap[r1][i5];
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} $b4 != $b3;
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} {:comment "elseblock"} true;
    goto anon24;

  anon24:
    assert {:sourceloc "PWCheck.java", 11, -1, -1, -1} true;
    $return := 0;
    goto block9;

  anon32_Then:
    assume {:partition} $b4 == $b3;
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    i5 := i5 + 1;
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    goto block8_dummy;

  anon29_Then:
    assume {:partition} i5 >= $i2;
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  block7:
    assert {:sourceloc "PWCheck.java", 15, -1, -1, -1} true;
    $return := 1;
    goto block9;

  block8_dummy:
    assume false;
    return;

  block6_last:
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;
}



implementation PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $i2: int;
  var $b5: int;
  var $i0: int;
  var $fakelocal_3: ref;
  var $i1: int;
  var $fakelocal_2: ref;
  var $fakelocal_0: ref;
  var $b4: int;
  var $fakelocal_4: ref;
  var r1: ref;
  var $fakelocal_5: ref;
  var $i3: int;
  var i6: int;
  var z0: int;
  var r0: ref;
  var $fakelocal_1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "PWCheck.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "PWCheck.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "PWCheck.java", 20, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} r0 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon31_Then:
    assume {:partition} r0 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    $i1 := $arrSizeHeap[r0];
    assert {:sourceloc "PWCheck.java", 20, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_1 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon32_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i0 := $arrSizeHeap[r1];
    assert {:sourceloc "PWCheck.java", 20, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} $i1 != $i0;
    assert {:sourceloc "PWCheck.java", 20, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "PWCheck.java", 21, -1, -1, -1} true;
    $return := 0;
    goto block15;

  block15:
    return;

  anon33_Then:
    assume {:partition} $i1 == $i0;
    assert {:sourceloc "PWCheck.java", 20, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "PWCheck.java", 26, -1, -1, -1} true;
    z0 := 1;
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    i6 := 0;
    goto block11;

  block11:
    call $return, $exception, $i2, $b5, $fakelocal_3, $fakelocal_2, $b4, $fakelocal_4, $fakelocal_5, $i3, i6, z0 := PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11($return, $exception, $i2, $b5, $fakelocal_3, $fakelocal_2, $b4, $fakelocal_4, r1, $fakelocal_5, $i3, i6, z0, r0);
    goto block11_last;

  anon34_Else:
    assume {:partition} r0 == $null;
    call $fakelocal_2 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon34_Then:
    assume {:partition} r0 != $null;
    $exception := $exception;
    goto anon12;

  anon12:
    $i2 := $arrSizeHeap[r0];
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} $i2 > i6;
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_3 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon36_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon18;

  anon18:
    $i3 := $arrSizeHeap[r1];
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon37_Else:
    assume {:partition} $i3 > i6;
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    goto anon21;

  anon21:
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} !(i6 < $arrSizeHeap[r0] && i6 >= 0);
    call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon38_Then:
    assume {:partition} i6 < $arrSizeHeap[r0] && i6 >= 0;
    $exception := $exception;
    goto anon24;

  anon24:
    $b5 := $intArrHeap[r0][i6];
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} !(i6 < $arrSizeHeap[r1] && i6 >= 0);
    call $fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon39_Then:
    assume {:partition} i6 < $arrSizeHeap[r1] && i6 >= 0;
    $exception := $exception;
    goto anon27;

  anon27:
    $b4 := $intArrHeap[r1][i6];
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Else:
    assume {:partition} $b5 != $b4;
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} {:comment "elseblock"} true;
    goto anon30;

  anon30:
    assert {:sourceloc "PWCheck.java", 30, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "PWCheck.java", 30, -1, -1, -1} true;
    goto block13;

  block13:
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    i6 := i6 + 1;
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    goto block13_dummy;

  anon40_Then:
    assume {:partition} $b5 == $b4;
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "PWCheck.java", 32, -1, -1, -1} true;
    goto block13;

  anon37_Then:
    assume {:partition} i6 >= $i3;
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  anon35_Then:
    assume {:partition} i6 >= $i2;
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} {:comment "thenblock"} true;
    goto block12;

  block12:
    assert {:sourceloc "PWCheck.java", 39, -1, -1, -1} true;
    $return := z0;
    goto block15;

  block13_dummy:
    assume false;
    return;

  block11_last:
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6(in_$return: int, 
    in_$exception: ref, 
    in_$b4: int, 
    in_$b3: int, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_2: ref, 
    in_r1: ref, 
    in_$i2: int, 
    in_i5: int, 
    in_r0: ref, 
    in_$fakelocal_4: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$b4: int, 
    out_$b3: int, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_2: ref, 
    out_$i2: int, 
    out_i5: int, 
    out_$fakelocal_4: ref)
{

  entry:
    out_$return, out_$exception, out_$b4, out_$b3, out_$fakelocal_3, out_$fakelocal_2, out_$i2, out_i5, out_$fakelocal_4 := in_$return, in_$exception, in_$b4, in_$b3, in_$fakelocal_3, in_$fakelocal_2, in_$i2, in_i5, in_$fakelocal_4;
    goto block6;

  block6:
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} in_r0 == $null;
    call out_$fakelocal_2 := $new(java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$b4, out_$b3, out_$fakelocal_3, out_$fakelocal_2, out_$i2, out_i5, out_$fakelocal_4 := in_$return, in_$exception, in_$b4, in_$b3, in_$fakelocal_3, in_$fakelocal_2, in_$i2, in_i5, in_$fakelocal_4;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  block8:
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    out_i5 := out_i5 + 1;
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    goto block8_dummy;

  anon32_Then:
    assume {:partition} out_$b4 == out_$b3;
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  anon21:
    out_$b3 := $intArrHeap[in_r1][out_i5];
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} out_$b4 != out_$b3;
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} {:comment "elseblock"} true;
    out_$return, out_$exception, out_$b4, out_$b3, out_$fakelocal_3, out_$fakelocal_2, out_$i2, out_i5, out_$fakelocal_4 := in_$return, in_$exception, in_$b4, in_$b3, in_$fakelocal_3, in_$fakelocal_2, in_$i2, in_i5, in_$fakelocal_4;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon31_Then:
    assume {:partition} out_i5 < $arrSizeHeap[in_r1] && out_i5 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    out_$b4 := $intArrHeap[in_r0][out_i5];
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(out_i5 < $arrSizeHeap[in_r1] && out_i5 >= 0);
    call out_$fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$b4, out_$b3, out_$fakelocal_3, out_$fakelocal_2, out_$i2, out_i5, out_$fakelocal_4 := in_$return, in_$exception, in_$b4, in_$b3, in_$fakelocal_3, in_$fakelocal_2, in_$i2, in_i5, in_$fakelocal_4;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon30_Then:
    assume {:partition} out_i5 < $arrSizeHeap[in_r0] && out_i5 >= 0;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(out_i5 < $arrSizeHeap[in_r0] && out_i5 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$b4, out_$b3, out_$fakelocal_3, out_$fakelocal_2, out_$i2, out_i5, out_$fakelocal_4 := in_$return, in_$exception, in_$b4, in_$b3, in_$fakelocal_3, in_$fakelocal_2, in_$i2, in_i5, in_$fakelocal_4;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon29_Else:
    assume {:partition} out_$i2 > out_i5;
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon12:
    out_$i2 := $arrSizeHeap[in_r0];
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Then:
    assume {:partition} out_i5 >= out_$i2;
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$b4, out_$b3, out_$fakelocal_3, out_$fakelocal_2, out_$i2, out_i5, out_$fakelocal_4 := in_$return, in_$exception, in_$b4, in_$b3, in_$fakelocal_3, in_$fakelocal_2, in_$i2, in_i5, in_$fakelocal_4;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon28_Then:
    assume {:partition} in_r0 != $null;
    out_$exception := out_$exception;
    goto anon12;

  block8_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$b4, out_$b3, out_$fakelocal_3, out_$fakelocal_2, out_$i2, out_i5, out_$fakelocal_4 := PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6(out_$return, out_$exception, out_$b4, out_$b3, out_$fakelocal_3, out_$fakelocal_2, in_r1, out_$i2, out_i5, in_r0, out_$fakelocal_4);
    return;

  exit:
    return;
}



procedure PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6(in_$return: int, 
    in_$exception: ref, 
    in_$b4: int, 
    in_$b3: int, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_2: ref, 
    in_r1: ref, 
    in_$i2: int, 
    in_i5: int, 
    in_r0: ref, 
    in_$fakelocal_4: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$b4: int, 
    out_$b3: int, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_2: ref, 
    out_$i2: int, 
    out_i5: int, 
    out_$fakelocal_4: ref);
  modifies $objIndex, $heap;



implementation PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11(in_$return: int, 
    in_$exception: ref, 
    in_$i2: int, 
    in_$b5: int, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_2: ref, 
    in_$b4: int, 
    in_$fakelocal_4: ref, 
    in_r1: ref, 
    in_$fakelocal_5: ref, 
    in_$i3: int, 
    in_i6: int, 
    in_z0: int, 
    in_r0: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$i2: int, 
    out_$b5: int, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_2: ref, 
    out_$b4: int, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_5: ref, 
    out_$i3: int, 
    out_i6: int, 
    out_z0: int)
{

  entry:
    out_$return, out_$exception, out_$i2, out_$b5, out_$fakelocal_3, out_$fakelocal_2, out_$b4, out_$fakelocal_4, out_$fakelocal_5, out_$i3, out_i6, out_z0 := in_$return, in_$exception, in_$i2, in_$b5, in_$fakelocal_3, in_$fakelocal_2, in_$b4, in_$fakelocal_4, in_$fakelocal_5, in_$i3, in_i6, in_z0;
    goto block11;

  block11:
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} in_r0 == $null;
    call out_$fakelocal_2 := $new(java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$i2, out_$b5, out_$fakelocal_3, out_$fakelocal_2, out_$b4, out_$fakelocal_4, out_$fakelocal_5, out_$i3, out_i6, out_z0 := in_$return, in_$exception, in_$i2, in_$b5, in_$fakelocal_3, in_$fakelocal_2, in_$b4, in_$fakelocal_4, in_$fakelocal_5, in_$i3, in_i6, in_z0;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  block13:
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    out_i6 := out_i6 + 1;
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    goto block13_dummy;

  anon30:
    assert {:sourceloc "PWCheck.java", 30, -1, -1, -1} true;
    out_z0 := 0;
    assert {:sourceloc "PWCheck.java", 30, -1, -1, -1} true;
    goto block13;

  block14:
    assert {:sourceloc "PWCheck.java", 32, -1, -1, -1} true;
    goto block13;

  anon37_Then:
    assume {:partition} out_i6 >= out_$i3;
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  anon18:
    out_$i3 := $arrSizeHeap[in_r1];
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon36_Then:
    assume {:partition} in_r1 != $null;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} in_r1 == $null;
    call out_$fakelocal_3 := $new(java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$i2, out_$b5, out_$fakelocal_3, out_$fakelocal_2, out_$b4, out_$fakelocal_4, out_$fakelocal_5, out_$i3, out_i6, out_z0 := in_$return, in_$exception, in_$i2, in_$b5, in_$fakelocal_3, in_$fakelocal_2, in_$b4, in_$fakelocal_4, in_$fakelocal_5, in_$i3, in_i6, in_z0;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon35_Else:
    assume {:partition} out_$i2 > out_i6;
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon12:
    out_$i2 := $arrSizeHeap[in_r0];
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Then:
    assume {:partition} out_i6 >= out_$i2;
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$i2, out_$b5, out_$fakelocal_3, out_$fakelocal_2, out_$b4, out_$fakelocal_4, out_$fakelocal_5, out_$i3, out_i6, out_z0 := in_$return, in_$exception, in_$i2, in_$b5, in_$fakelocal_3, in_$fakelocal_2, in_$b4, in_$fakelocal_4, in_$fakelocal_5, in_$i3, in_i6, in_z0;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon34_Then:
    assume {:partition} in_r0 != $null;
    out_$exception := out_$exception;
    goto anon12;

  anon40_Then:
    assume {:partition} out_$b5 == out_$b4;
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  anon27:
    out_$b4 := $intArrHeap[in_r1][out_i6];
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon39_Then:
    assume {:partition} out_i6 < $arrSizeHeap[in_r1] && out_i6 >= 0;
    out_$exception := out_$exception;
    goto anon27;

  anon24:
    out_$b5 := $intArrHeap[in_r0][out_i6];
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} !(out_i6 < $arrSizeHeap[in_r1] && out_i6 >= 0);
    call out_$fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$i2, out_$b5, out_$fakelocal_3, out_$fakelocal_2, out_$b4, out_$fakelocal_4, out_$fakelocal_5, out_$i3, out_i6, out_z0 := in_$return, in_$exception, in_$i2, in_$b5, in_$fakelocal_3, in_$fakelocal_2, in_$b4, in_$fakelocal_4, in_$fakelocal_5, in_$i3, in_i6, in_z0;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon38_Then:
    assume {:partition} out_i6 < $arrSizeHeap[in_r0] && out_i6 >= 0;
    out_$exception := out_$exception;
    goto anon24;

  anon21:
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} !(out_i6 < $arrSizeHeap[in_r0] && out_i6 >= 0);
    call out_$fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$i2, out_$b5, out_$fakelocal_3, out_$fakelocal_2, out_$b4, out_$fakelocal_4, out_$fakelocal_5, out_$i3, out_i6, out_z0 := in_$return, in_$exception, in_$i2, in_$b5, in_$fakelocal_3, in_$fakelocal_2, in_$b4, in_$fakelocal_4, in_$fakelocal_5, in_$i3, in_i6, in_z0;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon37_Else:
    assume {:partition} out_$i3 > out_i6;
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    goto anon21;

  anon40_Else:
    assume {:partition} out_$b5 != out_$b4;
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} {:comment "elseblock"} true;
    goto anon30;

  block13_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$i2, out_$b5, out_$fakelocal_3, out_$fakelocal_2, out_$b4, out_$fakelocal_4, out_$fakelocal_5, out_$i3, out_i6, out_z0 := PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11(out_$return, out_$exception, out_$i2, out_$b5, out_$fakelocal_3, out_$fakelocal_2, out_$b4, out_$fakelocal_4, in_r1, out_$fakelocal_5, out_$i3, out_i6, out_z0, in_r0);
    return;

  exit:
    return;
}



procedure PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11(in_$return: int, 
    in_$exception: ref, 
    in_$i2: int, 
    in_$b5: int, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_2: ref, 
    in_$b4: int, 
    in_$fakelocal_4: ref, 
    in_r1: ref, 
    in_$fakelocal_5: ref, 
    in_$i3: int, 
    in_i6: int, 
    in_z0: int, 
    in_r0: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$i2: int, 
    out_$b5: int, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_2: ref, 
    out_$b4: int, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_5: ref, 
    out_$i3: int, 
    out_i6: int, 
    out_z0: int);
  modifies $objIndex, $heap;


