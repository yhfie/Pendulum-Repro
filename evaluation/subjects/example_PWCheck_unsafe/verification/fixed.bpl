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

const {:sourceloc "PWCheck.java", -1, -1, -1, -1} unique sg.edu.nus.comp.tsunami.safe.Safe: javaType extends unique java.lang.Object complete;

const {:sourceloc "PWCheck.java", -1, -1, -1, -1} unique java.lang.Comparable: javaType extends complete;

const {:sourceloc "PWCheck.java", -1, -1, -1, -1} unique java.lang.ClassCastException: javaType extends unique java.lang.RuntimeException complete;

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
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];
  ensures $obj == $intToRef(old($objIndex));
  ensures $obj != $null;
  ensures !old($heap[$obj, $alloc]);
  ensures $objIndex == old($objIndex) + 1;



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $other != $null;
  ensures $heap[$other, $type] == $heap[$this, $type];
  ensures $heap[$other, $alloc] <==> true;



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



procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);



procedure PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



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
    goto block1;

  block1:
    return;
}



implementation java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var z0: int;
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
    assert {:sourceloc "PWCheck.java", 3, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "PWCheck.java", 3, -1, -1, -1} true;
    goto block4;

  block4:
    return;
}



implementation PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $fakelocal_8: ref;
  var $r9: ref;
  var $fakelocal_5: ref;
  var $r5: ref;
  var $i2: int;
  var $fakelocal_9: ref;
  var $r8: ref;
  var $r15: ref;
  var r1: ref;
  var $r10: ref;
  var z0: int;
  var z3: int;
  var $i0: int;
  var $r4: ref;
  var $b3: int;
  var $r13: ref;
  var $l6: int;
  var $fakelocal_7: ref;
  var $fakelocal_1: ref;
  var $z1: int;
  var $fakelocal_6: ref;
  var $r6: ref;
  var $i1: int;
  var $r11: ref;
  var r0: ref;
  var $r14: ref;
  var $fakelocal_4: ref;
  var $r12: ref;
  var $r3: ref;
  var $fakelocal_2: ref;
  var $l5: int;
  var $r7: ref;
  var $b4: int;
  var $fakelocal_3: ref;
  var $fakelocal_10: ref;
  var i7: int;
  var $r2: ref;
  var z2: int;
  var $fakelocal_0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "PWCheck.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "PWCheck.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "PWCheck.java", 5, -1, -1, -1} true;
    z2 := 0;
    assert {:sourceloc "PWCheck.java", 6, -1, -1, -1} true;
    z3 := 0;
    assert {:sourceloc "PWCheck.java", 7, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Else:
    assume {:partition} r0 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon40_Then:
    assume {:partition} r0 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    $i1 := $arrSizeHeap[r0];
    assert {:sourceloc "PWCheck.java", 7, -1, -1, -1} true;
    goto anon41_Then, anon41_Else;

  anon41_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_1 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon41_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i0 := $arrSizeHeap[r1];
    assert {:sourceloc "PWCheck.java", 7, -1, -1, -1} true;
    goto anon42_Then, anon42_Else;

  anon42_Else:
    assume {:partition} $i1 != $i0;
    assert {:sourceloc "PWCheck.java", 7, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "PWCheck.java", 8, -1, -1, -1} true;
    $return := 0;
    goto block8;

  block8:
    return;

  anon42_Then:
    assume {:partition} $i1 == $i0;
    assert {:sourceloc "PWCheck.java", 7, -1, -1, -1} {:comment "thenblock"} true;
    goto block5;

  block5:
    assert {:sourceloc "PWCheck.java", 13, -1, -1, -1} true;
    i7 := 0;
    goto block6;

  block6:
    call $return, $exception, $fakelocal_8, $r9, $fakelocal_5, $i2, $r8, $r15, $r10, z0, z3, $b3, $r13, $l6, $fakelocal_7, $fakelocal_6, $r6, $r11, $r14, $fakelocal_4, $r12, $fakelocal_2, $l5, $r7, $b4, $fakelocal_3, i7, z2 := PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6($return, $exception, $fakelocal_8, $r9, $fakelocal_5, $i2, $r8, $r15, r1, $r10, z0, z3, $b3, $r13, $l6, $fakelocal_7, $fakelocal_6, $r6, $r11, r0, $r14, $fakelocal_4, $r12, $fakelocal_2, $l5, $r7, $b4, $fakelocal_3, i7, z2);
    goto block6_last;

  anon43_Else:
    assume {:partition} r0 == $null;
    call $fakelocal_2 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon43_Then:
    assume {:partition} r0 != $null;
    $exception := $exception;
    goto anon12;

  anon12:
    $i2 := $arrSizeHeap[r0];
    assert {:sourceloc "PWCheck.java", 13, -1, -1, -1} true;
    goto anon44_Then, anon44_Else;

  anon44_Else:
    assume {:partition} $i2 > i7;
    assert {:sourceloc "PWCheck.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "PWCheck.java", 16, -1, -1, -1} true;
    goto anon45_Then, anon45_Else;

  anon45_Else:
    assume {:partition} !(i7 < $arrSizeHeap[r0] && i7 >= 0);
    call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon45_Then:
    assume {:partition} i7 < $arrSizeHeap[r0] && i7 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $b3 := $intArrHeap[r0][i7];
    assert {:sourceloc "PWCheck.java", 16, -1, -1, -1} true;
    $l6 := $b3;
    assert {:sourceloc "PWCheck.java", 16, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} !(i7 < $arrSizeHeap[r1] && i7 >= 0);
    call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon46_Then:
    assume {:partition} i7 < $arrSizeHeap[r1] && i7 >= 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $b4 := $intArrHeap[r1][i7];
    assert {:sourceloc "PWCheck.java", 16, -1, -1, -1} true;
    $l5 := $b4;
    assert {:sourceloc "PWCheck.java", 16, -1, -1, -1} true;
    call z0, $exception := sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($l6, $l5);
    assert {:sourceloc "PWCheck.java", 18, -1, -1, -1} true;
    call $r6, $exception := java.lang.Boolean$valueOf$boolean(z2);
    assert {:sourceloc "PWCheck.java", 18, -1, -1, -1} true;
    call $r7, $exception := java.lang.Boolean$valueOf$boolean(0);
    assert {:sourceloc "PWCheck.java", 18, -1, -1, -1} true;
    call $r8, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z3, $r6, $r7);
    assert {:sourceloc "PWCheck.java", 18, -1, -1, -1} true;
    call $r9, $exception := java.lang.Boolean$valueOf$boolean(z2);
    assert {:sourceloc "PWCheck.java", 18, -1, -1, -1} true;
    call $r10, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r8, $r9);
    assert {:sourceloc "PWCheck.java", 18, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} !($heap[$r10, $type] <: java.lang.Boolean);
    call $fakelocal_5 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon47_Then:
    assume {:partition} $heap[$r10, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon24;

  anon24:
    $r11 := $r10;
    assert {:sourceloc "PWCheck.java", 18, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} $r11 == $null;
    call $fakelocal_6 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon48_Then:
    assume {:partition} $r11 != $null;
    $exception := $exception;
    goto anon27;

  anon27:
    call z2, $exception := java.lang.Boolean$booleanValue$($r11);
    assert {:sourceloc "PWCheck.java", 19, -1, -1, -1} true;
    call $r12, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "PWCheck.java", 19, -1, -1, -1} true;
    call $r13, $exception := java.lang.Boolean$valueOf$boolean(z3);
    assert {:sourceloc "PWCheck.java", 19, -1, -1, -1} true;
    call $r14, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r12, $r13);
    assert {:sourceloc "PWCheck.java", 19, -1, -1, -1} true;
    goto anon49_Then, anon49_Else;

  anon49_Else:
    assume {:partition} !($heap[$r14, $type] <: java.lang.Boolean);
    call $fakelocal_7 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_7;
    return;

  anon49_Then:
    assume {:partition} $heap[$r14, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon30;

  anon30:
    $r15 := $r14;
    assert {:sourceloc "PWCheck.java", 19, -1, -1, -1} true;
    goto anon50_Then, anon50_Else;

  anon50_Else:
    assume {:partition} $r15 == $null;
    call $fakelocal_8 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_8;
    return;

  anon50_Then:
    assume {:partition} $r15 != $null;
    $exception := $exception;
    goto anon33;

  anon33:
    call z3, $exception := java.lang.Boolean$booleanValue$($r15);
    assert {:sourceloc "PWCheck.java", 13, -1, -1, -1} true;
    i7 := i7 + 1;
    assert {:sourceloc "PWCheck.java", 13, -1, -1, -1} true;
    goto anon33_dummy;

  anon44_Then:
    assume {:partition} i7 >= $i2;
    assert {:sourceloc "PWCheck.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  block7:
    assert {:sourceloc "PWCheck.java", 26, -1, -1, -1} true;
    call $r2, $exception := java.lang.Boolean$valueOf$boolean(z2);
    assert {:sourceloc "PWCheck.java", 26, -1, -1, -1} true;
    call $r3, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "PWCheck.java", 26, -1, -1, -1} true;
    call $r4, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z3, $r2, $r3);
    assert {:sourceloc "PWCheck.java", 26, -1, -1, -1} true;
    goto anon51_Then, anon51_Else;

  anon51_Else:
    assume {:partition} !($heap[$r4, $type] <: java.lang.Boolean);
    call $fakelocal_9 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_9;
    return;

  anon51_Then:
    assume {:partition} $heap[$r4, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon36;

  anon36:
    $r5 := $r4;
    assert {:sourceloc "PWCheck.java", 26, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} $r5 == $null;
    call $fakelocal_10 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_10;
    return;

  anon52_Then:
    assume {:partition} $r5 != $null;
    $exception := $exception;
    goto anon39;

  anon39:
    call $z1, $exception := java.lang.Boolean$booleanValue$($r5);
    assert {:sourceloc "PWCheck.java", 26, -1, -1, -1} true;
    $return := $z1;
    goto block8;

  anon33_dummy:
    assume false;
    return;

  block6_last:
    assert {:sourceloc "PWCheck.java", 13, -1, -1, -1} true;
    goto anon43_Then, anon43_Else;
}



