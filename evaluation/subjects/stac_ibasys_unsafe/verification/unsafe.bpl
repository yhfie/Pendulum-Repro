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

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.Object: javaType extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique ImageMatcherWorker: javaType extends unique java.lang.Object complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.io.Serializable: javaType extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.Comparable: javaType extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.CharSequence: javaType extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.String: javaType extends unique java.lang.Object, java.io.Serializable, java.lang.Comparable, java.lang.CharSequence complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.Appendable: javaType extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.AbstractStringBuilder: javaType extends unique java.lang.Object, java.lang.Appendable, java.lang.CharSequence complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.StringBuffer: javaType extends unique java.lang.AbstractStringBuilder, java.io.Serializable, java.lang.CharSequence complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique ScalrApplyTest: javaType extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.Throwable: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.Exception: javaType extends unique java.lang.Throwable complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.awt.Image: javaType extends unique java.lang.Object complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.awt.image.RenderedImage: javaType extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.awt.image.WritableRenderedImage: javaType extends java.awt.image.RenderedImage complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.awt.Transparency: javaType extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.awt.image.BufferedImage: javaType extends unique java.awt.Image, java.awt.image.WritableRenderedImage, java.awt.Transparency complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.RuntimeException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.ClassCastException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.NullPointerException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.nio.Buffer: javaType extends unique java.lang.Object complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.nio.ByteBuffer: javaType extends unique java.nio.Buffer, java.lang.Comparable complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.nio.IntBuffer: javaType extends unique java.nio.Buffer, java.lang.Comparable complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.AutoCloseable: javaType extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.io.Closeable: javaType extends java.lang.AutoCloseable complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.io.Flushable: javaType extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.io.OutputStream: javaType extends unique java.lang.Object, java.io.Closeable, java.io.Flushable complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.io.ByteArrayOutputStream: javaType extends unique java.io.OutputStream complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.io.IOException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.ArithmeticException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.IndexOutOfBoundsException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.ArrayIndexOutOfBoundsException: javaType extends unique java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.StringBuilder: javaType extends unique java.lang.AbstractStringBuilder, java.io.Serializable, java.lang.CharSequence complete;

const unique $StringConst0: ref extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.io.FilterOutputStream: javaType extends unique java.io.OutputStream complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.io.PrintStream: javaType extends unique java.io.FilterOutputStream, java.lang.Appendable, java.io.Closeable complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.Math: javaType extends unique java.lang.Object complete;

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

var java.lang.String$ImageMatcherWorker$errorcode263: Field ref;

var java.lang.StringBuffer$ImageMatcherWorker$error264: Field ref;

var boolean$ImageMatcherWorker$success0: Field int;

var java.io.PrintStream$java.lang.System$out271: ref;

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
  ensures !old($heap[$obj, $alloc]);
  ensures $obj == $intToRef(old($objIndex));
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];
  ensures $obj != $null;



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $other != $null;
  ensures $heap[$other, $alloc] <==> true;
  ensures $heap[$other, $type] == $heap[$this, $type];



procedure int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure ImageMatcherWorker$$la$init$ra$$($this: ref) returns ($exception: ref);
  modifies $objIndex, $heap, $stringSizeHeap;



procedure java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.StringBuffer$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;



procedure ScalrApplyTest$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure ScalrApplyTest$setup$byte$lp$$rp$($in_parameter__0: ref) returns ($exception: ref);



procedure ScalrApplyTest$testApply1$($this: ref) returns ($return: ref, $exception: ref);



procedure java.awt.image.BufferedImage$getWidth$($this: ref) returns ($return: int, $exception: ref);



procedure java.awt.image.BufferedImage$getHeight$($this: ref) returns ($return: int, $exception: ref);



procedure java.awt.image.BufferedImage$getRGB$int_int_int_int_int$lp$$rp$_int_int($this: ref, 
    $in_parameter__0: int, 
    $in_parameter__1: int, 
    $in_parameter__2: int, 
    $in_parameter__3: int, 
    $in_parameter__4: ref, 
    $in_parameter__5: int, 
    $in_parameter__6: int)
   returns ($return: ref, $exception: ref);



procedure java.nio.ByteBuffer$allocate$int($in_parameter__0: int) returns ($return: ref, $exception: ref);



procedure java.nio.ByteBuffer$asIntBuffer$($this: ref) returns ($return: ref, $exception: ref);
  modifies $heap;



procedure java.nio.IntBuffer$put$int$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure java.io.ByteArrayOutputStream$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.nio.ByteBuffer$array$($this: ref) returns ($return: ref, $exception: ref);



procedure java.io.OutputStream$write$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure java.io.OutputStream$flush$($this: ref) returns ($exception: ref);



procedure java.io.ByteArrayOutputStream$close$($this: ref) returns ($exception: ref);



procedure ScalrApplyTest$tearDown$() returns ($exception: ref);



procedure java.lang.StringBuilder$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.StringBuilder$append$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure java.lang.Throwable$getMessage$($this: ref) returns ($return: ref, $exception: ref);



procedure java.lang.StringBuilder$toString$($this: ref) returns ($return: ref, $exception: ref);



procedure java.io.PrintStream$println$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure java.lang.Math$abs$int($in_parameter__0: int) returns ($return: int, $exception: ref);



