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

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique sg.edu.nus.comp.tsunami.safe.Safe: javaType extends unique java.lang.Object complete;

const {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} unique java.lang.ClassCastException: javaType extends unique java.lang.RuntimeException complete;

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
  ensures $obj == $intToRef(old($objIndex));
  ensures $objIndex == old($objIndex) + 1;
  ensures !old($heap[$obj, $alloc]);
  ensures $obj != $null;



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



procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);



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
    assert {:sourceloc "PasswordEncoderUtils.java", 16, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "PasswordEncoderUtils.java", 16, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation PasswordEncoderUtils$equals_unsafe$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var z2: int;
  var $b5: int;
  var $l3: int;
  var $r11: ref;
  var $fakelocal_3: ref;
  var $r5: ref;
  var $r16: ref;
  var $r8: ref;
  var $fakelocal_5: ref;
  var $i8: int;
  var $b6: int;
  var $l2: int;
  var b9: int;
  var $i7: int;
  var r2: ref;
  var $r9: ref;
  var $fakelocal_4: ref;
  var $r7: ref;
  var i1: int;
  var z4: int;
  var $z1: int;
  var z3: int;
  var r3: ref;
  var $r4: ref;
  var $r6: ref;
  var $r17: ref;
  var z0: int;
  var r0: ref;
  var $r10: ref;
  var $r12: ref;
  var $fakelocal_8: ref;
  var $r14: ref;
  var z5: int;
  var i0: int;
  var $r15: ref;
  var $fakelocal_1: ref;
  var $b4: int;
  var $fakelocal_6: ref;
  var i10: int;
  var $fakelocal_9: ref;
  var $fakelocal_7: ref;
  var $r13: ref;
  var r1: ref;
  var $fakelocal_2: ref;
  var $fakelocal_0: ref;
  var $z6: int;

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
    assert {:sourceloc "PasswordEncoderUtils.java", 38, -1, -1, -1} true;
    z2 := 0;
    assert {:sourceloc "PasswordEncoderUtils.java", 39, -1, -1, -1} true;
    z3 := 0;
    assert {:sourceloc "PasswordEncoderUtils.java", 40, -1, -1, -1} true;
    call r2, $exception := PasswordEncoderUtils$bytesUtf8$java.lang.String(r0);
    assert {:sourceloc "PasswordEncoderUtils.java", 41, -1, -1, -1} true;
    call r3, $exception := PasswordEncoderUtils$bytesUtf8$java.lang.String(r1);
    assert {:sourceloc "PasswordEncoderUtils.java", 42, -1, -1, -1} true;
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} r2 == $null;
    assert {:sourceloc "PasswordEncoderUtils.java", 42, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "PasswordEncoderUtils.java", 53, -1, -1, -1} true;
    $i7 := -1;
    assert {:sourceloc "PasswordEncoderUtils.java", 53, -1, -1, -1} true;
    goto block3;

  block3:
    assert {:sourceloc "PasswordEncoderUtils.java", 42, -1, -1, -1} true;
    i0 := $i7;
    assert {:sourceloc "PasswordEncoderUtils.java", 43, -1, -1, -1} true;
    goto anon45_Then, anon45_Else;

  anon45_Else:
    assume {:partition} r3 == $null;
    assert {:sourceloc "PasswordEncoderUtils.java", 43, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "PasswordEncoderUtils.java", 53, -1, -1, -1} true;
    $i8 := -1;
    assert {:sourceloc "PasswordEncoderUtils.java", 53, -1, -1, -1} true;
    goto block5;

  block5:
    assert {:sourceloc "PasswordEncoderUtils.java", 43, -1, -1, -1} true;
    i1 := $i8;
    assert {:sourceloc "PasswordEncoderUtils.java", 45, -1, -1, -1} true;
    $l3 := i0;
    assert {:sourceloc "PasswordEncoderUtils.java", 45, -1, -1, -1} true;
    $l2 := i1;
    assert {:sourceloc "PasswordEncoderUtils.java", 45, -1, -1, -1} true;
    call z0, $exception := sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($l3, $l2);
    assert {:sourceloc "PasswordEncoderUtils.java", 47, -1, -1, -1} true;
    call $r4, $exception := java.lang.Boolean$valueOf$boolean(z2);
    assert {:sourceloc "PasswordEncoderUtils.java", 47, -1, -1, -1} true;
    call $r5, $exception := java.lang.Boolean$valueOf$boolean(0);
    assert {:sourceloc "PasswordEncoderUtils.java", 47, -1, -1, -1} true;
    call $r6, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z3, $r4, $r5);
    assert {:sourceloc "PasswordEncoderUtils.java", 47, -1, -1, -1} true;
    call $r7, $exception := java.lang.Boolean$valueOf$boolean(z2);
    assert {:sourceloc "PasswordEncoderUtils.java", 47, -1, -1, -1} true;
    call $r8, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r6, $r7);
    assert {:sourceloc "PasswordEncoderUtils.java", 47, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} !($heap[$r8, $type] <: java.lang.Boolean);
    call $fakelocal_2 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon47_Then:
    assume {:partition} $heap[$r8, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon15;

  anon15:
    $r9 := $r8;
    assert {:sourceloc "PasswordEncoderUtils.java", 47, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} $r9 == $null;
    call $fakelocal_3 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon48_Then:
    assume {:partition} $r9 != $null;
    $exception := $exception;
    goto anon18;

  anon18:
    call z4, $exception := java.lang.Boolean$booleanValue$($r9);
    assert {:sourceloc "PasswordEncoderUtils.java", 48, -1, -1, -1} true;
    call $r10, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "PasswordEncoderUtils.java", 48, -1, -1, -1} true;
    call $r11, $exception := java.lang.Boolean$valueOf$boolean(z3);
    assert {:sourceloc "PasswordEncoderUtils.java", 48, -1, -1, -1} true;
    call $r12, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r10, $r11);
    assert {:sourceloc "PasswordEncoderUtils.java", 48, -1, -1, -1} true;
    goto anon49_Then, anon49_Else;

  anon49_Else:
    assume {:partition} !($heap[$r12, $type] <: java.lang.Boolean);
    call $fakelocal_4 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon49_Then:
    assume {:partition} $heap[$r12, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon21;

  anon21:
    $r13 := $r12;
    assert {:sourceloc "PasswordEncoderUtils.java", 48, -1, -1, -1} true;
    goto anon50_Then, anon50_Else;

  anon50_Else:
    assume {:partition} $r13 == $null;
    call $fakelocal_5 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon50_Then:
    assume {:partition} $r13 != $null;
    $exception := $exception;
    goto anon24;

  anon24:
    call z5, $exception := java.lang.Boolean$booleanValue$($r13);
    assert {:sourceloc "PasswordEncoderUtils.java", 52, -1, -1, -1} true;
    b9 := 0;
    assert {:sourceloc "PasswordEncoderUtils.java", 53, -1, -1, -1} true;
    i10 := 0;
    goto block6;

  block6:
    call $return, $exception, $b5, $b6, b9, $b4, $fakelocal_6, i10, $fakelocal_7 := PasswordEncoderUtils$equals_unsafe$java.lang.String_java.lang.String_loop_block6($return, $exception, $b5, $b6, b9, r2, r3, i0, $b4, $fakelocal_6, i10, $fakelocal_7);
    goto block6_last;

  anon51_Else:
    assume {:partition} i0 > i10;
    assert {:sourceloc "PasswordEncoderUtils.java", 53, -1, -1, -1} {:comment "elseblock"} true;
    goto anon27;

  anon27:
    assert {:sourceloc "PasswordEncoderUtils.java", 54, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} !(i10 < $arrSizeHeap[r2] && i10 >= 0);
    call $fakelocal_6 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon52_Then:
    assume {:partition} i10 < $arrSizeHeap[r2] && i10 >= 0;
    $exception := $exception;
    goto anon30;

  anon30:
    $b5 := $intArrHeap[r2][i10];
    assert {:sourceloc "PasswordEncoderUtils.java", 54, -1, -1, -1} true;
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} !(i10 < $arrSizeHeap[r3] && i10 >= 0);
    call $fakelocal_7 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_7;
    return;

  anon53_Then:
    assume {:partition} i10 < $arrSizeHeap[r3] && i10 >= 0;
    $exception := $exception;
    goto anon33;

  anon33:
    $b4 := $intArrHeap[r3][i10];
    assert {:sourceloc "PasswordEncoderUtils.java", 54, -1, -1, -1} true;
    $b6 := $xorInt($b5, $b4);
    assert {:sourceloc "PasswordEncoderUtils.java", 54, -1, -1, -1} true;
    b9 := $bitOr(b9, $b6);
    assert {:sourceloc "PasswordEncoderUtils.java", 53, -1, -1, -1} true;
    i10 := i10 + 1;
    assert {:sourceloc "PasswordEncoderUtils.java", 53, -1, -1, -1} true;
    goto anon33_dummy;

  anon51_Then:
    assume {:partition} i10 >= i0;
    assert {:sourceloc "PasswordEncoderUtils.java", 53, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  block7:
    assert {:sourceloc "PasswordEncoderUtils.java", 56, -1, -1, -1} true;
    call $r14, $exception := java.lang.Boolean$valueOf$boolean(z4);
    assert {:sourceloc "PasswordEncoderUtils.java", 56, -1, -1, -1} true;
    goto anon54_Then, anon54_Else;

  anon54_Else:
    assume {:partition} b9 == 0;
    assert {:sourceloc "PasswordEncoderUtils.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto anon36;

  anon36:
    assert {:sourceloc "PasswordEncoderUtils.java", 56, -1, -1, -1} true;
    $z6 := 1;
    assert {:sourceloc "PasswordEncoderUtils.java", 56, -1, -1, -1} true;
    goto block9;

  block9:
    assert {:sourceloc "PasswordEncoderUtils.java", 56, -1, -1, -1} true;
    call $r15, $exception := java.lang.Boolean$valueOf$boolean($z6);
    assert {:sourceloc "PasswordEncoderUtils.java", 56, -1, -1, -1} true;
    call $r16, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z5, $r14, $r15);
    assert {:sourceloc "PasswordEncoderUtils.java", 56, -1, -1, -1} true;
    goto anon55_Then, anon55_Else;

  anon55_Else:
    assume {:partition} !($heap[$r16, $type] <: java.lang.Boolean);
    call $fakelocal_8 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_8;
    return;

  anon55_Then:
    assume {:partition} $heap[$r16, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon39;

  anon39:
    $r17 := $r16;
    assert {:sourceloc "PasswordEncoderUtils.java", 56, -1, -1, -1} true;
    goto anon56_Then, anon56_Else;

  anon56_Else:
    assume {:partition} $r17 == $null;
    call $fakelocal_9 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_9;
    return;

  anon56_Then:
    assume {:partition} $r17 != $null;
    $exception := $exception;
    goto anon42;

  anon42:
    call $z1, $exception := java.lang.Boolean$booleanValue$($r17);
    assert {:sourceloc "PasswordEncoderUtils.java", 56, -1, -1, -1} true;
    $return := $z1;
    goto block10;

  block10:
    return;

  anon54_Then:
    assume {:partition} b9 != 0;
    assert {:sourceloc "PasswordEncoderUtils.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "PasswordEncoderUtils.java", 56, -1, -1, -1} true;
    $z6 := 0;
    goto block9;

  anon45_Then:
    assume {:partition} r3 != $null;
    assert {:sourceloc "PasswordEncoderUtils.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block4;

  block4:
    assert {:sourceloc "PasswordEncoderUtils.java", 53, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} r3 == $null;
    call $fakelocal_1 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon46_Then:
    assume {:partition} r3 != $null;
    $exception := $exception;
    goto anon12;

  anon12:
    $i8 := $arrSizeHeap[r3];
    goto block5;

  anon43_Then:
    assume {:partition} r2 != $null;
    assert {:sourceloc "PasswordEncoderUtils.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block2;

  block2:
    assert {:sourceloc "PasswordEncoderUtils.java", 53, -1, -1, -1} true;
    goto anon44_Then, anon44_Else;

  anon44_Else:
    assume {:partition} r2 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon44_Then:
    assume {:partition} r2 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i7 := $arrSizeHeap[r2];
    goto block3;

  anon33_dummy:
    assume false;
    return;

  block6_last:
    assert {:sourceloc "PasswordEncoderUtils.java", 53, -1, -1, -1} true;
    goto anon51_Then, anon51_Else;
}



implementation PasswordEncoderUtils$bytesUtf8$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var r0: ref;
  var $r3: ref;
  var $r2: ref;
  var $r4: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "PasswordEncoderUtils.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    goto block11;

  block11:
    assert {:sourceloc "PasswordEncoderUtils.java", 61, -1, -1, -1} true;
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} r0 == $null;
    assert {:sourceloc "PasswordEncoderUtils.java", 61, -1, -1, -1} {:comment "elseblock"} true;
    goto block13;

  block13:
    assert {:sourceloc "PasswordEncoderUtils.java", 62, -1, -1, -1} true;
    $return := $null;
    goto block16;

  block16:
    return;

  anon9_Then:
    assume {:partition} r0 != $null;
    assert {:sourceloc "PasswordEncoderUtils.java", 61, -1, -1, -1} {:comment "thenblock"} true;
    goto block12;

  block12:
    assert {:sourceloc "PasswordEncoderUtils.java", 65, -1, -1, -1} true;
    call $r2, $exception := java.lang.String$getBytes$java.lang.String(r0, $StringConst0);
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} $exception == $null;
    goto block15;

  block15:
    assert {:sourceloc "PasswordEncoderUtils.java", 65, -1, -1, -1} true;
    $return := $r2;
    goto block16;

  anon10_Then:
    assume {:partition} $exception != $null;
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.UnsupportedEncodingException);
    assert {:clone} true;
    goto block15;

  anon11_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.UnsupportedEncodingException;
    $return := $null;
    goto block14;

  block14:
    assert {:sourceloc "PasswordEncoderUtils.java", 62, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r3 := $exception;
    assert {:sourceloc "PasswordEncoderUtils.java", 69, -1, -1, -1} true;
    $r4 := java.io.PrintStream$java.lang.System$out260;
    assert {:sourceloc "PasswordEncoderUtils.java", 69, -1, -1, -1} true;
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
    assert {:sourceloc "PasswordEncoderUtils.java", 70, -1, -1, -1} true;
    $return := $null;
    goto block16;
}



implementation java.lang.StringBuilder$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var $fakelocal_0: ref;
  var r0: ref;
  var $r1: ref;

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
    goto block17;

  block17:
    return;
}



