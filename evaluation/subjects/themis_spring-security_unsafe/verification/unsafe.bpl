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

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique java.lang.Object: javaType extends complete;

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique PasswordEncoderUtils: javaType extends unique java.lang.Object complete;

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique java.io.Serializable: javaType extends complete;

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique java.lang.Comparable: javaType extends complete;

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique java.lang.CharSequence: javaType extends complete;

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique java.lang.Throwable: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique java.lang.Exception: javaType extends unique java.lang.Throwable complete;

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique java.lang.RuntimeException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique java.lang.NullPointerException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique java.lang.IndexOutOfBoundsException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique java.lang.ArrayIndexOutOfBoundsException: javaType extends unique java.lang.IndexOutOfBoundsException complete;

const unique $StringConst0: ref extends complete;

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique java.io.IOException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique java.io.UnsupportedEncodingException: javaType extends unique java.io.IOException complete;

const unique $StringConst1: ref extends complete;

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique java.lang.AutoCloseable: javaType extends complete;

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique java.io.Closeable: javaType extends java.lang.AutoCloseable complete;

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique java.io.Flushable: javaType extends complete;

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique java.io.OutputStream: javaType extends unique java.lang.Object, java.io.Closeable, java.io.Flushable complete;

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique java.io.FilterOutputStream: javaType extends unique java.io.OutputStream complete;

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique java.lang.Appendable: javaType extends complete;

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique java.io.PrintStream: javaType extends unique java.io.FilterOutputStream, java.lang.Appendable, java.io.Closeable complete;

const {:sourceloc "StringBuilder.java", -1, -1, -1, -1} unique java.lang.StringBuilder: javaType extends unique java.lang.Object complete;

const {:sourceloc "StringBuilder.java", -1, -1, -1, -1} unique java.lang.String: javaType extends unique java.lang.Object complete;

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

var java.io.PrintStream$java.lang.System$out260: ref;

var char$lp$$rp$$java.lang.StringBuilder$chars347: Field ref;

var char$lp$$rp$$java.lang.String$chars348: Field ref;

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
  ensures $obj != $null;
  ensures !old($heap[$obj, $alloc]);
  ensures $objIndex == old($objIndex) + 1;
  ensures $obj == $intToRef(old($objIndex));



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $other != $null;
  ensures $heap[$other, $alloc] <==> true;
  ensures $heap[$other, $type] == $heap[$this, $type];



procedure int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure PasswordEncoderUtils$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure PasswordEncoderUtils$equals_unsafe$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure PasswordEncoderUtils$bytesUtf8$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.io.PrintStream$println$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure java.lang.StringBuilder$$la$init$ra$$($this: ref) returns ($exception: ref);
  modifies $objIndex, $arrSizeHeap, $heap;



procedure java.lang.StringBuilder$append$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;



procedure java.lang.StringBuilder$toString$($this: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.String$$la$init$ra$$char$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref);
  modifies $objIndex, $arrSizeHeap, $heap, $intArrHeap;



procedure java.lang.String$$la$init$ra$$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref);
  modifies $objIndex, $arrSizeHeap, $heap, $intArrHeap;



procedure java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.String$getBytes$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;



procedure java.lang.String$getBytes$($this: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;



procedure java.lang.String$format$java.lang.String_java.lang.Object$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref);



procedure java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies $heap;



procedure java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



implementation PasswordEncoderUtils$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} $heap[$this, $type] <: PasswordEncoderUtils;
    assume {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "PasswordEncoderUtils.java", 12, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "PasswordEncoderUtils.java", 12, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation PasswordEncoderUtils$equals_unsafe$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $z0: int;
  var $b4: int;
  var $fakelocal_1: ref;
  var i1: int;
  var $b2: int;
  var b7: int;
  var i8: int;
  var r0: ref;
  var $i5: int;
  var r1: ref;
  var $fakelocal_0: ref;
  var r2: ref;
  var $i6: int;
  var $b3: int;
  var $fakelocal_2: ref;
  var r3: ref;
  var $fakelocal_3: ref;
  var i0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1, $type] <: java.lang.String;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "PasswordEncoderUtils.java", 34, -1, -1, -1} true;
    call r2, $exception := PasswordEncoderUtils$bytesUtf8$java.lang.String(r0);
    assert {:sourceloc "PasswordEncoderUtils.java", 35, -1, -1, -1} true;
    call r3, $exception := PasswordEncoderUtils$bytesUtf8$java.lang.String(r1);
    assert {:sourceloc "PasswordEncoderUtils.java", 36, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} r2 == $null;
    assert {:sourceloc "PasswordEncoderUtils.java", 36, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "PasswordEncoderUtils.java", 39, -1, -1, -1} true;
    $i5 := -1;
    assert {:sourceloc "PasswordEncoderUtils.java", 39, -1, -1, -1} true;
    goto block3;

  block3:
    assert {:sourceloc "PasswordEncoderUtils.java", 36, -1, -1, -1} true;
    i0 := $i5;
    assert {:sourceloc "PasswordEncoderUtils.java", 37, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} r3 == $null;
    assert {:sourceloc "PasswordEncoderUtils.java", 37, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "PasswordEncoderUtils.java", 40, -1, -1, -1} true;
    $i6 := -1;
    assert {:sourceloc "PasswordEncoderUtils.java", 40, -1, -1, -1} true;
    goto block5;

  block5:
    assert {:sourceloc "PasswordEncoderUtils.java", 37, -1, -1, -1} true;
    i1 := $i6;
    assert {:sourceloc "PasswordEncoderUtils.java", 39, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} i0 != i1;
    assert {:sourceloc "PasswordEncoderUtils.java", 39, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "PasswordEncoderUtils.java", 40, -1, -1, -1} true;
    $return := 0;
    goto block11;

  block11:
    return;

  anon32_Then:
    assume {:partition} i0 == i1;
    assert {:sourceloc "PasswordEncoderUtils.java", 39, -1, -1, -1} {:comment "thenblock"} true;
    goto block6;

  block6:
    assert {:sourceloc "PasswordEncoderUtils.java", 43, -1, -1, -1} true;
    b7 := 0;
    assert {:sourceloc "PasswordEncoderUtils.java", 44, -1, -1, -1} true;
    i8 := 0;
    goto block7;

  block7:
    call $return, $exception, $b4, $b2, b7, i8, $b3, $fakelocal_2, $fakelocal_3 := PasswordEncoderUtils$equals_unsafe$java.lang.String_java.lang.String_loop_block7($return, $exception, $b4, $b2, b7, i8, r2, $b3, $fakelocal_2, r3, $fakelocal_3, i0);
    goto block7_last;

  anon33_Else:
    assume {:partition} i0 > i8;
    assert {:sourceloc "PasswordEncoderUtils.java", 44, -1, -1, -1} {:comment "elseblock"} true;
    goto anon18;

  anon18:
    assert {:sourceloc "PasswordEncoderUtils.java", 45, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} !(i8 < $arrSizeHeap[r2] && i8 >= 0);
    call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon34_Then:
    assume {:partition} i8 < $arrSizeHeap[r2] && i8 >= 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $b3 := $intArrHeap[r2][i8];
    assert {:sourceloc "PasswordEncoderUtils.java", 45, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} !(i8 < $arrSizeHeap[r3] && i8 >= 0);
    call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon35_Then:
    assume {:partition} i8 < $arrSizeHeap[r3] && i8 >= 0;
    $exception := $exception;
    goto anon24;

  anon24:
    $b2 := $intArrHeap[r3][i8];
    assert {:sourceloc "PasswordEncoderUtils.java", 45, -1, -1, -1} true;
    $b4 := $xorInt($b3, $b2);
    assert {:sourceloc "PasswordEncoderUtils.java", 45, -1, -1, -1} true;
    b7 := $bitOr(b7, $b4);
    assert {:sourceloc "PasswordEncoderUtils.java", 44, -1, -1, -1} true;
    i8 := i8 + 1;
    assert {:sourceloc "PasswordEncoderUtils.java", 44, -1, -1, -1} true;
    goto anon24_dummy;

  anon33_Then:
    assume {:partition} i8 >= i0;
    assert {:sourceloc "PasswordEncoderUtils.java", 44, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "PasswordEncoderUtils.java", 47, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} b7 == 0;
    assert {:sourceloc "PasswordEncoderUtils.java", 47, -1, -1, -1} {:comment "elseblock"} true;
    goto anon27;

  anon27:
    assert {:sourceloc "PasswordEncoderUtils.java", 47, -1, -1, -1} true;
    $z0 := 1;
    assert {:sourceloc "PasswordEncoderUtils.java", 47, -1, -1, -1} true;
    goto block10;

  block10:
    assert {:sourceloc "PasswordEncoderUtils.java", 47, -1, -1, -1} true;
    $return := $z0;
    goto block11;

  anon36_Then:
    assume {:partition} b7 != 0;
    assert {:sourceloc "PasswordEncoderUtils.java", 47, -1, -1, -1} {:comment "thenblock"} true;
    goto block9;

  block9:
    assert {:sourceloc "PasswordEncoderUtils.java", 47, -1, -1, -1} true;
    $z0 := 0;
    goto block10;

  anon30_Then:
    assume {:partition} r3 != $null;
    assert {:sourceloc "PasswordEncoderUtils.java", 37, -1, -1, -1} {:comment "thenblock"} true;
    goto block4;

  block4:
    assert {:sourceloc "PasswordEncoderUtils.java", 40, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} r3 == $null;
    call $fakelocal_1 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon31_Then:
    assume {:partition} r3 != $null;
    $exception := $exception;
    goto anon12;

  anon12:
    $i6 := $arrSizeHeap[r3];
    goto block5;

  anon28_Then:
    assume {:partition} r2 != $null;
    assert {:sourceloc "PasswordEncoderUtils.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block2;

  block2:
    assert {:sourceloc "PasswordEncoderUtils.java", 39, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} r2 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon29_Then:
    assume {:partition} r2 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i5 := $arrSizeHeap[r2];
    goto block3;

  anon24_dummy:
    assume false;
    return;

  block7_last:
    assert {:sourceloc "PasswordEncoderUtils.java", 44, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;
}



implementation PasswordEncoderUtils$bytesUtf8$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r0: ref;
  var $fakelocal_0: ref;
  var $r2: ref;
  var $r3: ref;
  var $r4: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    goto block12;

  block12:
    assert {:sourceloc "PasswordEncoderUtils.java", 52, -1, -1, -1} true;
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} r0 == $null;
    assert {:sourceloc "PasswordEncoderUtils.java", 52, -1, -1, -1} {:comment "elseblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "PasswordEncoderUtils.java", 53, -1, -1, -1} true;
    $return := $null;
    goto block17;

  block17:
    return;

  anon9_Then:
    assume {:partition} r0 != $null;
    assert {:sourceloc "PasswordEncoderUtils.java", 52, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  block13:
    assert {:sourceloc "PasswordEncoderUtils.java", 56, -1, -1, -1} true;
    call $r2, $exception := java.lang.String$getBytes$java.lang.String(r0, $StringConst0);
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} $exception == $null;
    goto block16;

  block16:
    assert {:sourceloc "PasswordEncoderUtils.java", 56, -1, -1, -1} true;
    $return := $r2;
    goto block17;

  anon10_Then:
    assume {:partition} $exception != $null;
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.UnsupportedEncodingException);
    assert {:clone} true;
    goto block16;

  anon11_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.UnsupportedEncodingException;
    $return := $null;
    goto block15;

  block15:
    assert {:sourceloc "PasswordEncoderUtils.java", 53, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r3 := $exception;
    assert {:sourceloc "PasswordEncoderUtils.java", 60, -1, -1, -1} true;
    $r4 := java.io.PrintStream$java.lang.System$out260;
    assert {:sourceloc "PasswordEncoderUtils.java", 60, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} $r4 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon12_Then:
    assume {:partition} $r4 != $null;
    $exception := $exception;
    goto anon8;

  anon8:
    call $exception := java.io.PrintStream$println$java.lang.String($r4, $StringConst1);
    assert {:sourceloc "PasswordEncoderUtils.java", 61, -1, -1, -1} true;
    $return := $null;
    goto block17;
}