implementation PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $fakelocal_2: ref;
  var z0: int;
  var $i1: int;
  var $fakelocal_1: ref;
  var $fakelocal_3: ref;
  var $b5: int;
  var r0: ref;
  var r1: ref;
  var $b4: int;
  var $i2: int;
  var i6: int;
  var $fakelocal_0: ref;
  var $i0: int;
  var $fakelocal_4: ref;
  var $i3: int;
  var $fakelocal_5: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "PWCheck.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "PWCheck.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "PWCheck.java", 31, -1, -1, -1} true;
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
    assert {:sourceloc "PWCheck.java", 31, -1, -1, -1} true;
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
    assert {:sourceloc "PWCheck.java", 31, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} $i1 != $i0;
    assert {:sourceloc "PWCheck.java", 31, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "PWCheck.java", 32, -1, -1, -1} true;
    $return := 0;
    goto block14;

  block14:
    return;

  anon33_Then:
    assume {:partition} $i1 == $i0;
    assert {:sourceloc "PWCheck.java", 31, -1, -1, -1} {:comment "thenblock"} true;
    goto block9;

  block9:
    assert {:sourceloc "PWCheck.java", 37, -1, -1, -1} true;
    z0 := 1;
    assert {:sourceloc "PWCheck.java", 38, -1, -1, -1} true;
    i6 := 0;
    goto block10;

  block10:
    call $return, $exception, $fakelocal_2, z0, $fakelocal_3, $b5, $b4, $i2, i6, $fakelocal_4, $i3, $fakelocal_5 := PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block10($return, $exception, $fakelocal_2, z0, $fakelocal_3, $b5, r0, r1, $b4, $i2, i6, $fakelocal_4, $i3, $fakelocal_5);
    goto block10_last;

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
    assert {:sourceloc "PWCheck.java", 38, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} $i2 > i6;
    assert {:sourceloc "PWCheck.java", 38, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "PWCheck.java", 39, -1, -1, -1} true;
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
    assert {:sourceloc "PWCheck.java", 39, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon37_Else:
    assume {:partition} $i3 > i6;
    assert {:sourceloc "PWCheck.java", 39, -1, -1, -1} {:comment "elseblock"} true;
    goto anon21;

  anon21:
    assert {:sourceloc "PWCheck.java", 40, -1, -1, -1} true;
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
    assert {:sourceloc "PWCheck.java", 40, -1, -1, -1} true;
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
    assert {:sourceloc "PWCheck.java", 40, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Else:
    assume {:partition} $b5 != $b4;
    assert {:sourceloc "PWCheck.java", 40, -1, -1, -1} {:comment "elseblock"} true;
    goto anon30;

  anon30:
    assert {:sourceloc "PWCheck.java", 41, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "PWCheck.java", 41, -1, -1, -1} true;
    goto block12;

  block12:
    assert {:sourceloc "PWCheck.java", 38, -1, -1, -1} true;
    i6 := i6 + 1;
    assert {:sourceloc "PWCheck.java", 38, -1, -1, -1} true;
    goto block12_dummy;

  anon40_Then:
    assume {:partition} $b5 == $b4;
    assert {:sourceloc "PWCheck.java", 40, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  block13:
    assert {:sourceloc "PWCheck.java", 43, -1, -1, -1} true;
    goto block12;

  anon37_Then:
    assume {:partition} i6 >= $i3;
    assert {:sourceloc "PWCheck.java", 39, -1, -1, -1} {:comment "thenblock"} true;
    goto block12;

  anon35_Then:
    assume {:partition} i6 >= $i2;
    assert {:sourceloc "PWCheck.java", 38, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  block11:
    assert {:sourceloc "PWCheck.java", 50, -1, -1, -1} true;
    $return := z0;
    goto block14;

  block12_dummy:
    assume false;
    return;

  block10_last:
    assert {:sourceloc "PWCheck.java", 38, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;
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
    goto block15;

  block15:
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
    goto block16;

  block16:
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 1;
    goto block17;

  block17:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    $return := z1;
    goto block18;

  block18:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block17;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block16;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $z2: int;
  var z1: int;
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
    goto block19;

  block19:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z1: int;
  var z0: int;
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
    goto block20;

  block20:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var l0: int;
  var $b2: int;
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
    goto block21;

  block21:
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
    goto block22;

  block22:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    $return := z0;
    goto block23;

  block23:
    return;

  anon8_Then:
    assume {:partition} $b3 > 0;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;

  anon7_Then:
    assume {:partition} $b2 <= 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    goto block21;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var z0: int;
  var l0: int;
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
    goto block24;

  block24:
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
    goto block25;

  block25:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    $return := z0;
    goto block26;

  block26:
    return;

  anon8_Then:
    assume {:partition} $b3 < 0;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block25;

  anon7_Then:
    assume {:partition} $b2 >= 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block24;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var z0: int;
  var $b3: int;
  var l0: int;
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
    goto block27;

  block27:
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
    goto block28;

  block28:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    $return := z0;
    goto block29;

  block29:
    return;

  anon8_Then:
    assume {:partition} $b3 >= 0;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block28;

  anon7_Then:
    assume {:partition} $b2 < 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block27;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
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
    goto block30;

  block30:
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
    goto block31;

  block31:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    $return := z0;
    goto block32;

  block32:
    return;

  anon8_Then:
    assume {:partition} $b3 <= 0;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block31;

  anon7_Then:
    assume {:partition} $b2 > 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block30;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b2: int;
  var l1: int;
  var l0: int;
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
    goto block33;

  block33:
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
    goto block34;

  block34:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    $return := z0;
    goto block35;

  block35:
    return;

  anon8_Then:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block34;

  anon7_Then:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto block33;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
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
    goto block36;

  block36:
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
    goto block37;

  block37:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    $return := z0;
    goto block38;

  block38:
    return;

  anon8_Then:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto block37;

  anon7_Then:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block36;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b0: int;
  var z0: int;
  var d0: int;
  var d1: int;
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
    goto block39;

  block39:
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
    goto block40;

  block40:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    $return := z0;
    goto block41;

  block41:
    return;

  anon8_Then:
    assume {:partition} $b1 > 0;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "thenblock"} true;
    goto block40;

  anon7_Then:
    assume {:partition} $b0 <= 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "thenblock"} true;
    goto block39;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b0: int;
  var z0: int;
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
    goto block42;

  block42:
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
    goto block43;

  block43:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    $return := z0;
    goto block44;

  block44:
    return;

  anon8_Then:
    assume {:partition} $b1 < 0;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block43;

  anon7_Then:
    assume {:partition} $b0 >= 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block42;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var $b1: int;
  var d1: int;
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
    goto block45;

  block45:
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
    goto block46;

  block46:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    $return := z0;
    goto block47;

  block47:
    return;

  anon8_Then:
    assume {:partition} $b1 >= 0;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block46;

  anon7_Then:
    assume {:partition} $b0 < 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block45;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
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
    goto block48;

  block48:
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
    goto block49;

  block49:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    $return := z0;
    goto block50;

  block50:
    return;

  anon8_Then:
    assume {:partition} $b1 <= 0;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "thenblock"} true;
    goto block49;

  anon7_Then:
    assume {:partition} $b0 > 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block48;
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
    goto block51;

  block51:
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
    goto block52;

  block52:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    $return := z0;
    goto block53;

  block53:
    return;

  anon8_Then:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "thenblock"} true;
    goto block52;

  anon7_Then:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "thenblock"} true;
    goto block51;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
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
    goto block54;

  block54:
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
    goto block55;

  block55:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    $return := z0;
    goto block56;

  block56:
    return;

  anon8_Then:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "thenblock"} true;
    goto block55;

  anon7_Then:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "thenblock"} true;
    goto block54;
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
    goto block57;

  block57:
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 0;
    goto block58;

  block58:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    $return := z0;
    goto block59;

  block59:
    return;

  anon8_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block58;

  anon7_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block57;
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
    goto block60;

  block60:
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 0;
    goto block61;

  block61:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    $return := z0;
    goto block62;

  block62:
    return;

  anon8_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block61;

  anon7_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block60;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var r0: ref;
  var r2: ref;
  var r1: ref;
  var z0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
    assume $heap[$in_parameter__2, $type] <: java.lang.Object;
    assume $heap[$return, $type] <: java.lang.Object;
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
    goto block63;

  block63:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r1;
    goto block64;

  block64:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    $return := r2;
    goto block65;

  block65:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block64;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block63;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_8: ref, 
    in_$r9: ref, 
    in_$fakelocal_5: ref, 
    in_$i2: int, 
    in_$r8: ref, 
    in_$r15: ref, 
    in_r1: ref, 
    in_$r10: ref, 
    in_z0: int, 
    in_z3: int, 
    in_$b3: int, 
    in_$r13: ref, 
    in_$l6: int, 
    in_$fakelocal_7: ref, 
    in_$fakelocal_6: ref, 
    in_$r6: ref, 
    in_$r11: ref, 
    in_r0: ref, 
    in_$r14: ref, 
    in_$fakelocal_4: ref, 
    in_$r12: ref, 
    in_$fakelocal_2: ref, 
    in_$l5: int, 
    in_$r7: ref, 
    in_$b4: int, 
    in_$fakelocal_3: ref, 
    in_i7: int, 
    in_z2: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_8: ref, 
    out_$r9: ref, 
    out_$fakelocal_5: ref, 
    out_$i2: int, 
    out_$r8: ref, 
    out_$r15: ref, 
    out_$r10: ref, 
    out_z0: int, 
    out_z3: int, 
    out_$b3: int, 
    out_$r13: ref, 
    out_$l6: int, 
    out_$fakelocal_7: ref, 
    out_$fakelocal_6: ref, 
    out_$r6: ref, 
    out_$r11: ref, 
    out_$r14: ref, 
    out_$fakelocal_4: ref, 
    out_$r12: ref, 
    out_$fakelocal_2: ref, 
    out_$l5: int, 
    out_$r7: ref, 
    out_$b4: int, 
    out_$fakelocal_3: ref, 
    out_i7: int, 
    out_z2: int)
{

  entry:
    out_$return, out_$exception, out_$fakelocal_8, out_$r9, out_$fakelocal_5, out_$i2, out_$r8, out_$r15, out_$r10, out_z0, out_z3, out_$b3, out_$r13, out_$l6, out_$fakelocal_7, out_$fakelocal_6, out_$r6, out_$r11, out_$r14, out_$fakelocal_4, out_$r12, out_$fakelocal_2, out_$l5, out_$r7, out_$b4, out_$fakelocal_3, out_i7, out_z2 := in_$return, in_$exception, in_$fakelocal_8, in_$r9, in_$fakelocal_5, in_$i2, in_$r8, in_$r15, in_$r10, in_z0, in_z3, in_$b3, in_$r13, in_$l6, in_$fakelocal_7, in_$fakelocal_6, in_$r6, in_$r11, in_$r14, in_$fakelocal_4, in_$r12, in_$fakelocal_2, in_$l5, in_$r7, in_$b4, in_$fakelocal_3, in_i7, in_z2;
    goto block6;

  block6:
    assert {:sourceloc "PWCheck.java", 13, -1, -1, -1} true;
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} in_r0 == $null;
    call out_$fakelocal_2 := $new(java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$fakelocal_8, out_$r9, out_$fakelocal_5, out_$i2, out_$r8, out_$r15, out_$r10, out_z0, out_z3, out_$b3, out_$r13, out_$l6, out_$fakelocal_7, out_$fakelocal_6, out_$r6, out_$r11, out_$r14, out_$fakelocal_4, out_$r12, out_$fakelocal_2, out_$l5, out_$r7, out_$b4, out_$fakelocal_3, out_i7, out_z2 := in_$return, in_$exception, in_$fakelocal_8, in_$r9, in_$fakelocal_5, in_$i2, in_$r8, in_$r15, in_$r10, in_z0, in_z3, in_$b3, in_$r13, in_$l6, in_$fakelocal_7, in_$fakelocal_6, in_$r6, in_$r11, in_$r14, in_$fakelocal_4, in_$r12, in_$fakelocal_2, in_$l5, in_$r7, in_$b4, in_$fakelocal_3, in_i7, in_z2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon33:
    call out_z3, out_$exception := java.lang.Boolean$booleanValue$(out_$r15);
    assert {:sourceloc "PWCheck.java", 13, -1, -1, -1} true;
    out_i7 := out_i7 + 1;
    assert {:sourceloc "PWCheck.java", 13, -1, -1, -1} true;
    goto anon33_dummy;

  anon50_Then:
    assume {:partition} out_$r15 != $null;
    out_$exception := out_$exception;
    goto anon33;

  anon30:
    out_$r15 := out_$r14;
    assert {:sourceloc "PWCheck.java", 19, -1, -1, -1} true;
    goto anon50_Then, anon50_Else;

  anon50_Else:
    assume {:partition} out_$r15 == $null;
    call out_$fakelocal_8 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_8;
    out_$return, out_$exception, out_$fakelocal_8, out_$r9, out_$fakelocal_5, out_$i2, out_$r8, out_$r15, out_$r10, out_z0, out_z3, out_$b3, out_$r13, out_$l6, out_$fakelocal_7, out_$fakelocal_6, out_$r6, out_$r11, out_$r14, out_$fakelocal_4, out_$r12, out_$fakelocal_2, out_$l5, out_$r7, out_$b4, out_$fakelocal_3, out_i7, out_z2 := in_$return, in_$exception, in_$fakelocal_8, in_$r9, in_$fakelocal_5, in_$i2, in_$r8, in_$r15, in_$r10, in_z0, in_z3, in_$b3, in_$r13, in_$l6, in_$fakelocal_7, in_$fakelocal_6, in_$r6, in_$r11, in_$r14, in_$fakelocal_4, in_$r12, in_$fakelocal_2, in_$l5, in_$r7, in_$b4, in_$fakelocal_3, in_i7, in_z2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon49_Then:
    assume {:partition} $heap[out_$r14, $type] <: java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon30;

  anon27:
    call out_z2, out_$exception := java.lang.Boolean$booleanValue$(out_$r11);
    assert {:sourceloc "PWCheck.java", 19, -1, -1, -1} true;
    call out_$r12, out_$exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "PWCheck.java", 19, -1, -1, -1} true;
    call out_$r13, out_$exception := java.lang.Boolean$valueOf$boolean(out_z3);
    assert {:sourceloc "PWCheck.java", 19, -1, -1, -1} true;
    call out_$r14, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z0, out_$r12, out_$r13);
    assert {:sourceloc "PWCheck.java", 19, -1, -1, -1} true;
    goto anon49_Then, anon49_Else;

  anon49_Else:
    assume {:partition} !($heap[out_$r14, $type] <: java.lang.Boolean);
    call out_$fakelocal_7 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_7;
    out_$return, out_$exception, out_$fakelocal_8, out_$r9, out_$fakelocal_5, out_$i2, out_$r8, out_$r15, out_$r10, out_z0, out_z3, out_$b3, out_$r13, out_$l6, out_$fakelocal_7, out_$fakelocal_6, out_$r6, out_$r11, out_$r14, out_$fakelocal_4, out_$r12, out_$fakelocal_2, out_$l5, out_$r7, out_$b4, out_$fakelocal_3, out_i7, out_z2 := in_$return, in_$exception, in_$fakelocal_8, in_$r9, in_$fakelocal_5, in_$i2, in_$r8, in_$r15, in_$r10, in_z0, in_z3, in_$b3, in_$r13, in_$l6, in_$fakelocal_7, in_$fakelocal_6, in_$r6, in_$r11, in_$r14, in_$fakelocal_4, in_$r12, in_$fakelocal_2, in_$l5, in_$r7, in_$b4, in_$fakelocal_3, in_i7, in_z2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon48_Then:
    assume {:partition} out_$r11 != $null;
    out_$exception := out_$exception;
    goto anon27;

  anon24:
    out_$r11 := out_$r10;
    assert {:sourceloc "PWCheck.java", 18, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} out_$r11 == $null;
    call out_$fakelocal_6 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_6;
    out_$return, out_$exception, out_$fakelocal_8, out_$r9, out_$fakelocal_5, out_$i2, out_$r8, out_$r15, out_$r10, out_z0, out_z3, out_$b3, out_$r13, out_$l6, out_$fakelocal_7, out_$fakelocal_6, out_$r6, out_$r11, out_$r14, out_$fakelocal_4, out_$r12, out_$fakelocal_2, out_$l5, out_$r7, out_$b4, out_$fakelocal_3, out_i7, out_z2 := in_$return, in_$exception, in_$fakelocal_8, in_$r9, in_$fakelocal_5, in_$i2, in_$r8, in_$r15, in_$r10, in_z0, in_z3, in_$b3, in_$r13, in_$l6, in_$fakelocal_7, in_$fakelocal_6, in_$r6, in_$r11, in_$r14, in_$fakelocal_4, in_$r12, in_$fakelocal_2, in_$l5, in_$r7, in_$b4, in_$fakelocal_3, in_i7, in_z2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon47_Then:
    assume {:partition} $heap[out_$r10, $type] <: java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon24;

  anon21:
    out_$b4 := $intArrHeap[in_r1][out_i7];
    assert {:sourceloc "PWCheck.java", 16, -1, -1, -1} true;
    out_$l5 := out_$b4;
    assert {:sourceloc "PWCheck.java", 16, -1, -1, -1} true;
    call out_z0, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long(out_$l6, out_$l5);
    assert {:sourceloc "PWCheck.java", 18, -1, -1, -1} true;
    call out_$r6, out_$exception := java.lang.Boolean$valueOf$boolean(out_z2);
    assert {:sourceloc "PWCheck.java", 18, -1, -1, -1} true;
    call out_$r7, out_$exception := java.lang.Boolean$valueOf$boolean(0);
    assert {:sourceloc "PWCheck.java", 18, -1, -1, -1} true;
    call out_$r8, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z3, out_$r6, out_$r7);
    assert {:sourceloc "PWCheck.java", 18, -1, -1, -1} true;
    call out_$r9, out_$exception := java.lang.Boolean$valueOf$boolean(out_z2);
    assert {:sourceloc "PWCheck.java", 18, -1, -1, -1} true;
    call out_$r10, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z0, out_$r8, out_$r9);
    assert {:sourceloc "PWCheck.java", 18, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} !($heap[out_$r10, $type] <: java.lang.Boolean);
    call out_$fakelocal_5 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$fakelocal_8, out_$r9, out_$fakelocal_5, out_$i2, out_$r8, out_$r15, out_$r10, out_z0, out_z3, out_$b3, out_$r13, out_$l6, out_$fakelocal_7, out_$fakelocal_6, out_$r6, out_$r11, out_$r14, out_$fakelocal_4, out_$r12, out_$fakelocal_2, out_$l5, out_$r7, out_$b4, out_$fakelocal_3, out_i7, out_z2 := in_$return, in_$exception, in_$fakelocal_8, in_$r9, in_$fakelocal_5, in_$i2, in_$r8, in_$r15, in_$r10, in_z0, in_z3, in_$b3, in_$r13, in_$l6, in_$fakelocal_7, in_$fakelocal_6, in_$r6, in_$r11, in_$r14, in_$fakelocal_4, in_$r12, in_$fakelocal_2, in_$l5, in_$r7, in_$b4, in_$fakelocal_3, in_i7, in_z2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon46_Then:
    assume {:partition} out_i7 < $arrSizeHeap[in_r1] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    out_$b3 := $intArrHeap[in_r0][out_i7];
    assert {:sourceloc "PWCheck.java", 16, -1, -1, -1} true;
    out_$l6 := out_$b3;
    assert {:sourceloc "PWCheck.java", 16, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} !(out_i7 < $arrSizeHeap[in_r1] && out_i7 >= 0);
    call out_$fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$fakelocal_8, out_$r9, out_$fakelocal_5, out_$i2, out_$r8, out_$r15, out_$r10, out_z0, out_z3, out_$b3, out_$r13, out_$l6, out_$fakelocal_7, out_$fakelocal_6, out_$r6, out_$r11, out_$r14, out_$fakelocal_4, out_$r12, out_$fakelocal_2, out_$l5, out_$r7, out_$b4, out_$fakelocal_3, out_i7, out_z2 := in_$return, in_$exception, in_$fakelocal_8, in_$r9, in_$fakelocal_5, in_$i2, in_$r8, in_$r15, in_$r10, in_z0, in_z3, in_$b3, in_$r13, in_$l6, in_$fakelocal_7, in_$fakelocal_6, in_$r6, in_$r11, in_$r14, in_$fakelocal_4, in_$r12, in_$fakelocal_2, in_$l5, in_$r7, in_$b4, in_$fakelocal_3, in_i7, in_z2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon45_Then:
    assume {:partition} out_i7 < $arrSizeHeap[in_r0] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    assert {:sourceloc "PWCheck.java", 16, -1, -1, -1} true;
    goto anon45_Then, anon45_Else;

  anon45_Else:
    assume {:partition} !(out_i7 < $arrSizeHeap[in_r0] && out_i7 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$fakelocal_8, out_$r9, out_$fakelocal_5, out_$i2, out_$r8, out_$r15, out_$r10, out_z0, out_z3, out_$b3, out_$r13, out_$l6, out_$fakelocal_7, out_$fakelocal_6, out_$r6, out_$r11, out_$r14, out_$fakelocal_4, out_$r12, out_$fakelocal_2, out_$l5, out_$r7, out_$b4, out_$fakelocal_3, out_i7, out_z2 := in_$return, in_$exception, in_$fakelocal_8, in_$r9, in_$fakelocal_5, in_$i2, in_$r8, in_$r15, in_$r10, in_z0, in_z3, in_$b3, in_$r13, in_$l6, in_$fakelocal_7, in_$fakelocal_6, in_$r6, in_$r11, in_$r14, in_$fakelocal_4, in_$r12, in_$fakelocal_2, in_$l5, in_$r7, in_$b4, in_$fakelocal_3, in_i7, in_z2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon44_Else:
    assume {:partition} out_$i2 > out_i7;
    assert {:sourceloc "PWCheck.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon12:
    out_$i2 := $arrSizeHeap[in_r0];
    assert {:sourceloc "PWCheck.java", 13, -1, -1, -1} true;
    goto anon44_Then, anon44_Else;

  anon44_Then:
    assume {:partition} out_i7 >= out_$i2;
    assert {:sourceloc "PWCheck.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_8, out_$r9, out_$fakelocal_5, out_$i2, out_$r8, out_$r15, out_$r10, out_z0, out_z3, out_$b3, out_$r13, out_$l6, out_$fakelocal_7, out_$fakelocal_6, out_$r6, out_$r11, out_$r14, out_$fakelocal_4, out_$r12, out_$fakelocal_2, out_$l5, out_$r7, out_$b4, out_$fakelocal_3, out_i7, out_z2 := in_$return, in_$exception, in_$fakelocal_8, in_$r9, in_$fakelocal_5, in_$i2, in_$r8, in_$r15, in_$r10, in_z0, in_z3, in_$b3, in_$r13, in_$l6, in_$fakelocal_7, in_$fakelocal_6, in_$r6, in_$r11, in_$r14, in_$fakelocal_4, in_$r12, in_$fakelocal_2, in_$l5, in_$r7, in_$b4, in_$fakelocal_3, in_i7, in_z2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon43_Then:
    assume {:partition} in_r0 != $null;
    out_$exception := out_$exception;
    goto anon12;

  anon33_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$fakelocal_8, out_$r9, out_$fakelocal_5, out_$i2, out_$r8, out_$r15, out_$r10, out_z0, out_z3, out_$b3, out_$r13, out_$l6, out_$fakelocal_7, out_$fakelocal_6, out_$r6, out_$r11, out_$r14, out_$fakelocal_4, out_$r12, out_$fakelocal_2, out_$l5, out_$r7, out_$b4, out_$fakelocal_3, out_i7, out_z2 := PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6(out_$return, out_$exception, out_$fakelocal_8, out_$r9, out_$fakelocal_5, out_$i2, out_$r8, out_$r15, in_r1, out_$r10, out_z0, out_z3, out_$b3, out_$r13, out_$l6, out_$fakelocal_7, out_$fakelocal_6, out_$r6, out_$r11, in_r0, out_$r14, out_$fakelocal_4, out_$r12, out_$fakelocal_2, out_$l5, out_$r7, out_$b4, out_$fakelocal_3, out_i7, out_z2);
    return;

  exit:
    return;
}



procedure PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_8: ref, 
    in_$r9: ref, 
    in_$fakelocal_5: ref, 
    in_$i2: int, 
    in_$r8: ref, 
    in_$r15: ref, 
    in_r1: ref, 
    in_$r10: ref, 
    in_z0: int, 
    in_z3: int, 
    in_$b3: int, 
    in_$r13: ref, 
    in_$l6: int, 
    in_$fakelocal_7: ref, 
    in_$fakelocal_6: ref, 
    in_$r6: ref, 
    in_$r11: ref, 
    in_r0: ref, 
    in_$r14: ref, 
    in_$fakelocal_4: ref, 
    in_$r12: ref, 
    in_$fakelocal_2: ref, 
    in_$l5: int, 
    in_$r7: ref, 
    in_$b4: int, 
    in_$fakelocal_3: ref, 
    in_i7: int, 
    in_z2: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_8: ref, 
    out_$r9: ref, 
    out_$fakelocal_5: ref, 
    out_$i2: int, 
    out_$r8: ref, 
    out_$r15: ref, 
    out_$r10: ref, 
    out_z0: int, 
    out_z3: int, 
    out_$b3: int, 
    out_$r13: ref, 
    out_$l6: int, 
    out_$fakelocal_7: ref, 
    out_$fakelocal_6: ref, 
    out_$r6: ref, 
    out_$r11: ref, 
    out_$r14: ref, 
    out_$fakelocal_4: ref, 
    out_$r12: ref, 
    out_$fakelocal_2: ref, 
    out_$l5: int, 
    out_$r7: ref, 
    out_$b4: int, 
    out_$fakelocal_3: ref, 
    out_i7: int, 
    out_z2: int);
  modifies $objIndex, $heap;



implementation PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block10(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_2: ref, 
    in_z0: int, 
    in_$fakelocal_3: ref, 
    in_$b5: int, 
    in_r0: ref, 
    in_r1: ref, 
    in_$b4: int, 
    in_$i2: int, 
    in_i6: int, 
    in_$fakelocal_4: ref, 
    in_$i3: int, 
    in_$fakelocal_5: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_2: ref, 
    out_z0: int, 
    out_$fakelocal_3: ref, 
    out_$b5: int, 
    out_$b4: int, 
    out_$i2: int, 
    out_i6: int, 
    out_$fakelocal_4: ref, 
    out_$i3: int, 
    out_$fakelocal_5: ref)
{

  entry:
    out_$return, out_$exception, out_$fakelocal_2, out_z0, out_$fakelocal_3, out_$b5, out_$b4, out_$i2, out_i6, out_$fakelocal_4, out_$i3, out_$fakelocal_5 := in_$return, in_$exception, in_$fakelocal_2, in_z0, in_$fakelocal_3, in_$b5, in_$b4, in_$i2, in_i6, in_$fakelocal_4, in_$i3, in_$fakelocal_5;
    goto block10;

  block10:
    assert {:sourceloc "PWCheck.java", 38, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} in_r0 == $null;
    call out_$fakelocal_2 := $new(java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$fakelocal_2, out_z0, out_$fakelocal_3, out_$b5, out_$b4, out_$i2, out_i6, out_$fakelocal_4, out_$i3, out_$fakelocal_5 := in_$return, in_$exception, in_$fakelocal_2, in_z0, in_$fakelocal_3, in_$b5, in_$b4, in_$i2, in_i6, in_$fakelocal_4, in_$i3, in_$fakelocal_5;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  block12:
    assert {:sourceloc "PWCheck.java", 38, -1, -1, -1} true;
    out_i6 := out_i6 + 1;
    assert {:sourceloc "PWCheck.java", 38, -1, -1, -1} true;
    goto block12_dummy;

  anon30:
    assert {:sourceloc "PWCheck.java", 41, -1, -1, -1} true;
    out_z0 := 0;
    assert {:sourceloc "PWCheck.java", 41, -1, -1, -1} true;
    goto block12;

  block13:
    assert {:sourceloc "PWCheck.java", 43, -1, -1, -1} true;
    goto block12;

  anon37_Then:
    assume {:partition} out_i6 >= out_$i3;
    assert {:sourceloc "PWCheck.java", 39, -1, -1, -1} {:comment "thenblock"} true;
    goto block12;

  anon18:
    out_$i3 := $arrSizeHeap[in_r1];
    assert {:sourceloc "PWCheck.java", 39, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon36_Then:
    assume {:partition} in_r1 != $null;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    assert {:sourceloc "PWCheck.java", 39, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} in_r1 == $null;
    call out_$fakelocal_3 := $new(java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$fakelocal_2, out_z0, out_$fakelocal_3, out_$b5, out_$b4, out_$i2, out_i6, out_$fakelocal_4, out_$i3, out_$fakelocal_5 := in_$return, in_$exception, in_$fakelocal_2, in_z0, in_$fakelocal_3, in_$b5, in_$b4, in_$i2, in_i6, in_$fakelocal_4, in_$i3, in_$fakelocal_5;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon35_Else:
    assume {:partition} out_$i2 > out_i6;
    assert {:sourceloc "PWCheck.java", 38, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon12:
    out_$i2 := $arrSizeHeap[in_r0];
    assert {:sourceloc "PWCheck.java", 38, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Then:
    assume {:partition} out_i6 >= out_$i2;
    assert {:sourceloc "PWCheck.java", 38, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_2, out_z0, out_$fakelocal_3, out_$b5, out_$b4, out_$i2, out_i6, out_$fakelocal_4, out_$i3, out_$fakelocal_5 := in_$return, in_$exception, in_$fakelocal_2, in_z0, in_$fakelocal_3, in_$b5, in_$b4, in_$i2, in_i6, in_$fakelocal_4, in_$i3, in_$fakelocal_5;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon34_Then:
    assume {:partition} in_r0 != $null;
    out_$exception := out_$exception;
    goto anon12;

  anon40_Then:
    assume {:partition} out_$b5 == out_$b4;
    assert {:sourceloc "PWCheck.java", 40, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  anon27:
    out_$b4 := $intArrHeap[in_r1][out_i6];
    assert {:sourceloc "PWCheck.java", 40, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon39_Then:
    assume {:partition} out_i6 < $arrSizeHeap[in_r1] && out_i6 >= 0;
    out_$exception := out_$exception;
    goto anon27;

  anon24:
    out_$b5 := $intArrHeap[in_r0][out_i6];
    assert {:sourceloc "PWCheck.java", 40, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} !(out_i6 < $arrSizeHeap[in_r1] && out_i6 >= 0);
    call out_$fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$fakelocal_2, out_z0, out_$fakelocal_3, out_$b5, out_$b4, out_$i2, out_i6, out_$fakelocal_4, out_$i3, out_$fakelocal_5 := in_$return, in_$exception, in_$fakelocal_2, in_z0, in_$fakelocal_3, in_$b5, in_$b4, in_$i2, in_i6, in_$fakelocal_4, in_$i3, in_$fakelocal_5;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon38_Then:
    assume {:partition} out_i6 < $arrSizeHeap[in_r0] && out_i6 >= 0;
    out_$exception := out_$exception;
    goto anon24;

  anon21:
    assert {:sourceloc "PWCheck.java", 40, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} !(out_i6 < $arrSizeHeap[in_r0] && out_i6 >= 0);
    call out_$fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$fakelocal_2, out_z0, out_$fakelocal_3, out_$b5, out_$b4, out_$i2, out_i6, out_$fakelocal_4, out_$i3, out_$fakelocal_5 := in_$return, in_$exception, in_$fakelocal_2, in_z0, in_$fakelocal_3, in_$b5, in_$b4, in_$i2, in_i6, in_$fakelocal_4, in_$i3, in_$fakelocal_5;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon37_Else:
    assume {:partition} out_$i3 > out_i6;
    assert {:sourceloc "PWCheck.java", 39, -1, -1, -1} {:comment "elseblock"} true;
    goto anon21;

  anon40_Else:
    assume {:partition} out_$b5 != out_$b4;
    assert {:sourceloc "PWCheck.java", 40, -1, -1, -1} {:comment "elseblock"} true;
    goto anon30;

  block12_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$fakelocal_2, out_z0, out_$fakelocal_3, out_$b5, out_$b4, out_$i2, out_i6, out_$fakelocal_4, out_$i3, out_$fakelocal_5 := PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block10(out_$return, out_$exception, out_$fakelocal_2, out_z0, out_$fakelocal_3, out_$b5, in_r0, in_r1, out_$b4, out_$i2, out_i6, out_$fakelocal_4, out_$i3, out_$fakelocal_5);
    return;

  exit:
    return;
}



procedure PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block10(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_2: ref, 
    in_z0: int, 
    in_$fakelocal_3: ref, 
    in_$b5: int, 
    in_r0: ref, 
    in_r1: ref, 
    in_$b4: int, 
    in_$i2: int, 
    in_i6: int, 
    in_$fakelocal_4: ref, 
    in_$i3: int, 
    in_$fakelocal_5: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_2: ref, 
    out_z0: int, 
    out_$fakelocal_3: ref, 
    out_$b5: int, 
    out_$b4: int, 
    out_$i2: int, 
    out_i6: int, 
    out_$fakelocal_4: ref, 
    out_$i3: int, 
    out_$fakelocal_5: ref);
  modifies $objIndex, $heap;