implementation ImageMatcherWorker$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var $fakelocal_0: ref;
  var $r1: ref;
  var $fakelocal_1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} $heap[$this, $type] <: ImageMatcherWorker;
    assume {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "ImageMatcherWorker.java", 6, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "ImageMatcherWorker.java", 12, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 0];
    $heap := $heap[r0, java.lang.String$ImageMatcherWorker$errorcode263 := $fakelocal_0];
    assert {:sourceloc "ImageMatcherWorker.java", 13, -1, -1, -1} true;
    call $fakelocal_1 := $new(java.lang.StringBuffer);
    $r1 := $fakelocal_1;
    assert {:sourceloc "ImageMatcherWorker.java", 13, -1, -1, -1} true;
    call $exception := java.lang.StringBuffer$$la$init$ra$$($r1);
    assert {:sourceloc "ImageMatcherWorker.java", 13, -1, -1, -1} true;
    $heap := $heap[r0, java.lang.StringBuffer$ImageMatcherWorker$error264 := $r1];
    assert {:sourceloc "ImageMatcherWorker.java", 14, -1, -1, -1} true;
    $heap := $heap[r0, boolean$ImageMatcherWorker$success0 := 0];
    assert {:sourceloc "ImageMatcherWorker.java", 14, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var z4: int;
  var $fakelocal_6: ref;
  var i19: int;
  var $r18: ref;
  var $b8: int;
  var $i10: int;
  var $fakelocal_1: ref;
  var i20: int;
  var r4: ref;
  var z2: int;
  var $fakelocal_14: ref;
  var $r13: ref;
  var $fakelocal_4: ref;
  var $b11: int;
  var $r16: ref;
  var i18: int;
  var $r14: ref;
  var $r10: ref;
  var $r15: ref;
  var r5: ref;
  var i0: int;
  var r2: ref;
  var $i1: int;
  var $fakelocal_13: ref;
  var i17: int;
  var $fakelocal_12: ref;
  var $fakelocal_8: ref;
  var r6: ref;
  var r0: ref;
  var $r8: ref;
  var $r12: ref;
  var $i9: int;
  var $r11: ref;
  var i21: int;
  var $b14: int;
  var r3: ref;
  var $i3: int;
  var $z3: int;
  var $i5: int;
  var $fakelocal_3: ref;
  var $fakelocal_5: ref;
  var $fakelocal_7: ref;
  var r20: ref;
  var $r17: ref;
  var $b7: int;
  var $i2: int;
  var $r7: ref;
  var $i12: int;
  var r19: ref;
  var z1: int;
  var $fakelocal_10: ref;
  var $fakelocal_0: ref;
  var $fakelocal_2: ref;
  var $i6: int;
  var i16: int;
  var r1: ref;
  var $z5: int;
  var $fakelocal_9: ref;
  var r21: ref;
  var i15: int;
  var r22: ref;
  var $i4: int;
  var $i13: int;
  var $fakelocal_11: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "ImageMatcherWorker.java", 17, -1, -1, -1} true;
    r19 := $null;
    assert {:sourceloc "ImageMatcherWorker.java", 19, -1, -1, -1} true;
    z1 := 0;
    goto block2;

  block2:
    assert {:sourceloc "ImageMatcherWorker.java", 22, -1, -1, -1} true;
    call $fakelocal_0 := $new(ScalrApplyTest);
    $r7 := $fakelocal_0;
    assert {:sourceloc "ImageMatcherWorker.java", 22, -1, -1, -1} true;
    call $exception := ScalrApplyTest$$la$init$ra$$($r7);
    goto anon142_Then, anon142_Else;

  anon142_Else:
    assume {:partition} $exception == $null;
    goto anon4;

  anon4:
    assert {:sourceloc "ImageMatcherWorker.java", 22, -1, -1, -1} true;
    r20 := $r7;
    assert {:sourceloc "ImageMatcherWorker.java", 23, -1, -1, -1} true;
    call $exception := ScalrApplyTest$setup$byte$lp$$rp$(r0);
    goto anon144_Then, anon144_Else;

  anon144_Else:
    assume {:partition} $exception == $null;
    goto anon8;

  anon8:
    assert {:sourceloc "ImageMatcherWorker.java", 24, -1, -1, -1} true;
    call r21, $exception := ScalrApplyTest$testApply1$(r20);
    goto anon146_Then, anon146_Else;

  anon146_Else:
    assume {:partition} $exception == $null;
    goto anon12;

  anon12:
    assert {:sourceloc "ImageMatcherWorker.java", 25, -1, -1, -1} true;
    goto anon148_Then, anon148_Else;

  anon148_Else:
    assume {:partition} r21 == $null;
    assert {:sourceloc "ImageMatcherWorker.java", 25, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.RuntimeException);
    goto block3;

  block3:
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r12 := $exception;
    assert {:sourceloc "ImageMatcherWorker.java", 48, -1, -1, -1} true;
    r22 := $r12;
    assert {:sourceloc "ImageMatcherWorker.java", 49, -1, -1, -1} true;
    $r14 := java.io.PrintStream$java.lang.System$out271;
    assert {:sourceloc "ImageMatcherWorker.java", 49, -1, -1, -1} true;
    call $fakelocal_4 := $new(java.lang.StringBuilder);
    $r13 := $fakelocal_4;
    assert {:sourceloc "ImageMatcherWorker.java", 49, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r13);
    assert {:sourceloc "ImageMatcherWorker.java", 49, -1, -1, -1} true;
    call $r15, $exception := java.lang.StringBuilder$append$java.lang.String($r13, $StringConst0);
    assert {:sourceloc "ImageMatcherWorker.java", 49, -1, -1, -1} true;
    call $r16, $exception := java.lang.Throwable$getMessage$(r22);
    assert {:sourceloc "ImageMatcherWorker.java", 49, -1, -1, -1} true;
    goto anon183_Then, anon183_Else;

  anon183_Else:
    assume {:partition} $r15 == $null;
    call $fakelocal_5 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon183_Then:
    assume {:partition} $r15 != $null;
    $exception := $exception;
    goto anon96;

  anon96:
    call $r17, $exception := java.lang.StringBuilder$append$java.lang.String($r15, $r16);
    assert {:sourceloc "ImageMatcherWorker.java", 49, -1, -1, -1} true;
    goto anon184_Then, anon184_Else;

  anon184_Else:
    assume {:partition} $r17 == $null;
    call $fakelocal_6 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon184_Then:
    assume {:partition} $r17 != $null;
    $exception := $exception;
    goto anon99;

  anon99:
    call $r18, $exception := java.lang.StringBuilder$toString$($r17);
    assert {:sourceloc "ImageMatcherWorker.java", 49, -1, -1, -1} true;
    goto anon185_Then, anon185_Else;

  anon185_Else:
    assume {:partition} $r14 == $null;
    call $fakelocal_7 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_7;
    return;

  anon185_Then:
    assume {:partition} $r14 != $null;
    $exception := $exception;
    goto anon102;

  anon102:
    call $exception := java.io.PrintStream$println$java.lang.String($r14, $r18);
    goto block7;

  block7:
    assert {:sourceloc "ImageMatcherWorker.java", 52, -1, -1, -1} true;
    goto anon186_Then, anon186_Else;

  anon186_Else:
    assume {:partition} z1 != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 52, -1, -1, -1} {:comment "elseblock"} true;
    goto anon105;

  anon105:
    assert {:sourceloc "ImageMatcherWorker.java", 53, -1, -1, -1} true;
    z2 := 1;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    i19 := 0;
    goto block9;

  block9:
    call $return, $exception, z4, i19, $b8, $i10, i20, $fakelocal_14, $b11, $fakelocal_13, $fakelocal_12, $fakelocal_8, $i9, i21, $z3, $i5, $b7, $fakelocal_10, $i6, $z5, $fakelocal_9, $fakelocal_11 := ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9($return, $exception, z4, i19, $b8, $i10, i20, $fakelocal_14, $b11, $fakelocal_13, $fakelocal_12, $fakelocal_8, $i9, i21, $z3, $i5, $b7, r19, $fakelocal_10, $i6, r1, $z5, $fakelocal_9, $fakelocal_11);
    goto block9_last;

  anon187_Else:
    assume {:partition} r19 == $null;
    call $fakelocal_8 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_8;
    return;

  anon187_Then:
    assume {:partition} r19 != $null;
    $exception := $exception;
    goto anon108;

  anon108:
    $i5 := $arrSizeHeap[r19];
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto anon188_Then, anon188_Else;

  anon188_Else:
    assume {:partition} $i5 > i19;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} {:comment "elseblock"} true;
    goto anon111;

  anon111:
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    goto anon189_Then, anon189_Else;

  anon189_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_9 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_9;
    return;

  anon189_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon114;

  anon114:
    $i6 := $arrSizeHeap[r1];
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    goto anon190_Then, anon190_Else;

  anon190_Else:
    assume {:partition} $i6 > i19;
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} {:comment "elseblock"} true;
    goto anon117;

  anon117:
    assert {:sourceloc "ImageMatcherWorker.java", 55, -1, -1, -1} true;
    goto anon191_Then, anon191_Else;

  anon191_Else:
    assume {:partition} !(i19 < $arrSizeHeap[r19] && i19 >= 0);
    call $fakelocal_10 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_10;
    return;

  anon191_Then:
    assume {:partition} i19 < $arrSizeHeap[r19] && i19 >= 0;
    $exception := $exception;
    goto anon120;

  anon120:
    $b7 := $intArrHeap[r19][i19];
    assert {:sourceloc "ImageMatcherWorker.java", 55, -1, -1, -1} true;
    call i20, $exception := java.lang.Math$abs$int($b7);
    assert {:sourceloc "ImageMatcherWorker.java", 56, -1, -1, -1} true;
    goto anon192_Then, anon192_Else;

  anon192_Else:
    assume {:partition} !(i19 < $arrSizeHeap[r1] && i19 >= 0);
    call $fakelocal_11 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_11;
    return;

  anon192_Then:
    assume {:partition} i19 < $arrSizeHeap[r1] && i19 >= 0;
    $exception := $exception;
    goto anon123;

  anon123:
    $b8 := $intArrHeap[r1][i19];
    assert {:sourceloc "ImageMatcherWorker.java", 56, -1, -1, -1} true;
    call i21, $exception := java.lang.Math$abs$int($b8);
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    goto anon193_Then, anon193_Else;

  anon193_Else:
    assume {:partition} 2 == 0;
    call $fakelocal_12 := $new(java.lang.ArithmeticException);
    $return := 0;
    $exception := $fakelocal_12;
    return;

  anon193_Then:
    assume {:partition} 2 != 0;
    $exception := $exception;
    goto anon126;

  anon126:
    $i10 := $modInt(i21, 2);
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    goto anon194_Then, anon194_Else;

  anon194_Else:
    assume {:partition} 2 == 0;
    call $fakelocal_13 := $new(java.lang.ArithmeticException);
    $return := 0;
    $exception := $fakelocal_13;
    return;

  anon194_Then:
    assume {:partition} 2 != 0;
    $exception := $exception;
    goto anon129;

  anon129:
    $i9 := $modInt(i20, 2);
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    goto anon195_Then, anon195_Else;

  anon195_Else:
    assume {:partition} $i10 == $i9;
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon132;

  anon132:
    assert {:sourceloc "ImageMatcherWorker.java", 60, -1, -1, -1} {:clone} true;
    $z3 := 1;
    assert {:sourceloc "ImageMatcherWorker.java", 60, -1, -1, -1} {:clone} true;
    goto block12;

  block12:
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    z4 := $z3;
    assert {:sourceloc "ImageMatcherWorker.java", 58, -1, -1, -1} true;
    goto anon196_Then, anon196_Else;

  anon196_Else:
    assume {:partition} z4 == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 58, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon135;

  anon135:
    assert {:sourceloc "ImageMatcherWorker.java", 59, -1, -1, -1} true;
    z2 := 0;
    assert {:sourceloc "ImageMatcherWorker.java", 60, -1, -1, -1} {:clone} true;
    goto block10;

  block10:
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto block16;

  block16:
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    $return := z2;
    goto block17;

  block17:
    return;

  anon196_Then:
    assume {:partition} z4 != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 58, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block13;

  block13:
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} true;
    goto anon197_Then, anon197_Else;

  anon197_Else:
    assume {:partition} z4 != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon138;

  anon138:
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    $z5 := 1;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto block15;

  block15:
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} true;
    $b11 := $z5;
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} true;
    goto anon198_Then, anon198_Else;

  anon198_Else:
    assume {:partition} !(i19 < $arrSizeHeap[r19] && i19 >= 0);
    call $fakelocal_14 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_14;
    return;

  anon198_Then:
    assume {:partition} i19 < $arrSizeHeap[r19] && i19 >= 0;
    $exception := $exception;
    goto anon141;

  anon141:
    $intArrHeap := $intArrHeap[r19 := $intArrHeap[r19][i19 := $b11]];
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    i19 := i19 + 4;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto anon141_dummy;

  anon197_Then:
    assume {:partition} z4 == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    $z5 := 0;
    goto block15;

  anon195_Then:
    assume {:partition} $i10 != $i9;
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block11;

  block11:
    assert {:sourceloc "ImageMatcherWorker.java", 60, -1, -1, -1} {:clone} true;
    $z3 := 0;
    goto block12;

  anon190_Then:
    assume {:partition} i19 >= $i6;
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  anon188_Then:
    assume {:partition} i19 >= $i5;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  anon186_Then:
    assume {:partition} z1 == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 52, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "ImageMatcherWorker.java", 68, -1, -1, -1} true;
    z2 := 0;
    goto block16;

  anon148_Then:
    assume {:partition} r21 != $null;
    assert {:sourceloc "ImageMatcherWorker.java", 25, -1, -1, -1} true;
    goto anon15;

  anon15:
    call i15, $exception := java.awt.image.BufferedImage$getWidth$(r21);
    goto anon149_Then, anon149_Else;

  anon149_Else:
    assume {:partition} $exception == $null;
    goto anon19;

  anon19:
    assert {:sourceloc "ImageMatcherWorker.java", 26, -1, -1, -1} true;
    call i16, $exception := java.awt.image.BufferedImage$getHeight$(r21);
    goto anon151_Then, anon151_Else;

  anon151_Else:
    assume {:partition} $exception == $null;
    goto anon23;

  anon23:
    assert {:sourceloc "ImageMatcherWorker.java", 27, -1, -1, -1} true;
    goto anon153_Then, anon153_Else;

  anon153_Else:
    assume {:partition} !($heap[$null, $type] <: $intArrayType);
    assert {:sourceloc "ImageMatcherWorker.java", 27, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.ClassCastException);
    goto block3;

  anon153_Then:
    assume {:partition} $heap[$null, $type] <: $intArrayType;
    assert {:sourceloc "ImageMatcherWorker.java", 27, -1, -1, -1} true;
    goto anon26;

  anon26:
    $r8 := $null;
    assert {:sourceloc "ImageMatcherWorker.java", 27, -1, -1, -1} true;
    call r2, $exception := java.awt.image.BufferedImage$getRGB$int_int_int_int_int$lp$$rp$_int_int(r21, 0, 0, i15, i16, $r8, 0, i15);
    goto anon154_Then, anon154_Else;

  anon154_Else:
    assume {:partition} $exception == $null;
    goto anon30;

  anon30:
    assert {:sourceloc "ImageMatcherWorker.java", 28, -1, -1, -1} true;
    goto anon156_Then, anon156_Else;

  anon156_Else:
    assume {:partition} r2 == $null;
    assert {:sourceloc "ImageMatcherWorker.java", 28, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.NullPointerException);
    goto block3;

  anon156_Then:
    assume {:partition} r2 != $null;
    assert {:sourceloc "ImageMatcherWorker.java", 28, -1, -1, -1} true;
    goto anon33;

  anon33:
    $i1 := $arrSizeHeap[r2];
    assert {:sourceloc "ImageMatcherWorker.java", 28, -1, -1, -1} true;
    $i2 := $mulInt($i1, 4);
    assert {:sourceloc "ImageMatcherWorker.java", 28, -1, -1, -1} true;
    call r3, $exception := java.nio.ByteBuffer$allocate$int($i2);
    goto anon157_Then, anon157_Else;

  anon157_Else:
    assume {:partition} $exception == $null;
    goto anon37;

  anon37:
    assert {:sourceloc "ImageMatcherWorker.java", 29, -1, -1, -1} true;
    goto anon159_Then, anon159_Else;

  anon159_Else:
    assume {:partition} r3 == $null;
    assert {:sourceloc "ImageMatcherWorker.java", 29, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.RuntimeException);
    goto block3;

  anon159_Then:
    assume {:partition} r3 != $null;
    assert {:sourceloc "ImageMatcherWorker.java", 29, -1, -1, -1} true;
    goto anon40;

  anon40:
    call r4, $exception := java.nio.ByteBuffer$asIntBuffer$(r3);
    goto anon160_Then, anon160_Else;

  anon160_Else:
    assume {:partition} $exception == $null;
    goto anon44;

  anon44:
    assert {:sourceloc "ImageMatcherWorker.java", 30, -1, -1, -1} true;
    goto anon162_Then, anon162_Else;

  anon162_Else:
    assume {:partition} r4 == $null;
    assert {:sourceloc "ImageMatcherWorker.java", 30, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.RuntimeException);
    goto block3;

  anon162_Then:
    assume {:partition} r4 != $null;
    assert {:sourceloc "ImageMatcherWorker.java", 30, -1, -1, -1} true;
    goto anon47;

  anon47:
    call $fakelocal_1, $exception := java.nio.IntBuffer$put$int$lp$$rp$(r4, r2);
    goto anon163_Then, anon163_Else;

  anon163_Else:
    assume {:partition} $exception == $null;
    goto anon51;

  anon51:
    assert {:sourceloc "ImageMatcherWorker.java", 31, -1, -1, -1} true;
    call $fakelocal_2 := $new(java.io.ByteArrayOutputStream);
    $r10 := $fakelocal_2;
    assert {:sourceloc "ImageMatcherWorker.java", 31, -1, -1, -1} true;
    call $exception := java.io.ByteArrayOutputStream$$la$init$ra$$($r10);
    goto anon165_Then, anon165_Else;

  anon165_Else:
    assume {:partition} $exception == $null;
    goto anon55;

  anon55:
    assert {:sourceloc "ImageMatcherWorker.java", 31, -1, -1, -1} true;
    r5 := $r10;
    assert {:sourceloc "ImageMatcherWorker.java", 32, -1, -1, -1} true;
    call $r11, $exception := java.nio.ByteBuffer$array$(r3);
    goto anon167_Then, anon167_Else;

  anon167_Else:
    assume {:partition} $exception == $null;
    goto anon59;

  anon59:
    assert {:sourceloc "ImageMatcherWorker.java", 32, -1, -1, -1} true;
    call $exception := java.io.OutputStream$write$byte$lp$$rp$(r5, $r11);
    goto anon169_Then, anon169_Else;

  anon169_Else:
    assume {:partition} $exception == $null;
    goto anon63;

  anon63:
    assert {:sourceloc "ImageMatcherWorker.java", 33, -1, -1, -1} true;
    call $exception := java.io.OutputStream$flush$(r5);
    goto anon171_Then, anon171_Else;

  anon171_Else:
    assume {:partition} $exception == $null;
    goto anon67;

  anon67:
    assert {:sourceloc "ImageMatcherWorker.java", 34, -1, -1, -1} true;
    call $exception := java.io.ByteArrayOutputStream$close$(r5);
    goto anon173_Then, anon173_Else;

  anon173_Else:
    assume {:partition} $exception == $null;
    goto anon71;

  anon71:
    assert {:sourceloc "ImageMatcherWorker.java", 36, -1, -1, -1} true;
    call $exception := ScalrApplyTest$tearDown$();
    goto anon175_Then, anon175_Else;

  anon175_Else:
    assume {:partition} $exception == $null;
    goto anon75;

  anon75:
    assert {:sourceloc "ImageMatcherWorker.java", 37, -1, -1, -1} true;
    call $fakelocal_3 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_3 := 128];
    r6 := $fakelocal_3;
    assert {:sourceloc "ImageMatcherWorker.java", 38, -1, -1, -1} true;
    goto anon177_Then, anon177_Else;

  anon177_Else:
    assume {:partition} r2 == $null;
    assert {:sourceloc "ImageMatcherWorker.java", 38, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.NullPointerException);
    goto block3;

  anon177_Then:
    assume {:partition} r2 != $null;
    assert {:sourceloc "ImageMatcherWorker.java", 38, -1, -1, -1} true;
    goto anon78;

  anon78:
    $i3 := $arrSizeHeap[r2];
    assert {:sourceloc "ImageMatcherWorker.java", 38, -1, -1, -1} true;
    goto anon178_Then, anon178_Else;

  anon178_Else:
    assume {:partition} 128 == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 38, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.ArithmeticException);
    goto block3;

  anon178_Then:
    assume {:partition} 128 != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 38, -1, -1, -1} true;
    goto anon81;

  anon81:
    i0 := $divInt($i3, 128);
    assert {:sourceloc "ImageMatcherWorker.java", 39, -1, -1, -1} true;
    i17 := 0;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    i18 := 0;
    goto block4;

  block4:
    call $return, $exception, i18, i17, $b14, $i12, $i4, $i13 := ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4($return, $exception, i18, i0, r2, i17, r6, $b14, $i12, $i4, $i13);
    goto block4_last;

  anon179_Else:
    assume {:partition} $i4 > i18;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} {:comment "elseblock"} true;
    goto anon84;

  anon84:
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon180_Then, anon180_Else;

  anon180_Else:
    assume {:partition} !(i18 < $arrSizeHeap[r2] && i18 >= 0);
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
    goto block3;

  anon180_Then:
    assume {:partition} i18 < $arrSizeHeap[r2] && i18 >= 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon87;

  anon87:
    $i12 := $intArrHeap[r2][i18];
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon181_Then, anon181_Else;

  anon181_Else:
    assume {:partition} 2 == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.ArithmeticException);
    goto block3;

  anon181_Then:
    assume {:partition} 2 != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon90;

  anon90:
    $i13 := $modInt($i12, 2);
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    $b14 := $i13;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon182_Then, anon182_Else;

  anon182_Else:
    assume {:partition} !(i17 < $arrSizeHeap[r6] && i17 >= 0);
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
    goto block3;

  anon182_Then:
    assume {:partition} i17 < $arrSizeHeap[r6] && i17 >= 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon93;

  anon93:
    $intArrHeap := $intArrHeap[r6 := $intArrHeap[r6][i17 := $b14]];
    assert {:sourceloc "ImageMatcherWorker.java", 43, -1, -1, -1} true;
    i17 := i17 + 1;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    i18 := i18 + i0;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    goto anon93_dummy;

  anon179_Then:
    assume {:partition} i18 >= $i4;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} {:comment "thenblock"} true;
    goto block5;

  block5:
    assert {:sourceloc "ImageMatcherWorker.java", 46, -1, -1, -1} true;
    r19 := r6;
    assert {:sourceloc "ImageMatcherWorker.java", 47, -1, -1, -1} true;
    z1 := 1;
    goto block6;

  block6:
    assert {:sourceloc "ImageMatcherWorker.java", 50, -1, -1, -1} true;
    goto block7;

  anon175_Then:
    assume {:partition} $exception != $null;
    goto anon176_Then, anon176_Else;

  anon176_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon75;

  anon176_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon173_Then:
    assume {:partition} $exception != $null;
    goto anon174_Then, anon174_Else;

  anon174_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon71;

  anon174_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := 0;
    goto block3;

  anon171_Then:
    assume {:partition} $exception != $null;
    goto anon172_Then, anon172_Else;

  anon172_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon67;

  anon172_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := 0;
    goto block3;

  anon169_Then:
    assume {:partition} $exception != $null;
    goto anon170_Then, anon170_Else;

  anon170_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon63;

  anon170_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := 0;
    goto block3;

  anon167_Then:
    assume {:partition} $exception != $null;
    goto anon168_Then, anon168_Else;

  anon168_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon59;

  anon168_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon165_Then:
    assume {:partition} $exception != $null;
    goto anon166_Then, anon166_Else;

  anon166_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon55;

  anon166_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    $r10 := $null;
    goto block3;

  anon163_Then:
    assume {:partition} $exception != $null;
    goto anon164_Then, anon164_Else;

  anon164_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon51;

  anon164_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon160_Then:
    assume {:partition} $exception != $null;
    goto anon161_Then, anon161_Else;

  anon161_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon44;

  anon161_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon157_Then:
    assume {:partition} $exception != $null;
    goto anon158_Then, anon158_Else;

  anon158_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon37;

  anon158_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon154_Then:
    assume {:partition} $exception != $null;
    goto anon155_Then, anon155_Else;

  anon155_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon30;

  anon155_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon151_Then:
    assume {:partition} $exception != $null;
    goto anon152_Then, anon152_Else;

  anon152_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon23;

  anon152_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon149_Then:
    assume {:partition} $exception != $null;
    goto anon150_Then, anon150_Else;

  anon150_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon19;

  anon150_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon146_Then:
    assume {:partition} $exception != $null;
    goto anon147_Then, anon147_Else;

  anon147_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon12;

  anon147_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon144_Then:
    assume {:partition} $exception != $null;
    goto anon145_Then, anon145_Else;

  anon145_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon8;

  anon145_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon142_Then:
    assume {:partition} $exception != $null;
    goto anon143_Then, anon143_Else;

  anon143_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon4;

  anon143_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    $r7 := $null;
    goto block3;

  anon141_dummy:
    assume false;
    return;

  block9_last:
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto anon187_Then, anon187_Else;

  anon93_dummy:
    assume false;
    return;

  block4_last:
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    $i4 := $mulInt(i0, 128);
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    goto anon179_Then, anon179_Else;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9(in_$return: int, 
    in_$exception: ref, 
    in_z4: int, 
    in_i19: int, 
    in_$b8: int, 
    in_$i10: int, 
    in_i20: int, 
    in_$fakelocal_14: ref, 
    in_$b11: int, 
    in_$fakelocal_13: ref, 
    in_$fakelocal_12: ref, 
    in_$fakelocal_8: ref, 
    in_$i9: int, 
    in_i21: int, 
    in_$z3: int, 
    in_$i5: int, 
    in_$b7: int, 
    in_r19: ref, 
    in_$fakelocal_10: ref, 
    in_$i6: int, 
    in_r1: ref, 
    in_$z5: int, 
    in_$fakelocal_9: ref, 
    in_$fakelocal_11: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_z4: int, 
    out_i19: int, 
    out_$b8: int, 
    out_$i10: int, 
    out_i20: int, 
    out_$fakelocal_14: ref, 
    out_$b11: int, 
    out_$fakelocal_13: ref, 
    out_$fakelocal_12: ref, 
    out_$fakelocal_8: ref, 
    out_$i9: int, 
    out_i21: int, 
    out_$z3: int, 
    out_$i5: int, 
    out_$b7: int, 
    out_$fakelocal_10: ref, 
    out_$i6: int, 
    out_$z5: int, 
    out_$fakelocal_9: ref, 
    out_$fakelocal_11: ref)
{

  entry:
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    goto block9;

  block9:
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto anon187_Then, anon187_Else;

  anon187_Else:
    assume {:partition} in_r19 == $null;
    call out_$fakelocal_8 := $new(java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_8;
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon141:
    $intArrHeap := $intArrHeap[in_r19 := $intArrHeap[in_r19][out_i19 := out_$b11]];
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    out_i19 := out_i19 + 4;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto anon141_dummy;

  anon198_Then:
    assume {:partition} out_i19 < $arrSizeHeap[in_r19] && out_i19 >= 0;
    out_$exception := out_$exception;
    goto anon141;

  block15:
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} true;
    out_$b11 := out_$z5;
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} true;
    goto anon198_Then, anon198_Else;

  anon198_Else:
    assume {:partition} !(out_i19 < $arrSizeHeap[in_r19] && out_i19 >= 0);
    call out_$fakelocal_14 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_14;
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon138:
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    out_$z5 := 1;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto block15;

  block14:
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    out_$z5 := 0;
    goto block15;

  anon197_Then:
    assume {:partition} out_z4 == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block14;

  block13:
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} true;
    goto anon197_Then, anon197_Else;

  anon196_Then:
    assume {:partition} out_z4 != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 58, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block13;

  block12:
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    out_z4 := out_$z3;
    assert {:sourceloc "ImageMatcherWorker.java", 58, -1, -1, -1} true;
    goto anon196_Then, anon196_Else;

  anon196_Else:
    assume {:partition} out_z4 == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 58, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon132:
    assert {:sourceloc "ImageMatcherWorker.java", 60, -1, -1, -1} {:clone} true;
    out_$z3 := 1;
    assert {:sourceloc "ImageMatcherWorker.java", 60, -1, -1, -1} {:clone} true;
    goto block12;

  block11:
    assert {:sourceloc "ImageMatcherWorker.java", 60, -1, -1, -1} {:clone} true;
    out_$z3 := 0;
    goto block12;

  anon195_Then:
    assume {:partition} out_$i10 != out_$i9;
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block11;

  anon129:
    out_$i9 := $modInt(out_i20, 2);
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    goto anon195_Then, anon195_Else;

  anon194_Then:
    assume {:partition} 2 != 0;
    out_$exception := out_$exception;
    goto anon129;

  anon126:
    out_$i10 := $modInt(out_i21, 2);
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    goto anon194_Then, anon194_Else;

  anon194_Else:
    assume {:partition} 2 == 0;
    call out_$fakelocal_13 := $new(java.lang.ArithmeticException);
    out_$return := 0;
    out_$exception := out_$fakelocal_13;
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon193_Then:
    assume {:partition} 2 != 0;
    out_$exception := out_$exception;
    goto anon126;

  anon123:
    out_$b8 := $intArrHeap[in_r1][out_i19];
    assert {:sourceloc "ImageMatcherWorker.java", 56, -1, -1, -1} true;
    call out_i21, out_$exception := java.lang.Math$abs$int(out_$b8);
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    goto anon193_Then, anon193_Else;

  anon193_Else:
    assume {:partition} 2 == 0;
    call out_$fakelocal_12 := $new(java.lang.ArithmeticException);
    out_$return := 0;
    out_$exception := out_$fakelocal_12;
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon192_Then:
    assume {:partition} out_i19 < $arrSizeHeap[in_r1] && out_i19 >= 0;
    out_$exception := out_$exception;
    goto anon123;

  anon120:
    out_$b7 := $intArrHeap[in_r19][out_i19];
    assert {:sourceloc "ImageMatcherWorker.java", 55, -1, -1, -1} true;
    call out_i20, out_$exception := java.lang.Math$abs$int(out_$b7);
    assert {:sourceloc "ImageMatcherWorker.java", 56, -1, -1, -1} true;
    goto anon192_Then, anon192_Else;

  anon192_Else:
    assume {:partition} !(out_i19 < $arrSizeHeap[in_r1] && out_i19 >= 0);
    call out_$fakelocal_11 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_11;
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon191_Then:
    assume {:partition} out_i19 < $arrSizeHeap[in_r19] && out_i19 >= 0;
    out_$exception := out_$exception;
    goto anon120;

  anon117:
    assert {:sourceloc "ImageMatcherWorker.java", 55, -1, -1, -1} true;
    goto anon191_Then, anon191_Else;

  anon191_Else:
    assume {:partition} !(out_i19 < $arrSizeHeap[in_r19] && out_i19 >= 0);
    call out_$fakelocal_10 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_10;
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon190_Else:
    assume {:partition} out_$i6 > out_i19;
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} {:comment "elseblock"} true;
    goto anon117;

  anon114:
    out_$i6 := $arrSizeHeap[in_r1];
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    goto anon190_Then, anon190_Else;

  anon190_Then:
    assume {:partition} out_i19 >= out_$i6;
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon189_Then:
    assume {:partition} in_r1 != $null;
    out_$exception := out_$exception;
    goto anon114;

  anon111:
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    goto anon189_Then, anon189_Else;

  anon189_Else:
    assume {:partition} in_r1 == $null;
    call out_$fakelocal_9 := $new(java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_9;
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon188_Else:
    assume {:partition} out_$i5 > out_i19;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} {:comment "elseblock"} true;
    goto anon111;

  anon108:
    out_$i5 := $arrSizeHeap[in_r19];
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto anon188_Then, anon188_Else;

  anon188_Then:
    assume {:partition} out_i19 >= out_$i5;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon187_Then:
    assume {:partition} in_r19 != $null;
    out_$exception := out_$exception;
    goto anon108;

  anon195_Else:
    assume {:partition} out_$i10 == out_$i9;
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon132;

  anon197_Else:
    assume {:partition} out_z4 != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon138;

  anon141_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9(out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, in_r19, out_$fakelocal_10, out_$i6, in_r1, out_$z5, out_$fakelocal_9, out_$fakelocal_11);
    return;

  exit:
    return;
}