implementation java.lang.StringBuilder$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var $r1: ref;
  var $fakelocal_0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StringBuilder.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.StringBuilder;
    assume {:sourceloc "StringBuilder.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "StringBuilder.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StringBuilder.java", 3, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "StringBuilder.java", 4, -1, -1, -1} true;
    call $fakelocal_0 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_0 := 0];
    $r1 := $fakelocal_0;
    assert {:sourceloc "StringBuilder.java", 4, -1, -1, -1} true;
    $heap := $heap[r0, char$lp$$rp$$java.lang.StringBuilder$chars347 := $r1];
    assert {:sourceloc "StringBuilder.java", 4, -1, -1, -1} true;
    goto block18;

  block18:
    return;
}



implementation java.lang.StringBuilder$append$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var $c5: int;
  var $i4: int;
  var $r8: ref;
  var $c6: int;
  var $r3: ref;
  var $fakelocal_9: ref;
  var $fakelocal_4: ref;
  var $fakelocal_2: ref;
  var r2: ref;
  var $fakelocal_3: ref;
  var $fakelocal_5: ref;
  var $fakelocal_8: ref;
  var $fakelocal_10: ref;
  var r0: ref;
  var $fakelocal_7: ref;
  var $r4: ref;
  var $fakelocal_1: ref;
  var $r7: ref;
  var i8: int;
  var $i2: int;
  var $i0: int;
  var i7: int;
  var $r6: ref;
  var $i1: int;
  var $fakelocal_6: ref;
  var $r5: ref;
  var $i3: int;
  var $r9: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StringBuilder.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.StringBuilder;
    assume {:sourceloc "StringBuilder.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: java.lang.StringBuilder;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "StringBuilder.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StringBuilder.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "StringBuilder.java", 7, -1, -1, -1} true;
    $r3 := $heap[r0, char$lp$$rp$$java.lang.StringBuilder$chars347];
    assert {:sourceloc "StringBuilder.java", 7, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon37_Else:
    assume {:partition} $r3 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon37_Then:
    assume {:partition} $r3 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    $i1 := $arrSizeHeap[$r3];
    assert {:sourceloc "StringBuilder.java", 7, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_1 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_1;
    return;

  anon38_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    $r4 := $heap[r1, char$lp$$rp$$java.lang.String$chars348];
    assert {:sourceloc "StringBuilder.java", 7, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} $r4 == $null;
    call $fakelocal_2 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon39_Then:
    assume {:partition} $r4 != $null;
    $exception := $exception;
    goto anon9;

  anon9:
    $i0 := $arrSizeHeap[$r4];
    assert {:sourceloc "StringBuilder.java", 7, -1, -1, -1} true;
    $i2 := $i1 + $i0;
    assert {:sourceloc "StringBuilder.java", 7, -1, -1, -1} true;
    call $fakelocal_3 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_3 := $i2];
    r2 := $fakelocal_3;
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    i7 := 0;
    goto block19;

  block19:
    call $return, $exception, $c6, $fakelocal_4, $fakelocal_5, i7, $fakelocal_6, $r5, $i3, $r9 := java.lang.StringBuilder$append$java.lang.String_loop_block19($return, $exception, $c6, $fakelocal_4, r2, $fakelocal_5, r0, i7, $fakelocal_6, $r5, $i3, $r9);
    goto block19_last;

  anon40_Else:
    assume {:partition} $r5 == $null;
    call $fakelocal_4 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_4;
    return;

  anon40_Then:
    assume {:partition} $r5 != $null;
    $exception := $exception;
    goto anon12;

  anon12:
    $i3 := $arrSizeHeap[$r5];
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    goto anon41_Then, anon41_Else;

  anon41_Else:
    assume {:partition} $i3 > i7;
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "StringBuilder.java", 9, -1, -1, -1} true;
    $r9 := $heap[r0, char$lp$$rp$$java.lang.StringBuilder$chars347];
    assert {:sourceloc "StringBuilder.java", 9, -1, -1, -1} true;
    goto anon42_Then, anon42_Else;

  anon42_Else:
    assume {:partition} !(i7 < $arrSizeHeap[$r9] && i7 >= 0);
    call $fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_5;
    return;

  anon42_Then:
    assume {:partition} i7 < $arrSizeHeap[$r9] && i7 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $c6 := $intArrHeap[$r9][i7];
    assert {:sourceloc "StringBuilder.java", 9, -1, -1, -1} true;
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} !(i7 < $arrSizeHeap[r2] && i7 >= 0);
    call $fakelocal_6 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_6;
    return;

  anon43_Then:
    assume {:partition} i7 < $arrSizeHeap[r2] && i7 >= 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $intArrHeap := $intArrHeap[r2 := $intArrHeap[r2][i7 := $c6]];
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    i7 := i7 + 1;
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    goto anon21_dummy;

  anon41_Then:
    assume {:partition} i7 >= $i3;
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    goto block20;

  block20:
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    $r6 := $heap[r0, char$lp$$rp$$java.lang.StringBuilder$chars347];
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    goto anon44_Then, anon44_Else;

  anon44_Else:
    assume {:partition} $r6 == $null;
    call $fakelocal_7 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_7;
    return;

  anon44_Then:
    assume {:partition} $r6 != $null;
    $exception := $exception;
    goto anon24;

  anon24:
    i8 := $arrSizeHeap[$r6];
    goto block21;

  block21:
    call $return, $exception, $c5, $i4, $r8, $fakelocal_9, $fakelocal_8, $fakelocal_10, $r7, i8 := java.lang.StringBuilder$append$java.lang.String_loop_block21($return, $exception, $c5, $i4, $r8, $fakelocal_9, r2, $fakelocal_8, $fakelocal_10, $r7, i8, r1);
    goto block21_last;

  anon45_Else:
    assume {:partition} $r7 == $null;
    call $fakelocal_8 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_8;
    return;

  anon45_Then:
    assume {:partition} $r7 != $null;
    $exception := $exception;
    goto anon27;

  anon27:
    $i4 := $arrSizeHeap[$r7];
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} $i4 > i8;
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} {:comment "elseblock"} true;
    goto anon30;

  anon30:
    assert {:sourceloc "StringBuilder.java", 12, -1, -1, -1} true;
    $r8 := $heap[r1, char$lp$$rp$$java.lang.String$chars348];
    assert {:sourceloc "StringBuilder.java", 12, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} !(i8 < $arrSizeHeap[$r8] && i8 >= 0);
    call $fakelocal_9 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_9;
    return;

  anon47_Then:
    assume {:partition} i8 < $arrSizeHeap[$r8] && i8 >= 0;
    $exception := $exception;
    goto anon33;

  anon33:
    $c5 := $intArrHeap[$r8][i8];
    assert {:sourceloc "StringBuilder.java", 12, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} !(i8 < $arrSizeHeap[r2] && i8 >= 0);
    call $fakelocal_10 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_10;
    return;

  anon48_Then:
    assume {:partition} i8 < $arrSizeHeap[r2] && i8 >= 0;
    $exception := $exception;
    goto anon36;

  anon36:
    $intArrHeap := $intArrHeap[r2 := $intArrHeap[r2][i8 := $c5]];
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    i8 := i8 + 1;
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    goto anon36_dummy;

  anon46_Then:
    assume {:partition} i8 >= $i4;
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;

  block22:
    assert {:sourceloc "StringBuilder.java", 14, -1, -1, -1} true;
    $heap := $heap[r0, char$lp$$rp$$java.lang.StringBuilder$chars347 := r2];
    assert {:sourceloc "StringBuilder.java", 15, -1, -1, -1} true;
    $return := r0;
    goto block23;

  block23:
    return;

  anon36_dummy:
    assume false;
    return;

  block21_last:
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    $r7 := $heap[r1, char$lp$$rp$$java.lang.String$chars348];
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    goto anon45_Then, anon45_Else;

  anon21_dummy:
    assume false;
    return;

  block19_last:
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    $r5 := $heap[r0, char$lp$$rp$$java.lang.StringBuilder$chars347];
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;
}