implementation java.lang.StringBuilder$append$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var $fakelocal_7: ref;
  var i8: int;
  var $fakelocal_9: ref;
  var $i3: int;
  var $fakelocal_2: ref;
  var $fakelocal_0: ref;
  var $fakelocal_10: ref;
  var $i1: int;
  var $i2: int;
  var $r4: ref;
  var $c5: int;
  var $r9: ref;
  var $c6: int;
  var $r8: ref;
  var $r5: ref;
  var $r3: ref;
  var $r7: ref;
  var $fakelocal_5: ref;
  var $r6: ref;
  var i7: int;
  var r2: ref;
  var $fakelocal_1: ref;
  var $fakelocal_4: ref;
  var $i4: int;
  var $i0: int;
  var $fakelocal_6: ref;
  var r1: ref;
  var r0: ref;
  var $fakelocal_8: ref;
  var $fakelocal_3: ref;

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
    goto block18;

  block18:
    call $return, $exception, $i3, $r9, $c6, $r5, $fakelocal_5, i7, $fakelocal_4, $fakelocal_6 := java.lang.StringBuilder$append$java.lang.String_loop_block18($return, $exception, $i3, $r9, $c6, $r5, $fakelocal_5, i7, r2, $fakelocal_4, $fakelocal_6, r0);
    goto block18_last;

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
    goto block19;

  block19:
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
    goto block20;

  block20:
    call $return, $exception, i8, $fakelocal_9, $fakelocal_10, $c5, $r8, $r7, $i4, $fakelocal_8 := java.lang.StringBuilder$append$java.lang.String_loop_block20($return, $exception, i8, $fakelocal_9, $fakelocal_10, $c5, $r8, $r7, r2, $i4, r1, $fakelocal_8);
    goto block20_last;

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
    goto block21;

  block21:
    assert {:sourceloc "StringBuilder.java", 14, -1, -1, -1} true;
    $heap := $heap[r0, char$lp$$rp$$java.lang.StringBuilder$chars347 := r2];
    assert {:sourceloc "StringBuilder.java", 15, -1, -1, -1} true;
    $return := r0;
    goto block22;

  block22:
    return;

  anon36_dummy:
    assume false;
    return;

  block20_last:
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    $r7 := $heap[r1, char$lp$$rp$$java.lang.String$chars348];
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    goto anon45_Then, anon45_Else;

  anon21_dummy:
    assume false;
    return;

  block18_last:
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    $r5 := $heap[r0, char$lp$$rp$$java.lang.StringBuilder$chars347];
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;
}



