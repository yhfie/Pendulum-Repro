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

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique sg.edu.nus.comp.tsunami.safe.Safe: javaType extends unique java.lang.Object complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.Boolean: javaType extends unique java.lang.Object, java.io.Serializable, java.lang.Comparable complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.Number: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique java.lang.Byte: javaType extends unique java.lang.Number, java.lang.Comparable complete;

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
  ensures !old($heap[$obj, $alloc]);
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];
  ensures $objIndex == old($objIndex) + 1;
  ensures $obj == $intToRef(old($objIndex));
  ensures $obj != $null;



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $heap[$other, $alloc] <==> true;
  ensures $heap[$other, $type] == $heap[$this, $type];
  ensures $other != $null;



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



procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0: int) returns ($return: int, $exception: ref);



procedure java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);



procedure java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



procedure java.lang.Byte$valueOf$byte($in_parameter__0: int) returns ($return: ref, $exception: ref);



procedure java.lang.Byte$byteValue$($this: ref) returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this: ref) returns ($exception: ref);



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



implementation ImageMatcherWorker$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var $fakelocal_0: ref;
  var r0: ref;
  var $fakelocal_1: ref;
  var $r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} $heap[$this, $type] <: ImageMatcherWorker;
    assume {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "ImageMatcherWorker.java", 8, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "ImageMatcherWorker.java", 14, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 0];
    $heap := $heap[r0, java.lang.String$ImageMatcherWorker$errorcode263 := $fakelocal_0];
    assert {:sourceloc "ImageMatcherWorker.java", 15, -1, -1, -1} true;
    call $fakelocal_1 := $new(java.lang.StringBuffer);
    $r1 := $fakelocal_1;
    assert {:sourceloc "ImageMatcherWorker.java", 15, -1, -1, -1} true;
    call $exception := java.lang.StringBuffer$$la$init$ra$$($r1);
    assert {:sourceloc "ImageMatcherWorker.java", 15, -1, -1, -1} true;
    $heap := $heap[r0, java.lang.StringBuffer$ImageMatcherWorker$error264 := $r1];
    assert {:sourceloc "ImageMatcherWorker.java", 16, -1, -1, -1} true;
    $heap := $heap[r0, boolean$ImageMatcherWorker$success0 := 0];
    assert {:sourceloc "ImageMatcherWorker.java", 16, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $fakelocal_12: ref;
  var $r14: ref;
  var $r29: ref;
  var $fakelocal_18: ref;
  var $i1: int;
  var r32: ref;
  var $r25: ref;
  var r0: ref;
  var $fakelocal_14: ref;
  var $r9: ref;
  var $b18: int;
  var $fakelocal_3: ref;
  var $fakelocal_11: ref;
  var $fakelocal_2: ref;
  var $fakelocal_13: ref;
  var $r30: ref;
  var $r11: ref;
  var $r28: ref;
  var $fakelocal_15: ref;
  var $fakelocal_10: ref;
  var $r21: ref;
  var $b8: int;
  var $z6: int;
  var $r15: ref;
  var $fakelocal_9: ref;
  var $r24: ref;
  var r1: ref;
  var $fakelocal_21: ref;
  var $fakelocal_17: ref;
  var $i5: int;
  var $r26: ref;
  var $r8: ref;
  var r3: ref;
  var $i2: int;
  var r4: ref;
  var $i9: int;
  var r33: ref;
  var z5: int;
  var $r17: ref;
  var $r6: ref;
  var $i10: int;
  var $r13: ref;
  var z2: int;
  var $fakelocal_8: ref;
  var $r12: ref;
  var $fakelocal_5: ref;
  var $i16: int;
  var $r27: ref;
  var r34: ref;
  var $b13: int;
  var $r16: ref;
  var r31: ref;
  var $r20: ref;
  var $l12: int;
  var $fakelocal_4: ref;
  var i22: int;
  var $b7: int;
  var i21: int;
  var z1: int;
  var $i6: int;
  var i24: int;
  var $r19: ref;
  var z4: int;
  var i23: int;
  var z3: int;
  var $i4: int;
  var r35: ref;
  var $fakelocal_20: ref;
  var $l11: int;
  var $fakelocal_0: ref;
  var $r10: ref;
  var r2: ref;
  var $i3: int;
  var $b14: int;
  var $b15: int;
  var $r18: ref;
  var i19: int;
  var $r22: ref;
  var i20: int;
  var $fakelocal_16: ref;
  var $r23: ref;
  var r36: ref;
  var $r5: ref;
  var i0: int;
  var $fakelocal_7: ref;
  var i25: int;
  var $i17: int;
  var $fakelocal_1: ref;
  var $fakelocal_6: ref;
  var $fakelocal_19: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "ImageMatcherWorker.java", 19, -1, -1, -1} true;
    r31 := $null;
    assert {:sourceloc "ImageMatcherWorker.java", 21, -1, -1, -1} true;
    z1 := 0;
    goto block2;

  block2:
    assert {:sourceloc "ImageMatcherWorker.java", 24, -1, -1, -1} true;
    call $fakelocal_0 := $new(ScalrApplyTest);
    $r5 := $fakelocal_0;
    assert {:sourceloc "ImageMatcherWorker.java", 24, -1, -1, -1} true;
    call $exception := ScalrApplyTest$$la$init$ra$$($r5);
    goto anon157_Then, anon157_Else;

  anon157_Else:
    assume {:partition} $exception == $null;
    goto anon4;

  anon4:
    assert {:sourceloc "ImageMatcherWorker.java", 24, -1, -1, -1} true;
    r32 := $r5;
    assert {:sourceloc "ImageMatcherWorker.java", 25, -1, -1, -1} true;
    call $exception := ScalrApplyTest$setup$byte$lp$$rp$(r0);
    goto anon159_Then, anon159_Else;

  anon159_Else:
    assume {:partition} $exception == $null;
    goto anon8;

  anon8:
    assert {:sourceloc "ImageMatcherWorker.java", 26, -1, -1, -1} true;
    call r33, $exception := ScalrApplyTest$testApply1$(r32);
    goto anon161_Then, anon161_Else;

  anon161_Else:
    assume {:partition} $exception == $null;
    goto anon12;

  anon12:
    assert {:sourceloc "ImageMatcherWorker.java", 27, -1, -1, -1} true;
    goto anon163_Then, anon163_Else;

  anon163_Else:
    assume {:partition} r33 == $null;
    assert {:sourceloc "ImageMatcherWorker.java", 27, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.RuntimeException);
    goto block3;

  block3:
    assert {:sourceloc "ImageMatcherWorker.java", 43, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r24 := $exception;
    assert {:sourceloc "ImageMatcherWorker.java", 50, -1, -1, -1} true;
    r36 := $r24;
    assert {:sourceloc "ImageMatcherWorker.java", 51, -1, -1, -1} true;
    $r26 := java.io.PrintStream$java.lang.System$out271;
    assert {:sourceloc "ImageMatcherWorker.java", 51, -1, -1, -1} true;
    call $fakelocal_4 := $new(java.lang.StringBuilder);
    $r25 := $fakelocal_4;
    assert {:sourceloc "ImageMatcherWorker.java", 51, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r25);
    assert {:sourceloc "ImageMatcherWorker.java", 51, -1, -1, -1} true;
    call $r27, $exception := java.lang.StringBuilder$append$java.lang.String($r25, $StringConst0);
    assert {:sourceloc "ImageMatcherWorker.java", 51, -1, -1, -1} true;
    call $r28, $exception := java.lang.Throwable$getMessage$(r36);
    assert {:sourceloc "ImageMatcherWorker.java", 51, -1, -1, -1} true;
    goto anon198_Then, anon198_Else;

  anon198_Else:
    assume {:partition} $r27 == $null;
    call $fakelocal_5 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon198_Then:
    assume {:partition} $r27 != $null;
    $exception := $exception;
    goto anon96;

  anon96:
    call $r29, $exception := java.lang.StringBuilder$append$java.lang.String($r27, $r28);
    assert {:sourceloc "ImageMatcherWorker.java", 51, -1, -1, -1} true;
    goto anon199_Then, anon199_Else;

  anon199_Else:
    assume {:partition} $r29 == $null;
    call $fakelocal_6 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon199_Then:
    assume {:partition} $r29 != $null;
    $exception := $exception;
    goto anon99;

  anon99:
    call $r30, $exception := java.lang.StringBuilder$toString$($r29);
    assert {:sourceloc "ImageMatcherWorker.java", 51, -1, -1, -1} true;
    goto anon200_Then, anon200_Else;

  anon200_Else:
    assume {:partition} $r26 == $null;
    call $fakelocal_7 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_7;
    return;

  anon200_Then:
    assume {:partition} $r26 != $null;
    $exception := $exception;
    goto anon102;

  anon102:
    call $exception := java.io.PrintStream$println$java.lang.String($r26, $r30);
    goto block7;

  block7:
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto anon201_Then, anon201_Else;

  anon201_Else:
    assume {:partition} z1 != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} {:comment "elseblock"} true;
    goto anon105;

  anon105:
    assert {:sourceloc "ImageMatcherWorker.java", 55, -1, -1, -1} true;
    z2 := 1;
    assert {:sourceloc "ImageMatcherWorker.java", 56, -1, -1, -1} true;
    z3 := 0;
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} true;
    i23 := 0;
    goto block9;

  block9:
    call $return, $exception, $fakelocal_12, $r14, $fakelocal_18, $fakelocal_14, $fakelocal_11, $fakelocal_13, $r11, $fakelocal_15, $fakelocal_10, $r21, $b8, $z6, $r15, $fakelocal_9, $fakelocal_21, $fakelocal_17, $i5, $i9, z5, $r17, $i10, $r13, z2, $fakelocal_8, $r12, $b13, $r16, $r20, $l12, $b7, $i6, i24, $r19, z4, i23, z3, $fakelocal_20, $l11, $r10, $b14, $b15, $r18, $r22, $fakelocal_16, $r23, i25, $fakelocal_19 := ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9($return, $exception, $fakelocal_12, $r14, $fakelocal_18, $fakelocal_14, $fakelocal_11, $fakelocal_13, $r11, $fakelocal_15, $fakelocal_10, $r21, $b8, $z6, $r15, $fakelocal_9, r1, $fakelocal_21, $fakelocal_17, $i5, $i9, z5, $r17, $i10, $r13, z2, $fakelocal_8, $r12, $b13, $r16, r31, $r20, $l12, $b7, $i6, i24, $r19, z4, i23, z3, $fakelocal_20, $l11, $r10, $b14, $b15, $r18, $r22, $fakelocal_16, $r23, i25, $fakelocal_19);
    goto block9_last;

  anon202_Else:
    assume {:partition} r31 == $null;
    call $fakelocal_8 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_8;
    return;

  anon202_Then:
    assume {:partition} r31 != $null;
    $exception := $exception;
    goto anon108;

  anon108:
    $i5 := $arrSizeHeap[r31];
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} true;
    goto anon203_Then, anon203_Else;

  anon203_Else:
    assume {:partition} $i5 > i23;
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto anon111;

  anon111:
    assert {:sourceloc "ImageMatcherWorker.java", 77, -1, -1, -1} true;
    goto anon204_Then, anon204_Else;

  anon204_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_9 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_9;
    return;

  anon204_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon114;

  anon114:
    $i6 := $arrSizeHeap[r1];
    assert {:sourceloc "ImageMatcherWorker.java", 77, -1, -1, -1} true;
    goto anon205_Then, anon205_Else;

  anon205_Else:
    assume {:partition} $i6 > i23;
    assert {:sourceloc "ImageMatcherWorker.java", 77, -1, -1, -1} {:comment "elseblock"} true;
    goto anon117;

  anon117:
    assert {:sourceloc "ImageMatcherWorker.java", 58, -1, -1, -1} true;
    goto anon206_Then, anon206_Else;

  anon206_Else:
    assume {:partition} !(i23 < $arrSizeHeap[r31] && i23 >= 0);
    call $fakelocal_10 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_10;
    return;

  anon206_Then:
    assume {:partition} i23 < $arrSizeHeap[r31] && i23 >= 0;
    $exception := $exception;
    goto anon120;

  anon120:
    $b7 := $intArrHeap[r31][i23];
    assert {:sourceloc "ImageMatcherWorker.java", 58, -1, -1, -1} true;
    call i24, $exception := java.lang.Math$abs$int($b7);
    assert {:sourceloc "ImageMatcherWorker.java", 60, -1, -1, -1} true;
    goto anon207_Then, anon207_Else;

  anon207_Else:
    assume {:partition} !(i23 < $arrSizeHeap[r1] && i23 >= 0);
    call $fakelocal_11 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_11;
    return;

  anon207_Then:
    assume {:partition} i23 < $arrSizeHeap[r1] && i23 >= 0;
    $exception := $exception;
    goto anon123;

  anon123:
    $b8 := $intArrHeap[r1][i23];
    assert {:sourceloc "ImageMatcherWorker.java", 60, -1, -1, -1} true;
    call i25, $exception := java.lang.Math$abs$int($b8);
    assert {:sourceloc "ImageMatcherWorker.java", 62, -1, -1, -1} true;
    goto anon208_Then, anon208_Else;

  anon208_Else:
    assume {:partition} 2 == 0;
    call $fakelocal_12 := $new(java.lang.ArithmeticException);
    $return := 0;
    $exception := $fakelocal_12;
    return;

  anon208_Then:
    assume {:partition} 2 != 0;
    $exception := $exception;
    goto anon126;

  anon126:
    $i9 := $modInt(i25, 2);
    assert {:sourceloc "ImageMatcherWorker.java", 62, -1, -1, -1} true;
    $l12 := $i9;
    assert {:sourceloc "ImageMatcherWorker.java", 62, -1, -1, -1} true;
    goto anon209_Then, anon209_Else;

  anon209_Else:
    assume {:partition} 2 == 0;
    call $fakelocal_13 := $new(java.lang.ArithmeticException);
    $return := 0;
    $exception := $fakelocal_13;
    return;

  anon209_Then:
    assume {:partition} 2 != 0;
    $exception := $exception;
    goto anon129;

  anon129:
    $i10 := $modInt(i24, 2);
    assert {:sourceloc "ImageMatcherWorker.java", 62, -1, -1, -1} true;
    $l11 := $i10;
    assert {:sourceloc "ImageMatcherWorker.java", 62, -1, -1, -1} true;
    call z4, $exception := sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($l12, $l11);
    assert {:sourceloc "ImageMatcherWorker.java", 64, -1, -1, -1} true;
    call z5, $exception := sg.edu.nus.comp.tsunami.safe.Safe$not$boolean(z4);
    assert {:sourceloc "ImageMatcherWorker.java", 66, -1, -1, -1} true;
    call $r10, $exception := java.lang.Boolean$valueOf$boolean(z2);
    assert {:sourceloc "ImageMatcherWorker.java", 66, -1, -1, -1} true;
    call $r11, $exception := java.lang.Boolean$valueOf$boolean(0);
    assert {:sourceloc "ImageMatcherWorker.java", 66, -1, -1, -1} true;
    call $r12, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z3, $r10, $r11);
    assert {:sourceloc "ImageMatcherWorker.java", 66, -1, -1, -1} true;
    call $r13, $exception := java.lang.Boolean$valueOf$boolean(z2);
    assert {:sourceloc "ImageMatcherWorker.java", 66, -1, -1, -1} true;
    call $r14, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z5, $r12, $r13);
    assert {:sourceloc "ImageMatcherWorker.java", 66, -1, -1, -1} true;
    goto anon210_Then, anon210_Else;

  anon210_Else:
    assume {:partition} !($heap[$r14, $type] <: java.lang.Boolean);
    call $fakelocal_14 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_14;
    return;

  anon210_Then:
    assume {:partition} $heap[$r14, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon132;

  anon132:
    $r15 := $r14;
    assert {:sourceloc "ImageMatcherWorker.java", 66, -1, -1, -1} true;
    goto anon211_Then, anon211_Else;

  anon211_Else:
    assume {:partition} $r15 == $null;
    call $fakelocal_15 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_15;
    return;

  anon211_Then:
    assume {:partition} $r15 != $null;
    $exception := $exception;
    goto anon135;

  anon135:
    call z2, $exception := java.lang.Boolean$booleanValue$($r15);
    assert {:sourceloc "ImageMatcherWorker.java", 67, -1, -1, -1} true;
    call $r16, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "ImageMatcherWorker.java", 67, -1, -1, -1} true;
    call $r17, $exception := java.lang.Boolean$valueOf$boolean(z3);
    assert {:sourceloc "ImageMatcherWorker.java", 67, -1, -1, -1} true;
    call $r18, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z5, $r16, $r17);
    assert {:sourceloc "ImageMatcherWorker.java", 67, -1, -1, -1} true;
    goto anon212_Then, anon212_Else;

  anon212_Else:
    assume {:partition} !($heap[$r18, $type] <: java.lang.Boolean);
    call $fakelocal_16 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_16;
    return;

  anon212_Then:
    assume {:partition} $heap[$r18, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon138;

  anon138:
    $r19 := $r18;
    assert {:sourceloc "ImageMatcherWorker.java", 67, -1, -1, -1} true;
    goto anon213_Then, anon213_Else;

  anon213_Else:
    assume {:partition} $r19 == $null;
    call $fakelocal_17 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_17;
    return;

  anon213_Then:
    assume {:partition} $r19 != $null;
    $exception := $exception;
    goto anon141;

  anon141:
    call z3, $exception := java.lang.Boolean$booleanValue$($r19);
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    goto anon214_Then, anon214_Else;

  anon214_Else:
    assume {:partition} !(i23 < $arrSizeHeap[r31] && i23 >= 0);
    call $fakelocal_18 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_18;
    return;

  anon214_Then:
    assume {:partition} i23 < $arrSizeHeap[r31] && i23 >= 0;
    $exception := $exception;
    goto anon144;

  anon144:
    $b13 := $intArrHeap[r31][i23];
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    call $r20, $exception := java.lang.Byte$valueOf$byte($b13);
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    goto anon215_Then, anon215_Else;

  anon215_Else:
    assume {:partition} z4 != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} {:comment "elseblock"} true;
    goto anon147;

  anon147:
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} true;
    $z6 := 1;
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} true;
    goto block12;

  block12:
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    $b14 := $z6;
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    call $r21, $exception := java.lang.Byte$valueOf$byte($b14);
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    call $r22, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z3, $r20, $r21);
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    goto anon216_Then, anon216_Else;

  anon216_Else:
    assume {:partition} !($heap[$r22, $type] <: java.lang.Byte);
    call $fakelocal_19 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_19;
    return;

  anon216_Then:
    assume {:partition} $heap[$r22, $type] <: java.lang.Byte;
    $exception := $exception;
    goto anon150;

  anon150:
    $r23 := $r22;
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    goto anon217_Then, anon217_Else;

  anon217_Else:
    assume {:partition} $r23 == $null;
    call $fakelocal_20 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_20;
    return;

  anon217_Then:
    assume {:partition} $r23 != $null;
    $exception := $exception;
    goto anon153;

  anon153:
    call $b15, $exception := java.lang.Byte$byteValue$($r23);
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    goto anon218_Then, anon218_Else;

  anon218_Else:
    assume {:partition} !(i23 < $arrSizeHeap[r31] && i23 >= 0);
    call $fakelocal_21 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_21;
    return;

  anon218_Then:
    assume {:partition} i23 < $arrSizeHeap[r31] && i23 >= 0;
    $exception := $exception;
    goto anon156;

  anon156:
    $intArrHeap := $intArrHeap[r31 := $intArrHeap[r31][i23 := $b15]];
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} true;
    i23 := i23 + 4;
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} true;
    goto anon156_dummy;

  anon215_Then:
    assume {:partition} z4 == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  block11:
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} true;
    $z6 := 0;
    goto block12;

  anon205_Then:
    assume {:partition} i23 >= $i6;
    assert {:sourceloc "ImageMatcherWorker.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "ImageMatcherWorker.java", 74, -1, -1, -1} true;
    goto block13;

  block13:
    assert {:sourceloc "ImageMatcherWorker.java", 77, -1, -1, -1} true;
    $return := z2;
    goto block14;

  block14:
    return;

  anon203_Then:
    assume {:partition} i23 >= $i5;
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  anon201_Then:
    assume {:partition} z1 == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "ImageMatcherWorker.java", 75, -1, -1, -1} true;
    z2 := 0;
    goto block13;

  anon163_Then:
    assume {:partition} r33 != $null;
    assert {:sourceloc "ImageMatcherWorker.java", 27, -1, -1, -1} true;
    goto anon15;

  anon15:
    call i19, $exception := java.awt.image.BufferedImage$getWidth$(r33);
    goto anon164_Then, anon164_Else;

  anon164_Else:
    assume {:partition} $exception == $null;
    goto anon19;

  anon19:
    assert {:sourceloc "ImageMatcherWorker.java", 28, -1, -1, -1} true;
    call i20, $exception := java.awt.image.BufferedImage$getHeight$(r33);
    goto anon166_Then, anon166_Else;

  anon166_Else:
    assume {:partition} $exception == $null;
    goto anon23;

  anon23:
    assert {:sourceloc "ImageMatcherWorker.java", 29, -1, -1, -1} true;
    goto anon168_Then, anon168_Else;

  anon168_Else:
    assume {:partition} !($heap[$null, $type] <: $intArrayType);
    assert {:sourceloc "ImageMatcherWorker.java", 29, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.ClassCastException);
    goto block3;

  anon168_Then:
    assume {:partition} $heap[$null, $type] <: $intArrayType;
    assert {:sourceloc "ImageMatcherWorker.java", 29, -1, -1, -1} true;
    goto anon26;

  anon26:
    $r6 := $null;
    assert {:sourceloc "ImageMatcherWorker.java", 29, -1, -1, -1} true;
    call r34, $exception := java.awt.image.BufferedImage$getRGB$int_int_int_int_int$lp$$rp$_int_int(r33, 0, 0, i19, i20, $r6, 0, i19);
    goto anon169_Then, anon169_Else;

  anon169_Else:
    assume {:partition} $exception == $null;
    goto anon30;

  anon30:
    assert {:sourceloc "ImageMatcherWorker.java", 30, -1, -1, -1} true;
    goto anon171_Then, anon171_Else;

  anon171_Else:
    assume {:partition} r34 == $null;
    assert {:sourceloc "ImageMatcherWorker.java", 30, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.NullPointerException);
    goto block3;

  anon171_Then:
    assume {:partition} r34 != $null;
    assert {:sourceloc "ImageMatcherWorker.java", 30, -1, -1, -1} true;
    goto anon33;

  anon33:
    $i1 := $arrSizeHeap[r34];
    assert {:sourceloc "ImageMatcherWorker.java", 30, -1, -1, -1} true;
    $i2 := $mulInt($i1, 4);
    assert {:sourceloc "ImageMatcherWorker.java", 30, -1, -1, -1} true;
    call r35, $exception := java.nio.ByteBuffer$allocate$int($i2);
    goto anon172_Then, anon172_Else;

  anon172_Else:
    assume {:partition} $exception == $null;
    goto anon37;

  anon37:
    assert {:sourceloc "ImageMatcherWorker.java", 31, -1, -1, -1} true;
    goto anon174_Then, anon174_Else;

  anon174_Else:
    assume {:partition} r35 == $null;
    assert {:sourceloc "ImageMatcherWorker.java", 31, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.RuntimeException);
    goto block3;

  anon174_Then:
    assume {:partition} r35 != $null;
    assert {:sourceloc "ImageMatcherWorker.java", 31, -1, -1, -1} true;
    goto anon40;

  anon40:
    call r2, $exception := java.nio.ByteBuffer$asIntBuffer$(r35);
    goto anon175_Then, anon175_Else;

  anon175_Else:
    assume {:partition} $exception == $null;
    goto anon44;

  anon44:
    assert {:sourceloc "ImageMatcherWorker.java", 32, -1, -1, -1} true;
    goto anon177_Then, anon177_Else;

  anon177_Else:
    assume {:partition} r2 == $null;
    assert {:sourceloc "ImageMatcherWorker.java", 32, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.RuntimeException);
    goto block3;

  anon177_Then:
    assume {:partition} r2 != $null;
    assert {:sourceloc "ImageMatcherWorker.java", 32, -1, -1, -1} true;
    goto anon47;

  anon47:
    call $fakelocal_1, $exception := java.nio.IntBuffer$put$int$lp$$rp$(r2, r34);
    goto anon178_Then, anon178_Else;

  anon178_Else:
    assume {:partition} $exception == $null;
    goto anon51;

  anon51:
    assert {:sourceloc "ImageMatcherWorker.java", 33, -1, -1, -1} true;
    call $fakelocal_2 := $new(java.io.ByteArrayOutputStream);
    $r8 := $fakelocal_2;
    assert {:sourceloc "ImageMatcherWorker.java", 33, -1, -1, -1} true;
    call $exception := java.io.ByteArrayOutputStream$$la$init$ra$$($r8);
    goto anon180_Then, anon180_Else;

  anon180_Else:
    assume {:partition} $exception == $null;
    goto anon55;

  anon55:
    assert {:sourceloc "ImageMatcherWorker.java", 33, -1, -1, -1} true;
    r3 := $r8;
    assert {:sourceloc "ImageMatcherWorker.java", 34, -1, -1, -1} true;
    call $r9, $exception := java.nio.ByteBuffer$array$(r35);
    goto anon182_Then, anon182_Else;

  anon182_Else:
    assume {:partition} $exception == $null;
    goto anon59;

  anon59:
    assert {:sourceloc "ImageMatcherWorker.java", 34, -1, -1, -1} true;
    call $exception := java.io.OutputStream$write$byte$lp$$rp$(r3, $r9);
    goto anon184_Then, anon184_Else;

  anon184_Else:
    assume {:partition} $exception == $null;
    goto anon63;

  anon63:
    assert {:sourceloc "ImageMatcherWorker.java", 35, -1, -1, -1} true;
    call $exception := java.io.OutputStream$flush$(r3);
    goto anon186_Then, anon186_Else;

  anon186_Else:
    assume {:partition} $exception == $null;
    goto anon67;

  anon67:
    assert {:sourceloc "ImageMatcherWorker.java", 36, -1, -1, -1} true;
    call $exception := java.io.ByteArrayOutputStream$close$(r3);
    goto anon188_Then, anon188_Else;

  anon188_Else:
    assume {:partition} $exception == $null;
    goto anon71;

  anon71:
    assert {:sourceloc "ImageMatcherWorker.java", 38, -1, -1, -1} true;
    call $exception := ScalrApplyTest$tearDown$();
    goto anon190_Then, anon190_Else;

  anon190_Else:
    assume {:partition} $exception == $null;
    goto anon75;

  anon75:
    assert {:sourceloc "ImageMatcherWorker.java", 39, -1, -1, -1} true;
    call $fakelocal_3 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_3 := 128];
    r4 := $fakelocal_3;
    assert {:sourceloc "ImageMatcherWorker.java", 40, -1, -1, -1} true;
    goto anon192_Then, anon192_Else;

  anon192_Else:
    assume {:partition} r34 == $null;
    assert {:sourceloc "ImageMatcherWorker.java", 40, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.NullPointerException);
    goto block3;

  anon192_Then:
    assume {:partition} r34 != $null;
    assert {:sourceloc "ImageMatcherWorker.java", 40, -1, -1, -1} true;
    goto anon78;

  anon78:
    $i3 := $arrSizeHeap[r34];
    assert {:sourceloc "ImageMatcherWorker.java", 40, -1, -1, -1} true;
    goto anon193_Then, anon193_Else;

  anon193_Else:
    assume {:partition} 128 == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 40, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.ArithmeticException);
    goto block3;

  anon193_Then:
    assume {:partition} 128 != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 40, -1, -1, -1} true;
    goto anon81;

  anon81:
    i0 := $divInt($i3, 128);
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    i21 := 0;
    assert {:sourceloc "ImageMatcherWorker.java", 43, -1, -1, -1} true;
    i22 := 0;
    goto block4;

  block4:
    call $return, $exception, $b18, $i16, i22, i21, $i4, $i17 := ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4($return, $exception, $b18, r4, $i16, r34, i22, i21, $i4, i0, $i17);
    goto block4_last;

  anon194_Else:
    assume {:partition} $i4 > i22;
    assert {:sourceloc "ImageMatcherWorker.java", 43, -1, -1, -1} {:comment "elseblock"} true;
    goto anon84;

  anon84:
    assert {:sourceloc "ImageMatcherWorker.java", 44, -1, -1, -1} true;
    goto anon195_Then, anon195_Else;

  anon195_Else:
    assume {:partition} !(i22 < $arrSizeHeap[r34] && i22 >= 0);
    assert {:sourceloc "ImageMatcherWorker.java", 44, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
    goto block3;

  anon195_Then:
    assume {:partition} i22 < $arrSizeHeap[r34] && i22 >= 0;
    assert {:sourceloc "ImageMatcherWorker.java", 44, -1, -1, -1} true;
    goto anon87;

  anon87:
    $i16 := $intArrHeap[r34][i22];
    assert {:sourceloc "ImageMatcherWorker.java", 44, -1, -1, -1} true;
    goto anon196_Then, anon196_Else;

  anon196_Else:
    assume {:partition} 2 == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 44, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.ArithmeticException);
    goto block3;

  anon196_Then:
    assume {:partition} 2 != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 44, -1, -1, -1} true;
    goto anon90;

  anon90:
    $i17 := $modInt($i16, 2);
    assert {:sourceloc "ImageMatcherWorker.java", 44, -1, -1, -1} true;
    $b18 := $i17;
    assert {:sourceloc "ImageMatcherWorker.java", 44, -1, -1, -1} true;
    goto anon197_Then, anon197_Else;

  anon197_Else:
    assume {:partition} !(i21 < $arrSizeHeap[r4] && i21 >= 0);
    assert {:sourceloc "ImageMatcherWorker.java", 44, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
    goto block3;

  anon197_Then:
    assume {:partition} i21 < $arrSizeHeap[r4] && i21 >= 0;
    assert {:sourceloc "ImageMatcherWorker.java", 44, -1, -1, -1} true;
    goto anon93;

  anon93:
    $intArrHeap := $intArrHeap[r4 := $intArrHeap[r4][i21 := $b18]];
    assert {:sourceloc "ImageMatcherWorker.java", 45, -1, -1, -1} true;
    i21 := i21 + 1;
    assert {:sourceloc "ImageMatcherWorker.java", 43, -1, -1, -1} true;
    i22 := i22 + i0;
    assert {:sourceloc "ImageMatcherWorker.java", 43, -1, -1, -1} true;
    goto anon93_dummy;

  anon194_Then:
    assume {:partition} i22 >= $i4;
    assert {:sourceloc "ImageMatcherWorker.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block5;

  block5:
    assert {:sourceloc "ImageMatcherWorker.java", 48, -1, -1, -1} true;
    r31 := r4;
    assert {:sourceloc "ImageMatcherWorker.java", 49, -1, -1, -1} true;
    z1 := 1;
    goto block6;

  block6:
    assert {:sourceloc "ImageMatcherWorker.java", 52, -1, -1, -1} true;
    goto block7;

  anon190_Then:
    assume {:partition} $exception != $null;
    goto anon191_Then, anon191_Else;

  anon191_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon75;

  anon191_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon188_Then:
    assume {:partition} $exception != $null;
    goto anon189_Then, anon189_Else;

  anon189_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon71;

  anon189_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := 0;
    goto block3;

  anon186_Then:
    assume {:partition} $exception != $null;
    goto anon187_Then, anon187_Else;

  anon187_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon67;

  anon187_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := 0;
    goto block3;

  anon184_Then:
    assume {:partition} $exception != $null;
    goto anon185_Then, anon185_Else;

  anon185_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon63;

  anon185_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := 0;
    goto block3;

  anon182_Then:
    assume {:partition} $exception != $null;
    goto anon183_Then, anon183_Else;

  anon183_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon59;

  anon183_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon180_Then:
    assume {:partition} $exception != $null;
    goto anon181_Then, anon181_Else;

  anon181_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon55;

  anon181_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    $r8 := $null;
    goto block3;

  anon178_Then:
    assume {:partition} $exception != $null;
    goto anon179_Then, anon179_Else;

  anon179_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon51;

  anon179_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon175_Then:
    assume {:partition} $exception != $null;
    goto anon176_Then, anon176_Else;

  anon176_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon44;

  anon176_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon172_Then:
    assume {:partition} $exception != $null;
    goto anon173_Then, anon173_Else;

  anon173_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon37;

  anon173_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon169_Then:
    assume {:partition} $exception != $null;
    goto anon170_Then, anon170_Else;

  anon170_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon30;

  anon170_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon166_Then:
    assume {:partition} $exception != $null;
    goto anon167_Then, anon167_Else;

  anon167_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon23;

  anon167_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon164_Then:
    assume {:partition} $exception != $null;
    goto anon165_Then, anon165_Else;

  anon165_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon19;

  anon165_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon161_Then:
    assume {:partition} $exception != $null;
    goto anon162_Then, anon162_Else;

  anon162_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon12;

  anon162_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon159_Then:
    assume {:partition} $exception != $null;
    goto anon160_Then, anon160_Else;

  anon160_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon8;

  anon160_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon157_Then:
    assume {:partition} $exception != $null;
    goto anon158_Then, anon158_Else;

  anon158_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Exception);
    assert {:clone} true;
    goto anon4;

  anon158_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Exception;
    assert {:clone} true;
    $r5 := $null;
    goto block3;

  anon156_dummy:
    assume false;
    return;

  block9_last:
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} true;
    goto anon202_Then, anon202_Else;

  anon93_dummy:
    assume false;
    return;

  block4_last:
    assert {:sourceloc "ImageMatcherWorker.java", 43, -1, -1, -1} true;
    $i4 := $mulInt(i0, 128);
    assert {:sourceloc "ImageMatcherWorker.java", 43, -1, -1, -1} true;
    goto anon194_Then, anon194_Else;
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
    goto block20;

  block20:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l0: int;
  var l1: int;
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
  var l0: int;
  var l1: int;
  var z0: int;
  var $b3: int;
  var $b2: int;

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
  var l1: int;
  var l0: int;
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
  var l1: int;
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
  var $b3: int;
  var z0: int;
  var $b2: int;
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
  var d0: int;
  var $b1: int;
  var $b0: int;
  var d1: int;
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
  var $b1: int;
  var d0: int;
  var $b0: int;
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
  var $b1: int;
  var d0: int;
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
  var d1: int;
  var d0: int;
  var z0: int;
  var $b1: int;
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
  var z0: int;
  var $b1: int;
  var $b0: int;
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
  var z0: int;
  var r2: ref;
  var r1: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__2, $type] <: java.lang.Object;
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
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