implementation java.lang.StringBuilder$toString$($this: ref) returns ($return: ref, $exception: ref)
{
  var $r1: ref;
  var $r2: ref;
  var r0: ref;
  var $fakelocal_0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StringBuilder.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.StringBuilder;
    assume {:sourceloc "StringBuilder.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "StringBuilder.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StringBuilder.java", 19, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.String);
    $r1 := $fakelocal_0;
    assert {:sourceloc "StringBuilder.java", 19, -1, -1, -1} true;
    $r2 := $heap[r0, char$lp$$rp$$java.lang.StringBuilder$chars347];
    assert {:sourceloc "StringBuilder.java", 19, -1, -1, -1} true;
    call $exception := java.lang.String$$la$init$ra$$char$lp$$rp$($r1, $r2);
    assert {:sourceloc "StringBuilder.java", 19, -1, -1, -1} true;
    $return := $r1;
    goto block24;

  block24:
    return;
}



implementation java.lang.String$$la$init$ra$$char$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref)
{
  var $fakelocal_0: ref;
  var $i0: int;
  var $fakelocal_2: ref;
  var $fakelocal_1: ref;
  var $fakelocal_4: ref;
  var $c2: int;
  var i3: int;
  var $fakelocal_3: ref;
  var r0: ref;
  var r1: ref;
  var $r2: ref;
  var $r3: ref;
  var $i1: int;

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
    r1 := $in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "String.java", 8, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $exception := $fakelocal_0;
    return;

  anon16_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    $i0 := $arrSizeHeap[r1];
    assert {:sourceloc "String.java", 8, -1, -1, -1} true;
    call $fakelocal_1 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := $i0];
    $r2 := $fakelocal_1;
    assert {:sourceloc "String.java", 8, -1, -1, -1} true;
    $heap := $heap[r0, char$lp$$rp$$java.lang.String$chars348 := $r2];
    assert {:sourceloc "String.java", 9, -1, -1, -1} true;
    i3 := 0;
    goto block25;

  block25:
    call $exception, $fakelocal_2, $fakelocal_4, $c2, i3, $fakelocal_3, $r3, $i1 := java.lang.String$$la$init$ra$$char$lp$$rp$_loop_block25($exception, $fakelocal_2, $fakelocal_4, $c2, i3, $fakelocal_3, r0, r1, $r3, $i1);
    goto block25_last;

  anon17_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_2 := $new(java.lang.NullPointerException);
    $exception := $fakelocal_2;
    return;

  anon17_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i1 := $arrSizeHeap[r1];
    assert {:sourceloc "String.java", 9, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} $i1 > i3;
    assert {:sourceloc "String.java", 9, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "String.java", 10, -1, -1, -1} true;
    $r3 := $heap[r0, char$lp$$rp$$java.lang.String$chars348];
    assert {:sourceloc "String.java", 10, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(i3 < $arrSizeHeap[r1] && i3 >= 0);
    call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $exception := $fakelocal_3;
    return;

  anon19_Then:
    assume {:partition} i3 < $arrSizeHeap[r1] && i3 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    $c2 := $intArrHeap[r1][i3];
    assert {:sourceloc "String.java", 10, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !(i3 < $arrSizeHeap[$r3] && i3 >= 0);
    call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $exception := $fakelocal_4;
    return;

  anon20_Then:
    assume {:partition} i3 < $arrSizeHeap[$r3] && i3 >= 0;
    $exception := $exception;
    goto anon15;

  anon15:
    $intArrHeap := $intArrHeap[$r3 := $intArrHeap[$r3][i3 := $c2]];
    assert {:sourceloc "String.java", 9, -1, -1, -1} true;
    i3 := i3 + 1;
    assert {:sourceloc "String.java", 9, -1, -1, -1} true;
    goto anon15_dummy;

  anon18_Then:
    assume {:partition} i3 >= $i1;
    assert {:sourceloc "String.java", 9, -1, -1, -1} {:comment "thenblock"} true;
    goto block26;

  block26:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto block27;

  block27:
    return;

  anon15_dummy:
    assume false;
    return;

  block25_last:
    assert {:sourceloc "String.java", 9, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;
}



implementation java.lang.String$$la$init$ra$$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref)
{
  var $fakelocal_1: ref;
  var $r3: ref;
  var $i0: int;
  var $r2: ref;
  var $i1: int;
  var $c3: int;
  var i4: int;
  var $fakelocal_0: ref;
  var $fakelocal_2: ref;
  var $fakelocal_4: ref;
  var r1: ref;
  var r0: ref;
  var $b2: int;
  var $fakelocal_3: ref;

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
    r1 := $in_parameter__0;
    assert {:sourceloc "String.java", 14, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "String.java", 15, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $exception := $fakelocal_0;
    return;

  anon16_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    $i0 := $arrSizeHeap[r1];
    assert {:sourceloc "String.java", 15, -1, -1, -1} true;
    call $fakelocal_1 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := $i0];
    $r2 := $fakelocal_1;
    assert {:sourceloc "String.java", 15, -1, -1, -1} true;
    $heap := $heap[r0, char$lp$$rp$$java.lang.String$chars348 := $r2];
    assert {:sourceloc "String.java", 16, -1, -1, -1} true;
    i4 := 0;
    goto block28;

  block28:
    call $exception, $r3, $i1, $c3, i4, $fakelocal_2, $fakelocal_4, $b2, $fakelocal_3 := java.lang.String$$la$init$ra$$byte$lp$$rp$_loop_block28($exception, $r3, $i1, $c3, i4, $fakelocal_2, $fakelocal_4, r1, r0, $b2, $fakelocal_3);
    goto block28_last;

  anon17_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_2 := $new(java.lang.NullPointerException);
    $exception := $fakelocal_2;
    return;

  anon17_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i1 := $arrSizeHeap[r1];
    assert {:sourceloc "String.java", 16, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} $i1 > i4;
    assert {:sourceloc "String.java", 16, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "String.java", 17, -1, -1, -1} true;
    $r3 := $heap[r0, char$lp$$rp$$java.lang.String$chars348];
    assert {:sourceloc "String.java", 17, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(i4 < $arrSizeHeap[r1] && i4 >= 0);
    call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $exception := $fakelocal_3;
    return;

  anon19_Then:
    assume {:partition} i4 < $arrSizeHeap[r1] && i4 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    $b2 := $intArrHeap[r1][i4];
    assert {:sourceloc "String.java", 17, -1, -1, -1} true;
    $c3 := $b2;
    assert {:sourceloc "String.java", 17, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !(i4 < $arrSizeHeap[$r3] && i4 >= 0);
    call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $exception := $fakelocal_4;
    return;

  anon20_Then:
    assume {:partition} i4 < $arrSizeHeap[$r3] && i4 >= 0;
    $exception := $exception;
    goto anon15;

  anon15:
    $intArrHeap := $intArrHeap[$r3 := $intArrHeap[$r3][i4 := $c3]];
    assert {:sourceloc "String.java", 16, -1, -1, -1} true;
    i4 := i4 + 1;
    assert {:sourceloc "String.java", 16, -1, -1, -1} true;
    goto anon15_dummy;

  anon18_Then:
    assume {:partition} i4 >= $i1;
    assert {:sourceloc "String.java", 16, -1, -1, -1} {:comment "thenblock"} true;
    goto block29;

  block29:
    assert {:sourceloc "String.java", 19, -1, -1, -1} true;
    goto block30;

  block30:
    return;

  anon15_dummy:
    assume false;
    return;

  block28_last:
    assert {:sourceloc "String.java", 16, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;
}



implementation java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var $c1: int;
  var i0: int;
  var $fakelocal_0: ref;
  var $r1: ref;
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
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "String.java", 22, -1, -1, -1} true;
    $r1 := $heap[r0, char$lp$$rp$$java.lang.String$chars348];
    assert {:sourceloc "String.java", 22, -1, -1, -1} true;
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
    assert {:sourceloc "String.java", 22, -1, -1, -1} true;
    $return := $c1;
    goto block31;

  block31:
    return;
}



implementation java.lang.String$getBytes$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var $r2: ref;
  var r1: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "String.java", 26, -1, -1, -1} true;
    call $r2, $exception := java.lang.String$getBytes$(r0);
    assert {:sourceloc "String.java", 26, -1, -1, -1} true;
    $return := $r2;
    goto block32;

  block32:
    return;
}