implementation java.lang.StringBuilder$toString$($this: ref) returns ($return: ref, $exception: ref)
{
  var r0: ref;
  var $r1: ref;
  var $r2: ref;
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
    goto block23;

  block23:
    return;
}



implementation java.lang.String$$la$init$ra$$char$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref)
{
  var r1: ref;
  var $c2: int;
  var $fakelocal_1: ref;
  var $r3: ref;
  var $i1: int;
  var $fakelocal_0: ref;
  var r0: ref;
  var $fakelocal_4: ref;
  var $fakelocal_2: ref;
  var $fakelocal_3: ref;
  var i3: int;
  var $r2: ref;
  var $i0: int;

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
    goto block24;

  block24:
    call $exception, $c2, $r3, $i1, $fakelocal_4, $fakelocal_2, $fakelocal_3, i3 := java.lang.String$$la$init$ra$$char$lp$$rp$_loop_block24($exception, r1, $c2, $r3, $i1, r0, $fakelocal_4, $fakelocal_2, $fakelocal_3, i3);
    goto block24_last;

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
    goto block25;

  block25:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto block26;

  block26:
    return;

  anon15_dummy:
    assume false;
    return;

  block24_last:
    assert {:sourceloc "String.java", 9, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;
}



implementation java.lang.String$$la$init$ra$$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref)
{
  var r0: ref;
  var $fakelocal_0: ref;
  var i4: int;
  var $fakelocal_4: ref;
  var $c3: int;
  var $fakelocal_1: ref;
  var $i0: int;
  var r1: ref;
  var $b2: int;
  var $fakelocal_3: ref;
  var $r2: ref;
  var $r3: ref;
  var $i1: int;
  var $fakelocal_2: ref;

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
    goto block27;

  block27:
    call $exception, i4, $fakelocal_4, $c3, $b2, $fakelocal_3, $r3, $i1, $fakelocal_2 := java.lang.String$$la$init$ra$$byte$lp$$rp$_loop_block27($exception, r0, i4, $fakelocal_4, $c3, r1, $b2, $fakelocal_3, $r3, $i1, $fakelocal_2);
    goto block27_last;

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
    goto block28;

  block28:
    assert {:sourceloc "String.java", 19, -1, -1, -1} true;
    goto block29;

  block29:
    return;

  anon15_dummy:
    assume false;
    return;

  block27_last:
    assert {:sourceloc "String.java", 16, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;
}



implementation java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var $fakelocal_0: ref;
  var $r1: ref;
  var $c1: int;
  var i0: int;
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
    goto block30;

  block30:
    return;
}