implementation ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_12: ref, 
    in_$r14: ref, 
    in_$fakelocal_18: ref, 
    in_$fakelocal_14: ref, 
    in_$fakelocal_11: ref, 
    in_$fakelocal_13: ref, 
    in_$r11: ref, 
    in_$fakelocal_15: ref, 
    in_$fakelocal_10: ref, 
    in_$r21: ref, 
    in_$b8: int, 
    in_$z6: int, 
    in_$r15: ref, 
    in_$fakelocal_9: ref, 
    in_r1: ref, 
    in_$fakelocal_21: ref, 
    in_$fakelocal_17: ref, 
    in_$i5: int, 
    in_$i9: int, 
    in_z5: int, 
    in_$r17: ref, 
    in_$i10: int, 
    in_$r13: ref, 
    in_z2: int, 
    in_$fakelocal_8: ref, 
    in_$r12: ref, 
    in_$b13: int, 
    in_$r16: ref, 
    in_r31: ref, 
    in_$r20: ref, 
    in_$l12: int, 
    in_$b7: int, 
    in_$i6: int, 
    in_i24: int, 
    in_$r19: ref, 
    in_z4: int, 
    in_i23: int, 
    in_z3: int, 
    in_$fakelocal_20: ref, 
    in_$l11: int, 
    in_$r10: ref, 
    in_$b14: int, 
    in_$b15: int, 
    in_$r18: ref, 
    in_$r22: ref, 
    in_$fakelocal_16: ref, 
    in_$r23: ref, 
    in_i25: int, 
    in_$fakelocal_19: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_12: ref, 
    out_$r14: ref, 
    out_$fakelocal_18: ref, 
    out_$fakelocal_14: ref, 
    out_$fakelocal_11: ref, 
    out_$fakelocal_13: ref, 
    out_$r11: ref, 
    out_$fakelocal_15: ref, 
    out_$fakelocal_10: ref, 
    out_$r21: ref, 
    out_$b8: int, 
    out_$z6: int, 
    out_$r15: ref, 
    out_$fakelocal_9: ref, 
    out_$fakelocal_21: ref, 
    out_$fakelocal_17: ref, 
    out_$i5: int, 
    out_$i9: int, 
    out_z5: int, 
    out_$r17: ref, 
    out_$i10: int, 
    out_$r13: ref, 
    out_z2: int, 
    out_$fakelocal_8: ref, 
    out_$r12: ref, 
    out_$b13: int, 
    out_$r16: ref, 
    out_$r20: ref, 
    out_$l12: int, 
    out_$b7: int, 
    out_$i6: int, 
    out_i24: int, 
    out_$r19: ref, 
    out_z4: int, 
    out_i23: int, 
    out_z3: int, 
    out_$fakelocal_20: ref, 
    out_$l11: int, 
    out_$r10: ref, 
    out_$b14: int, 
    out_$b15: int, 
    out_$r18: ref, 
    out_$r22: ref, 
    out_$fakelocal_16: ref, 
    out_$r23: ref, 
    out_i25: int, 
    out_$fakelocal_19: ref)
{

  entry:
    out_$return, out_$exception, out_$fakelocal_12, out_$r14, out_$fakelocal_18, out_$fakelocal_14, out_$fakelocal_11, out_$fakelocal_13, out_$r11, out_$fakelocal_15, out_$fakelocal_10, out_$r21, out_$b8, out_$z6, out_$r15, out_$fakelocal_9, out_$fakelocal_21, out_$fakelocal_17, out_$i5, out_$i9, out_z5, out_$r17, out_$i10, out_$r13, out_z2, out_$fakelocal_8, out_$r12, out_$b13, out_$r16, out_$r20, out_$l12, out_$b7, out_$i6, out_i24, out_$r19, out_z4, out_i23, out_z3, out_$fakelocal_20, out_$l11, out_$r10, out_$b14, out_$b15, out_$r18, out_$r22, out_$fakelocal_16, out_$r23, out_i25, out_$fakelocal_19 := in_$return, in_$exception, in_$fakelocal_12, in_$r14, in_$fakelocal_18, in_$fakelocal_14, in_$fakelocal_11, in_$fakelocal_13, in_$r11, in_$fakelocal_15, in_$fakelocal_10, in_$r21, in_$b8, in_$z6, in_$r15, in_$fakelocal_9, in_$fakelocal_21, in_$fakelocal_17, in_$i5, in_$i9, in_z5, in_$r17, in_$i10, in_$r13, in_z2, in_$fakelocal_8, in_$r12, in_$b13, in_$r16, in_$r20, in_$l12, in_$b7, in_$i6, in_i24, in_$r19, in_z4, in_i23, in_z3, in_$fakelocal_20, in_$l11, in_$r10, in_$b14, in_$b15, in_$r18, in_$r22, in_$fakelocal_16, in_$r23, in_i25, in_$fakelocal_19;
    goto block9;

  block9:
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} true;
    goto anon202_Then, anon202_Else;

  anon202_Else:
    assume {:partition} in_r31 == $null;
    call out_$fakelocal_8 := $new(java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_8;
    out_$return, out_$exception, out_$fakelocal_12, out_$r14, out_$fakelocal_18, out_$fakelocal_14, out_$fakelocal_11, out_$fakelocal_13, out_$r11, out_$fakelocal_15, out_$fakelocal_10, out_$r21, out_$b8, out_$z6, out_$r15, out_$fakelocal_9, out_$fakelocal_21, out_$fakelocal_17, out_$i5, out_$i9, out_z5, out_$r17, out_$i10, out_$r13, out_z2, out_$fakelocal_8, out_$r12, out_$b13, out_$r16, out_$r20, out_$l12, out_$b7, out_$i6, out_i24, out_$r19, out_z4, out_i23, out_z3, out_$fakelocal_20, out_$l11, out_$r10, out_$b14, out_$b15, out_$r18, out_$r22, out_$fakelocal_16, out_$r23, out_i25, out_$fakelocal_19 := in_$return, in_$exception, in_$fakelocal_12, in_$r14, in_$fakelocal_18, in_$fakelocal_14, in_$fakelocal_11, in_$fakelocal_13, in_$r11, in_$fakelocal_15, in_$fakelocal_10, in_$r21, in_$b8, in_$z6, in_$r15, in_$fakelocal_9, in_$fakelocal_21, in_$fakelocal_17, in_$i5, in_$i9, in_z5, in_$r17, in_$i10, in_$r13, in_z2, in_$fakelocal_8, in_$r12, in_$b13, in_$r16, in_$r20, in_$l12, in_$b7, in_$i6, in_i24, in_$r19, in_z4, in_i23, in_z3, in_$fakelocal_20, in_$l11, in_$r10, in_$b14, in_$b15, in_$r18, in_$r22, in_$fakelocal_16, in_$r23, in_i25, in_$fakelocal_19;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon156:
    $intArrHeap := $intArrHeap[in_r31 := $intArrHeap[in_r31][out_i23 := out_$b15]];
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} true;
    out_i23 := out_i23 + 4;
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} true;
    goto anon156_dummy;

  anon218_Then:
    assume {:partition} out_i23 < $arrSizeHeap[in_r31] && out_i23 >= 0;
    out_$exception := out_$exception;
    goto anon156;

  anon153:
    call out_$b15, out_$exception := java.lang.Byte$byteValue$(out_$r23);
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    goto anon218_Then, anon218_Else;

  anon218_Else:
    assume {:partition} !(out_i23 < $arrSizeHeap[in_r31] && out_i23 >= 0);
    call out_$fakelocal_21 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_21;
    out_$return, out_$exception, out_$fakelocal_12, out_$r14, out_$fakelocal_18, out_$fakelocal_14, out_$fakelocal_11, out_$fakelocal_13, out_$r11, out_$fakelocal_15, out_$fakelocal_10, out_$r21, out_$b8, out_$z6, out_$r15, out_$fakelocal_9, out_$fakelocal_21, out_$fakelocal_17, out_$i5, out_$i9, out_z5, out_$r17, out_$i10, out_$r13, out_z2, out_$fakelocal_8, out_$r12, out_$b13, out_$r16, out_$r20, out_$l12, out_$b7, out_$i6, out_i24, out_$r19, out_z4, out_i23, out_z3, out_$fakelocal_20, out_$l11, out_$r10, out_$b14, out_$b15, out_$r18, out_$r22, out_$fakelocal_16, out_$r23, out_i25, out_$fakelocal_19 := in_$return, in_$exception, in_$fakelocal_12, in_$r14, in_$fakelocal_18, in_$fakelocal_14, in_$fakelocal_11, in_$fakelocal_13, in_$r11, in_$fakelocal_15, in_$fakelocal_10, in_$r21, in_$b8, in_$z6, in_$r15, in_$fakelocal_9, in_$fakelocal_21, in_$fakelocal_17, in_$i5, in_$i9, in_z5, in_$r17, in_$i10, in_$r13, in_z2, in_$fakelocal_8, in_$r12, in_$b13, in_$r16, in_$r20, in_$l12, in_$b7, in_$i6, in_i24, in_$r19, in_z4, in_i23, in_z3, in_$fakelocal_20, in_$l11, in_$r10, in_$b14, in_$b15, in_$r18, in_$r22, in_$fakelocal_16, in_$r23, in_i25, in_$fakelocal_19;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon217_Then:
    assume {:partition} out_$r23 != $null;
    out_$exception := out_$exception;
    goto anon153;

  anon150:
    out_$r23 := out_$r22;
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    goto anon217_Then, anon217_Else;

  anon217_Else:
    assume {:partition} out_$r23 == $null;
    call out_$fakelocal_20 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_20;
    out_$return, out_$exception, out_$fakelocal_12, out_$r14, out_$fakelocal_18, out_$fakelocal_14, out_$fakelocal_11, out_$fakelocal_13, out_$r11, out_$fakelocal_15, out_$fakelocal_10, out_$r21, out_$b8, out_$z6, out_$r15, out_$fakelocal_9, out_$fakelocal_21, out_$fakelocal_17, out_$i5, out_$i9, out_z5, out_$r17, out_$i10, out_$r13, out_z2, out_$fakelocal_8, out_$r12, out_$b13, out_$r16, out_$r20, out_$l12, out_$b7, out_$i6, out_i24, out_$r19, out_z4, out_i23, out_z3, out_$fakelocal_20, out_$l11, out_$r10, out_$b14, out_$b15, out_$r18, out_$r22, out_$fakelocal_16, out_$r23, out_i25, out_$fakelocal_19 := in_$return, in_$exception, in_$fakelocal_12, in_$r14, in_$fakelocal_18, in_$fakelocal_14, in_$fakelocal_11, in_$fakelocal_13, in_$r11, in_$fakelocal_15, in_$fakelocal_10, in_$r21, in_$b8, in_$z6, in_$r15, in_$fakelocal_9, in_$fakelocal_21, in_$fakelocal_17, in_$i5, in_$i9, in_z5, in_$r17, in_$i10, in_$r13, in_z2, in_$fakelocal_8, in_$r12, in_$b13, in_$r16, in_$r20, in_$l12, in_$b7, in_$i6, in_i24, in_$r19, in_z4, in_i23, in_z3, in_$fakelocal_20, in_$l11, in_$r10, in_$b14, in_$b15, in_$r18, in_$r22, in_$fakelocal_16, in_$r23, in_i25, in_$fakelocal_19;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon216_Then:
    assume {:partition} $heap[out_$r22, $type] <: java.lang.Byte;
    out_$exception := out_$exception;
    goto anon150;

  block12:
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    out_$b14 := out_$z6;
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    call out_$r21, out_$exception := java.lang.Byte$valueOf$byte(out_$b14);
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    call out_$r22, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z3, out_$r20, out_$r21);
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    goto anon216_Then, anon216_Else;

  anon216_Else:
    assume {:partition} !($heap[out_$r22, $type] <: java.lang.Byte);
    call out_$fakelocal_19 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_19;
    out_$return, out_$exception, out_$fakelocal_12, out_$r14, out_$fakelocal_18, out_$fakelocal_14, out_$fakelocal_11, out_$fakelocal_13, out_$r11, out_$fakelocal_15, out_$fakelocal_10, out_$r21, out_$b8, out_$z6, out_$r15, out_$fakelocal_9, out_$fakelocal_21, out_$fakelocal_17, out_$i5, out_$i9, out_z5, out_$r17, out_$i10, out_$r13, out_z2, out_$fakelocal_8, out_$r12, out_$b13, out_$r16, out_$r20, out_$l12, out_$b7, out_$i6, out_i24, out_$r19, out_z4, out_i23, out_z3, out_$fakelocal_20, out_$l11, out_$r10, out_$b14, out_$b15, out_$r18, out_$r22, out_$fakelocal_16, out_$r23, out_i25, out_$fakelocal_19 := in_$return, in_$exception, in_$fakelocal_12, in_$r14, in_$fakelocal_18, in_$fakelocal_14, in_$fakelocal_11, in_$fakelocal_13, in_$r11, in_$fakelocal_15, in_$fakelocal_10, in_$r21, in_$b8, in_$z6, in_$r15, in_$fakelocal_9, in_$fakelocal_21, in_$fakelocal_17, in_$i5, in_$i9, in_z5, in_$r17, in_$i10, in_$r13, in_z2, in_$fakelocal_8, in_$r12, in_$b13, in_$r16, in_$r20, in_$l12, in_$b7, in_$i6, in_i24, in_$r19, in_z4, in_i23, in_z3, in_$fakelocal_20, in_$l11, in_$r10, in_$b14, in_$b15, in_$r18, in_$r22, in_$fakelocal_16, in_$r23, in_i25, in_$fakelocal_19;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon147:
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} true;
    out_$z6 := 1;
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} true;
    goto block12;

  block11:
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} true;
    out_$z6 := 0;
    goto block12;

  anon215_Then:
    assume {:partition} out_z4 == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  anon144:
    out_$b13 := $intArrHeap[in_r31][out_i23];
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    call out_$r20, out_$exception := java.lang.Byte$valueOf$byte(out_$b13);
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    goto anon215_Then, anon215_Else;

  anon214_Then:
    assume {:partition} out_i23 < $arrSizeHeap[in_r31] && out_i23 >= 0;
    out_$exception := out_$exception;
    goto anon144;

  anon141:
    call out_z3, out_$exception := java.lang.Boolean$booleanValue$(out_$r19);
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    goto anon214_Then, anon214_Else;

  anon214_Else:
    assume {:partition} !(out_i23 < $arrSizeHeap[in_r31] && out_i23 >= 0);
    call out_$fakelocal_18 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_18;
    out_$return, out_$exception, out_$fakelocal_12, out_$r14, out_$fakelocal_18, out_$fakelocal_14, out_$fakelocal_11, out_$fakelocal_13, out_$r11, out_$fakelocal_15, out_$fakelocal_10, out_$r21, out_$b8, out_$z6, out_$r15, out_$fakelocal_9, out_$fakelocal_21, out_$fakelocal_17, out_$i5, out_$i9, out_z5, out_$r17, out_$i10, out_$r13, out_z2, out_$fakelocal_8, out_$r12, out_$b13, out_$r16, out_$r20, out_$l12, out_$b7, out_$i6, out_i24, out_$r19, out_z4, out_i23, out_z3, out_$fakelocal_20, out_$l11, out_$r10, out_$b14, out_$b15, out_$r18, out_$r22, out_$fakelocal_16, out_$r23, out_i25, out_$fakelocal_19 := in_$return, in_$exception, in_$fakelocal_12, in_$r14, in_$fakelocal_18, in_$fakelocal_14, in_$fakelocal_11, in_$fakelocal_13, in_$r11, in_$fakelocal_15, in_$fakelocal_10, in_$r21, in_$b8, in_$z6, in_$r15, in_$fakelocal_9, in_$fakelocal_21, in_$fakelocal_17, in_$i5, in_$i9, in_z5, in_$r17, in_$i10, in_$r13, in_z2, in_$fakelocal_8, in_$r12, in_$b13, in_$r16, in_$r20, in_$l12, in_$b7, in_$i6, in_i24, in_$r19, in_z4, in_i23, in_z3, in_$fakelocal_20, in_$l11, in_$r10, in_$b14, in_$b15, in_$r18, in_$r22, in_$fakelocal_16, in_$r23, in_i25, in_$fakelocal_19;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon213_Then:
    assume {:partition} out_$r19 != $null;
    out_$exception := out_$exception;
    goto anon141;

  anon138:
    out_$r19 := out_$r18;
    assert {:sourceloc "ImageMatcherWorker.java", 67, -1, -1, -1} true;
    goto anon213_Then, anon213_Else;

  anon213_Else:
    assume {:partition} out_$r19 == $null;
    call out_$fakelocal_17 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_17;
    out_$return, out_$exception, out_$fakelocal_12, out_$r14, out_$fakelocal_18, out_$fakelocal_14, out_$fakelocal_11, out_$fakelocal_13, out_$r11, out_$fakelocal_15, out_$fakelocal_10, out_$r21, out_$b8, out_$z6, out_$r15, out_$fakelocal_9, out_$fakelocal_21, out_$fakelocal_17, out_$i5, out_$i9, out_z5, out_$r17, out_$i10, out_$r13, out_z2, out_$fakelocal_8, out_$r12, out_$b13, out_$r16, out_$r20, out_$l12, out_$b7, out_$i6, out_i24, out_$r19, out_z4, out_i23, out_z3, out_$fakelocal_20, out_$l11, out_$r10, out_$b14, out_$b15, out_$r18, out_$r22, out_$fakelocal_16, out_$r23, out_i25, out_$fakelocal_19 := in_$return, in_$exception, in_$fakelocal_12, in_$r14, in_$fakelocal_18, in_$fakelocal_14, in_$fakelocal_11, in_$fakelocal_13, in_$r11, in_$fakelocal_15, in_$fakelocal_10, in_$r21, in_$b8, in_$z6, in_$r15, in_$fakelocal_9, in_$fakelocal_21, in_$fakelocal_17, in_$i5, in_$i9, in_z5, in_$r17, in_$i10, in_$r13, in_z2, in_$fakelocal_8, in_$r12, in_$b13, in_$r16, in_$r20, in_$l12, in_$b7, in_$i6, in_i24, in_$r19, in_z4, in_i23, in_z3, in_$fakelocal_20, in_$l11, in_$r10, in_$b14, in_$b15, in_$r18, in_$r22, in_$fakelocal_16, in_$r23, in_i25, in_$fakelocal_19;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon212_Then:
    assume {:partition} $heap[out_$r18, $type] <: java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon138;

  anon135:
    call out_z2, out_$exception := java.lang.Boolean$booleanValue$(out_$r15);
    assert {:sourceloc "ImageMatcherWorker.java", 67, -1, -1, -1} true;
    call out_$r16, out_$exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "ImageMatcherWorker.java", 67, -1, -1, -1} true;
    call out_$r17, out_$exception := java.lang.Boolean$valueOf$boolean(out_z3);
    assert {:sourceloc "ImageMatcherWorker.java", 67, -1, -1, -1} true;
    call out_$r18, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z5, out_$r16, out_$r17);
    assert {:sourceloc "ImageMatcherWorker.java", 67, -1, -1, -1} true;
    goto anon212_Then, anon212_Else;

  anon212_Else:
    assume {:partition} !($heap[out_$r18, $type] <: java.lang.Boolean);
    call out_$fakelocal_16 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_16;
    out_$return, out_$exception, out_$fakelocal_12, out_$r14, out_$fakelocal_18, out_$fakelocal_14, out_$fakelocal_11, out_$fakelocal_13, out_$r11, out_$fakelocal_15, out_$fakelocal_10, out_$r21, out_$b8, out_$z6, out_$r15, out_$fakelocal_9, out_$fakelocal_21, out_$fakelocal_17, out_$i5, out_$i9, out_z5, out_$r17, out_$i10, out_$r13, out_z2, out_$fakelocal_8, out_$r12, out_$b13, out_$r16, out_$r20, out_$l12, out_$b7, out_$i6, out_i24, out_$r19, out_z4, out_i23, out_z3, out_$fakelocal_20, out_$l11, out_$r10, out_$b14, out_$b15, out_$r18, out_$r22, out_$fakelocal_16, out_$r23, out_i25, out_$fakelocal_19 := in_$return, in_$exception, in_$fakelocal_12, in_$r14, in_$fakelocal_18, in_$fakelocal_14, in_$fakelocal_11, in_$fakelocal_13, in_$r11, in_$fakelocal_15, in_$fakelocal_10, in_$r21, in_$b8, in_$z6, in_$r15, in_$fakelocal_9, in_$fakelocal_21, in_$fakelocal_17, in_$i5, in_$i9, in_z5, in_$r17, in_$i10, in_$r13, in_z2, in_$fakelocal_8, in_$r12, in_$b13, in_$r16, in_$r20, in_$l12, in_$b7, in_$i6, in_i24, in_$r19, in_z4, in_i23, in_z3, in_$fakelocal_20, in_$l11, in_$r10, in_$b14, in_$b15, in_$r18, in_$r22, in_$fakelocal_16, in_$r23, in_i25, in_$fakelocal_19;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon211_Then:
    assume {:partition} out_$r15 != $null;
    out_$exception := out_$exception;
    goto anon135;

  anon132:
    out_$r15 := out_$r14;
    assert {:sourceloc "ImageMatcherWorker.java", 66, -1, -1, -1} true;
    goto anon211_Then, anon211_Else;

  anon211_Else:
    assume {:partition} out_$r15 == $null;
    call out_$fakelocal_15 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_15;
    out_$return, out_$exception, out_$fakelocal_12, out_$r14, out_$fakelocal_18, out_$fakelocal_14, out_$fakelocal_11, out_$fakelocal_13, out_$r11, out_$fakelocal_15, out_$fakelocal_10, out_$r21, out_$b8, out_$z6, out_$r15, out_$fakelocal_9, out_$fakelocal_21, out_$fakelocal_17, out_$i5, out_$i9, out_z5, out_$r17, out_$i10, out_$r13, out_z2, out_$fakelocal_8, out_$r12, out_$b13, out_$r16, out_$r20, out_$l12, out_$b7, out_$i6, out_i24, out_$r19, out_z4, out_i23, out_z3, out_$fakelocal_20, out_$l11, out_$r10, out_$b14, out_$b15, out_$r18, out_$r22, out_$fakelocal_16, out_$r23, out_i25, out_$fakelocal_19 := in_$return, in_$exception, in_$fakelocal_12, in_$r14, in_$fakelocal_18, in_$fakelocal_14, in_$fakelocal_11, in_$fakelocal_13, in_$r11, in_$fakelocal_15, in_$fakelocal_10, in_$r21, in_$b8, in_$z6, in_$r15, in_$fakelocal_9, in_$fakelocal_21, in_$fakelocal_17, in_$i5, in_$i9, in_z5, in_$r17, in_$i10, in_$r13, in_z2, in_$fakelocal_8, in_$r12, in_$b13, in_$r16, in_$r20, in_$l12, in_$b7, in_$i6, in_i24, in_$r19, in_z4, in_i23, in_z3, in_$fakelocal_20, in_$l11, in_$r10, in_$b14, in_$b15, in_$r18, in_$r22, in_$fakelocal_16, in_$r23, in_i25, in_$fakelocal_19;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon210_Then:
    assume {:partition} $heap[out_$r14, $type] <: java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon132;

  anon129:
    out_$i10 := $modInt(out_i24, 2);
    assert {:sourceloc "ImageMatcherWorker.java", 62, -1, -1, -1} true;
    out_$l11 := out_$i10;
    assert {:sourceloc "ImageMatcherWorker.java", 62, -1, -1, -1} true;
    call out_z4, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long(out_$l12, out_$l11);
    assert {:sourceloc "ImageMatcherWorker.java", 64, -1, -1, -1} true;
    call out_z5, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$not$boolean(out_z4);
    assert {:sourceloc "ImageMatcherWorker.java", 66, -1, -1, -1} true;
    call out_$r10, out_$exception := java.lang.Boolean$valueOf$boolean(out_z2);
    assert {:sourceloc "ImageMatcherWorker.java", 66, -1, -1, -1} true;
    call out_$r11, out_$exception := java.lang.Boolean$valueOf$boolean(0);
    assert {:sourceloc "ImageMatcherWorker.java", 66, -1, -1, -1} true;
    call out_$r12, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z3, out_$r10, out_$r11);
    assert {:sourceloc "ImageMatcherWorker.java", 66, -1, -1, -1} true;
    call out_$r13, out_$exception := java.lang.Boolean$valueOf$boolean(out_z2);
    assert {:sourceloc "ImageMatcherWorker.java", 66, -1, -1, -1} true;
    call out_$r14, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z5, out_$r12, out_$r13);
    assert {:sourceloc "ImageMatcherWorker.java", 66, -1, -1, -1} true;
    goto anon210_Then, anon210_Else;

  anon210_Else:
    assume {:partition} !($heap[out_$r14, $type] <: java.lang.Boolean);
    call out_$fakelocal_14 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_14;
    out_$return, out_$exception, out_$fakelocal_12, out_$r14, out_$fakelocal_18, out_$fakelocal_14, out_$fakelocal_11, out_$fakelocal_13, out_$r11, out_$fakelocal_15, out_$fakelocal_10, out_$r21, out_$b8, out_$z6, out_$r15, out_$fakelocal_9, out_$fakelocal_21, out_$fakelocal_17, out_$i5, out_$i9, out_z5, out_$r17, out_$i10, out_$r13, out_z2, out_$fakelocal_8, out_$r12, out_$b13, out_$r16, out_$r20, out_$l12, out_$b7, out_$i6, out_i24, out_$r19, out_z4, out_i23, out_z3, out_$fakelocal_20, out_$l11, out_$r10, out_$b14, out_$b15, out_$r18, out_$r22, out_$fakelocal_16, out_$r23, out_i25, out_$fakelocal_19 := in_$return, in_$exception, in_$fakelocal_12, in_$r14, in_$fakelocal_18, in_$fakelocal_14, in_$fakelocal_11, in_$fakelocal_13, in_$r11, in_$fakelocal_15, in_$fakelocal_10, in_$r21, in_$b8, in_$z6, in_$r15, in_$fakelocal_9, in_$fakelocal_21, in_$fakelocal_17, in_$i5, in_$i9, in_z5, in_$r17, in_$i10, in_$r13, in_z2, in_$fakelocal_8, in_$r12, in_$b13, in_$r16, in_$r20, in_$l12, in_$b7, in_$i6, in_i24, in_$r19, in_z4, in_i23, in_z3, in_$fakelocal_20, in_$l11, in_$r10, in_$b14, in_$b15, in_$r18, in_$r22, in_$fakelocal_16, in_$r23, in_i25, in_$fakelocal_19;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon209_Then:
    assume {:partition} 2 != 0;
    out_$exception := out_$exception;
    goto anon129;

  anon126:
    out_$i9 := $modInt(out_i25, 2);
    assert {:sourceloc "ImageMatcherWorker.java", 62, -1, -1, -1} true;
    out_$l12 := out_$i9;
    assert {:sourceloc "ImageMatcherWorker.java", 62, -1, -1, -1} true;
    goto anon209_Then, anon209_Else;

  anon209_Else:
    assume {:partition} 2 == 0;
    call out_$fakelocal_13 := $new(java.lang.ArithmeticException);
    out_$return := 0;
    out_$exception := out_$fakelocal_13;
    out_$return, out_$exception, out_$fakelocal_12, out_$r14, out_$fakelocal_18, out_$fakelocal_14, out_$fakelocal_11, out_$fakelocal_13, out_$r11, out_$fakelocal_15, out_$fakelocal_10, out_$r21, out_$b8, out_$z6, out_$r15, out_$fakelocal_9, out_$fakelocal_21, out_$fakelocal_17, out_$i5, out_$i9, out_z5, out_$r17, out_$i10, out_$r13, out_z2, out_$fakelocal_8, out_$r12, out_$b13, out_$r16, out_$r20, out_$l12, out_$b7, out_$i6, out_i24, out_$r19, out_z4, out_i23, out_z3, out_$fakelocal_20, out_$l11, out_$r10, out_$b14, out_$b15, out_$r18, out_$r22, out_$fakelocal_16, out_$r23, out_i25, out_$fakelocal_19 := in_$return, in_$exception, in_$fakelocal_12, in_$r14, in_$fakelocal_18, in_$fakelocal_14, in_$fakelocal_11, in_$fakelocal_13, in_$r11, in_$fakelocal_15, in_$fakelocal_10, in_$r21, in_$b8, in_$z6, in_$r15, in_$fakelocal_9, in_$fakelocal_21, in_$fakelocal_17, in_$i5, in_$i9, in_z5, in_$r17, in_$i10, in_$r13, in_z2, in_$fakelocal_8, in_$r12, in_$b13, in_$r16, in_$r20, in_$l12, in_$b7, in_$i6, in_i24, in_$r19, in_z4, in_i23, in_z3, in_$fakelocal_20, in_$l11, in_$r10, in_$b14, in_$b15, in_$r18, in_$r22, in_$fakelocal_16, in_$r23, in_i25, in_$fakelocal_19;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon208_Then:
    assume {:partition} 2 != 0;
    out_$exception := out_$exception;
    goto anon126;

  anon123:
    out_$b8 := $intArrHeap[in_r1][out_i23];
    assert {:sourceloc "ImageMatcherWorker.java", 60, -1, -1, -1} true;
    call out_i25, out_$exception := java.lang.Math$abs$int(out_$b8);
    assert {:sourceloc "ImageMatcherWorker.java", 62, -1, -1, -1} true;
    goto anon208_Then, anon208_Else;

  anon208_Else:
    assume {:partition} 2 == 0;
    call out_$fakelocal_12 := $new(java.lang.ArithmeticException);
    out_$return := 0;
    out_$exception := out_$fakelocal_12;
    out_$return, out_$exception, out_$fakelocal_12, out_$r14, out_$fakelocal_18, out_$fakelocal_14, out_$fakelocal_11, out_$fakelocal_13, out_$r11, out_$fakelocal_15, out_$fakelocal_10, out_$r21, out_$b8, out_$z6, out_$r15, out_$fakelocal_9, out_$fakelocal_21, out_$fakelocal_17, out_$i5, out_$i9, out_z5, out_$r17, out_$i10, out_$r13, out_z2, out_$fakelocal_8, out_$r12, out_$b13, out_$r16, out_$r20, out_$l12, out_$b7, out_$i6, out_i24, out_$r19, out_z4, out_i23, out_z3, out_$fakelocal_20, out_$l11, out_$r10, out_$b14, out_$b15, out_$r18, out_$r22, out_$fakelocal_16, out_$r23, out_i25, out_$fakelocal_19 := in_$return, in_$exception, in_$fakelocal_12, in_$r14, in_$fakelocal_18, in_$fakelocal_14, in_$fakelocal_11, in_$fakelocal_13, in_$r11, in_$fakelocal_15, in_$fakelocal_10, in_$r21, in_$b8, in_$z6, in_$r15, in_$fakelocal_9, in_$fakelocal_21, in_$fakelocal_17, in_$i5, in_$i9, in_z5, in_$r17, in_$i10, in_$r13, in_z2, in_$fakelocal_8, in_$r12, in_$b13, in_$r16, in_$r20, in_$l12, in_$b7, in_$i6, in_i24, in_$r19, in_z4, in_i23, in_z3, in_$fakelocal_20, in_$l11, in_$r10, in_$b14, in_$b15, in_$r18, in_$r22, in_$fakelocal_16, in_$r23, in_i25, in_$fakelocal_19;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon207_Then:
    assume {:partition} out_i23 < $arrSizeHeap[in_r1] && out_i23 >= 0;
    out_$exception := out_$exception;
    goto anon123;

  anon120:
    out_$b7 := $intArrHeap[in_r31][out_i23];
    assert {:sourceloc "ImageMatcherWorker.java", 58, -1, -1, -1} true;
    call out_i24, out_$exception := java.lang.Math$abs$int(out_$b7);
    assert {:sourceloc "ImageMatcherWorker.java", 60, -1, -1, -1} true;
    goto anon207_Then, anon207_Else;

  anon207_Else:
    assume {:partition} !(out_i23 < $arrSizeHeap[in_r1] && out_i23 >= 0);
    call out_$fakelocal_11 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_11;
    out_$return, out_$exception, out_$fakelocal_12, out_$r14, out_$fakelocal_18, out_$fakelocal_14, out_$fakelocal_11, out_$fakelocal_13, out_$r11, out_$fakelocal_15, out_$fakelocal_10, out_$r21, out_$b8, out_$z6, out_$r15, out_$fakelocal_9, out_$fakelocal_21, out_$fakelocal_17, out_$i5, out_$i9, out_z5, out_$r17, out_$i10, out_$r13, out_z2, out_$fakelocal_8, out_$r12, out_$b13, out_$r16, out_$r20, out_$l12, out_$b7, out_$i6, out_i24, out_$r19, out_z4, out_i23, out_z3, out_$fakelocal_20, out_$l11, out_$r10, out_$b14, out_$b15, out_$r18, out_$r22, out_$fakelocal_16, out_$r23, out_i25, out_$fakelocal_19 := in_$return, in_$exception, in_$fakelocal_12, in_$r14, in_$fakelocal_18, in_$fakelocal_14, in_$fakelocal_11, in_$fakelocal_13, in_$r11, in_$fakelocal_15, in_$fakelocal_10, in_$r21, in_$b8, in_$z6, in_$r15, in_$fakelocal_9, in_$fakelocal_21, in_$fakelocal_17, in_$i5, in_$i9, in_z5, in_$r17, in_$i10, in_$r13, in_z2, in_$fakelocal_8, in_$r12, in_$b13, in_$r16, in_$r20, in_$l12, in_$b7, in_$i6, in_i24, in_$r19, in_z4, in_i23, in_z3, in_$fakelocal_20, in_$l11, in_$r10, in_$b14, in_$b15, in_$r18, in_$r22, in_$fakelocal_16, in_$r23, in_i25, in_$fakelocal_19;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon206_Then:
    assume {:partition} out_i23 < $arrSizeHeap[in_r31] && out_i23 >= 0;
    out_$exception := out_$exception;
    goto anon120;

  anon117:
    assert {:sourceloc "ImageMatcherWorker.java", 58, -1, -1, -1} true;
    goto anon206_Then, anon206_Else;

  anon206_Else:
    assume {:partition} !(out_i23 < $arrSizeHeap[in_r31] && out_i23 >= 0);
    call out_$fakelocal_10 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_10;
    out_$return, out_$exception, out_$fakelocal_12, out_$r14, out_$fakelocal_18, out_$fakelocal_14, out_$fakelocal_11, out_$fakelocal_13, out_$r11, out_$fakelocal_15, out_$fakelocal_10, out_$r21, out_$b8, out_$z6, out_$r15, out_$fakelocal_9, out_$fakelocal_21, out_$fakelocal_17, out_$i5, out_$i9, out_z5, out_$r17, out_$i10, out_$r13, out_z2, out_$fakelocal_8, out_$r12, out_$b13, out_$r16, out_$r20, out_$l12, out_$b7, out_$i6, out_i24, out_$r19, out_z4, out_i23, out_z3, out_$fakelocal_20, out_$l11, out_$r10, out_$b14, out_$b15, out_$r18, out_$r22, out_$fakelocal_16, out_$r23, out_i25, out_$fakelocal_19 := in_$return, in_$exception, in_$fakelocal_12, in_$r14, in_$fakelocal_18, in_$fakelocal_14, in_$fakelocal_11, in_$fakelocal_13, in_$r11, in_$fakelocal_15, in_$fakelocal_10, in_$r21, in_$b8, in_$z6, in_$r15, in_$fakelocal_9, in_$fakelocal_21, in_$fakelocal_17, in_$i5, in_$i9, in_z5, in_$r17, in_$i10, in_$r13, in_z2, in_$fakelocal_8, in_$r12, in_$b13, in_$r16, in_$r20, in_$l12, in_$b7, in_$i6, in_i24, in_$r19, in_z4, in_i23, in_z3, in_$fakelocal_20, in_$l11, in_$r10, in_$b14, in_$b15, in_$r18, in_$r22, in_$fakelocal_16, in_$r23, in_i25, in_$fakelocal_19;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon205_Else:
    assume {:partition} out_$i6 > out_i23;
    assert {:sourceloc "ImageMatcherWorker.java", 77, -1, -1, -1} {:comment "elseblock"} true;
    goto anon117;

  anon114:
    out_$i6 := $arrSizeHeap[in_r1];
    assert {:sourceloc "ImageMatcherWorker.java", 77, -1, -1, -1} true;
    goto anon205_Then, anon205_Else;

  anon205_Then:
    assume {:partition} out_i23 >= out_$i6;
    assert {:sourceloc "ImageMatcherWorker.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_12, out_$r14, out_$fakelocal_18, out_$fakelocal_14, out_$fakelocal_11, out_$fakelocal_13, out_$r11, out_$fakelocal_15, out_$fakelocal_10, out_$r21, out_$b8, out_$z6, out_$r15, out_$fakelocal_9, out_$fakelocal_21, out_$fakelocal_17, out_$i5, out_$i9, out_z5, out_$r17, out_$i10, out_$r13, out_z2, out_$fakelocal_8, out_$r12, out_$b13, out_$r16, out_$r20, out_$l12, out_$b7, out_$i6, out_i24, out_$r19, out_z4, out_i23, out_z3, out_$fakelocal_20, out_$l11, out_$r10, out_$b14, out_$b15, out_$r18, out_$r22, out_$fakelocal_16, out_$r23, out_i25, out_$fakelocal_19 := in_$return, in_$exception, in_$fakelocal_12, in_$r14, in_$fakelocal_18, in_$fakelocal_14, in_$fakelocal_11, in_$fakelocal_13, in_$r11, in_$fakelocal_15, in_$fakelocal_10, in_$r21, in_$b8, in_$z6, in_$r15, in_$fakelocal_9, in_$fakelocal_21, in_$fakelocal_17, in_$i5, in_$i9, in_z5, in_$r17, in_$i10, in_$r13, in_z2, in_$fakelocal_8, in_$r12, in_$b13, in_$r16, in_$r20, in_$l12, in_$b7, in_$i6, in_i24, in_$r19, in_z4, in_i23, in_z3, in_$fakelocal_20, in_$l11, in_$r10, in_$b14, in_$b15, in_$r18, in_$r22, in_$fakelocal_16, in_$r23, in_i25, in_$fakelocal_19;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon204_Then:
    assume {:partition} in_r1 != $null;
    out_$exception := out_$exception;
    goto anon114;

  anon111:
    assert {:sourceloc "ImageMatcherWorker.java", 77, -1, -1, -1} true;
    goto anon204_Then, anon204_Else;

  anon204_Else:
    assume {:partition} in_r1 == $null;
    call out_$fakelocal_9 := $new(java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_9;
    out_$return, out_$exception, out_$fakelocal_12, out_$r14, out_$fakelocal_18, out_$fakelocal_14, out_$fakelocal_11, out_$fakelocal_13, out_$r11, out_$fakelocal_15, out_$fakelocal_10, out_$r21, out_$b8, out_$z6, out_$r15, out_$fakelocal_9, out_$fakelocal_21, out_$fakelocal_17, out_$i5, out_$i9, out_z5, out_$r17, out_$i10, out_$r13, out_z2, out_$fakelocal_8, out_$r12, out_$b13, out_$r16, out_$r20, out_$l12, out_$b7, out_$i6, out_i24, out_$r19, out_z4, out_i23, out_z3, out_$fakelocal_20, out_$l11, out_$r10, out_$b14, out_$b15, out_$r18, out_$r22, out_$fakelocal_16, out_$r23, out_i25, out_$fakelocal_19 := in_$return, in_$exception, in_$fakelocal_12, in_$r14, in_$fakelocal_18, in_$fakelocal_14, in_$fakelocal_11, in_$fakelocal_13, in_$r11, in_$fakelocal_15, in_$fakelocal_10, in_$r21, in_$b8, in_$z6, in_$r15, in_$fakelocal_9, in_$fakelocal_21, in_$fakelocal_17, in_$i5, in_$i9, in_z5, in_$r17, in_$i10, in_$r13, in_z2, in_$fakelocal_8, in_$r12, in_$b13, in_$r16, in_$r20, in_$l12, in_$b7, in_$i6, in_i24, in_$r19, in_z4, in_i23, in_z3, in_$fakelocal_20, in_$l11, in_$r10, in_$b14, in_$b15, in_$r18, in_$r22, in_$fakelocal_16, in_$r23, in_i25, in_$fakelocal_19;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon203_Else:
    assume {:partition} out_$i5 > out_i23;
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto anon111;

  anon108:
    out_$i5 := $arrSizeHeap[in_r31];
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} true;
    goto anon203_Then, anon203_Else;

  anon203_Then:
    assume {:partition} out_i23 >= out_$i5;
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_12, out_$r14, out_$fakelocal_18, out_$fakelocal_14, out_$fakelocal_11, out_$fakelocal_13, out_$r11, out_$fakelocal_15, out_$fakelocal_10, out_$r21, out_$b8, out_$z6, out_$r15, out_$fakelocal_9, out_$fakelocal_21, out_$fakelocal_17, out_$i5, out_$i9, out_z5, out_$r17, out_$i10, out_$r13, out_z2, out_$fakelocal_8, out_$r12, out_$b13, out_$r16, out_$r20, out_$l12, out_$b7, out_$i6, out_i24, out_$r19, out_z4, out_i23, out_z3, out_$fakelocal_20, out_$l11, out_$r10, out_$b14, out_$b15, out_$r18, out_$r22, out_$fakelocal_16, out_$r23, out_i25, out_$fakelocal_19 := in_$return, in_$exception, in_$fakelocal_12, in_$r14, in_$fakelocal_18, in_$fakelocal_14, in_$fakelocal_11, in_$fakelocal_13, in_$r11, in_$fakelocal_15, in_$fakelocal_10, in_$r21, in_$b8, in_$z6, in_$r15, in_$fakelocal_9, in_$fakelocal_21, in_$fakelocal_17, in_$i5, in_$i9, in_z5, in_$r17, in_$i10, in_$r13, in_z2, in_$fakelocal_8, in_$r12, in_$b13, in_$r16, in_$r20, in_$l12, in_$b7, in_$i6, in_i24, in_$r19, in_z4, in_i23, in_z3, in_$fakelocal_20, in_$l11, in_$r10, in_$b14, in_$b15, in_$r18, in_$r22, in_$fakelocal_16, in_$r23, in_i25, in_$fakelocal_19;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon202_Then:
    assume {:partition} in_r31 != $null;
    out_$exception := out_$exception;
    goto anon108;

  anon215_Else:
    assume {:partition} out_z4 != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} {:comment "elseblock"} true;
    goto anon147;

  anon156_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$fakelocal_12, out_$r14, out_$fakelocal_18, out_$fakelocal_14, out_$fakelocal_11, out_$fakelocal_13, out_$r11, out_$fakelocal_15, out_$fakelocal_10, out_$r21, out_$b8, out_$z6, out_$r15, out_$fakelocal_9, out_$fakelocal_21, out_$fakelocal_17, out_$i5, out_$i9, out_z5, out_$r17, out_$i10, out_$r13, out_z2, out_$fakelocal_8, out_$r12, out_$b13, out_$r16, out_$r20, out_$l12, out_$b7, out_$i6, out_i24, out_$r19, out_z4, out_i23, out_z3, out_$fakelocal_20, out_$l11, out_$r10, out_$b14, out_$b15, out_$r18, out_$r22, out_$fakelocal_16, out_$r23, out_i25, out_$fakelocal_19 := ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9(out_$return, out_$exception, out_$fakelocal_12, out_$r14, out_$fakelocal_18, out_$fakelocal_14, out_$fakelocal_11, out_$fakelocal_13, out_$r11, out_$fakelocal_15, out_$fakelocal_10, out_$r21, out_$b8, out_$z6, out_$r15, out_$fakelocal_9, in_r1, out_$fakelocal_21, out_$fakelocal_17, out_$i5, out_$i9, out_z5, out_$r17, out_$i10, out_$r13, out_z2, out_$fakelocal_8, out_$r12, out_$b13, out_$r16, in_r31, out_$r20, out_$l12, out_$b7, out_$i6, out_i24, out_$r19, out_z4, out_i23, out_z3, out_$fakelocal_20, out_$l11, out_$r10, out_$b14, out_$b15, out_$r18, out_$r22, out_$fakelocal_16, out_$r23, out_i25, out_$fakelocal_19);
    return;

  exit:
    return;
}



