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

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.Object: javaType extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique Sanity: javaType extends unique java.lang.Object complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.io.Serializable: javaType extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.Throwable: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.Exception: javaType extends unique java.lang.Throwable complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.RuntimeException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.IndexOutOfBoundsException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.ArrayIndexOutOfBoundsException: javaType extends unique java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.Appendable: javaType extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.CharSequence: javaType extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.AbstractStringBuilder: javaType extends unique java.lang.Object, java.lang.Appendable, java.lang.CharSequence complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.StringBuilder: javaType extends unique java.lang.AbstractStringBuilder, java.io.Serializable, java.lang.CharSequence complete;

const unique $StringConst0: ref extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.Comparable: javaType extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.String: javaType extends unique java.lang.Object, java.io.Serializable, java.lang.Comparable, java.lang.CharSequence complete;

const unique $StringConst1: ref extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.AutoCloseable: javaType extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.io.Closeable: javaType extends java.lang.AutoCloseable complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.io.Flushable: javaType extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.io.OutputStream: javaType extends unique java.lang.Object, java.io.Closeable, java.io.Flushable complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.io.FilterOutputStream: javaType extends unique java.io.OutputStream complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.io.PrintStream: javaType extends unique java.io.FilterOutputStream, java.lang.Appendable, java.io.Closeable complete;

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

var java.io.PrintStream$java.lang.System$out260: ref;

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
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];
  ensures $objIndex == old($objIndex) + 1;
  ensures $obj != $null;
  ensures $obj == $intToRef(old($objIndex));



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $other != $null;
  ensures $heap[$other, $alloc] <==> true;
  ensures $heap[$other, $type] == $heap[$this, $type];



procedure int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure Sanity$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure Sanity$notaint_unsafe$int$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure Sanity$nosecret_safe$int$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure Sanity$straightline_unsafe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure Sanity$sanity_safe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.StringBuilder$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.StringBuilder$append$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure java.lang.StringBuilder$append$int($this: ref, $in_parameter__0: int) returns ($return: ref, $exception: ref);



procedure java.lang.StringBuilder$toString$($this: ref) returns ($return: ref, $exception: ref);



procedure java.io.PrintStream$println$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure Sanity$sanity_unsafe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



implementation Sanity$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Sanity.java", -1, -1, -1, -1} $heap[$this, $type] <: Sanity;
    assume {:sourceloc "Sanity.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Sanity.java", 2, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "Sanity.java", 2, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation Sanity$notaint_unsafe$int$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $i1: int;
  var $fakelocal_1: ref;
  var i3: int;
  var $fakelocal_0: ref;
  var $i2: int;
  var i0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__1;
    assert {:sourceloc "Sanity.java", 5, -1, -1, -1} true;
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(0 < $arrSizeHeap[r0] && 0 >= 0);
    call $fakelocal_0 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon13_Then:
    assume {:partition} 0 < $arrSizeHeap[r0] && 0 >= 0;
    $exception := $exception;
    goto anon3;

  anon3:
    $i1 := $intArrHeap[r0][0];
    assert {:sourceloc "Sanity.java", 5, -1, -1, -1} true;
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} 0 < $i1;
    assert {:sourceloc "Sanity.java", 5, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} true;
    i3 := 0;
    goto block3;

  block3:
    call $return, $exception, $fakelocal_1, i3, $i2 := Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3($return, $exception, r0, $fakelocal_1, i3, $i2);
    goto block3_last;

  anon15_Else:
    assume {:partition} !(0 < $arrSizeHeap[r0] && 0 >= 0);
    call $fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon15_Then:
    assume {:partition} 0 < $arrSizeHeap[r0] && 0 >= 0;
    $exception := $exception;
    goto anon9;

  anon9:
    $i2 := $intArrHeap[r0][0];
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} $i2 > i3;
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} true;
    i3 := i3 + 1;
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} true;
    goto anon12_dummy;

  anon16_Then:
    assume {:partition} i3 >= $i2;
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} {:comment "thenblock"} true;
    goto block2;

  block2:
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} true;
    $return := 1;
    goto block4;

  block4:
    return;

  anon14_Then:
    assume {:partition} $i1 <= 0;
    assert {:sourceloc "Sanity.java", 5, -1, -1, -1} {:comment "thenblock"} true;
    goto block2;

  anon12_dummy:
    assume false;
    return;

  block3_last:
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} true;
    goto anon15_Then, anon15_Else;
}