implementation java.lang.String$getBytes$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r1: ref;
  var $r2: ref;
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
    goto block31;

  block31:
    return;
}



implementation java.lang.String$getBytes$($this: ref) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var r0: ref;
  var $c2: int;
  var $c3: int;
  var $fakelocal_4: ref;
  var $i1: int;
  var $fakelocal_3: ref;
  var $r2: ref;
  var r1: ref;
  var $i0: int;
  var $fakelocal_1: ref;
  var $r4: ref;
  var $r3: ref;
  var i5: int;
  var $fakelocal_2: ref;
  var $b4: int;

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
    goto block32;

  block32:
    call $return, $exception, $c2, $c3, $fakelocal_4, $i1, $fakelocal_3, $r4, $r3, i5, $fakelocal_2, $b4 := java.lang.String$getBytes$_loop_block32($return, $exception, r0, $c2, $c3, $fakelocal_4, $i1, $fakelocal_3, r1, $r4, $r3, i5, $fakelocal_2, $b4);
    goto block32_last;

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
    goto block33;

  block33:
    assert {:sourceloc "String.java", 34, -1, -1, -1} true;
    $return := r1;
    goto block34;

  block34:
    return;

  anon15_dummy:
    assume false;
    return;

  block32_last:
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
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    assume $heap[$return, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "String.java", 39, -1, -1, -1} true;
    $return := r0;
    goto block35;

  block35:
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
    goto block36;

  block36:
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
    goto block37;

  block37:
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
    goto block38;

  block38:
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
    goto block39;

  block39:
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
    goto block40;

  block40:
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 1;
    goto block41;

  block41:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    $return := z1;
    goto block42;

  block42:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block41;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block40;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
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
    assert {:sourceloc "Safe.java", 12, -1, -1, -1} true;
    $z2 := $bitAnd(z0, z1);
    assert {:sourceloc "Safe.java", 12, -1, -1, -1} true;
    $return := $z2;
    goto block43;

  block43:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z1: int;
  var $z2: int;
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
    assert {:sourceloc "Safe.java", 16, -1, -1, -1} true;
    $z2 := $bitOr(z0, z1);
    assert {:sourceloc "Safe.java", 16, -1, -1, -1} true;
    $return := $z2;
    goto block44;

  block44:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
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
    goto block45;

  block45:
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
    goto block46;

  block46:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    $return := z0;
    goto block47;

  block47:
    return;

  anon8_Then:
    assume {:partition} $b3 > 0;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block46;

  anon7_Then:
    assume {:partition} $b2 <= 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    goto block45;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l0: int;
  var l1: int;
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
    goto block48;

  block48:
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
    goto block49;

  block49:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    $return := z0;
    goto block50;

  block50:
    return;

  anon8_Then:
    assume {:partition} $b3 < 0;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block49;

  anon7_Then:
    assume {:partition} $b2 >= 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block48;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var l1: int;
  var l0: int;
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
    goto block51;

  block51:
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
    goto block52;

  block52:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    $return := z0;
    goto block53;

  block53:
    return;

  anon8_Then:
    assume {:partition} $b3 >= 0;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block52;

  anon7_Then:
    assume {:partition} $b2 < 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block51;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b3: int;
  var z0: int;
  var l1: int;
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
    goto block54;

  block54:
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
    goto block55;

  block55:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    $return := z0;
    goto block56;

  block56:
    return;

  anon8_Then:
    assume {:partition} $b3 <= 0;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block55;

  anon7_Then:
    assume {:partition} $b2 > 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block54;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l1: int;
  var $b3: int;
  var $b2: int;
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
    goto block57;

  block57:
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
    goto block58;

  block58:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    $return := z0;
    goto block59;

  block59:
    return;

  anon8_Then:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block58;

  anon7_Then:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto block57;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var l0: int;
  var $b2: int;
  var l1: int;
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
    goto block60;

  block60:
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
    goto block61;

  block61:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    $return := z0;
    goto block62;

  block62:
    return;

  anon8_Then:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto block61;

  anon7_Then:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block60;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b0: int;
  var d0: int;
  var z0: int;
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
    goto block63;

  block63:
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
    goto block64;

  block64:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    $return := z0;
    goto block65;

  block65:
    return;

  anon8_Then:
    assume {:partition} $b1 > 0;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "thenblock"} true;
    goto block64;

  anon7_Then:
    assume {:partition} $b0 <= 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "thenblock"} true;
    goto block63;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
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
    goto block66;

  block66:
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
    goto block67;

  block67:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    $return := z0;
    goto block68;

  block68:
    return;

  anon8_Then:
    assume {:partition} $b1 < 0;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block67;

  anon7_Then:
    assume {:partition} $b0 >= 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block66;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
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
    goto block69;

  block69:
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
    goto block70;

  block70:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    $return := z0;
    goto block71;

  block71:
    return;

  anon8_Then:
    assume {:partition} $b1 >= 0;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block70;

  anon7_Then:
    assume {:partition} $b0 < 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block69;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
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
    goto block72;

  block72:
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
    goto block73;

  block73:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    $return := z0;
    goto block74;

  block74:
    return;

  anon8_Then:
    assume {:partition} $b1 <= 0;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "thenblock"} true;
    goto block73;

  anon7_Then:
    assume {:partition} $b0 > 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block72;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b0: int;
  var d1: int;
  var z0: int;
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
    goto block75;

  block75:
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
    goto block76;

  block76:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    $return := z0;
    goto block77;

  block77:
    return;

  anon8_Then:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "thenblock"} true;
    goto block76;

  anon7_Then:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "thenblock"} true;
    goto block75;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b0: int;
  var $b1: int;
  var d1: int;
  var z0: int;
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
    goto block78;

  block78:
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
    goto block79;

  block79:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    $return := z0;
    goto block80;

  block80:
    return;

  anon8_Then:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "thenblock"} true;
    goto block79;

  anon7_Then:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "thenblock"} true;
    goto block78;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
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
    goto block81;

  block81:
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 0;
    goto block82;

  block82:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    $return := z0;
    goto block83;

  block83:
    return;

  anon8_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block82;

  anon7_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block81;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
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
    goto block84;

  block84:
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 0;
    goto block85;

  block85:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    $return := z0;
    goto block86;

  block86:
    return;

  anon8_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block85;

  anon7_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block84;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var r1: ref;
  var r2: ref;
  var z0: int;
  var r0: ref;

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
    goto block87;

  block87:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r1;
    goto block88;

  block88:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    $return := r2;
    goto block89;

  block89:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block88;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block87;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation PasswordEncoderUtils$equals_unsafe$java.lang.String_java.lang.String_loop_block6(in_$return: int, 
    in_$exception: ref, 
    in_$b5: int, 
    in_$b6: int, 
    in_b9: int, 
    in_r2: ref, 
    in_r3: ref, 
    in_i0: int, 
    in_$b4: int, 
    in_$fakelocal_6: ref, 
    in_i10: int, 
    in_$fakelocal_7: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$b5: int, 
    out_$b6: int, 
    out_b9: int, 
    out_$b4: int, 
    out_$fakelocal_6: ref, 
    out_i10: int, 
    out_$fakelocal_7: ref)
{

  entry:
    out_$return, out_$exception, out_$b5, out_$b6, out_b9, out_$b4, out_$fakelocal_6, out_i10, out_$fakelocal_7 := in_$return, in_$exception, in_$b5, in_$b6, in_b9, in_$b4, in_$fakelocal_6, in_i10, in_$fakelocal_7;
    goto block6;

  block6:
    assert {:sourceloc "PasswordEncoderUtils.java", 53, -1, -1, -1} true;
    goto anon51_Then, anon51_Else;

  anon51_Then:
    assume {:partition} out_i10 >= in_i0;
    assert {:sourceloc "PasswordEncoderUtils.java", 53, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$b5, out_$b6, out_b9, out_$b4, out_$fakelocal_6, out_i10, out_$fakelocal_7 := in_$return, in_$exception, in_$b5, in_$b6, in_b9, in_$b4, in_$fakelocal_6, in_i10, in_$fakelocal_7;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon33:
    out_$b4 := $intArrHeap[in_r3][out_i10];
    assert {:sourceloc "PasswordEncoderUtils.java", 54, -1, -1, -1} true;
    out_$b6 := $xorInt(out_$b5, out_$b4);
    assert {:sourceloc "PasswordEncoderUtils.java", 54, -1, -1, -1} true;
    out_b9 := $bitOr(out_b9, out_$b6);
    assert {:sourceloc "PasswordEncoderUtils.java", 53, -1, -1, -1} true;
    out_i10 := out_i10 + 1;
    assert {:sourceloc "PasswordEncoderUtils.java", 53, -1, -1, -1} true;
    goto anon33_dummy;

  anon53_Then:
    assume {:partition} out_i10 < $arrSizeHeap[in_r3] && out_i10 >= 0;
    out_$exception := out_$exception;
    goto anon33;

  anon30:
    out_$b5 := $intArrHeap[in_r2][out_i10];
    assert {:sourceloc "PasswordEncoderUtils.java", 54, -1, -1, -1} true;
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} !(out_i10 < $arrSizeHeap[in_r3] && out_i10 >= 0);
    call out_$fakelocal_7 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_7;
    out_$return, out_$exception, out_$b5, out_$b6, out_b9, out_$b4, out_$fakelocal_6, out_i10, out_$fakelocal_7 := in_$return, in_$exception, in_$b5, in_$b6, in_b9, in_$b4, in_$fakelocal_6, in_i10, in_$fakelocal_7;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon52_Then:
    assume {:partition} out_i10 < $arrSizeHeap[in_r2] && out_i10 >= 0;
    out_$exception := out_$exception;
    goto anon30;

  anon27:
    assert {:sourceloc "PasswordEncoderUtils.java", 54, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} !(out_i10 < $arrSizeHeap[in_r2] && out_i10 >= 0);
    call out_$fakelocal_6 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_6;
    out_$return, out_$exception, out_$b5, out_$b6, out_b9, out_$b4, out_$fakelocal_6, out_i10, out_$fakelocal_7 := in_$return, in_$exception, in_$b5, in_$b6, in_b9, in_$b4, in_$fakelocal_6, in_i10, in_$fakelocal_7;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon51_Else:
    assume {:partition} in_i0 > out_i10;
    assert {:sourceloc "PasswordEncoderUtils.java", 53, -1, -1, -1} {:comment "elseblock"} true;
    goto anon27;

  anon33_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$b5, out_$b6, out_b9, out_$b4, out_$fakelocal_6, out_i10, out_$fakelocal_7 := PasswordEncoderUtils$equals_unsafe$java.lang.String_java.lang.String_loop_block6(out_$return, out_$exception, out_$b5, out_$b6, out_b9, in_r2, in_r3, in_i0, out_$b4, out_$fakelocal_6, out_i10, out_$fakelocal_7);
    return;

  exit:
    return;
}



