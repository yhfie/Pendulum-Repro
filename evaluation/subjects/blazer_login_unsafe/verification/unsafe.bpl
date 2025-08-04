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

const {:sourceloc "Login.java", -1, -1, -1, -1} unique Login: javaType extends unique java.lang.Object complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique java.io.Serializable: javaType extends complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique java.lang.Comparable: javaType extends complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique java.lang.CharSequence: javaType extends complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique java.lang.String: javaType extends unique java.lang.Object, java.io.Serializable, java.lang.Comparable, java.lang.CharSequence complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique java.lang.Throwable: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique java.lang.Exception: javaType extends unique java.lang.Throwable complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique java.lang.RuntimeException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique java.lang.NullPointerException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique java.lang.IndexOutOfBoundsException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique java.lang.ArrayIndexOutOfBoundsException: javaType extends unique java.lang.IndexOutOfBoundsException complete;

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
  ensures !old($heap[$obj, $alloc]);
  ensures $obj == $intToRef(old($objIndex));
  ensures $objIndex == old($objIndex) + 1;
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];



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



procedure Login$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure Login$retrieve$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;



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



implementation Login$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Login.java", -1, -1, -1, -1} $heap[$this, $type] <: Login;
    assume {:sourceloc "Login.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Login.java", 1, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "Login.java", 1, -1, -1, -1} true;
    goto block4;

  block4:
    return;
}



implementation Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $fakelocal_3: ref;
  var $b3: int;
  var r2: ref;
  var r1: ref;
  var $b2: int;
  var $fakelocal_0: ref;
  var $fakelocal_1: ref;
  var $fakelocal_2: ref;
  var $i0: int;
  var i4: int;
  var $i1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__2, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__2;
    assert {:sourceloc "Login.java", 8, -1, -1, -1} true;
    goto anon25_Then, anon25_Else;

  anon25_Else:
    assume {:partition} r0 == $null;
    assert {:sourceloc "Login.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Login.java", 9, -1, -1, -1} true;
    $return := 0;
    goto block10;

  block10:
    return;

  anon25_Then:
    assume {:partition} r0 != $null;
    assert {:sourceloc "Login.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    goto block5;

  block5:
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    i4 := 0;
    goto block6;

  block6:
    call $return, $exception, $fakelocal_3, $b3, $b2, $fakelocal_0, $fakelocal_1, $fakelocal_2, $i0, i4, $i1 := Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6($return, $exception, r0, $fakelocal_3, $b3, r1, $b2, $fakelocal_0, $fakelocal_1, $fakelocal_2, $i0, i4, $i1);
    goto block6_last;

  anon26_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon26_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i0 := $arrSizeHeap[r1];
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} $i0 > i4;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "Login.java", 13, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} r0 == $null;
    call $fakelocal_1 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon28_Then:
    assume {:partition} r0 != $null;
    $exception := $exception;
    goto anon12;

  anon12:
    $i1 := $arrSizeHeap[r0];
    assert {:sourceloc "Login.java", 13, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} $i1 > i4;
    assert {:sourceloc "Login.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(i4 < $arrSizeHeap[r1] && i4 >= 0);
    call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon30_Then:
    assume {:partition} i4 < $arrSizeHeap[r1] && i4 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $b3 := $intArrHeap[r1][i4];
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(i4 < $arrSizeHeap[r0] && i4 >= 0);
    call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon31_Then:
    assume {:partition} i4 < $arrSizeHeap[r0] && i4 >= 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $b2 := $intArrHeap[r0][i4];
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} $b3 != $b2;
    assert {:sourceloc "Login.java", 14, -1, -1, -1} {:comment "elseblock"} true;
    goto anon24;

  anon24:
    assert {:sourceloc "Login.java", 15, -1, -1, -1} true;
    $return := 0;
    goto block10;

  anon32_Then:
    assume {:partition} $b3 == $b2;
    assert {:sourceloc "Login.java", 14, -1, -1, -1} {:comment "thenblock"} true;
    goto block9;

  block9:
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    i4 := i4 + 1;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto block9_dummy;

  anon29_Then:
    assume {:partition} i4 >= $i1;
    assert {:sourceloc "Login.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "Login.java", 18, -1, -1, -1} true;
    $return := 0;
    goto block10;

  anon27_Then:
    assume {:partition} i4 >= $i0;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  block7:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    $return := 1;
    goto block10;

  block9_dummy:
    assume false;
    return;

  block6_last:
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;
}