procedure ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_12: ref, 
    in_$r14: ref, 
    in_$fakelocal_18: ref, 
    in_$fakelocal_14: ref, 
    in_$fakelocal_11: ref, 
    in_$fakelocal_13: ref, 
    in_$r11: ref, 
    in_$fakelocal_15: ref, 
    in_$fakelocal_10: ref, 
    in_$r21: ref, 
    in_$b8: int, 
    in_$z6: int, 
    in_$r15: ref, 
    in_$fakelocal_9: ref, 
    in_r1: ref, 
    in_$fakelocal_21: ref, 
    in_$fakelocal_17: ref, 
    in_$i5: int, 
    in_$i9: int, 
    in_z5: int, 
    in_$r17: ref, 
    in_$i10: int, 
    in_$r13: ref, 
    in_z2: int, 
    in_$fakelocal_8: ref, 
    in_$r12: ref, 
    in_$b13: int, 
    in_$r16: ref, 
    in_r31: ref, 
    in_$r20: ref, 
    in_$l12: int, 
    in_$b7: int, 
    in_$i6: int, 
    in_i24: int, 
    in_$r19: ref, 
    in_z4: int, 
    in_i23: int, 
    in_z3: int, 
    in_$fakelocal_20: ref, 
    in_$l11: int, 
    in_$r10: ref, 
    in_$b14: int, 
    in_$b15: int, 
    in_$r18: ref, 
    in_$r22: ref, 
    in_$fakelocal_16: ref, 
    in_$r23: ref, 
    in_i25: int, 
    in_$fakelocal_19: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_12: ref, 
    out_$r14: ref, 
    out_$fakelocal_18: ref, 
    out_$fakelocal_14: ref, 
    out_$fakelocal_11: ref, 
    out_$fakelocal_13: ref, 
    out_$r11: ref, 
    out_$fakelocal_15: ref, 
    out_$fakelocal_10: ref, 
    out_$r21: ref, 
    out_$b8: int, 
    out_$z6: int, 
    out_$r15: ref, 
    out_$fakelocal_9: ref, 
    out_$fakelocal_21: ref, 
    out_$fakelocal_17: ref, 
    out_$i5: int, 
    out_$i9: int, 
    out_z5: int, 
    out_$r17: ref, 
    out_$i10: int, 
    out_$r13: ref, 
    out_z2: int, 
    out_$fakelocal_8: ref, 
    out_$r12: ref, 
    out_$b13: int, 
    out_$r16: ref, 
    out_$r20: ref, 
    out_$l12: int, 
    out_$b7: int, 
    out_$i6: int, 
    out_i24: int, 
    out_$r19: ref, 
    out_z4: int, 
    out_i23: int, 
    out_z3: int, 
    out_$fakelocal_20: ref, 
    out_$l11: int, 
    out_$r10: ref, 
    out_$b14: int, 
    out_$b15: int, 
    out_$r18: ref, 
    out_$r22: ref, 
    out_$fakelocal_16: ref, 
    out_$r23: ref, 
    out_i25: int, 
    out_$fakelocal_19: ref);
  modifies $intArrHeap, $objIndex, $heap;