procedure PasswordEncoderUtils$equals_unsafe$java.lang.String_java.lang.String_loop_block6(in_$return: int, 
    in_$exception: ref, 
    in_$b5: int, 
    in_$b6: int, 
    in_b9: int, 
    in_r2: ref, 
    in_r3: ref, 
    in_i0: int, 
    in_$b4: int, 
    in_$fakelocal_6: ref, 
    in_i10: int, 
    in_$fakelocal_7: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$b5: int, 
    out_$b6: int, 
    out_b9: int, 
    out_$b4: int, 
    out_$fakelocal_6: ref, 
    out_i10: int, 
    out_$fakelocal_7: ref);
  modifies $objIndex, $heap;



implementation java.lang.StringBuilder$append$java.lang.String_loop_block20(in_$return: ref, 
    in_$exception: ref, 
    in_i8: int, 
    in_$fakelocal_9: ref, 
    in_$fakelocal_10: ref, 
    in_$c5: int, 
    in_$r8: ref, 
    in_$r7: ref, 
    in_r2: ref, 
    in_$i4: int, 
    in_r1: ref, 
    in_$fakelocal_8: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_i8: int, 
    out_$fakelocal_9: ref, 
    out_$fakelocal_10: ref, 
    out_$c5: int, 
    out_$r8: ref, 
    out_$r7: ref, 
    out_$i4: int, 
    out_$fakelocal_8: ref)
{

  entry:
    out_$return, out_$exception, out_i8, out_$fakelocal_9, out_$fakelocal_10, out_$c5, out_$r8, out_$r7, out_$i4, out_$fakelocal_8 := in_$return, in_$exception, in_i8, in_$fakelocal_9, in_$fakelocal_10, in_$c5, in_$r8, in_$r7, in_$i4, in_$fakelocal_8;
    goto block20;

  block20:
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    out_$r7 := $heap[in_r1, char$lp$$rp$$java.lang.String$chars348];
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    goto anon45_Then, anon45_Else;

  anon45_Else:
    assume {:partition} out_$r7 == $null;
    call out_$fakelocal_8 := $new(java.lang.NullPointerException);
    out_$return := $null;
    out_$exception := out_$fakelocal_8;
    out_$return, out_$exception, out_i8, out_$fakelocal_9, out_$fakelocal_10, out_$c5, out_$r8, out_$r7, out_$i4, out_$fakelocal_8 := in_$return, in_$exception, in_i8, in_$fakelocal_9, in_$fakelocal_10, in_$c5, in_$r8, in_$r7, in_$i4, in_$fakelocal_8;
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
    out_$return, out_$exception, out_i8, out_$fakelocal_9, out_$fakelocal_10, out_$c5, out_$r8, out_$r7, out_$i4, out_$fakelocal_8 := in_$return, in_$exception, in_i8, in_$fakelocal_9, in_$fakelocal_10, in_$c5, in_$r8, in_$r7, in_$i4, in_$fakelocal_8;
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
    out_$return, out_$exception, out_i8, out_$fakelocal_9, out_$fakelocal_10, out_$c5, out_$r8, out_$r7, out_$i4, out_$fakelocal_8 := in_$return, in_$exception, in_i8, in_$fakelocal_9, in_$fakelocal_10, in_$c5, in_$r8, in_$r7, in_$i4, in_$fakelocal_8;
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
    out_$return, out_$exception, out_i8, out_$fakelocal_9, out_$fakelocal_10, out_$c5, out_$r8, out_$r7, out_$i4, out_$fakelocal_8 := in_$return, in_$exception, in_i8, in_$fakelocal_9, in_$fakelocal_10, in_$c5, in_$r8, in_$r7, in_$i4, in_$fakelocal_8;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon45_Then:
    assume {:partition} out_$r7 != $null;
    out_$exception := out_$exception;
    goto anon27;

  anon36_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_i8, out_$fakelocal_9, out_$fakelocal_10, out_$c5, out_$r8, out_$r7, out_$i4, out_$fakelocal_8 := java.lang.StringBuilder$append$java.lang.String_loop_block20(out_$return, out_$exception, out_i8, out_$fakelocal_9, out_$fakelocal_10, out_$c5, out_$r8, out_$r7, in_r2, out_$i4, in_r1, out_$fakelocal_8);
    return;

  exit:
    return;
}