procedure ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9(in_$return: int, 
    in_$exception: ref, 
    in_z4: int, 
    in_i19: int, 
    in_$b8: int, 
    in_$i10: int, 
    in_i20: int, 
    in_$fakelocal_14: ref, 
    in_$b11: int, 
    in_$fakelocal_13: ref, 
    in_$fakelocal_12: ref, 
    in_$fakelocal_8: ref, 
    in_$i9: int, 
    in_i21: int, 
    in_$z3: int, 
    in_$i5: int, 
    in_$b7: int, 
    in_r19: ref, 
    in_$fakelocal_10: ref, 
    in_$i6: int, 
    in_r1: ref, 
    in_$z5: int, 
    in_$fakelocal_9: ref, 
    in_$fakelocal_11: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_z4: int, 
    out_i19: int, 
    out_$b8: int, 
    out_$i10: int, 
    out_i20: int, 
    out_$fakelocal_14: ref, 
    out_$b11: int, 
    out_$fakelocal_13: ref, 
    out_$fakelocal_12: ref, 
    out_$fakelocal_8: ref, 
    out_$i9: int, 
    out_i21: int, 
    out_$z3: int, 
    out_$i5: int, 
    out_$b7: int, 
    out_$fakelocal_10: ref, 
    out_$i6: int, 
    out_$z5: int, 
    out_$fakelocal_9: ref, 
    out_$fakelocal_11: ref);
  modifies $intArrHeap, $objIndex, $heap;