implementation Login$retrieve$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r0: ref;
  var $fakelocal_1: ref;
  var $fakelocal_4: ref;
  var $fakelocal_3: ref;
  var r1: ref;
  var $fakelocal_2: ref;
  var $r2: ref;
  var $fakelocal_0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    call $fakelocal_0 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_0 := 4];
    $r2 := $fakelocal_0;
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(0 < $arrSizeHeap[$r2] && 0 >= 0);
    call $fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_1;
    return;

  anon13_Then:
    assume {:partition} 0 < $arrSizeHeap[$r2] && 0 >= 0;
    $exception := $exception;
    goto anon3;

  anon3:
    $intArrHeap := $intArrHeap[$r2 := $intArrHeap[$r2][0 := 10]];
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !(1 < $arrSizeHeap[$r2] && 1 >= 0);
    call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon14_Then:
    assume {:partition} 1 < $arrSizeHeap[$r2] && 1 >= 0;
    $exception := $exception;
    goto anon6;

  anon6:
    $intArrHeap := $intArrHeap[$r2 := $intArrHeap[$r2][1 := 3]];
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !(2 < $arrSizeHeap[$r2] && 2 >= 0);
    call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_3;
    return;

  anon15_Then:
    assume {:partition} 2 < $arrSizeHeap[$r2] && 2 >= 0;
    $exception := $exception;
    goto anon9;

  anon9:
    $intArrHeap := $intArrHeap[$r2 := $intArrHeap[$r2][2 := 15]];
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !(3 < $arrSizeHeap[$r2] && 3 >= 0);
    call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_4;
    return;

  anon16_Then:
    assume {:partition} 3 < $arrSizeHeap[$r2] && 3 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    $intArrHeap := $intArrHeap[$r2 := $intArrHeap[$r2][3 := 1]];
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    r1 := $r2;
    assert {:sourceloc "Login.java", 54, -1, -1, -1} true;
    $return := r1;
    goto block11;

  block11:
    return;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6(in_$return: int, 
    in_$exception: ref, 
    in_r0: ref, 
    in_$fakelocal_3: ref, 
    in_$b3: int, 
    in_r1: ref, 
    in_$b2: int, 
    in_$fakelocal_0: ref, 
    in_$fakelocal_1: ref, 
    in_$fakelocal_2: ref, 
    in_$i0: int, 
    in_i4: int, 
    in_$i1: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_3: ref, 
    out_$b3: int, 
    out_$b2: int, 
    out_$fakelocal_0: ref, 
    out_$fakelocal_1: ref, 
    out_$fakelocal_2: ref, 
    out_$i0: int, 
    out_i4: int, 
    out_$i1: int)
{

  entry:
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    goto block6;

  block6:
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} in_r1 == $null;
    call out_$fakelocal_0 := $new(java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_0;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  block9:
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    out_i4 := out_i4 + 1;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto block9_dummy;

  anon32_Then:
    assume {:partition} out_$b3 == out_$b2;
    assert {:sourceloc "Login.java", 14, -1, -1, -1} {:comment "thenblock"} true;
    goto block9;

  anon21:
    out_$b2 := $intArrHeap[in_r0][out_i4];
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} out_$b3 != out_$b2;
    assert {:sourceloc "Login.java", 14, -1, -1, -1} {:comment "elseblock"} true;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon31_Then:
    assume {:partition} out_i4 < $arrSizeHeap[in_r0] && out_i4 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    out_$b3 := $intArrHeap[in_r1][out_i4];
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(out_i4 < $arrSizeHeap[in_r0] && out_i4 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon30_Then:
    assume {:partition} out_i4 < $arrSizeHeap[in_r1] && out_i4 >= 0;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(out_i4 < $arrSizeHeap[in_r1] && out_i4 >= 0);
    call out_$fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon29_Else:
    assume {:partition} out_$i1 > out_i4;
    assert {:sourceloc "Login.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon12:
    out_$i1 := $arrSizeHeap[in_r0];
    assert {:sourceloc "Login.java", 13, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Then:
    assume {:partition} out_i4 >= out_$i1;
    assert {:sourceloc "Login.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon28_Then:
    assume {:partition} in_r0 != $null;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    assert {:sourceloc "Login.java", 13, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} in_r0 == $null;
    call out_$fakelocal_1 := $new(java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon27_Else:
    assume {:partition} out_$i0 > out_i4;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon6:
    out_$i0 := $arrSizeHeap[in_r1];
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Then:
    assume {:partition} out_i4 >= out_$i0;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon26_Then:
    assume {:partition} in_r1 != $null;
    out_$exception := out_$exception;
    goto anon6;

  block9_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6(out_$return, out_$exception, in_r0, out_$fakelocal_3, out_$b3, in_r1, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1);
    return;

  exit:
    return;
}



procedure Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6(in_$return: int, 
    in_$exception: ref, 
    in_r0: ref, 
    in_$fakelocal_3: ref, 
    in_$b3: int, 
    in_r1: ref, 
    in_$b2: int, 
    in_$fakelocal_0: ref, 
    in_$fakelocal_1: ref, 
    in_$fakelocal_2: ref, 
    in_$i0: int, 
    in_i4: int, 
    in_$i1: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_3: ref, 
    out_$b3: int, 
    out_$b2: int, 
    out_$fakelocal_0: ref, 
    out_$fakelocal_1: ref, 
    out_$fakelocal_2: ref, 
    out_$i0: int, 
    out_i4: int, 
    out_$i1: int);
  modifies $objIndex, $heap;