implementation ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4(in_$return: int, 
    in_$exception: ref, 
    in_$b18: int, 
    in_r4: ref, 
    in_$i16: int, 
    in_r34: ref, 
    in_i22: int, 
    in_i21: int, 
    in_$i4: int, 
    in_i0: int, 
    in_$i17: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$b18: int, 
    out_$i16: int, 
    out_i22: int, 
    out_i21: int, 
    out_$i4: int, 
    out_$i17: int)
{

  entry:
    out_$return, out_$exception, out_$b18, out_$i16, out_i22, out_i21, out_$i4, out_$i17 := in_$return, in_$exception, in_$b18, in_$i16, in_i22, in_i21, in_$i4, in_$i17;
    goto block4;

  block4:
    assert {:sourceloc "ImageMatcherWorker.java", 43, -1, -1, -1} true;
    out_$i4 := $mulInt(in_i0, 128);
    assert {:sourceloc "ImageMatcherWorker.java", 43, -1, -1, -1} true;
    goto anon194_Then, anon194_Else;

  anon194_Then:
    assume {:partition} out_i22 >= out_$i4;
    assert {:sourceloc "ImageMatcherWorker.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$b18, out_$i16, out_i22, out_i21, out_$i4, out_$i17 := in_$return, in_$exception, in_$b18, in_$i16, in_i22, in_i21, in_$i4, in_$i17;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon93:
    $intArrHeap := $intArrHeap[in_r4 := $intArrHeap[in_r4][out_i21 := out_$b18]];
    assert {:sourceloc "ImageMatcherWorker.java", 45, -1, -1, -1} true;
    out_i21 := out_i21 + 1;
    assert {:sourceloc "ImageMatcherWorker.java", 43, -1, -1, -1} true;
    out_i22 := out_i22 + in_i0;
    assert {:sourceloc "ImageMatcherWorker.java", 43, -1, -1, -1} true;
    goto anon93_dummy;

  anon197_Then:
    assume {:partition} out_i21 < $arrSizeHeap[in_r4] && out_i21 >= 0;
    assert {:sourceloc "ImageMatcherWorker.java", 44, -1, -1, -1} true;
    goto anon93;

  anon90:
    out_$i17 := $modInt(out_$i16, 2);
    assert {:sourceloc "ImageMatcherWorker.java", 44, -1, -1, -1} true;
    out_$b18 := out_$i17;
    assert {:sourceloc "ImageMatcherWorker.java", 44, -1, -1, -1} true;
    goto anon197_Then, anon197_Else;

  anon197_Else:
    assume {:partition} !(out_i21 < $arrSizeHeap[in_r4] && out_i21 >= 0);
    assert {:sourceloc "ImageMatcherWorker.java", 44, -1, -1, -1} true;
    assert {:noverify} true;
    out_$return := 0;
    call out_$exception := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return, out_$exception, out_$b18, out_$i16, out_i22, out_i21, out_$i4, out_$i17 := in_$return, in_$exception, in_$b18, in_$i16, in_i22, in_i21, in_$i4, in_$i17;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon196_Then:
    assume {:partition} 2 != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 44, -1, -1, -1} true;
    goto anon90;

  anon87:
    out_$i16 := $intArrHeap[in_r34][out_i22];
    assert {:sourceloc "ImageMatcherWorker.java", 44, -1, -1, -1} true;
    goto anon196_Then, anon196_Else;

  anon196_Else:
    assume {:partition} 2 == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 44, -1, -1, -1} true;
    assert {:noverify} true;
    out_$return := 0;
    call out_$exception := $new(java.lang.ArithmeticException);
    out_$return, out_$exception, out_$b18, out_$i16, out_i22, out_i21, out_$i4, out_$i17 := in_$return, in_$exception, in_$b18, in_$i16, in_i22, in_i21, in_$i4, in_$i17;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon195_Then:
    assume {:partition} out_i22 < $arrSizeHeap[in_r34] && out_i22 >= 0;
    assert {:sourceloc "ImageMatcherWorker.java", 44, -1, -1, -1} true;
    goto anon87;

  anon84:
    assert {:sourceloc "ImageMatcherWorker.java", 44, -1, -1, -1} true;
    goto anon195_Then, anon195_Else;

  anon195_Else:
    assume {:partition} !(out_i22 < $arrSizeHeap[in_r34] && out_i22 >= 0);
    assert {:sourceloc "ImageMatcherWorker.java", 44, -1, -1, -1} true;
    assert {:noverify} true;
    out_$return := 0;
    call out_$exception := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return, out_$exception, out_$b18, out_$i16, out_i22, out_i21, out_$i4, out_$i17 := in_$return, in_$exception, in_$b18, in_$i16, in_i22, in_i21, in_$i4, in_$i17;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon194_Else:
    assume {:partition} out_$i4 > out_i22;
    assert {:sourceloc "ImageMatcherWorker.java", 43, -1, -1, -1} {:comment "elseblock"} true;
    goto anon84;

  anon93_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$b18, out_$i16, out_i22, out_i21, out_$i4, out_$i17 := ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4(out_$return, out_$exception, out_$b18, in_r4, out_$i16, in_r34, out_i22, out_i21, out_$i4, in_i0, out_$i17);
    return;

  exit:
    return;
}



procedure ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4(in_$return: int, 
    in_$exception: ref, 
    in_$b18: int, 
    in_r4: ref, 
    in_$i16: int, 
    in_r34: ref, 
    in_i22: int, 
    in_i21: int, 
    in_$i4: int, 
    in_i0: int, 
    in_$i17: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$b18: int, 
    out_$i16: int, 
    out_i22: int, 
    out_i21: int, 
    out_$i4: int, 
    out_$i17: int);
  modifies $intArrHeap, $objIndex, $heap;