implementation java.lang.String$getBytes$($this: ref) returns ($return: ref, $exception: ref)
{
  var $b4: int;
  var $i1: int;
  var i5: int;
  var r1: ref;
  var $i0: int;
  var $fakelocal_1: ref;
  var $r2: ref;
  var r0: ref;
  var $fakelocal_4: ref;
  var $fakelocal_0: ref;
  var $r4: ref;
  var $c3: int;
  var $r3: ref;
  var $fakelocal_2: ref;
  var $fakelocal_3: ref;
  var $c2: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "String.java", 30, -1, -1, -1} true;
    $r2 := $heap[r0, char$lp$$rp$$java.lang.String$chars348];
    assert {:sourceloc "String.java", 30, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} $r2 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon16_Then:
    assume {:partition} $r2 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    $i0 := $arrSizeHeap[$r2];
    assert {:sourceloc "String.java", 30, -1, -1, -1} true;
    call $fakelocal_1 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := $i0];
    r1 := $fakelocal_1;
    assert {:sourceloc "String.java", 31, -1, -1, -1} true;
    i5 := 0;
    goto block33;

  block33:
    call $return, $exception, $b4, $i1, i5, $fakelocal_4, $r4, $c3, $r3, $fakelocal_2, $fakelocal_3, $c2 := java.lang.String$getBytes$_loop_block33($return, $exception, $b4, $i1, i5, r1, r0, $fakelocal_4, $r4, $c3, $r3, $fakelocal_2, $fakelocal_3, $c2);
    goto block33_last;

  anon17_Else:
    assume {:partition} $r3 == $null;
    call $fakelocal_2 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon17_Then:
    assume {:partition} $r3 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i1 := $arrSizeHeap[$r3];
    assert {:sourceloc "String.java", 31, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} $i1 > i5;
    assert {:sourceloc "String.java", 31, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "String.java", 32, -1, -1, -1} true;
    $r4 := $heap[r0, char$lp$$rp$$java.lang.String$chars348];
    assert {:sourceloc "String.java", 32, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(i5 < $arrSizeHeap[$r4] && i5 >= 0);
    call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_3;
    return;

  anon19_Then:
    assume {:partition} i5 < $arrSizeHeap[$r4] && i5 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    $c2 := $intArrHeap[$r4][i5];
    assert {:sourceloc "String.java", 32, -1, -1, -1} true;
    $c3 := $bitAnd($c2, 255);
    assert {:sourceloc "String.java", 32, -1, -1, -1} true;
    $b4 := $c3;
    assert {:sourceloc "String.java", 32, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !(i5 < $arrSizeHeap[r1] && i5 >= 0);
    call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_4;
    return;

  anon20_Then:
    assume {:partition} i5 < $arrSizeHeap[r1] && i5 >= 0;
    $exception := $exception;
    goto anon15;

  anon15:
    $intArrHeap := $intArrHeap[r1 := $intArrHeap[r1][i5 := $b4]];
    assert {:sourceloc "String.java", 31, -1, -1, -1} true;
    i5 := i5 + 1;
    assert {:sourceloc "String.java", 31, -1, -1, -1} true;
    goto anon15_dummy;

  anon18_Then:
    assume {:partition} i5 >= $i1;
    assert {:sourceloc "String.java", 31, -1, -1, -1} {:comment "thenblock"} true;
    goto block34;

  block34:
    assert {:sourceloc "String.java", 34, -1, -1, -1} true;
    $return := r1;
    goto block35;

  block35:
    return;

  anon15_dummy:
    assume false;
    return;

  block33_last:
    assert {:sourceloc "String.java", 31, -1, -1, -1} true;
    $r3 := $heap[r0, char$lp$$rp$$java.lang.String$chars348];
    assert {:sourceloc "String.java", 31, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;
}



implementation java.lang.String$format$java.lang.String_java.lang.Object$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref)
{
  var r0: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$return, $type] <: java.lang.String;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "String.java", 39, -1, -1, -1} true;
    $return := r0;
    goto block36;

  block36:
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
    goto block37;

  block37:
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
    goto block38;

  block38:
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
    goto block39;

  block39:
    return;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation PasswordEncoderUtils$equals_unsafe$java.lang.String_java.lang.String_loop_block7(in_$return: int, 
    in_$exception: ref, 
    in_$b4: int, 
    in_$b2: int, 
    in_b7: int, 
    in_i8: int, 
    in_r2: ref, 
    in_$b3: int, 
    in_$fakelocal_2: ref, 
    in_r3: ref, 
    in_$fakelocal_3: ref, 
    in_i0: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$b4: int, 
    out_$b2: int, 
    out_b7: int, 
    out_i8: int, 
    out_$b3: int, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_3: ref)
{

  entry:
    out_$return, out_$exception, out_$b4, out_$b2, out_b7, out_i8, out_$b3, out_$fakelocal_2, out_$fakelocal_3 := in_$return, in_$exception, in_$b4, in_$b2, in_b7, in_i8, in_$b3, in_$fakelocal_2, in_$fakelocal_3;
    goto block7;

  block7:
    assert {:sourceloc "PasswordEncoderUtils.java", 44, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Then:
    assume {:partition} out_i8 >= in_i0;
    assert {:sourceloc "PasswordEncoderUtils.java", 44, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$b4, out_$b2, out_b7, out_i8, out_$b3, out_$fakelocal_2, out_$fakelocal_3 := in_$return, in_$exception, in_$b4, in_$b2, in_b7, in_i8, in_$b3, in_$fakelocal_2, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon24:
    out_$b2 := $intArrHeap[in_r3][out_i8];
    assert {:sourceloc "PasswordEncoderUtils.java", 45, -1, -1, -1} true;
    out_$b4 := $xorInt(out_$b3, out_$b2);
    assert {:sourceloc "PasswordEncoderUtils.java", 45, -1, -1, -1} true;
    out_b7 := $bitOr(out_b7, out_$b4);
    assert {:sourceloc "PasswordEncoderUtils.java", 44, -1, -1, -1} true;
    out_i8 := out_i8 + 1;
    assert {:sourceloc "PasswordEncoderUtils.java", 44, -1, -1, -1} true;
    goto anon24_dummy;

  anon35_Then:
    assume {:partition} out_i8 < $arrSizeHeap[in_r3] && out_i8 >= 0;
    out_$exception := out_$exception;
    goto anon24;

  anon21:
    out_$b3 := $intArrHeap[in_r2][out_i8];
    assert {:sourceloc "PasswordEncoderUtils.java", 45, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} !(out_i8 < $arrSizeHeap[in_r3] && out_i8 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$b4, out_$b2, out_b7, out_i8, out_$b3, out_$fakelocal_2, out_$fakelocal_3 := in_$return, in_$exception, in_$b4, in_$b2, in_b7, in_i8, in_$b3, in_$fakelocal_2, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon34_Then:
    assume {:partition} out_i8 < $arrSizeHeap[in_r2] && out_i8 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    assert {:sourceloc "PasswordEncoderUtils.java", 45, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} !(out_i8 < $arrSizeHeap[in_r2] && out_i8 >= 0);
    call out_$fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$b4, out_$b2, out_b7, out_i8, out_$b3, out_$fakelocal_2, out_$fakelocal_3 := in_$return, in_$exception, in_$b4, in_$b2, in_b7, in_i8, in_$b3, in_$fakelocal_2, in_$fakelocal_3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon33_Else:
    assume {:partition} in_i0 > out_i8;
    assert {:sourceloc "PasswordEncoderUtils.java", 44, -1, -1, -1} {:comment "elseblock"} true;
    goto anon18;

  anon24_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$b4, out_$b2, out_b7, out_i8, out_$b3, out_$fakelocal_2, out_$fakelocal_3 := PasswordEncoderUtils$equals_unsafe$java.lang.String_java.lang.String_loop_block7(out_$return, out_$exception, out_$b4, out_$b2, out_b7, out_i8, in_r2, out_$b3, out_$fakelocal_2, in_r3, out_$fakelocal_3, in_i0);
    return;

  exit:
    return;
}



procedure PasswordEncoderUtils$equals_unsafe$java.lang.String_java.lang.String_loop_block7(in_$return: int, 
    in_$exception: ref, 
    in_$b4: int, 
    in_$b2: int, 
    in_b7: int, 
    in_i8: int, 
    in_r2: ref, 
    in_$b3: int, 
    in_$fakelocal_2: ref, 
    in_r3: ref, 
    in_$fakelocal_3: ref, 
    in_i0: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$b4: int, 
    out_$b2: int, 
    out_b7: int, 
    out_i8: int, 
    out_$b3: int, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_3: ref);
  modifies $objIndex, $heap;



implementation java.lang.StringBuilder$append$java.lang.String_loop_block21(in_$return: ref, 
    in_$exception: ref, 
    in_$c5: int, 
    in_$i4: int, 
    in_$r8: ref, 
    in_$fakelocal_9: ref, 
    in_r2: ref, 
    in_$fakelocal_8: ref, 
    in_$fakelocal_10: ref, 
    in_$r7: ref, 
    in_i8: int, 
    in_r1: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$c5: int, 
    out_$i4: int, 
    out_$r8: ref, 
    out_$fakelocal_9: ref, 
    out_$fakelocal_8: ref, 
    out_$fakelocal_10: ref, 
    out_$r7: ref, 
    out_i8: int)
{

  entry:
    out_$return, out_$exception, out_$c5, out_$i4, out_$r8, out_$fakelocal_9, out_$fakelocal_8, out_$fakelocal_10, out_$r7, out_i8 := in_$return, in_$exception, in_$c5, in_$i4, in_$r8, in_$fakelocal_9, in_$fakelocal_8, in_$fakelocal_10, in_$r7, in_i8;
    goto block21;

  block21:
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    out_$r7 := $heap[in_r1, char$lp$$rp$$java.lang.String$chars348];
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    goto anon45_Then, anon45_Else;

  anon45_Else:
    assume {:partition} out_$r7 == $null;
    call out_$fakelocal_8 := $new(java.lang.NullPointerException);
    out_$return := $null;
    out_$exception := out_$fakelocal_8;
    out_$return, out_$exception, out_$c5, out_$i4, out_$r8, out_$fakelocal_9, out_$fakelocal_8, out_$fakelocal_10, out_$r7, out_i8 := in_$return, in_$exception, in_$c5, in_$i4, in_$r8, in_$fakelocal_9, in_$fakelocal_8, in_$fakelocal_10, in_$r7, in_i8;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon36:
    $intArrHeap := $intArrHeap[in_r2 := $intArrHeap[in_r2][out_i8 := out_$c5]];
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    out_i8 := out_i8 + 1;
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    goto anon36_dummy;

  anon48_Then:
    assume {:partition} out_i8 < $arrSizeHeap[in_r2] && out_i8 >= 0;
    out_$exception := out_$exception;
    goto anon36;

  anon33:
    out_$c5 := $intArrHeap[out_$r8][out_i8];
    assert {:sourceloc "StringBuilder.java", 12, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} !(out_i8 < $arrSizeHeap[in_r2] && out_i8 >= 0);
    call out_$fakelocal_10 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_10;
    out_$return, out_$exception, out_$c5, out_$i4, out_$r8, out_$fakelocal_9, out_$fakelocal_8, out_$fakelocal_10, out_$r7, out_i8 := in_$return, in_$exception, in_$c5, in_$i4, in_$r8, in_$fakelocal_9, in_$fakelocal_8, in_$fakelocal_10, in_$r7, in_i8;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon47_Then:
    assume {:partition} out_i8 < $arrSizeHeap[out_$r8] && out_i8 >= 0;
    out_$exception := out_$exception;
    goto anon33;

  anon30:
    assert {:sourceloc "StringBuilder.java", 12, -1, -1, -1} true;
    out_$r8 := $heap[in_r1, char$lp$$rp$$java.lang.String$chars348];
    assert {:sourceloc "StringBuilder.java", 12, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} !(out_i8 < $arrSizeHeap[out_$r8] && out_i8 >= 0);
    call out_$fakelocal_9 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_9;
    out_$return, out_$exception, out_$c5, out_$i4, out_$r8, out_$fakelocal_9, out_$fakelocal_8, out_$fakelocal_10, out_$r7, out_i8 := in_$return, in_$exception, in_$c5, in_$i4, in_$r8, in_$fakelocal_9, in_$fakelocal_8, in_$fakelocal_10, in_$r7, in_i8;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon46_Else:
    assume {:partition} out_$i4 > out_i8;
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} {:comment "elseblock"} true;
    goto anon30;

  anon27:
    out_$i4 := $arrSizeHeap[out_$r7];
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Then:
    assume {:partition} out_i8 >= out_$i4;
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$c5, out_$i4, out_$r8, out_$fakelocal_9, out_$fakelocal_8, out_$fakelocal_10, out_$r7, out_i8 := in_$return, in_$exception, in_$c5, in_$i4, in_$r8, in_$fakelocal_9, in_$fakelocal_8, in_$fakelocal_10, in_$r7, in_i8;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon45_Then:
    assume {:partition} out_$r7 != $null;
    out_$exception := out_$exception;
    goto anon27;

  anon36_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$c5, out_$i4, out_$r8, out_$fakelocal_9, out_$fakelocal_8, out_$fakelocal_10, out_$r7, out_i8 := java.lang.StringBuilder$append$java.lang.String_loop_block21(out_$return, out_$exception, out_$c5, out_$i4, out_$r8, out_$fakelocal_9, in_r2, out_$fakelocal_8, out_$fakelocal_10, out_$r7, out_i8, in_r1);
    return;

  exit:
    return;
}



procedure java.lang.StringBuilder$append$java.lang.String_loop_block21(in_$return: ref, 
    in_$exception: ref, 
    in_$c5: int, 
    in_$i4: int, 
    in_$r8: ref, 
    in_$fakelocal_9: ref, 
    in_r2: ref, 
    in_$fakelocal_8: ref, 
    in_$fakelocal_10: ref, 
    in_$r7: ref, 
    in_i8: int, 
    in_r1: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$c5: int, 
    out_$i4: int, 
    out_$r8: ref, 
    out_$fakelocal_9: ref, 
    out_$fakelocal_8: ref, 
    out_$fakelocal_10: ref, 
    out_$r7: ref, 
    out_i8: int);
  modifies $intArrHeap, $objIndex, $heap;



implementation java.lang.StringBuilder$append$java.lang.String_loop_block19(in_$return: ref, 
    in_$exception: ref, 
    in_$c6: int, 
    in_$fakelocal_4: ref, 
    in_r2: ref, 
    in_$fakelocal_5: ref, 
    in_r0: ref, 
    in_i7: int, 
    in_$fakelocal_6: ref, 
    in_$r5: ref, 
    in_$i3: int, 
    in_$r9: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$c6: int, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_5: ref, 
    out_i7: int, 
    out_$fakelocal_6: ref, 
    out_$r5: ref, 
    out_$i3: int, 
    out_$r9: ref)
{

  entry:
    out_$return, out_$exception, out_$c6, out_$fakelocal_4, out_$fakelocal_5, out_i7, out_$fakelocal_6, out_$r5, out_$i3, out_$r9 := in_$return, in_$exception, in_$c6, in_$fakelocal_4, in_$fakelocal_5, in_i7, in_$fakelocal_6, in_$r5, in_$i3, in_$r9;
    goto block19;

  block19:
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    out_$r5 := $heap[in_r0, char$lp$$rp$$java.lang.StringBuilder$chars347];
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Else:
    assume {:partition} out_$r5 == $null;
    call out_$fakelocal_4 := $new(java.lang.NullPointerException);
    out_$return := $null;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$c6, out_$fakelocal_4, out_$fakelocal_5, out_i7, out_$fakelocal_6, out_$r5, out_$i3, out_$r9 := in_$return, in_$exception, in_$c6, in_$fakelocal_4, in_$fakelocal_5, in_i7, in_$fakelocal_6, in_$r5, in_$i3, in_$r9;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon21:
    $intArrHeap := $intArrHeap[in_r2 := $intArrHeap[in_r2][out_i7 := out_$c6]];
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    out_i7 := out_i7 + 1;
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    goto anon21_dummy;

  anon43_Then:
    assume {:partition} out_i7 < $arrSizeHeap[in_r2] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    out_$c6 := $intArrHeap[out_$r9][out_i7];
    assert {:sourceloc "StringBuilder.java", 9, -1, -1, -1} true;
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} !(out_i7 < $arrSizeHeap[in_r2] && out_i7 >= 0);
    call out_$fakelocal_6 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_6;
    out_$return, out_$exception, out_$c6, out_$fakelocal_4, out_$fakelocal_5, out_i7, out_$fakelocal_6, out_$r5, out_$i3, out_$r9 := in_$return, in_$exception, in_$c6, in_$fakelocal_4, in_$fakelocal_5, in_i7, in_$fakelocal_6, in_$r5, in_$i3, in_$r9;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon42_Then:
    assume {:partition} out_i7 < $arrSizeHeap[out_$r9] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    assert {:sourceloc "StringBuilder.java", 9, -1, -1, -1} true;
    out_$r9 := $heap[in_r0, char$lp$$rp$$java.lang.StringBuilder$chars347];
    assert {:sourceloc "StringBuilder.java", 9, -1, -1, -1} true;
    goto anon42_Then, anon42_Else;

  anon42_Else:
    assume {:partition} !(out_i7 < $arrSizeHeap[out_$r9] && out_i7 >= 0);
    call out_$fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$c6, out_$fakelocal_4, out_$fakelocal_5, out_i7, out_$fakelocal_6, out_$r5, out_$i3, out_$r9 := in_$return, in_$exception, in_$c6, in_$fakelocal_4, in_$fakelocal_5, in_i7, in_$fakelocal_6, in_$r5, in_$i3, in_$r9;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon41_Else:
    assume {:partition} out_$i3 > out_i7;
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon12:
    out_$i3 := $arrSizeHeap[out_$r5];
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    goto anon41_Then, anon41_Else;

  anon41_Then:
    assume {:partition} out_i7 >= out_$i3;
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$c6, out_$fakelocal_4, out_$fakelocal_5, out_i7, out_$fakelocal_6, out_$r5, out_$i3, out_$r9 := in_$return, in_$exception, in_$c6, in_$fakelocal_4, in_$fakelocal_5, in_i7, in_$fakelocal_6, in_$r5, in_$i3, in_$r9;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon40_Then:
    assume {:partition} out_$r5 != $null;
    out_$exception := out_$exception;
    goto anon12;

  anon21_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$c6, out_$fakelocal_4, out_$fakelocal_5, out_i7, out_$fakelocal_6, out_$r5, out_$i3, out_$r9 := java.lang.StringBuilder$append$java.lang.String_loop_block19(out_$return, out_$exception, out_$c6, out_$fakelocal_4, in_r2, out_$fakelocal_5, in_r0, out_i7, out_$fakelocal_6, out_$r5, out_$i3, out_$r9);
    return;

  exit:
    return;
}



procedure java.lang.StringBuilder$append$java.lang.String_loop_block19(in_$return: ref, 
    in_$exception: ref, 
    in_$c6: int, 
    in_$fakelocal_4: ref, 
    in_r2: ref, 
    in_$fakelocal_5: ref, 
    in_r0: ref, 
    in_i7: int, 
    in_$fakelocal_6: ref, 
    in_$r5: ref, 
    in_$i3: int, 
    in_$r9: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$c6: int, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_5: ref, 
    out_i7: int, 
    out_$fakelocal_6: ref, 
    out_$r5: ref, 
    out_$i3: int, 
    out_$r9: ref);
  modifies $intArrHeap, $objIndex, $heap;



implementation java.lang.String$$la$init$ra$$char$lp$$rp$_loop_block25(in_$exception: ref, 
    in_$fakelocal_2: ref, 
    in_$fakelocal_4: ref, 
    in_$c2: int, 
    in_i3: int, 
    in_$fakelocal_3: ref, 
    in_r0: ref, 
    in_r1: ref, 
    in_$r3: ref, 
    in_$i1: int)
   returns (out_$exception: ref, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_4: ref, 
    out_$c2: int, 
    out_i3: int, 
    out_$fakelocal_3: ref, 
    out_$r3: ref, 
    out_$i1: int)
{

  entry:
    out_$exception, out_$fakelocal_2, out_$fakelocal_4, out_$c2, out_i3, out_$fakelocal_3, out_$r3, out_$i1 := in_$exception, in_$fakelocal_2, in_$fakelocal_4, in_$c2, in_i3, in_$fakelocal_3, in_$r3, in_$i1;
    goto block25;

  block25:
    assert {:sourceloc "String.java", 9, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} in_r1 == $null;
    call out_$fakelocal_2 := $new(java.lang.NullPointerException);
    out_$exception := out_$fakelocal_2;
    out_$exception, out_$fakelocal_2, out_$fakelocal_4, out_$c2, out_i3, out_$fakelocal_3, out_$r3, out_$i1 := in_$exception, in_$fakelocal_2, in_$fakelocal_4, in_$c2, in_i3, in_$fakelocal_3, in_$r3, in_$i1;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon15:
    $intArrHeap := $intArrHeap[out_$r3 := $intArrHeap[out_$r3][out_i3 := out_$c2]];
    assert {:sourceloc "String.java", 9, -1, -1, -1} true;
    out_i3 := out_i3 + 1;
    assert {:sourceloc "String.java", 9, -1, -1, -1} true;
    goto anon15_dummy;

  anon20_Then:
    assume {:partition} out_i3 < $arrSizeHeap[out_$r3] && out_i3 >= 0;
    out_$exception := out_$exception;
    goto anon15;

  anon12:
    out_$c2 := $intArrHeap[in_r1][out_i3];
    assert {:sourceloc "String.java", 10, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !(out_i3 < $arrSizeHeap[out_$r3] && out_i3 >= 0);
    call out_$fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$exception := out_$fakelocal_4;
    out_$exception, out_$fakelocal_2, out_$fakelocal_4, out_$c2, out_i3, out_$fakelocal_3, out_$r3, out_$i1 := in_$exception, in_$fakelocal_2, in_$fakelocal_4, in_$c2, in_i3, in_$fakelocal_3, in_$r3, in_$i1;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon19_Then:
    assume {:partition} out_i3 < $arrSizeHeap[in_r1] && out_i3 >= 0;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    assert {:sourceloc "String.java", 10, -1, -1, -1} true;
    out_$r3 := $heap[in_r0, char$lp$$rp$$java.lang.String$chars348];
    assert {:sourceloc "String.java", 10, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(out_i3 < $arrSizeHeap[in_r1] && out_i3 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$exception := out_$fakelocal_3;
    out_$exception, out_$fakelocal_2, out_$fakelocal_4, out_$c2, out_i3, out_$fakelocal_3, out_$r3, out_$i1 := in_$exception, in_$fakelocal_2, in_$fakelocal_4, in_$c2, in_i3, in_$fakelocal_3, in_$r3, in_$i1;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon18_Else:
    assume {:partition} out_$i1 > out_i3;
    assert {:sourceloc "String.java", 9, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon6:
    out_$i1 := $arrSizeHeap[in_r1];
    assert {:sourceloc "String.java", 9, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Then:
    assume {:partition} out_i3 >= out_$i1;
    assert {:sourceloc "String.java", 9, -1, -1, -1} {:comment "thenblock"} true;
    out_$exception, out_$fakelocal_2, out_$fakelocal_4, out_$c2, out_i3, out_$fakelocal_3, out_$r3, out_$i1 := in_$exception, in_$fakelocal_2, in_$fakelocal_4, in_$c2, in_i3, in_$fakelocal_3, in_$r3, in_$i1;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon17_Then:
    assume {:partition} in_r1 != $null;
    out_$exception := out_$exception;
    goto anon6;

  anon15_dummy:
    call {:si_unique_call 1} out_$exception, out_$fakelocal_2, out_$fakelocal_4, out_$c2, out_i3, out_$fakelocal_3, out_$r3, out_$i1 := java.lang.String$$la$init$ra$$char$lp$$rp$_loop_block25(out_$exception, out_$fakelocal_2, out_$fakelocal_4, out_$c2, out_i3, out_$fakelocal_3, in_r0, in_r1, out_$r3, out_$i1);
    return;

  exit:
    return;
}



procedure java.lang.String$$la$init$ra$$char$lp$$rp$_loop_block25(in_$exception: ref, 
    in_$fakelocal_2: ref, 
    in_$fakelocal_4: ref, 
    in_$c2: int, 
    in_i3: int, 
    in_$fakelocal_3: ref, 
    in_r0: ref, 
    in_r1: ref, 
    in_$r3: ref, 
    in_$i1: int)
   returns (out_$exception: ref, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_4: ref, 
    out_$c2: int, 
    out_i3: int, 
    out_$fakelocal_3: ref, 
    out_$r3: ref, 
    out_$i1: int);
  modifies $intArrHeap, $objIndex, $heap;



implementation java.lang.String$$la$init$ra$$byte$lp$$rp$_loop_block28(in_$exception: ref, 
    in_$r3: ref, 
    in_$i1: int, 
    in_$c3: int, 
    in_i4: int, 
    in_$fakelocal_2: ref, 
    in_$fakelocal_4: ref, 
    in_r1: ref, 
    in_r0: ref, 
    in_$b2: int, 
    in_$fakelocal_3: ref)
   returns (out_$exception: ref, 
    out_$r3: ref, 
    out_$i1: int, 
    out_$c3: int, 
    out_i4: int, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_4: ref, 
    out_$b2: int, 
    out_$fakelocal_3: ref)
{

  entry:
    out_$exception, out_$r3, out_$i1, out_$c3, out_i4, out_$fakelocal_2, out_$fakelocal_4, out_$b2, out_$fakelocal_3 := in_$exception, in_$r3, in_$i1, in_$c3, in_i4, in_$fakelocal_2, in_$fakelocal_4, in_$b2, in_$fakelocal_3;
    goto block28;

  block28:
    assert {:sourceloc "String.java", 16, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} in_r1 == $null;
    call out_$fakelocal_2 := $new(java.lang.NullPointerException);
    out_$exception := out_$fakelocal_2;
    out_$exception, out_$r3, out_$i1, out_$c3, out_i4, out_$fakelocal_2, out_$fakelocal_4, out_$b2, out_$fakelocal_3 := in_$exception, in_$r3, in_$i1, in_$c3, in_i4, in_$fakelocal_2, in_$fakelocal_4, in_$b2, in_$fakelocal_3;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon15:
    $intArrHeap := $intArrHeap[out_$r3 := $intArrHeap[out_$r3][out_i4 := out_$c3]];
    assert {:sourceloc "String.java", 16, -1, -1, -1} true;
    out_i4 := out_i4 + 1;
    assert {:sourceloc "String.java", 16, -1, -1, -1} true;
    goto anon15_dummy;

  anon20_Then:
    assume {:partition} out_i4 < $arrSizeHeap[out_$r3] && out_i4 >= 0;
    out_$exception := out_$exception;
    goto anon15;

  anon12:
    out_$b2 := $intArrHeap[in_r1][out_i4];
    assert {:sourceloc "String.java", 17, -1, -1, -1} true;
    out_$c3 := out_$b2;
    assert {:sourceloc "String.java", 17, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !(out_i4 < $arrSizeHeap[out_$r3] && out_i4 >= 0);
    call out_$fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$exception := out_$fakelocal_4;
    out_$exception, out_$r3, out_$i1, out_$c3, out_i4, out_$fakelocal_2, out_$fakelocal_4, out_$b2, out_$fakelocal_3 := in_$exception, in_$r3, in_$i1, in_$c3, in_i4, in_$fakelocal_2, in_$fakelocal_4, in_$b2, in_$fakelocal_3;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon19_Then:
    assume {:partition} out_i4 < $arrSizeHeap[in_r1] && out_i4 >= 0;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    assert {:sourceloc "String.java", 17, -1, -1, -1} true;
    out_$r3 := $heap[in_r0, char$lp$$rp$$java.lang.String$chars348];
    assert {:sourceloc "String.java", 17, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(out_i4 < $arrSizeHeap[in_r1] && out_i4 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$exception := out_$fakelocal_3;
    out_$exception, out_$r3, out_$i1, out_$c3, out_i4, out_$fakelocal_2, out_$fakelocal_4, out_$b2, out_$fakelocal_3 := in_$exception, in_$r3, in_$i1, in_$c3, in_i4, in_$fakelocal_2, in_$fakelocal_4, in_$b2, in_$fakelocal_3;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon18_Else:
    assume {:partition} out_$i1 > out_i4;
    assert {:sourceloc "String.java", 16, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon6:
    out_$i1 := $arrSizeHeap[in_r1];
    assert {:sourceloc "String.java", 16, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Then:
    assume {:partition} out_i4 >= out_$i1;
    assert {:sourceloc "String.java", 16, -1, -1, -1} {:comment "thenblock"} true;
    out_$exception, out_$r3, out_$i1, out_$c3, out_i4, out_$fakelocal_2, out_$fakelocal_4, out_$b2, out_$fakelocal_3 := in_$exception, in_$r3, in_$i1, in_$c3, in_i4, in_$fakelocal_2, in_$fakelocal_4, in_$b2, in_$fakelocal_3;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon17_Then:
    assume {:partition} in_r1 != $null;
    out_$exception := out_$exception;
    goto anon6;

  anon15_dummy:
    call {:si_unique_call 1} out_$exception, out_$r3, out_$i1, out_$c3, out_i4, out_$fakelocal_2, out_$fakelocal_4, out_$b2, out_$fakelocal_3 := java.lang.String$$la$init$ra$$byte$lp$$rp$_loop_block28(out_$exception, out_$r3, out_$i1, out_$c3, out_i4, out_$fakelocal_2, out_$fakelocal_4, in_r1, in_r0, out_$b2, out_$fakelocal_3);
    return;

  exit:
    return;
}



procedure java.lang.String$$la$init$ra$$byte$lp$$rp$_loop_block28(in_$exception: ref, 
    in_$r3: ref, 
    in_$i1: int, 
    in_$c3: int, 
    in_i4: int, 
    in_$fakelocal_2: ref, 
    in_$fakelocal_4: ref, 
    in_r1: ref, 
    in_r0: ref, 
    in_$b2: int, 
    in_$fakelocal_3: ref)
   returns (out_$exception: ref, 
    out_$r3: ref, 
    out_$i1: int, 
    out_$c3: int, 
    out_i4: int, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_4: ref, 
    out_$b2: int, 
    out_$fakelocal_3: ref);
  modifies $intArrHeap, $objIndex, $heap;



implementation java.lang.String$getBytes$_loop_block33(in_$return: ref, 
    in_$exception: ref, 
    in_$b4: int, 
    in_$i1: int, 
    in_i5: int, 
    in_r1: ref, 
    in_r0: ref, 
    in_$fakelocal_4: ref, 
    in_$r4: ref, 
    in_$c3: int, 
    in_$r3: ref, 
    in_$fakelocal_2: ref, 
    in_$fakelocal_3: ref, 
    in_$c2: int)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$b4: int, 
    out_$i1: int, 
    out_i5: int, 
    out_$fakelocal_4: ref, 
    out_$r4: ref, 
    out_$c3: int, 
    out_$r3: ref, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_3: ref, 
    out_$c2: int)
{

  entry:
    out_$return, out_$exception, out_$b4, out_$i1, out_i5, out_$fakelocal_4, out_$r4, out_$c3, out_$r3, out_$fakelocal_2, out_$fakelocal_3, out_$c2 := in_$return, in_$exception, in_$b4, in_$i1, in_i5, in_$fakelocal_4, in_$r4, in_$c3, in_$r3, in_$fakelocal_2, in_$fakelocal_3, in_$c2;
    goto block33;

  block33:
    assert {:sourceloc "String.java", 31, -1, -1, -1} true;
    out_$r3 := $heap[in_r0, char$lp$$rp$$java.lang.String$chars348];
    assert {:sourceloc "String.java", 31, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} out_$r3 == $null;
    call out_$fakelocal_2 := $new(java.lang.NullPointerException);
    out_$return := $null;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$b4, out_$i1, out_i5, out_$fakelocal_4, out_$r4, out_$c3, out_$r3, out_$fakelocal_2, out_$fakelocal_3, out_$c2 := in_$return, in_$exception, in_$b4, in_$i1, in_i5, in_$fakelocal_4, in_$r4, in_$c3, in_$r3, in_$fakelocal_2, in_$fakelocal_3, in_$c2;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon15:
    $intArrHeap := $intArrHeap[in_r1 := $intArrHeap[in_r1][out_i5 := out_$b4]];
    assert {:sourceloc "String.java", 31, -1, -1, -1} true;
    out_i5 := out_i5 + 1;
    assert {:sourceloc "String.java", 31, -1, -1, -1} true;
    goto anon15_dummy;

  anon20_Then:
    assume {:partition} out_i5 < $arrSizeHeap[in_r1] && out_i5 >= 0;
    out_$exception := out_$exception;
    goto anon15;

  anon12:
    out_$c2 := $intArrHeap[out_$r4][out_i5];
    assert {:sourceloc "String.java", 32, -1, -1, -1} true;
    out_$c3 := $bitAnd(out_$c2, 255);
    assert {:sourceloc "String.java", 32, -1, -1, -1} true;
    out_$b4 := out_$c3;
    assert {:sourceloc "String.java", 32, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !(out_i5 < $arrSizeHeap[in_r1] && out_i5 >= 0);
    call out_$fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$b4, out_$i1, out_i5, out_$fakelocal_4, out_$r4, out_$c3, out_$r3, out_$fakelocal_2, out_$fakelocal_3, out_$c2 := in_$return, in_$exception, in_$b4, in_$i1, in_i5, in_$fakelocal_4, in_$r4, in_$c3, in_$r3, in_$fakelocal_2, in_$fakelocal_3, in_$c2;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon19_Then:
    assume {:partition} out_i5 < $arrSizeHeap[out_$r4] && out_i5 >= 0;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    assert {:sourceloc "String.java", 32, -1, -1, -1} true;
    out_$r4 := $heap[in_r0, char$lp$$rp$$java.lang.String$chars348];
    assert {:sourceloc "String.java", 32, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(out_i5 < $arrSizeHeap[out_$r4] && out_i5 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$b4, out_$i1, out_i5, out_$fakelocal_4, out_$r4, out_$c3, out_$r3, out_$fakelocal_2, out_$fakelocal_3, out_$c2 := in_$return, in_$exception, in_$b4, in_$i1, in_i5, in_$fakelocal_4, in_$r4, in_$c3, in_$r3, in_$fakelocal_2, in_$fakelocal_3, in_$c2;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon18_Else:
    assume {:partition} out_$i1 > out_i5;
    assert {:sourceloc "String.java", 31, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon6:
    out_$i1 := $arrSizeHeap[out_$r3];
    assert {:sourceloc "String.java", 31, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Then:
    assume {:partition} out_i5 >= out_$i1;
    assert {:sourceloc "String.java", 31, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$b4, out_$i1, out_i5, out_$fakelocal_4, out_$r4, out_$c3, out_$r3, out_$fakelocal_2, out_$fakelocal_3, out_$c2 := in_$return, in_$exception, in_$b4, in_$i1, in_i5, in_$fakelocal_4, in_$r4, in_$c3, in_$r3, in_$fakelocal_2, in_$fakelocal_3, in_$c2;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon17_Then:
    assume {:partition} out_$r3 != $null;
    out_$exception := out_$exception;
    goto anon6;

  anon15_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$b4, out_$i1, out_i5, out_$fakelocal_4, out_$r4, out_$c3, out_$r3, out_$fakelocal_2, out_$fakelocal_3, out_$c2 := java.lang.String$getBytes$_loop_block33(out_$return, out_$exception, out_$b4, out_$i1, out_i5, in_r1, in_r0, out_$fakelocal_4, out_$r4, out_$c3, out_$r3, out_$fakelocal_2, out_$fakelocal_3, out_$c2);
    return;

  exit:
    return;
}



procedure java.lang.String$getBytes$_loop_block33(in_$return: ref, 
    in_$exception: ref, 
    in_$b4: int, 
    in_$i1: int, 
    in_i5: int, 
    in_r1: ref, 
    in_r0: ref, 
    in_$fakelocal_4: ref, 
    in_$r4: ref, 
    in_$c3: int, 
    in_$r3: ref, 
    in_$fakelocal_2: ref, 
    in_$fakelocal_3: ref, 
    in_$c2: int)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$b4: int, 
    out_$i1: int, 
    out_i5: int, 
    out_$fakelocal_4: ref, 
    out_$r4: ref, 
    out_$c3: int, 
    out_$r3: ref, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_3: ref, 
    out_$c2: int);
  modifies $intArrHeap, $objIndex, $heap;