procedure java.lang.StringBuilder$append$java.lang.String_loop_block20(in_$return: ref, 
    in_$exception: ref, 
    in_i8: int, 
    in_$fakelocal_9: ref, 
    in_$fakelocal_10: ref, 
    in_$c5: int, 
    in_$r8: ref, 
    in_$r7: ref, 
    in_r2: ref, 
    in_$i4: int, 
    in_r1: ref, 
    in_$fakelocal_8: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_i8: int, 
    out_$fakelocal_9: ref, 
    out_$fakelocal_10: ref, 
    out_$c5: int, 
    out_$r8: ref, 
    out_$r7: ref, 
    out_$i4: int, 
    out_$fakelocal_8: ref);
  modifies $intArrHeap, $objIndex, $heap;



implementation java.lang.StringBuilder$append$java.lang.String_loop_block18(in_$return: ref, 
    in_$exception: ref, 
    in_$i3: int, 
    in_$r9: ref, 
    in_$c6: int, 
    in_$r5: ref, 
    in_$fakelocal_5: ref, 
    in_i7: int, 
    in_r2: ref, 
    in_$fakelocal_4: ref, 
    in_$fakelocal_6: ref, 
    in_r0: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$i3: int, 
    out_$r9: ref, 
    out_$c6: int, 
    out_$r5: ref, 
    out_$fakelocal_5: ref, 
    out_i7: int, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_6: ref)
{

  entry:
    out_$return, out_$exception, out_$i3, out_$r9, out_$c6, out_$r5, out_$fakelocal_5, out_i7, out_$fakelocal_4, out_$fakelocal_6 := in_$return, in_$exception, in_$i3, in_$r9, in_$c6, in_$r5, in_$fakelocal_5, in_i7, in_$fakelocal_4, in_$fakelocal_6;
    goto block18;

  block18:
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    out_$r5 := $heap[in_r0, char$lp$$rp$$java.lang.StringBuilder$chars347];
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Else:
    assume {:partition} out_$r5 == $null;
    call out_$fakelocal_4 := $new(java.lang.NullPointerException);
    out_$return := $null;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$i3, out_$r9, out_$c6, out_$r5, out_$fakelocal_5, out_i7, out_$fakelocal_4, out_$fakelocal_6 := in_$return, in_$exception, in_$i3, in_$r9, in_$c6, in_$r5, in_$fakelocal_5, in_i7, in_$fakelocal_4, in_$fakelocal_6;
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
    out_$return, out_$exception, out_$i3, out_$r9, out_$c6, out_$r5, out_$fakelocal_5, out_i7, out_$fakelocal_4, out_$fakelocal_6 := in_$return, in_$exception, in_$i3, in_$r9, in_$c6, in_$r5, in_$fakelocal_5, in_i7, in_$fakelocal_4, in_$fakelocal_6;
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
    out_$return, out_$exception, out_$i3, out_$r9, out_$c6, out_$r5, out_$fakelocal_5, out_i7, out_$fakelocal_4, out_$fakelocal_6 := in_$return, in_$exception, in_$i3, in_$r9, in_$c6, in_$r5, in_$fakelocal_5, in_i7, in_$fakelocal_4, in_$fakelocal_6;
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
    out_$return, out_$exception, out_$i3, out_$r9, out_$c6, out_$r5, out_$fakelocal_5, out_i7, out_$fakelocal_4, out_$fakelocal_6 := in_$return, in_$exception, in_$i3, in_$r9, in_$c6, in_$r5, in_$fakelocal_5, in_i7, in_$fakelocal_4, in_$fakelocal_6;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon40_Then:
    assume {:partition} out_$r5 != $null;
    out_$exception := out_$exception;
    goto anon12;

  anon21_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$i3, out_$r9, out_$c6, out_$r5, out_$fakelocal_5, out_i7, out_$fakelocal_4, out_$fakelocal_6 := java.lang.StringBuilder$append$java.lang.String_loop_block18(out_$return, out_$exception, out_$i3, out_$r9, out_$c6, out_$r5, out_$fakelocal_5, out_i7, in_r2, out_$fakelocal_4, out_$fakelocal_6, in_r0);
    return;

  exit:
    return;
}