implementation Sanity$nosecret_safe$int$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var i1: int;
  var r0: ref;
  var i0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__1;
    assert {:sourceloc "Sanity.java", 11, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 < i0;
    assert {:sourceloc "Sanity.java", 11, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Sanity.java", 12, -1, -1, -1} true;
    i1 := 0;
    goto block6;

  block6:
    call i1 := Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6(i1, i0);
    goto block6_last;

  anon8_Else:
    assume {:partition} i0 > i1;
    assert {:sourceloc "Sanity.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} true;
    i1 := i1 + 1;
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} true;
    goto anon6_dummy;

  anon8_Then:
    assume {:partition} i1 >= i0;
    assert {:sourceloc "Sanity.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    goto block5;

  block5:
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} true;
    $return := 1;
    goto block7;

  block7:
    return;

  anon7_Then:
    assume {:partition} i0 <= 0;
    assert {:sourceloc "Sanity.java", 11, -1, -1, -1} {:comment "thenblock"} true;
    goto block5;

  anon6_dummy:
    assume false;
    return;

  block6_last:
    assert {:sourceloc "Sanity.java", 12, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;
}



implementation Sanity$straightline_unsafe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var i0: int;
  var i1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__1;
    assert {:sourceloc "Sanity.java", 19, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 < i0;
    assert {:sourceloc "Sanity.java", 19, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Sanity.java", 32, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 < i1;
    assert {:sourceloc "Sanity.java", 32, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Sanity.java", 20, -1, -1, -1} true;
    goto block8;

  block8:
    assert {:sourceloc "Sanity.java", 32, -1, -1, -1} true;
    $return := 0;
    goto block9;

  block9:
    return;

  anon8_Then:
    assume {:partition} i1 <= 0;
    assert {:sourceloc "Sanity.java", 32, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  anon7_Then:
    assume {:partition} i0 <= 0;
    assert {:sourceloc "Sanity.java", 19, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;
}



implementation Sanity$sanity_safe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $r3: ref;
  var $fakelocal_2: ref;
  var $r1: ref;
  var $r0: ref;
  var $fakelocal_1: ref;
  var $r4: ref;
  var $r2: ref;
  var i3: int;
  var i1: int;
  var i0: int;
  var $fakelocal_0: ref;
  var $fakelocal_4: ref;
  var i2: int;
  var $r5: ref;
  var $r6: ref;
  var $fakelocal_5: ref;
  var $fakelocal_3: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__1;
    assert {:sourceloc "Sanity.java", 49, -1, -1, -1} true;
    $r1 := java.io.PrintStream$java.lang.System$out260;
    assert {:sourceloc "Sanity.java", 49, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r0 := $fakelocal_0;
    assert {:sourceloc "Sanity.java", 49, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r0);
    assert {:sourceloc "Sanity.java", 49, -1, -1, -1} true;
    call $r2, $exception := java.lang.StringBuilder$append$java.lang.String($r0, $StringConst0);
    assert {:sourceloc "Sanity.java", 49, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} $r2 == $null;
    call $fakelocal_1 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon27_Then:
    assume {:partition} $r2 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $r3, $exception := java.lang.StringBuilder$append$int($r2, i0);
    assert {:sourceloc "Sanity.java", 49, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} $r3 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon28_Then:
    assume {:partition} $r3 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    call $r4, $exception := java.lang.StringBuilder$append$java.lang.String($r3, $StringConst1);
    assert {:sourceloc "Sanity.java", 49, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} $r4 == $null;
    call $fakelocal_3 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon29_Then:
    assume {:partition} $r4 != $null;
    $exception := $exception;
    goto anon9;

  anon9:
    call $r5, $exception := java.lang.StringBuilder$append$int($r4, i1);
    assert {:sourceloc "Sanity.java", 49, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} $r5 == $null;
    call $fakelocal_4 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon30_Then:
    assume {:partition} $r5 != $null;
    $exception := $exception;
    goto anon12;

  anon12:
    call $r6, $exception := java.lang.StringBuilder$toString$($r5);
    assert {:sourceloc "Sanity.java", 49, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} $r1 == $null;
    call $fakelocal_5 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon31_Then:
    assume {:partition} $r1 != $null;
    $exception := $exception;
    goto anon15;

  anon15:
    call $exception := java.io.PrintStream$println$java.lang.String($r1, $r6);
    assert {:sourceloc "Sanity.java", 50, -1, -1, -1} true;
    i2 := i1;
    assert {:sourceloc "Sanity.java", 51, -1, -1, -1} true;
    i3 := i1;
    assert {:sourceloc "Sanity.java", 52, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} 0 > i1;
    assert {:sourceloc "Sanity.java", 52, -1, -1, -1} {:comment "elseblock"} true;
    goto anon18;

  anon18:
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} true;
    $return := 0;
    goto block14;

  block14:
    return;

  anon32_Then:
    assume {:partition} i1 >= 0;
    assert {:sourceloc "Sanity.java", 52, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "Sanity.java", 54, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} 0 < i0;
    assert {:sourceloc "Sanity.java", 54, -1, -1, -1} {:comment "elseblock"} true;
    goto block12;

  block12:
    call i2 := Sanity$sanity_safe$int_int_loop_block12(i2);
    goto block12_last;

  anon34_Else:
    assume {:partition} 0 < i2;
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} {:comment "elseblock"} true;
    goto anon23;

  anon23:
    assert {:sourceloc "Sanity.java", 56, -1, -1, -1} true;
    i2 := i2 + -1;
    assert {:sourceloc "Sanity.java", 56, -1, -1, -1} true;
    goto anon23_dummy;

  anon34_Then:
    assume {:partition} i2 <= 0;
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  block13:
    assert {:sourceloc "Sanity.java", 64, -1, -1, -1} true;
    $return := 0;
    goto block14;

  anon33_Then:
    assume {:partition} i0 <= 0;
    assert {:sourceloc "Sanity.java", 54, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  block11:
    call i3 := Sanity$sanity_safe$int_int_loop_block11(i3);
    goto block11_last;

  anon35_Else:
    assume {:partition} 0 < i3;
    assert {:sourceloc "Sanity.java", 59, -1, -1, -1} {:comment "elseblock"} true;
    goto anon26;

  anon26:
    assert {:sourceloc "Sanity.java", 60, -1, -1, -1} true;
    i3 := i3 + -1;
    assert {:sourceloc "Sanity.java", 60, -1, -1, -1} true;
    goto anon26_dummy;

  anon35_Then:
    assume {:partition} i3 <= 0;
    assert {:sourceloc "Sanity.java", 59, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  anon23_dummy:
    assume false;
    return;

  block12_last:
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon26_dummy:
    assume false;
    return;

  block11_last:
    assert {:sourceloc "Sanity.java", 59, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;
}



implementation Sanity$sanity_unsafe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var i3: int;
  var i0: int;
  var i1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__1;
    assert {:sourceloc "Sanity.java", 68, -1, -1, -1} true;
    i3 := i1;
    assert {:sourceloc "Sanity.java", 70, -1, -1, -1} true;
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} 0 > i1;
    assert {:sourceloc "Sanity.java", 70, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Sanity.java", 73, -1, -1, -1} true;
    $return := 0;
    goto block18;

  block18:
    return;

  anon10_Then:
    assume {:partition} i1 >= 0;
    assert {:sourceloc "Sanity.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  block15:
    assert {:sourceloc "Sanity.java", 72, -1, -1, -1} true;
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} 0 > i0;
    assert {:sourceloc "Sanity.java", 72, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Sanity.java", 73, -1, -1, -1} true;
    $return := 1;
    goto block18;

  anon11_Then:
    assume {:partition} i0 >= 0;
    assert {:sourceloc "Sanity.java", 72, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  block16:
    call i3 := Sanity$sanity_unsafe$int_int_loop_block16(i3);
    goto block16_last;

  anon12_Else:
    assume {:partition} 0 < i3;
    assert {:sourceloc "Sanity.java", 75, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "Sanity.java", 76, -1, -1, -1} true;
    i3 := i3 + -1;
    assert {:sourceloc "Sanity.java", 76, -1, -1, -1} true;
    goto anon9_dummy;

  anon12_Then:
    assume {:partition} i3 <= 0;
    assert {:sourceloc "Sanity.java", 75, -1, -1, -1} {:comment "thenblock"} true;
    goto block17;

  block17:
    assert {:sourceloc "Sanity.java", 79, -1, -1, -1} true;
    $return := 0;
    goto block18;

  anon9_dummy:
    assume false;
    return;

  block16_last:
    assert {:sourceloc "Sanity.java", 75, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3(in_$return: int, 
    in_$exception: ref, 
    in_r0: ref, 
    in_$fakelocal_1: ref, 
    in_i3: int, 
    in_$i2: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_1: ref, 
    out_i3: int, 
    out_$i2: int)
{

  entry:
    out_$return, out_$exception, out_$fakelocal_1, out_i3, out_$i2 := in_$return, in_$exception, in_$fakelocal_1, in_i3, in_$i2;
    goto block3;

  block3:
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} true;
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !(0 < $arrSizeHeap[in_r0] && 0 >= 0);
    call out_$fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$fakelocal_1, out_i3, out_$i2 := in_$return, in_$exception, in_$fakelocal_1, in_i3, in_$i2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon12:
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} true;
    out_i3 := out_i3 + 1;
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} true;
    goto anon12_dummy;

  anon16_Else:
    assume {:partition} out_$i2 > out_i3;
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon9:
    out_$i2 := $intArrHeap[in_r0][0];
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Then:
    assume {:partition} out_i3 >= out_$i2;
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_1, out_i3, out_$i2 := in_$return, in_$exception, in_$fakelocal_1, in_i3, in_$i2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon15_Then:
    assume {:partition} 0 < $arrSizeHeap[in_r0] && 0 >= 0;
    out_$exception := out_$exception;
    goto anon9;

  anon12_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$fakelocal_1, out_i3, out_$i2 := Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3(out_$return, out_$exception, in_r0, out_$fakelocal_1, out_i3, out_$i2);
    return;

  exit:
    return;
}



procedure Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3(in_$return: int, 
    in_$exception: ref, 
    in_r0: ref, 
    in_$fakelocal_1: ref, 
    in_i3: int, 
    in_$i2: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_1: ref, 
    out_i3: int, 
    out_$i2: int);
  modifies $objIndex, $heap;



implementation Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6(in_i1: int, in_i0: int) returns (out_i1: int)
{

  entry:
    out_i1 := in_i1;
    goto block6;

  block6:
    assert {:sourceloc "Sanity.java", 12, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} out_i1 >= in_i0;
    assert {:sourceloc "Sanity.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    out_i1 := in_i1;
    return;

  anon6:
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} true;
    out_i1 := out_i1 + 1;
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} true;
    goto anon6_dummy;

  anon8_Else:
    assume {:partition} in_i0 > out_i1;
    assert {:sourceloc "Sanity.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6_dummy:
    call {:si_unique_call 1} out_i1 := Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6(out_i1, in_i0);
    return;

  exit:
    return;
}



procedure Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6(in_i1: int, in_i0: int) returns (out_i1: int);



implementation Sanity$sanity_safe$int_int_loop_block12(in_i2: int) returns (out_i2: int)
{

  entry:
    out_i2 := in_i2;
    goto block12;

  block12:
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Then:
    assume {:partition} out_i2 <= 0;
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} {:comment "thenblock"} true;
    out_i2 := in_i2;
    return;

  anon23:
    assert {:sourceloc "Sanity.java", 56, -1, -1, -1} true;
    out_i2 := out_i2 + -1;
    assert {:sourceloc "Sanity.java", 56, -1, -1, -1} true;
    goto anon23_dummy;

  anon34_Else:
    assume {:partition} 0 < out_i2;
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} {:comment "elseblock"} true;
    goto anon23;

  anon23_dummy:
    call {:si_unique_call 1} out_i2 := Sanity$sanity_safe$int_int_loop_block12(out_i2);
    return;

  exit:
    return;
}



procedure Sanity$sanity_safe$int_int_loop_block12(in_i2: int) returns (out_i2: int);



implementation Sanity$sanity_safe$int_int_loop_block11(in_i3: int) returns (out_i3: int)
{

  entry:
    out_i3 := in_i3;
    goto block11;

  block11:
    assert {:sourceloc "Sanity.java", 59, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Then:
    assume {:partition} out_i3 <= 0;
    assert {:sourceloc "Sanity.java", 59, -1, -1, -1} {:comment "thenblock"} true;
    out_i3 := in_i3;
    return;

  anon26:
    assert {:sourceloc "Sanity.java", 60, -1, -1, -1} true;
    out_i3 := out_i3 + -1;
    assert {:sourceloc "Sanity.java", 60, -1, -1, -1} true;
    goto anon26_dummy;

  anon35_Else:
    assume {:partition} 0 < out_i3;
    assert {:sourceloc "Sanity.java", 59, -1, -1, -1} {:comment "elseblock"} true;
    goto anon26;

  anon26_dummy:
    call {:si_unique_call 1} out_i3 := Sanity$sanity_safe$int_int_loop_block11(out_i3);
    return;

  exit:
    return;
}



procedure Sanity$sanity_safe$int_int_loop_block11(in_i3: int) returns (out_i3: int);



implementation Sanity$sanity_unsafe$int_int_loop_block16(in_i3: int) returns (out_i3: int)
{

  entry:
    out_i3 := in_i3;
    goto block16;

  block16:
    assert {:sourceloc "Sanity.java", 75, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} out_i3 <= 0;
    assert {:sourceloc "Sanity.java", 75, -1, -1, -1} {:comment "thenblock"} true;
    out_i3 := in_i3;
    return;

  anon9:
    assert {:sourceloc "Sanity.java", 76, -1, -1, -1} true;
    out_i3 := out_i3 + -1;
    assert {:sourceloc "Sanity.java", 76, -1, -1, -1} true;
    goto anon9_dummy;

  anon12_Else:
    assume {:partition} 0 < out_i3;
    assert {:sourceloc "Sanity.java", 75, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9_dummy:
    call {:si_unique_call 1} out_i3 := Sanity$sanity_unsafe$int_int_loop_block16(out_i3);
    return;

  exit:
    return;
}



procedure Sanity$sanity_unsafe$int_int_loop_block16(in_i3: int) returns (out_i3: int);