implementation ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4(in_$return: int, 
    in_$exception: ref, 
    in_i18: int, 
    in_i0: int, 
    in_r2: ref, 
    in_i17: int, 
    in_r6: ref, 
    in_$b14: int, 
    in_$i12: int, 
    in_$i4: int, 
    in_$i13: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_i18: int, 
    out_i17: int, 
    out_$b14: int, 
    out_$i12: int, 
    out_$i4: int, 
    out_$i13: int)
{

  entry:
    out_$return, out_$exception, out_i18, out_i17, out_$b14, out_$i12, out_$i4, out_$i13 := in_$return, in_$exception, in_i18, in_i17, in_$b14, in_$i12, in_$i4, in_$i13;
    goto block4;

  block4:
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    out_$i4 := $mulInt(in_i0, 128);
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    goto anon179_Then, anon179_Else;

  anon179_Then:
    assume {:partition} out_i18 >= out_$i4;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_i18, out_i17, out_$b14, out_$i12, out_$i4, out_$i13 := in_$return, in_$exception, in_i18, in_i17, in_$b14, in_$i12, in_$i4, in_$i13;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon93:
    $intArrHeap := $intArrHeap[in_r6 := $intArrHeap[in_r6][out_i17 := out_$b14]];
    assert {:sourceloc "ImageMatcherWorker.java", 43, -1, -1, -1} true;
    out_i17 := out_i17 + 1;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    out_i18 := out_i18 + in_i0;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    goto anon93_dummy;

  anon182_Then:
    assume {:partition} out_i17 < $arrSizeHeap[in_r6] && out_i17 >= 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon93;

  anon90:
    out_$i13 := $modInt(out_$i12, 2);
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    out_$b14 := out_$i13;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon182_Then, anon182_Else;

  anon182_Else:
    assume {:partition} !(out_i17 < $arrSizeHeap[in_r6] && out_i17 >= 0);
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    assert {:noverify} true;
    out_$return := 0;
    call out_$exception := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return, out_$exception, out_i18, out_i17, out_$b14, out_$i12, out_$i4, out_$i13 := in_$return, in_$exception, in_i18, in_i17, in_$b14, in_$i12, in_$i4, in_$i13;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon181_Then:
    assume {:partition} 2 != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon90;

  anon87:
    out_$i12 := $intArrHeap[in_r2][out_i18];
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon181_Then, anon181_Else;

  anon181_Else:
    assume {:partition} 2 == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    assert {:noverify} true;
    out_$return := 0;
    call out_$exception := $new(java.lang.ArithmeticException);
    out_$return, out_$exception, out_i18, out_i17, out_$b14, out_$i12, out_$i4, out_$i13 := in_$return, in_$exception, in_i18, in_i17, in_$b14, in_$i12, in_$i4, in_$i13;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon180_Then:
    assume {:partition} out_i18 < $arrSizeHeap[in_r2] && out_i18 >= 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon87;

  anon84:
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon180_Then, anon180_Else;

  anon180_Else:
    assume {:partition} !(out_i18 < $arrSizeHeap[in_r2] && out_i18 >= 0);
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    assert {:noverify} true;
    out_$return := 0;
    call out_$exception := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return, out_$exception, out_i18, out_i17, out_$b14, out_$i12, out_$i4, out_$i13 := in_$return, in_$exception, in_i18, in_i17, in_$b14, in_$i12, in_$i4, in_$i13;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon179_Else:
    assume {:partition} out_$i4 > out_i18;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} {:comment "elseblock"} true;
    goto anon84;

  anon93_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_i18, out_i17, out_$b14, out_$i12, out_$i4, out_$i13 := ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4(out_$return, out_$exception, out_i18, in_i0, in_r2, out_i17, in_r6, out_$b14, out_$i12, out_$i4, out_$i13);
    return;

  exit:
    return;
}



procedure ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4(in_$return: int, 
    in_$exception: ref, 
    in_i18: int, 
    in_i0: int, 
    in_r2: ref, 
    in_i17: int, 
    in_r6: ref, 
    in_$b14: int, 
    in_$i12: int, 
    in_$i4: int, 
    in_$i13: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_i18: int, 
    out_i17: int, 
    out_$b14: int, 
    out_$i12: int, 
    out_$i4: int, 
    out_$i13: int);
  modifies $intArrHeap, $objIndex, $heap;