procedure java.lang.StringBuilder$append$java.lang.String_loop_block18(in_$return: ref, 
    in_$exception: ref, 
    in_$i3: int, 
    in_$r9: ref, 
    in_$c6: int, 
    in_$r5: ref, 
    in_$fakelocal_5: ref, 
    in_i7: int, 
    in_r2: ref, 
    in_$fakelocal_4: ref, 
    in_$fakelocal_6: ref, 
    in_r0: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$i3: int, 
    out_$r9: ref, 
    out_$c6: int, 
    out_$r5: ref, 
    out_$fakelocal_5: ref, 
    out_i7: int, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_6: ref);
  modifies $intArrHeap, $objIndex, $heap;



implementation java.lang.String$$la$init$ra$$char$lp$$rp$_loop_block24(in_$exception: ref, 
    in_r1: ref, 
    in_$c2: int, 
    in_$r3: ref, 
    in_$i1: int, 
    in_r0: ref, 
    in_$fakelocal_4: ref, 
    in_$fakelocal_2: ref, 
    in_$fakelocal_3: ref, 
    in_i3: int)
   returns (out_$exception: ref, 
    out_$c2: int, 
    out_$r3: ref, 
    out_$i1: int, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_3: ref, 
    out_i3: int)
{

  entry:
    out_$exception, out_$c2, out_$r3, out_$i1, out_$fakelocal_4, out_$fakelocal_2, out_$fakelocal_3, out_i3 := in_$exception, in_$c2, in_$r3, in_$i1, in_$fakelocal_4, in_$fakelocal_2, in_$fakelocal_3, in_i3;
    goto block24;

  block24:
    assert {:sourceloc "String.java", 9, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} in_r1 == $null;
    call out_$fakelocal_2 := $new(java.lang.NullPointerException);
    out_$exception := out_$fakelocal_2;
    out_$exception, out_$c2, out_$r3, out_$i1, out_$fakelocal_4, out_$fakelocal_2, out_$fakelocal_3, out_i3 := in_$exception, in_$c2, in_$r3, in_$i1, in_$fakelocal_4, in_$fakelocal_2, in_$fakelocal_3, in_i3;
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
    out_$exception, out_$c2, out_$r3, out_$i1, out_$fakelocal_4, out_$fakelocal_2, out_$fakelocal_3, out_i3 := in_$exception, in_$c2, in_$r3, in_$i1, in_$fakelocal_4, in_$fakelocal_2, in_$fakelocal_3, in_i3;
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
    out_$exception, out_$c2, out_$r3, out_$i1, out_$fakelocal_4, out_$fakelocal_2, out_$fakelocal_3, out_i3 := in_$exception, in_$c2, in_$r3, in_$i1, in_$fakelocal_4, in_$fakelocal_2, in_$fakelocal_3, in_i3;
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
    out_$exception, out_$c2, out_$r3, out_$i1, out_$fakelocal_4, out_$fakelocal_2, out_$fakelocal_3, out_i3 := in_$exception, in_$c2, in_$r3, in_$i1, in_$fakelocal_4, in_$fakelocal_2, in_$fakelocal_3, in_i3;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon17_Then:
    assume {:partition} in_r1 != $null;
    out_$exception := out_$exception;
    goto anon6;

  anon15_dummy:
    call {:si_unique_call 1} out_$exception, out_$c2, out_$r3, out_$i1, out_$fakelocal_4, out_$fakelocal_2, out_$fakelocal_3, out_i3 := java.lang.String$$la$init$ra$$char$lp$$rp$_loop_block24(out_$exception, in_r1, out_$c2, out_$r3, out_$i1, in_r0, out_$fakelocal_4, out_$fakelocal_2, out_$fakelocal_3, out_i3);
    return;

  exit:
    return;
}



procedure java.lang.String$$la$init$ra$$char$lp$$rp$_loop_block24(in_$exception: ref, 
    in_r1: ref, 
    in_$c2: int, 
    in_$r3: ref, 
    in_$i1: int, 
    in_r0: ref, 
    in_$fakelocal_4: ref, 
    in_$fakelocal_2: ref, 
    in_$fakelocal_3: ref, 
    in_i3: int)
   returns (out_$exception: ref, 
    out_$c2: int, 
    out_$r3: ref, 
    out_$i1: int, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_3: ref, 
    out_i3: int);
  modifies $intArrHeap, $objIndex, $heap;



implementation java.lang.String$$la$init$ra$$byte$lp$$rp$_loop_block27(in_$exception: ref, 
    in_r0: ref, 
    in_i4: int, 
    in_$fakelocal_4: ref, 
    in_$c3: int, 
    in_r1: ref, 
    in_$b2: int, 
    in_$fakelocal_3: ref, 
    in_$r3: ref, 
    in_$i1: int, 
    in_$fakelocal_2: ref)
   returns (out_$exception: ref, 
    out_i4: int, 
    out_$fakelocal_4: ref, 
    out_$c3: int, 
    out_$b2: int, 
    out_$fakelocal_3: ref, 
    out_$r3: ref, 
    out_$i1: int, 
    out_$fakelocal_2: ref)
{

  entry:
    out_$exception, out_i4, out_$fakelocal_4, out_$c3, out_$b2, out_$fakelocal_3, out_$r3, out_$i1, out_$fakelocal_2 := in_$exception, in_i4, in_$fakelocal_4, in_$c3, in_$b2, in_$fakelocal_3, in_$r3, in_$i1, in_$fakelocal_2;
    goto block27;

  block27:
    assert {:sourceloc "String.java", 16, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} in_r1 == $null;
    call out_$fakelocal_2 := $new(java.lang.NullPointerException);
    out_$exception := out_$fakelocal_2;
    out_$exception, out_i4, out_$fakelocal_4, out_$c3, out_$b2, out_$fakelocal_3, out_$r3, out_$i1, out_$fakelocal_2 := in_$exception, in_i4, in_$fakelocal_4, in_$c3, in_$b2, in_$fakelocal_3, in_$r3, in_$i1, in_$fakelocal_2;
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
    out_$exception, out_i4, out_$fakelocal_4, out_$c3, out_$b2, out_$fakelocal_3, out_$r3, out_$i1, out_$fakelocal_2 := in_$exception, in_i4, in_$fakelocal_4, in_$c3, in_$b2, in_$fakelocal_3, in_$r3, in_$i1, in_$fakelocal_2;
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
    out_$exception, out_i4, out_$fakelocal_4, out_$c3, out_$b2, out_$fakelocal_3, out_$r3, out_$i1, out_$fakelocal_2 := in_$exception, in_i4, in_$fakelocal_4, in_$c3, in_$b2, in_$fakelocal_3, in_$r3, in_$i1, in_$fakelocal_2;
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
    out_$exception, out_i4, out_$fakelocal_4, out_$c3, out_$b2, out_$fakelocal_3, out_$r3, out_$i1, out_$fakelocal_2 := in_$exception, in_i4, in_$fakelocal_4, in_$c3, in_$b2, in_$fakelocal_3, in_$r3, in_$i1, in_$fakelocal_2;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon17_Then:
    assume {:partition} in_r1 != $null;
    out_$exception := out_$exception;
    goto anon6;

  anon15_dummy:
    call {:si_unique_call 1} out_$exception, out_i4, out_$fakelocal_4, out_$c3, out_$b2, out_$fakelocal_3, out_$r3, out_$i1, out_$fakelocal_2 := java.lang.String$$la$init$ra$$byte$lp$$rp$_loop_block27(out_$exception, in_r0, out_i4, out_$fakelocal_4, out_$c3, in_r1, out_$b2, out_$fakelocal_3, out_$r3, out_$i1, out_$fakelocal_2);
    return;

  exit:
    return;
}



procedure java.lang.String$$la$init$ra$$byte$lp$$rp$_loop_block27(in_$exception: ref, 
    in_r0: ref, 
    in_i4: int, 
    in_$fakelocal_4: ref, 
    in_$c3: int, 
    in_r1: ref, 
    in_$b2: int, 
    in_$fakelocal_3: ref, 
    in_$r3: ref, 
    in_$i1: int, 
    in_$fakelocal_2: ref)
   returns (out_$exception: ref, 
    out_i4: int, 
    out_$fakelocal_4: ref, 
    out_$c3: int, 
    out_$b2: int, 
    out_$fakelocal_3: ref, 
    out_$r3: ref, 
    out_$i1: int, 
    out_$fakelocal_2: ref);
  modifies $intArrHeap, $objIndex, $heap;



implementation java.lang.String$getBytes$_loop_block32(in_$return: ref, 
    in_$exception: ref, 
    in_r0: ref, 
    in_$c2: int, 
    in_$c3: int, 
    in_$fakelocal_4: ref, 
    in_$i1: int, 
    in_$fakelocal_3: ref, 
    in_r1: ref, 
    in_$r4: ref, 
    in_$r3: ref, 
    in_i5: int, 
    in_$fakelocal_2: ref, 
    in_$b4: int)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$c2: int, 
    out_$c3: int, 
    out_$fakelocal_4: ref, 
    out_$i1: int, 
    out_$fakelocal_3: ref, 
    out_$r4: ref, 
    out_$r3: ref, 
    out_i5: int, 
    out_$fakelocal_2: ref, 
    out_$b4: int)
{

  entry:
    out_$return, out_$exception, out_$c2, out_$c3, out_$fakelocal_4, out_$i1, out_$fakelocal_3, out_$r4, out_$r3, out_i5, out_$fakelocal_2, out_$b4 := in_$return, in_$exception, in_$c2, in_$c3, in_$fakelocal_4, in_$i1, in_$fakelocal_3, in_$r4, in_$r3, in_i5, in_$fakelocal_2, in_$b4;
    goto block32;

  block32:
    assert {:sourceloc "String.java", 31, -1, -1, -1} true;
    out_$r3 := $heap[in_r0, char$lp$$rp$$java.lang.String$chars348];
    assert {:sourceloc "String.java", 31, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} out_$r3 == $null;
    call out_$fakelocal_2 := $new(java.lang.NullPointerException);
    out_$return := $null;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$c2, out_$c3, out_$fakelocal_4, out_$i1, out_$fakelocal_3, out_$r4, out_$r3, out_i5, out_$fakelocal_2, out_$b4 := in_$return, in_$exception, in_$c2, in_$c3, in_$fakelocal_4, in_$i1, in_$fakelocal_3, in_$r4, in_$r3, in_i5, in_$fakelocal_2, in_$b4;
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
    out_$return, out_$exception, out_$c2, out_$c3, out_$fakelocal_4, out_$i1, out_$fakelocal_3, out_$r4, out_$r3, out_i5, out_$fakelocal_2, out_$b4 := in_$return, in_$exception, in_$c2, in_$c3, in_$fakelocal_4, in_$i1, in_$fakelocal_3, in_$r4, in_$r3, in_i5, in_$fakelocal_2, in_$b4;
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
    out_$return, out_$exception, out_$c2, out_$c3, out_$fakelocal_4, out_$i1, out_$fakelocal_3, out_$r4, out_$r3, out_i5, out_$fakelocal_2, out_$b4 := in_$return, in_$exception, in_$c2, in_$c3, in_$fakelocal_4, in_$i1, in_$fakelocal_3, in_$r4, in_$r3, in_i5, in_$fakelocal_2, in_$b4;
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
    out_$return, out_$exception, out_$c2, out_$c3, out_$fakelocal_4, out_$i1, out_$fakelocal_3, out_$r4, out_$r3, out_i5, out_$fakelocal_2, out_$b4 := in_$return, in_$exception, in_$c2, in_$c3, in_$fakelocal_4, in_$i1, in_$fakelocal_3, in_$r4, in_$r3, in_i5, in_$fakelocal_2, in_$b4;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon17_Then:
    assume {:partition} out_$r3 != $null;
    out_$exception := out_$exception;
    goto anon6;

  anon15_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$c2, out_$c3, out_$fakelocal_4, out_$i1, out_$fakelocal_3, out_$r4, out_$r3, out_i5, out_$fakelocal_2, out_$b4 := java.lang.String$getBytes$_loop_block32(out_$return, out_$exception, in_r0, out_$c2, out_$c3, out_$fakelocal_4, out_$i1, out_$fakelocal_3, in_r1, out_$r4, out_$r3, out_i5, out_$fakelocal_2, out_$b4);
    return;

  exit:
    return;
}



procedure java.lang.String$getBytes$_loop_block32(in_$return: ref, 
    in_$exception: ref, 
    in_r0: ref, 
    in_$c2: int, 
    in_$c3: int, 
    in_$fakelocal_4: ref, 
    in_$i1: int, 
    in_$fakelocal_3: ref, 
    in_r1: ref, 
    in_$r4: ref, 
    in_$r3: ref, 
    in_i5: int, 
    in_$fakelocal_2: ref, 
    in_$b4: int)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$c2: int, 
    out_$c3: int, 
    out_$fakelocal_4: ref, 
    out_$i1: int, 
    out_$fakelocal_3: ref, 
    out_$r4: ref, 
    out_$r3: ref, 
    out_i5: int, 
    out_$fakelocal_2: ref, 
    out_$b4: int);
  modifies $intArrHeap, $objIndex, $heap;


