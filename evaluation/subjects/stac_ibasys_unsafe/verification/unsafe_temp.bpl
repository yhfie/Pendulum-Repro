var unsafe.$heap: $heap_type;

var unsafe.$intArrayType: javaType;

var unsafe.$charArrayType: javaType;

var unsafe.$boolArrayType: javaType;

var unsafe.$byteArrayType: javaType;

var unsafe.$longArrayType: javaType;

var unsafe.$arrSizeHeap: [ref]int;

var unsafe.$stringSizeHeap: [ref]int;

var unsafe.$boolArrHeap: boolArrHeap_type;

var unsafe.$refArrHeap: refArrHeap_type;

var unsafe.$realArrHeap: realArrHeap_type;

var unsafe.$intArrHeap: intArrHeap_type;

var unsafe.$objIndex: int;

var unsafe.java.lang.String$ImageMatcherWorker$errorcode263: Field ref;

var unsafe.java.lang.StringBuffer$ImageMatcherWorker$error264: Field ref;

var unsafe.boolean$ImageMatcherWorker$success0: Field int;

var unsafe.java.io.PrintStream$java.lang.System$out271: ref;

const unique unsafe.$type: Field javaType;

const unique unsafe.$alloc: Field bool;

const unique unsafe.$null: ref;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.lang.Object: javaType extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.ImageMatcherWorker: javaType extends unique unsafe.java.lang.Object complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.io.Serializable: javaType extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.lang.Comparable: javaType extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.lang.CharSequence: javaType extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.lang.String: javaType extends unique unsafe.java.lang.Object, unsafe.java.io.Serializable, unsafe.java.lang.Comparable, unsafe.java.lang.CharSequence complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.lang.Appendable: javaType extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.lang.AbstractStringBuilder: javaType extends unique unsafe.java.lang.Object, unsafe.java.lang.Appendable, unsafe.java.lang.CharSequence complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.lang.StringBuffer: javaType extends unique unsafe.java.lang.AbstractStringBuilder, unsafe.java.io.Serializable, unsafe.java.lang.CharSequence complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.ScalrApplyTest: javaType extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.lang.Throwable: javaType extends unique unsafe.java.lang.Object, unsafe.java.io.Serializable complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.lang.Exception: javaType extends unique unsafe.java.lang.Throwable complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.awt.Image: javaType extends unique unsafe.java.lang.Object complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.awt.image.RenderedImage: javaType extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.awt.image.WritableRenderedImage: javaType extends unsafe.java.awt.image.RenderedImage complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.awt.Transparency: javaType extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.awt.image.BufferedImage: javaType extends unique unsafe.java.awt.Image, unsafe.java.awt.image.WritableRenderedImage, unsafe.java.awt.Transparency complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.lang.RuntimeException: javaType extends unique unsafe.java.lang.Exception complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.lang.ClassCastException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.lang.NullPointerException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.nio.Buffer: javaType extends unique unsafe.java.lang.Object complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.nio.ByteBuffer: javaType extends unique unsafe.java.nio.Buffer, unsafe.java.lang.Comparable complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.nio.IntBuffer: javaType extends unique unsafe.java.nio.Buffer, unsafe.java.lang.Comparable complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.lang.AutoCloseable: javaType extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.io.Closeable: javaType extends unsafe.java.lang.AutoCloseable complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.io.Flushable: javaType extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.io.OutputStream: javaType extends unique unsafe.java.lang.Object, unsafe.java.io.Closeable, unsafe.java.io.Flushable complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.io.ByteArrayOutputStream: javaType extends unique unsafe.java.io.OutputStream complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.io.IOException: javaType extends unique unsafe.java.lang.Exception complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.lang.ArithmeticException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.lang.IndexOutOfBoundsException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.lang.ArrayIndexOutOfBoundsException: javaType extends unique unsafe.java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.lang.StringBuilder: javaType extends unique unsafe.java.lang.AbstractStringBuilder, unsafe.java.io.Serializable, unsafe.java.lang.CharSequence complete;

const unique unsafe.$StringConst0: ref extends complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.io.FilterOutputStream: javaType extends unique unsafe.java.io.OutputStream complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.io.PrintStream: javaType extends unique unsafe.java.io.FilterOutputStream, unsafe.java.lang.Appendable, unsafe.java.io.Closeable complete;

const {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unique unsafe.java.lang.Math: javaType extends unique unsafe.java.lang.Object complete;

function unsafe.$arrayType(t: javaType) : javaType;

function unsafe.$intToReal(x: int) : real;

function unsafe.$intToBool(x: int) : bool;

function unsafe.$refToBool(x: ref) : bool;

function unsafe.$boolToInt(x: bool) : int;

function unsafe.$cmpBool(x: bool, y: bool) : int;

function unsafe.$cmpRef(x: ref, y: ref) : int;

function unsafe.$cmpReal(x: real, y: real) : int;

function unsafe.$cmpInt(x: int, y: int) : int;

function unsafe.$bitOr(x: int, y: int) : int;

function unsafe.$bitAnd(x: int, y: int) : int;

function unsafe.$xorInt(x: int, y: int) : int;

function unsafe.$shlInt(x: int, y: int) : int;

function unsafe.$ushrInt(x: int, y: int) : int;

function unsafe.$shrInt(x: int, y: int) : int;

function unsafe.$mulInt(x: int, y: int) : int;

function unsafe.$divInt(x: int, y: int) : int;

function unsafe.$modInt(x: int, y: int) : int;

function unsafe.$intToRef(id: int) : ref;

axiom (forall x: int :: 
  { unsafe.$intToBool(x): bool } 
  unsafe.$intToBool(x): bool <==> (if x == 0 then false else true));

axiom (forall x: ref :: 
  { unsafe.$refToBool(x): bool } 
  unsafe.$refToBool(x): bool <==> (if x == unsafe.$null then false else true));

axiom (forall x: bool :: 
  { unsafe.$boolToInt(x): int } 
  unsafe.$boolToInt(x): int == (if x <==> true then 1 else 0));

axiom (forall x: real, y: real :: 
  { unsafe.$cmpReal(x, y): int } 
  unsafe.$cmpReal(x, y): int == (if x > y then 1 else (if x < y then -1 else 0)));

axiom (forall x: int, y: int :: 
  { unsafe.$cmpInt(x, y): int } 
  unsafe.$cmpInt(x, y): int == (if x > y then 1 else (if x < y then -1 else 0)));

axiom (forall index: int :: unsafe.$intToRef(index) != unsafe.$null);

axiom (forall i1: int, i2: int :: 
  i1 == i2 <==> unsafe.$intToRef(i1) == unsafe.$intToRef(i2));

procedure {:prefix "unsafe"} unsafe.$new(obj_type: javaType) returns ($obj: ref);
  modifies unsafe.$objIndex, unsafe.$heap;
  free ensures unsafe.$objIndex == old(unsafe.$objIndex) + 1;
  free ensures !old(unsafe.$heap[$obj, unsafe.$alloc]);
  free ensures $obj == unsafe.$intToRef(old(unsafe.$objIndex));
  free ensures unsafe.$heap
   == old(unsafe.$heap)[$obj, unsafe.$alloc := true][$obj, unsafe.$type := obj_type];
  free ensures $obj != unsafe.$null;



procedure {:prefix "unsafe"} unsafe.java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  free ensures $other != unsafe.$null;
  free ensures unsafe.$heap[$other, unsafe.$alloc] <==> true;
  free ensures unsafe.$heap[$other, unsafe.$type] == unsafe.$heap[$this, unsafe.$type];



procedure {:prefix "unsafe"} unsafe.int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure {:prefix "unsafe"} unsafe.ImageMatcherWorker$$la$init$ra$$($this: ref) returns ($exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap, unsafe.$stringSizeHeap;



procedure {:prefix "unsafe"} unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.StringBuffer$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$arrSizeHeap, unsafe.$intArrHeap, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.ScalrApplyTest$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.ScalrApplyTest$setup$byte$lp$$rp$($in_parameter__0: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.ScalrApplyTest$testApply1$($this: ref) returns ($return: ref, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.awt.image.BufferedImage$getWidth$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.awt.image.BufferedImage$getHeight$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.awt.image.BufferedImage$getRGB$int_int_int_int_int$lp$$rp$_int_int($this: ref, 
    $in_parameter__0: int, 
    $in_parameter__1: int, 
    $in_parameter__2: int, 
    $in_parameter__3: int, 
    $in_parameter__4: ref, 
    $in_parameter__5: int, 
    $in_parameter__6: int)
   returns ($return: ref, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.nio.ByteBuffer$allocate$int($in_parameter__0: int) returns ($return: ref, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.nio.ByteBuffer$asIntBuffer$($this: ref) returns ($return: ref, $exception: ref);
  modifies unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.nio.IntBuffer$put$int$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.io.ByteArrayOutputStream$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.nio.ByteBuffer$array$($this: ref) returns ($return: ref, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.io.OutputStream$write$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.io.OutputStream$flush$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.io.ByteArrayOutputStream$close$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.ScalrApplyTest$tearDown$() returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.StringBuilder$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.StringBuilder$append$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Throwable$getMessage$($this: ref) returns ($return: ref, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.StringBuilder$toString$($this: ref) returns ($return: ref, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.io.PrintStream$println$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Math$abs$int($in_parameter__0: int) returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9(in_$return: int, 
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
  modifies unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4(in_$return: int, 
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
  modifies unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap;



implementation unsafe.ImageMatcherWorker$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var $fakelocal_0: ref;
  var $r1: ref;
  var $fakelocal_1: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type] <: unsafe.ImageMatcherWorker;
    assume {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "ImageMatcherWorker.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$java.lang.Object$$la$init$ra$$$0$$this := r0;
    havoc inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$java.lang.Object$$la$init$ra$$$0$$exception := unsafe.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    $exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "ImageMatcherWorker.java", 12, -1, -1, -1} true;
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.String);
    unsafe.$stringSizeHeap := unsafe.$stringSizeHeap[$fakelocal_0 := 0];
    unsafe.$heap := unsafe.$heap[r0, unsafe.java.lang.String$ImageMatcherWorker$errorcode263 := $fakelocal_0];
    assert {:sourceloc "ImageMatcherWorker.java", 13, -1, -1, -1} true;
    call $fakelocal_1 := unsafe.$new(unsafe.java.lang.StringBuffer);
    $r1 := $fakelocal_1;
    assert {:sourceloc "ImageMatcherWorker.java", 13, -1, -1, -1} true;
    call $exception := unsafe.java.lang.StringBuffer$$la$init$ra$$($r1);
    assert {:sourceloc "ImageMatcherWorker.java", 13, -1, -1, -1} true;
    unsafe.$heap := unsafe.$heap[r0, unsafe.java.lang.StringBuffer$ImageMatcherWorker$error264 := $r1];
    assert {:sourceloc "ImageMatcherWorker.java", 14, -1, -1, -1} true;
    unsafe.$heap := unsafe.$heap[r0, unsafe.boolean$ImageMatcherWorker$success0 := 0];
    assert {:sourceloc "ImageMatcherWorker.java", 14, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation unsafe.ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
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
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r1: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap: intArrHeap_type;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap: $heap_type;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$return: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$exception: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i18: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i0: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r2: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i17: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r6: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$b14: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i12: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i4: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i13: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$b14: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i12: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i13: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$intArrHeap: intArrHeap_type;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$objIndex: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    $exception := unsafe.$null;
    assert {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "ImageMatcherWorker.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "ImageMatcherWorker.java", 17, -1, -1, -1} true;
    r19 := unsafe.$null;
    assert {:sourceloc "ImageMatcherWorker.java", 19, -1, -1, -1} true;
    z1 := 0;
    goto block2;

  block2:
    assert {:sourceloc "ImageMatcherWorker.java", 22, -1, -1, -1} true;
    call $fakelocal_0 := unsafe.$new(unsafe.ScalrApplyTest);
    $r7 := $fakelocal_0;
    assert {:sourceloc "ImageMatcherWorker.java", 22, -1, -1, -1} true;
    call $exception := unsafe.ScalrApplyTest$$la$init$ra$$($r7);
    goto anon142_Then, anon142_Else;

  anon142_Else:
    assume {:partition} $exception == unsafe.$null;
    goto anon4;

  anon4:
    assert {:sourceloc "ImageMatcherWorker.java", 22, -1, -1, -1} true;
    r20 := $r7;
    assert {:sourceloc "ImageMatcherWorker.java", 23, -1, -1, -1} true;
    call $exception := unsafe.ScalrApplyTest$setup$byte$lp$$rp$(r0);
    goto anon144_Then, anon144_Else;

  anon144_Else:
    assume {:partition} $exception == unsafe.$null;
    goto anon8;

  anon8:
    assert {:sourceloc "ImageMatcherWorker.java", 24, -1, -1, -1} true;
    call r21, $exception := unsafe.ScalrApplyTest$testApply1$(r20);
    goto anon146_Then, anon146_Else;

  anon146_Else:
    assume {:partition} $exception == unsafe.$null;
    goto anon12;

  anon12:
    assert {:sourceloc "ImageMatcherWorker.java", 25, -1, -1, -1} true;
    goto anon148_Then, anon148_Else;

  anon148_Else:
    assume {:partition} r21 == unsafe.$null;
    assert {:sourceloc "ImageMatcherWorker.java", 25, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := unsafe.$new(unsafe.java.lang.RuntimeException);
    goto block3;

  block3:
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    assume unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Throwable;
    $r12 := $exception;
    assert {:sourceloc "ImageMatcherWorker.java", 48, -1, -1, -1} true;
    r22 := $r12;
    assert {:sourceloc "ImageMatcherWorker.java", 49, -1, -1, -1} true;
    $r14 := unsafe.java.io.PrintStream$java.lang.System$out271;
    assert {:sourceloc "ImageMatcherWorker.java", 49, -1, -1, -1} true;
    call $fakelocal_4 := unsafe.$new(unsafe.java.lang.StringBuilder);
    $r13 := $fakelocal_4;
    assert {:sourceloc "ImageMatcherWorker.java", 49, -1, -1, -1} true;
    call $exception := unsafe.java.lang.StringBuilder$$la$init$ra$$($r13);
    assert {:sourceloc "ImageMatcherWorker.java", 49, -1, -1, -1} true;
    call $r15, $exception := unsafe.java.lang.StringBuilder$append$java.lang.String($r13, unsafe.$StringConst0);
    assert {:sourceloc "ImageMatcherWorker.java", 49, -1, -1, -1} true;
    call $r16, $exception := unsafe.java.lang.Throwable$getMessage$(r22);
    assert {:sourceloc "ImageMatcherWorker.java", 49, -1, -1, -1} true;
    goto anon183_Then, anon183_Else;

  anon183_Else:
    assume {:partition} $r15 == unsafe.$null;
    call $fakelocal_5 := unsafe.$new(unsafe.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon183_Then:
    assume {:partition} $r15 != unsafe.$null;
    $exception := $exception;
    goto anon96;

  anon96:
    call $r17, $exception := unsafe.java.lang.StringBuilder$append$java.lang.String($r15, $r16);
    assert {:sourceloc "ImageMatcherWorker.java", 49, -1, -1, -1} true;
    goto anon184_Then, anon184_Else;

  anon184_Else:
    assume {:partition} $r17 == unsafe.$null;
    call $fakelocal_6 := unsafe.$new(unsafe.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon184_Then:
    assume {:partition} $r17 != unsafe.$null;
    $exception := $exception;
    goto anon99;

  anon99:
    call $r18, $exception := unsafe.java.lang.StringBuilder$toString$($r17);
    assert {:sourceloc "ImageMatcherWorker.java", 49, -1, -1, -1} true;
    goto anon185_Then, anon185_Else;

  anon185_Else:
    assume {:partition} $r14 == unsafe.$null;
    call $fakelocal_7 := unsafe.$new(unsafe.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_7;
    return;

  anon185_Then:
    assume {:partition} $r14 != unsafe.$null;
    $exception := $exception;
    goto anon102;

  anon102:
    call $exception := unsafe.java.io.PrintStream$println$java.lang.String($r14, $r18);
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
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Entry;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Entry:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return := $return;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception := $exception;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4 := z4;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19 := i19;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8 := $b8;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10 := $i10;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20 := i20;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14 := $fakelocal_14;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11 := $b11;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13 := $fakelocal_13;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12 := $fakelocal_12;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8 := $fakelocal_8;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9 := $i9;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21 := i21;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3 := $z3;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5 := $i5;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7 := $b7;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19 := r19;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10 := $fakelocal_10;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6 := $i6;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r1 := r1;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5 := $z5;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9 := $fakelocal_9;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11 := $fakelocal_11;
    havoc inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap := unsafe.$intArrHeap;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex := unsafe.$objIndex;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap := unsafe.$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$entry;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$entry:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block9;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block9:
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon187_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon187_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon187_Else:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19
   == unsafe.$null;
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return := 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon141:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19 := unsafe.$intArrHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19][inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11]];
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
   + 4;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon141_dummy;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon198_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     < unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19]
   && inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     >= 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon141;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block15:
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5;
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon198_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon198_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon198_Else:
    assume {:partition} !(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     < unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19]
   && inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     >= 0);
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return := 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon138:
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5 := 1;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block15;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block14:
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5 := 0;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block15;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon197_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4
   == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block14;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block13:
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon197_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon197_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon196_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4
   != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 58, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block13;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block12:
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3;
    assert {:sourceloc "ImageMatcherWorker.java", 58, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon196_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon196_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon196_Else:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4
   == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 58, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon132:
    assert {:sourceloc "ImageMatcherWorker.java", 60, -1, -1, -1} {:clone} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3 := 1;
    assert {:sourceloc "ImageMatcherWorker.java", 60, -1, -1, -1} {:clone} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block12;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block11:
    assert {:sourceloc "ImageMatcherWorker.java", 60, -1, -1, -1} {:clone} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3 := 0;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block12;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon195_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10
   != inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9;
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block11;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon129:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9 := unsafe.$modInt(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, 
  2);
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon195_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon195_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon194_Then:
    assume {:partition} 2 != 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon129;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon126:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10 := unsafe.$modInt(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, 
  2);
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon194_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon194_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon194_Else:
    assume {:partition} 2 == 0;
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return := 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon193_Then:
    assume {:partition} 2 != 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon126;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon123:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8 := unsafe.$intArrHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r1][inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19];
    assert {:sourceloc "ImageMatcherWorker.java", 56, -1, -1, -1} true;
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := unsafe.java.lang.Math$abs$int(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8);
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon193_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon193_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon193_Else:
    assume {:partition} 2 == 0;
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return := 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon192_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     < unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r1]
   && inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     >= 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon123;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon120:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7 := unsafe.$intArrHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19][inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19];
    assert {:sourceloc "ImageMatcherWorker.java", 55, -1, -1, -1} true;
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := unsafe.java.lang.Math$abs$int(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7);
    assert {:sourceloc "ImageMatcherWorker.java", 56, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon192_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon192_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon192_Else:
    assume {:partition} !(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     < unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r1]
   && inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     >= 0);
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return := 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon191_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     < unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19]
   && inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     >= 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon120;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon117:
    assert {:sourceloc "ImageMatcherWorker.java", 55, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon191_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon191_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon191_Else:
    assume {:partition} !(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     < unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19]
   && inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     >= 0);
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return := 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon190_Else:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6
   > inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19;
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon117;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon114:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6 := unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r1];
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon190_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon190_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon190_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
   >= inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6;
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon189_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r1
   != unsafe.$null;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon114;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon111:
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon189_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon189_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon189_Else:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r1
   == unsafe.$null;
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return := 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon188_Else:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5
   > inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon111;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon108:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5 := unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19];
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon188_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon188_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon188_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
   >= inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} {:comment "thenblock"} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon187_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19
   != unsafe.$null;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon108;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon195_Else:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10
   == inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9;
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon132;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon197_Else:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4
   != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon138;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon141_dummy:
    assume false;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$exit:
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return:
    $return := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return;
    $exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception;
    z4 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4;
    i19 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19;
    $b8 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8;
    $i10 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10;
    i20 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20;
    $fakelocal_14 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14;
    $b11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11;
    $fakelocal_13 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13;
    $fakelocal_12 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12;
    $fakelocal_8 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8;
    $i9 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9;
    i21 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21;
    $z3 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3;
    $i5 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5;
    $b7 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7;
    $fakelocal_10 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10;
    $i6 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6;
    $z5 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5;
    $fakelocal_9 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9;
    $fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11;
    goto block9$1;

  block9$1:
    goto block9_last;

  anon187_Else:
    assume {:partition} r19 == unsafe.$null;
    call $fakelocal_8 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_8;
    return;

  anon187_Then:
    assume {:partition} r19 != unsafe.$null;
    $exception := $exception;
    goto anon108;

  anon108:
    $i5 := unsafe.$arrSizeHeap[r19];
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
    assume {:partition} r1 == unsafe.$null;
    call $fakelocal_9 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_9;
    return;

  anon189_Then:
    assume {:partition} r1 != unsafe.$null;
    $exception := $exception;
    goto anon114;

  anon114:
    $i6 := unsafe.$arrSizeHeap[r1];
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
    assume {:partition} !(i19 < unsafe.$arrSizeHeap[r19] && i19 >= 0);
    call $fakelocal_10 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_10;
    return;

  anon191_Then:
    assume {:partition} i19 < unsafe.$arrSizeHeap[r19] && i19 >= 0;
    $exception := $exception;
    goto anon120;

  anon120:
    $b7 := unsafe.$intArrHeap[r19][i19];
    assert {:sourceloc "ImageMatcherWorker.java", 55, -1, -1, -1} true;
    call i20, $exception := unsafe.java.lang.Math$abs$int($b7);
    assert {:sourceloc "ImageMatcherWorker.java", 56, -1, -1, -1} true;
    goto anon192_Then, anon192_Else;

  anon192_Else:
    assume {:partition} !(i19 < unsafe.$arrSizeHeap[r1] && i19 >= 0);
    call $fakelocal_11 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_11;
    return;

  anon192_Then:
    assume {:partition} i19 < unsafe.$arrSizeHeap[r1] && i19 >= 0;
    $exception := $exception;
    goto anon123;

  anon123:
    $b8 := unsafe.$intArrHeap[r1][i19];
    assert {:sourceloc "ImageMatcherWorker.java", 56, -1, -1, -1} true;
    call i21, $exception := unsafe.java.lang.Math$abs$int($b8);
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    goto anon193_Then, anon193_Else;

  anon193_Else:
    assume {:partition} 2 == 0;
    call $fakelocal_12 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    $return := 0;
    $exception := $fakelocal_12;
    return;

  anon193_Then:
    assume {:partition} 2 != 0;
    $exception := $exception;
    goto anon126;

  anon126:
    $i10 := unsafe.$modInt(i21, 2);
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    goto anon194_Then, anon194_Else;

  anon194_Else:
    assume {:partition} 2 == 0;
    call $fakelocal_13 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    $return := 0;
    $exception := $fakelocal_13;
    return;

  anon194_Then:
    assume {:partition} 2 != 0;
    $exception := $exception;
    goto anon129;

  anon129:
    $i9 := unsafe.$modInt(i20, 2);
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
    assume {:partition} !(i19 < unsafe.$arrSizeHeap[r19] && i19 >= 0);
    call $fakelocal_14 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_14;
    return;

  anon198_Then:
    assume {:partition} i19 < unsafe.$arrSizeHeap[r19] && i19 >= 0;
    $exception := $exception;
    goto anon141;

  anon141:
    unsafe.$intArrHeap := unsafe.$intArrHeap[r19 := unsafe.$intArrHeap[r19][i19 := $b11]];
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
    assume {:partition} r21 != unsafe.$null;
    assert {:sourceloc "ImageMatcherWorker.java", 25, -1, -1, -1} true;
    goto anon15;

  anon15:
    call i15, $exception := unsafe.java.awt.image.BufferedImage$getWidth$(r21);
    goto anon149_Then, anon149_Else;

  anon149_Else:
    assume {:partition} $exception == unsafe.$null;
    goto anon19;

  anon19:
    assert {:sourceloc "ImageMatcherWorker.java", 26, -1, -1, -1} true;
    call i16, $exception := unsafe.java.awt.image.BufferedImage$getHeight$(r21);
    goto anon151_Then, anon151_Else;

  anon151_Else:
    assume {:partition} $exception == unsafe.$null;
    goto anon23;

  anon23:
    assert {:sourceloc "ImageMatcherWorker.java", 27, -1, -1, -1} true;
    goto anon153_Then, anon153_Else;

  anon153_Else:
    assume {:partition} !(unsafe.$heap[unsafe.$null, unsafe.$type] <: unsafe.$intArrayType);
    assert {:sourceloc "ImageMatcherWorker.java", 27, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := unsafe.$new(unsafe.java.lang.ClassCastException);
    goto block3;

  anon153_Then:
    assume {:partition} unsafe.$heap[unsafe.$null, unsafe.$type] <: unsafe.$intArrayType;
    assert {:sourceloc "ImageMatcherWorker.java", 27, -1, -1, -1} true;
    goto anon26;

  anon26:
    $r8 := unsafe.$null;
    assert {:sourceloc "ImageMatcherWorker.java", 27, -1, -1, -1} true;
    call r2, $exception := unsafe.java.awt.image.BufferedImage$getRGB$int_int_int_int_int$lp$$rp$_int_int(r21, 0, 0, i15, i16, $r8, 0, i15);
    goto anon154_Then, anon154_Else;

  anon154_Else:
    assume {:partition} $exception == unsafe.$null;
    goto anon30;

  anon30:
    assert {:sourceloc "ImageMatcherWorker.java", 28, -1, -1, -1} true;
    goto anon156_Then, anon156_Else;

  anon156_Else:
    assume {:partition} r2 == unsafe.$null;
    assert {:sourceloc "ImageMatcherWorker.java", 28, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := unsafe.$new(unsafe.java.lang.NullPointerException);
    goto block3;

  anon156_Then:
    assume {:partition} r2 != unsafe.$null;
    assert {:sourceloc "ImageMatcherWorker.java", 28, -1, -1, -1} true;
    goto anon33;

  anon33:
    $i1 := unsafe.$arrSizeHeap[r2];
    assert {:sourceloc "ImageMatcherWorker.java", 28, -1, -1, -1} true;
    $i2 := unsafe.$mulInt($i1, 4);
    assert {:sourceloc "ImageMatcherWorker.java", 28, -1, -1, -1} true;
    call r3, $exception := unsafe.java.nio.ByteBuffer$allocate$int($i2);
    goto anon157_Then, anon157_Else;

  anon157_Else:
    assume {:partition} $exception == unsafe.$null;
    goto anon37;

  anon37:
    assert {:sourceloc "ImageMatcherWorker.java", 29, -1, -1, -1} true;
    goto anon159_Then, anon159_Else;

  anon159_Else:
    assume {:partition} r3 == unsafe.$null;
    assert {:sourceloc "ImageMatcherWorker.java", 29, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := unsafe.$new(unsafe.java.lang.RuntimeException);
    goto block3;

  anon159_Then:
    assume {:partition} r3 != unsafe.$null;
    assert {:sourceloc "ImageMatcherWorker.java", 29, -1, -1, -1} true;
    goto anon40;

  anon40:
    call r4, $exception := unsafe.java.nio.ByteBuffer$asIntBuffer$(r3);
    goto anon160_Then, anon160_Else;

  anon160_Else:
    assume {:partition} $exception == unsafe.$null;
    goto anon44;

  anon44:
    assert {:sourceloc "ImageMatcherWorker.java", 30, -1, -1, -1} true;
    goto anon162_Then, anon162_Else;

  anon162_Else:
    assume {:partition} r4 == unsafe.$null;
    assert {:sourceloc "ImageMatcherWorker.java", 30, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := unsafe.$new(unsafe.java.lang.RuntimeException);
    goto block3;

  anon162_Then:
    assume {:partition} r4 != unsafe.$null;
    assert {:sourceloc "ImageMatcherWorker.java", 30, -1, -1, -1} true;
    goto anon47;

  anon47:
    call $fakelocal_1, $exception := unsafe.java.nio.IntBuffer$put$int$lp$$rp$(r4, r2);
    goto anon163_Then, anon163_Else;

  anon163_Else:
    assume {:partition} $exception == unsafe.$null;
    goto anon51;

  anon51:
    assert {:sourceloc "ImageMatcherWorker.java", 31, -1, -1, -1} true;
    call $fakelocal_2 := unsafe.$new(unsafe.java.io.ByteArrayOutputStream);
    $r10 := $fakelocal_2;
    assert {:sourceloc "ImageMatcherWorker.java", 31, -1, -1, -1} true;
    call $exception := unsafe.java.io.ByteArrayOutputStream$$la$init$ra$$($r10);
    goto anon165_Then, anon165_Else;

  anon165_Else:
    assume {:partition} $exception == unsafe.$null;
    goto anon55;

  anon55:
    assert {:sourceloc "ImageMatcherWorker.java", 31, -1, -1, -1} true;
    r5 := $r10;
    assert {:sourceloc "ImageMatcherWorker.java", 32, -1, -1, -1} true;
    call $r11, $exception := unsafe.java.nio.ByteBuffer$array$(r3);
    goto anon167_Then, anon167_Else;

  anon167_Else:
    assume {:partition} $exception == unsafe.$null;
    goto anon59;

  anon59:
    assert {:sourceloc "ImageMatcherWorker.java", 32, -1, -1, -1} true;
    call $exception := unsafe.java.io.OutputStream$write$byte$lp$$rp$(r5, $r11);
    goto anon169_Then, anon169_Else;

  anon169_Else:
    assume {:partition} $exception == unsafe.$null;
    goto anon63;

  anon63:
    assert {:sourceloc "ImageMatcherWorker.java", 33, -1, -1, -1} true;
    call $exception := unsafe.java.io.OutputStream$flush$(r5);
    goto anon171_Then, anon171_Else;

  anon171_Else:
    assume {:partition} $exception == unsafe.$null;
    goto anon67;

  anon67:
    assert {:sourceloc "ImageMatcherWorker.java", 34, -1, -1, -1} true;
    call $exception := unsafe.java.io.ByteArrayOutputStream$close$(r5);
    goto anon173_Then, anon173_Else;

  anon173_Else:
    assume {:partition} $exception == unsafe.$null;
    goto anon71;

  anon71:
    assert {:sourceloc "ImageMatcherWorker.java", 36, -1, -1, -1} true;
    call $exception := unsafe.ScalrApplyTest$tearDown$();
    goto anon175_Then, anon175_Else;

  anon175_Else:
    assume {:partition} $exception == unsafe.$null;
    goto anon75;

  anon75:
    assert {:sourceloc "ImageMatcherWorker.java", 37, -1, -1, -1} true;
    call $fakelocal_3 := unsafe.$new(unsafe.$intArrayType);
    unsafe.$arrSizeHeap := unsafe.$arrSizeHeap[$fakelocal_3 := 128];
    r6 := $fakelocal_3;
    assert {:sourceloc "ImageMatcherWorker.java", 38, -1, -1, -1} true;
    goto anon177_Then, anon177_Else;

  anon177_Else:
    assume {:partition} r2 == unsafe.$null;
    assert {:sourceloc "ImageMatcherWorker.java", 38, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := unsafe.$new(unsafe.java.lang.NullPointerException);
    goto block3;

  anon177_Then:
    assume {:partition} r2 != unsafe.$null;
    assert {:sourceloc "ImageMatcherWorker.java", 38, -1, -1, -1} true;
    goto anon78;

  anon78:
    $i3 := unsafe.$arrSizeHeap[r2];
    assert {:sourceloc "ImageMatcherWorker.java", 38, -1, -1, -1} true;
    goto anon178_Then, anon178_Else;

  anon178_Else:
    assume {:partition} 128 == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 38, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := unsafe.$new(unsafe.java.lang.ArithmeticException);
    goto block3;

  anon178_Then:
    assume {:partition} 128 != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 38, -1, -1, -1} true;
    goto anon81;

  anon81:
    i0 := unsafe.$divInt($i3, 128);
    assert {:sourceloc "ImageMatcherWorker.java", 39, -1, -1, -1} true;
    i17 := 0;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    i18 := 0;
    goto block4;

  block4:
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$Entry;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$Entry:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$return := $return;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$exception := $exception;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i18 := i18;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i0 := i0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r2 := r2;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i17 := i17;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r6 := r6;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$b14 := $b14;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i12 := $i12;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i4 := $i4;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i13 := $i13;
    havoc inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i13;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$intArrHeap := unsafe.$intArrHeap;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$objIndex := unsafe.$objIndex;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$heap := unsafe.$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$entry;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$entry:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i13 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i13;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$block4;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$block4:
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4 := unsafe.$mulInt(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i0, 
  128);
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon179_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon179_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon179_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18
   >= inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} {:comment "thenblock"} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i13 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i13;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon93:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r6 := unsafe.$intArrHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r6][inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$b14]];
    assert {:sourceloc "ImageMatcherWorker.java", 43, -1, -1, -1} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17
   + 1;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18
   + inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i0;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon93_dummy;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon182_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17
     < unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r6]
   && inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17
     >= 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon93;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon90:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i13 := unsafe.$modInt(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i12, 
  2);
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$b14 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i13;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon182_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon182_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon182_Else:
    assume {:partition} !(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17
     < unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r6]
   && inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17
     >= 0);
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    assert {:noverify} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return := 0;
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i13 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i13;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon181_Then:
    assume {:partition} 2 != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon90;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon87:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i12 := unsafe.$intArrHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r2][inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18];
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon181_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon181_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon181_Else:
    assume {:partition} 2 == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    assert {:noverify} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return := 0;
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception := unsafe.$new(unsafe.java.lang.ArithmeticException);
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i13 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i13;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon180_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18
     < unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r2]
   && inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18
     >= 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon87;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon84:
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon180_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon180_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon180_Else:
    assume {:partition} !(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18
     < unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r2]
   && inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18
     >= 0);
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    assert {:noverify} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return := 0;
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i13 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i13;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon179_Else:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4
   > inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon84;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon93_dummy:
    assume false;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$exit:
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$Return:
    $return := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return;
    $exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception;
    i18 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18;
    i17 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17;
    $b14 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$b14;
    $i12 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i12;
    $i4 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4;
    $i13 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i13;
    goto block4$1;

  block4$1:
    goto block4_last;

  anon179_Else:
    assume {:partition} $i4 > i18;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} {:comment "elseblock"} true;
    goto anon84;

  anon84:
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon180_Then, anon180_Else;

  anon180_Else:
    assume {:partition} !(i18 < unsafe.$arrSizeHeap[r2] && i18 >= 0);
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    goto block3;

  anon180_Then:
    assume {:partition} i18 < unsafe.$arrSizeHeap[r2] && i18 >= 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon87;

  anon87:
    $i12 := unsafe.$intArrHeap[r2][i18];
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon181_Then, anon181_Else;

  anon181_Else:
    assume {:partition} 2 == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := unsafe.$new(unsafe.java.lang.ArithmeticException);
    goto block3;

  anon181_Then:
    assume {:partition} 2 != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon90;

  anon90:
    $i13 := unsafe.$modInt($i12, 2);
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    $b14 := $i13;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon182_Then, anon182_Else;

  anon182_Else:
    assume {:partition} !(i17 < unsafe.$arrSizeHeap[r6] && i17 >= 0);
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    assert {:noverify} true;
    $return := 0;
    call $exception := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    goto block3;

  anon182_Then:
    assume {:partition} i17 < unsafe.$arrSizeHeap[r6] && i17 >= 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon93;

  anon93:
    unsafe.$intArrHeap := unsafe.$intArrHeap[r6 := unsafe.$intArrHeap[r6][i17 := $b14]];
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
    assume {:partition} $exception != unsafe.$null;
    goto anon176_Then, anon176_Else;

  anon176_Else:
    assume {:partition} !(unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception);
    assert {:clone} true;
    goto anon75;

  anon176_Then:
    assume {:partition} unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon173_Then:
    assume {:partition} $exception != unsafe.$null;
    goto anon174_Then, anon174_Else;

  anon174_Else:
    assume {:partition} !(unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.io.IOException);
    assert {:clone} true;
    goto anon71;

  anon174_Then:
    assume {:partition} unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.io.IOException;
    $return := 0;
    goto block3;

  anon171_Then:
    assume {:partition} $exception != unsafe.$null;
    goto anon172_Then, anon172_Else;

  anon172_Else:
    assume {:partition} !(unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.io.IOException);
    assert {:clone} true;
    goto anon67;

  anon172_Then:
    assume {:partition} unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.io.IOException;
    $return := 0;
    goto block3;

  anon169_Then:
    assume {:partition} $exception != unsafe.$null;
    goto anon170_Then, anon170_Else;

  anon170_Else:
    assume {:partition} !(unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.io.IOException);
    assert {:clone} true;
    goto anon63;

  anon170_Then:
    assume {:partition} unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.io.IOException;
    $return := 0;
    goto block3;

  anon167_Then:
    assume {:partition} $exception != unsafe.$null;
    goto anon168_Then, anon168_Else;

  anon168_Else:
    assume {:partition} !(unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception);
    assert {:clone} true;
    goto anon59;

  anon168_Then:
    assume {:partition} unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon165_Then:
    assume {:partition} $exception != unsafe.$null;
    goto anon166_Then, anon166_Else;

  anon166_Else:
    assume {:partition} !(unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception);
    assert {:clone} true;
    goto anon55;

  anon166_Then:
    assume {:partition} unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception;
    assert {:clone} true;
    $r10 := unsafe.$null;
    goto block3;

  anon163_Then:
    assume {:partition} $exception != unsafe.$null;
    goto anon164_Then, anon164_Else;

  anon164_Else:
    assume {:partition} !(unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception);
    assert {:clone} true;
    goto anon51;

  anon164_Then:
    assume {:partition} unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon160_Then:
    assume {:partition} $exception != unsafe.$null;
    goto anon161_Then, anon161_Else;

  anon161_Else:
    assume {:partition} !(unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception);
    assert {:clone} true;
    goto anon44;

  anon161_Then:
    assume {:partition} unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon157_Then:
    assume {:partition} $exception != unsafe.$null;
    goto anon158_Then, anon158_Else;

  anon158_Else:
    assume {:partition} !(unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception);
    assert {:clone} true;
    goto anon37;

  anon158_Then:
    assume {:partition} unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon154_Then:
    assume {:partition} $exception != unsafe.$null;
    goto anon155_Then, anon155_Else;

  anon155_Else:
    assume {:partition} !(unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception);
    assert {:clone} true;
    goto anon30;

  anon155_Then:
    assume {:partition} unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon151_Then:
    assume {:partition} $exception != unsafe.$null;
    goto anon152_Then, anon152_Else;

  anon152_Else:
    assume {:partition} !(unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception);
    assert {:clone} true;
    goto anon23;

  anon152_Then:
    assume {:partition} unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon149_Then:
    assume {:partition} $exception != unsafe.$null;
    goto anon150_Then, anon150_Else;

  anon150_Else:
    assume {:partition} !(unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception);
    assert {:clone} true;
    goto anon19;

  anon150_Then:
    assume {:partition} unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon146_Then:
    assume {:partition} $exception != unsafe.$null;
    goto anon147_Then, anon147_Else;

  anon147_Else:
    assume {:partition} !(unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception);
    assert {:clone} true;
    goto anon12;

  anon147_Then:
    assume {:partition} unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon144_Then:
    assume {:partition} $exception != unsafe.$null;
    goto anon145_Then, anon145_Else;

  anon145_Else:
    assume {:partition} !(unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception);
    assert {:clone} true;
    goto anon8;

  anon145_Then:
    assume {:partition} unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception;
    assert {:clone} true;
    goto block3;

  anon142_Then:
    assume {:partition} $exception != unsafe.$null;
    goto anon143_Then, anon143_Else;

  anon143_Else:
    assume {:partition} !(unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception);
    assert {:clone} true;
    goto anon4;

  anon143_Then:
    assume {:partition} unsafe.$heap[$exception, unsafe.$type] <: unsafe.java.lang.Exception;
    assert {:clone} true;
    $r7 := unsafe.$null;
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
    $i4 := unsafe.$mulInt(i0, 128);
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    goto anon179_Then, anon179_Else;
}



implementation unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := unsafe.$null;
    return;
}



implementation unsafe.ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9(in_$return: int, 
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
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r1: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap: intArrHeap_type;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap: $heap_type;

  entry:
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    goto block9;

  block9:
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto anon187_Then, anon187_Else;

  anon187_Else:
    assume {:partition} in_r19 == unsafe.$null;
    call out_$fakelocal_8 := unsafe.$new(unsafe.java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_8;
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon141:
    unsafe.$intArrHeap := unsafe.$intArrHeap[in_r19 := unsafe.$intArrHeap[in_r19][out_i19 := out_$b11]];
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    out_i19 := out_i19 + 4;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto anon141_dummy;

  anon198_Then:
    assume {:partition} out_i19 < unsafe.$arrSizeHeap[in_r19] && out_i19 >= 0;
    out_$exception := out_$exception;
    goto anon141;

  block15:
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} true;
    out_$b11 := out_$z5;
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} true;
    goto anon198_Then, anon198_Else;

  anon198_Else:
    assume {:partition} !(out_i19 < unsafe.$arrSizeHeap[in_r19] && out_i19 >= 0);
    call out_$fakelocal_14 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_14;
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
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
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
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
    out_$i9 := unsafe.$modInt(out_i20, 2);
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    goto anon195_Then, anon195_Else;

  anon194_Then:
    assume {:partition} 2 != 0;
    out_$exception := out_$exception;
    goto anon129;

  anon126:
    out_$i10 := unsafe.$modInt(out_i21, 2);
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    goto anon194_Then, anon194_Else;

  anon194_Else:
    assume {:partition} 2 == 0;
    call out_$fakelocal_13 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    out_$return := 0;
    out_$exception := out_$fakelocal_13;
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon193_Then:
    assume {:partition} 2 != 0;
    out_$exception := out_$exception;
    goto anon126;

  anon123:
    out_$b8 := unsafe.$intArrHeap[in_r1][out_i19];
    assert {:sourceloc "ImageMatcherWorker.java", 56, -1, -1, -1} true;
    call out_i21, out_$exception := unsafe.java.lang.Math$abs$int(out_$b8);
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    goto anon193_Then, anon193_Else;

  anon193_Else:
    assume {:partition} 2 == 0;
    call out_$fakelocal_12 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    out_$return := 0;
    out_$exception := out_$fakelocal_12;
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon192_Then:
    assume {:partition} out_i19 < unsafe.$arrSizeHeap[in_r1] && out_i19 >= 0;
    out_$exception := out_$exception;
    goto anon123;

  anon120:
    out_$b7 := unsafe.$intArrHeap[in_r19][out_i19];
    assert {:sourceloc "ImageMatcherWorker.java", 55, -1, -1, -1} true;
    call out_i20, out_$exception := unsafe.java.lang.Math$abs$int(out_$b7);
    assert {:sourceloc "ImageMatcherWorker.java", 56, -1, -1, -1} true;
    goto anon192_Then, anon192_Else;

  anon192_Else:
    assume {:partition} !(out_i19 < unsafe.$arrSizeHeap[in_r1] && out_i19 >= 0);
    call out_$fakelocal_11 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_11;
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon191_Then:
    assume {:partition} out_i19 < unsafe.$arrSizeHeap[in_r19] && out_i19 >= 0;
    out_$exception := out_$exception;
    goto anon120;

  anon117:
    assert {:sourceloc "ImageMatcherWorker.java", 55, -1, -1, -1} true;
    goto anon191_Then, anon191_Else;

  anon191_Else:
    assume {:partition} !(out_i19 < unsafe.$arrSizeHeap[in_r19] && out_i19 >= 0);
    call out_$fakelocal_10 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_10;
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon190_Else:
    assume {:partition} out_$i6 > out_i19;
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} {:comment "elseblock"} true;
    goto anon117;

  anon114:
    out_$i6 := unsafe.$arrSizeHeap[in_r1];
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    goto anon190_Then, anon190_Else;

  anon190_Then:
    assume {:partition} out_i19 >= out_$i6;
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon189_Then:
    assume {:partition} in_r1 != unsafe.$null;
    out_$exception := out_$exception;
    goto anon114;

  anon111:
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    goto anon189_Then, anon189_Else;

  anon189_Else:
    assume {:partition} in_r1 == unsafe.$null;
    call out_$fakelocal_9 := unsafe.$new(unsafe.java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_9;
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon188_Else:
    assume {:partition} out_$i5 > out_i19;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} {:comment "elseblock"} true;
    goto anon111;

  anon108:
    out_$i5 := unsafe.$arrSizeHeap[in_r19];
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto anon188_Then, anon188_Else;

  anon188_Then:
    assume {:partition} out_i19 >= out_$i5;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_z4, out_i19, out_$b8, out_$i10, out_i20, out_$fakelocal_14, out_$b11, out_$fakelocal_13, out_$fakelocal_12, out_$fakelocal_8, out_$i9, out_i21, out_$z3, out_$i5, out_$b7, out_$fakelocal_10, out_$i6, out_$z5, out_$fakelocal_9, out_$fakelocal_11 := in_$return, in_$exception, in_z4, in_i19, in_$b8, in_$i10, in_i20, in_$fakelocal_14, in_$b11, in_$fakelocal_13, in_$fakelocal_12, in_$fakelocal_8, in_$i9, in_i21, in_$z3, in_$i5, in_$b7, in_$fakelocal_10, in_$i6, in_$z5, in_$fakelocal_9, in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon187_Then:
    assume {:partition} in_r19 != unsafe.$null;
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
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Entry;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Entry:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return := out_$return;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception := out_$exception;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4 := out_z4;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19 := out_i19;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8 := out_$b8;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10 := out_$i10;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20 := out_i20;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14 := out_$fakelocal_14;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11 := out_$b11;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13 := out_$fakelocal_13;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12 := out_$fakelocal_12;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8 := out_$fakelocal_8;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9 := out_$i9;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21 := out_i21;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3 := out_$z3;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5 := out_$i5;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7 := out_$b7;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19 := in_r19;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10 := out_$fakelocal_10;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6 := out_$i6;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r1 := in_r1;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5 := out_$z5;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9 := out_$fakelocal_9;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11 := out_$fakelocal_11;
    havoc inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap := unsafe.$intArrHeap;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex := unsafe.$objIndex;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap := unsafe.$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$entry;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$entry:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block9;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block9:
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon187_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon187_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon187_Else:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19
   == unsafe.$null;
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return := 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon141:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19 := unsafe.$intArrHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19][inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11]];
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
   + 4;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon141_dummy;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon198_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     < unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19]
   && inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     >= 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon141;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block15:
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5;
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon198_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon198_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon198_Else:
    assume {:partition} !(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     < unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19]
   && inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     >= 0);
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return := 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon138:
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5 := 1;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block15;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block14:
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5 := 0;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block15;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon197_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4
   == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block14;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block13:
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon197_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon197_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon196_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4
   != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 58, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block13;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block12:
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3;
    assert {:sourceloc "ImageMatcherWorker.java", 58, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon196_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon196_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon196_Else:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4
   == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 58, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon132:
    assert {:sourceloc "ImageMatcherWorker.java", 60, -1, -1, -1} {:clone} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3 := 1;
    assert {:sourceloc "ImageMatcherWorker.java", 60, -1, -1, -1} {:clone} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block12;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block11:
    assert {:sourceloc "ImageMatcherWorker.java", 60, -1, -1, -1} {:clone} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3 := 0;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block12;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon195_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10
   != inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9;
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$block11;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon129:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9 := unsafe.$modInt(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, 
  2);
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon195_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon195_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon194_Then:
    assume {:partition} 2 != 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon129;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon126:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10 := unsafe.$modInt(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, 
  2);
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon194_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon194_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon194_Else:
    assume {:partition} 2 == 0;
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return := 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon193_Then:
    assume {:partition} 2 != 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon126;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon123:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8 := unsafe.$intArrHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r1][inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19];
    assert {:sourceloc "ImageMatcherWorker.java", 56, -1, -1, -1} true;
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := unsafe.java.lang.Math$abs$int(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8);
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon193_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon193_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon193_Else:
    assume {:partition} 2 == 0;
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return := 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon192_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     < unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r1]
   && inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     >= 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon123;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon120:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7 := unsafe.$intArrHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19][inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19];
    assert {:sourceloc "ImageMatcherWorker.java", 55, -1, -1, -1} true;
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := unsafe.java.lang.Math$abs$int(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7);
    assert {:sourceloc "ImageMatcherWorker.java", 56, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon192_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon192_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon192_Else:
    assume {:partition} !(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     < unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r1]
   && inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     >= 0);
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return := 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon191_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     < unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19]
   && inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     >= 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon120;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon117:
    assert {:sourceloc "ImageMatcherWorker.java", 55, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon191_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon191_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon191_Else:
    assume {:partition} !(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     < unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19]
   && inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
     >= 0);
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return := 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon190_Else:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6
   > inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19;
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon117;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon114:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6 := unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r1];
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon190_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon190_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon190_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
   >= inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6;
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon189_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r1
   != unsafe.$null;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon114;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon111:
    assert {:sourceloc "ImageMatcherWorker.java", 70, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon189_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon189_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon189_Else:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r1
   == unsafe.$null;
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return := 0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon188_Else:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5
   > inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon111;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon108:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5 := unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19];
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon188_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon188_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon188_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19
   >= inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5;
    assert {:sourceloc "ImageMatcherWorker.java", 54, -1, -1, -1} {:comment "thenblock"} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_z4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i19, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i20, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b11, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_13, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_8, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_i21, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z3, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$b7, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_10, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$i6, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$z5, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_9, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_$fakelocal_11;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon187_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$in_r19
   != unsafe.$null;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon108;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon195_Else:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10
   == inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9;
    assert {:sourceloc "ImageMatcherWorker.java", 57, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon132;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon197_Else:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4
   != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 63, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon138;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$anon141_dummy:
    assume false;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$exit:
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$Return:
    out_$return := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$return;
    out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$exception;
    out_z4 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_z4;
    out_i19 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i19;
    out_$b8 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b8;
    out_$i10 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i10;
    out_i20 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i20;
    out_$fakelocal_14 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_14;
    out_$b11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b11;
    out_$fakelocal_13 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_13;
    out_$fakelocal_12 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_12;
    out_$fakelocal_8 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_8;
    out_$i9 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i9;
    out_i21 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_i21;
    out_$z3 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z3;
    out_$i5 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i5;
    out_$b7 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$b7;
    out_$fakelocal_10 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_10;
    out_$i6 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$i6;
    out_$z5 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$z5;
    out_$fakelocal_9 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_9;
    out_$fakelocal_11 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block9$0$out_$fakelocal_11;
    goto anon141_dummy$1;

  anon141_dummy$1:
    return;

  exit:
    return;
}



implementation unsafe.ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4(in_$return: int, 
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
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$return: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$exception: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i18: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i0: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r2: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i17: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r6: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$b14: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i12: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i4: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i13: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception: ref;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$b14: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i12: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i13: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$intArrHeap: intArrHeap_type;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$objIndex: int;
  var inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$heap: $heap_type;

  entry:
    out_$return, out_$exception, out_i18, out_i17, out_$b14, out_$i12, out_$i4, out_$i13 := in_$return, in_$exception, in_i18, in_i17, in_$b14, in_$i12, in_$i4, in_$i13;
    goto block4;

  block4:
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    out_$i4 := unsafe.$mulInt(in_i0, 128);
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    goto anon179_Then, anon179_Else;

  anon179_Then:
    assume {:partition} out_i18 >= out_$i4;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_i18, out_i17, out_$b14, out_$i12, out_$i4, out_$i13 := in_$return, in_$exception, in_i18, in_i17, in_$b14, in_$i12, in_$i4, in_$i13;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon93:
    unsafe.$intArrHeap := unsafe.$intArrHeap[in_r6 := unsafe.$intArrHeap[in_r6][out_i17 := out_$b14]];
    assert {:sourceloc "ImageMatcherWorker.java", 43, -1, -1, -1} true;
    out_i17 := out_i17 + 1;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    out_i18 := out_i18 + in_i0;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    goto anon93_dummy;

  anon182_Then:
    assume {:partition} out_i17 < unsafe.$arrSizeHeap[in_r6] && out_i17 >= 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon93;

  anon90:
    out_$i13 := unsafe.$modInt(out_$i12, 2);
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    out_$b14 := out_$i13;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon182_Then, anon182_Else;

  anon182_Else:
    assume {:partition} !(out_i17 < unsafe.$arrSizeHeap[in_r6] && out_i17 >= 0);
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    assert {:noverify} true;
    out_$return := 0;
    call out_$exception := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return, out_$exception, out_i18, out_i17, out_$b14, out_$i12, out_$i4, out_$i13 := in_$return, in_$exception, in_i18, in_i17, in_$b14, in_$i12, in_$i4, in_$i13;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon181_Then:
    assume {:partition} 2 != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon90;

  anon87:
    out_$i12 := unsafe.$intArrHeap[in_r2][out_i18];
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon181_Then, anon181_Else;

  anon181_Else:
    assume {:partition} 2 == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    assert {:noverify} true;
    out_$return := 0;
    call out_$exception := unsafe.$new(unsafe.java.lang.ArithmeticException);
    out_$return, out_$exception, out_i18, out_i17, out_$b14, out_$i12, out_$i4, out_$i13 := in_$return, in_$exception, in_i18, in_i17, in_$b14, in_$i12, in_$i4, in_$i13;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon180_Then:
    assume {:partition} out_i18 < unsafe.$arrSizeHeap[in_r2] && out_i18 >= 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon87;

  anon84:
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto anon180_Then, anon180_Else;

  anon180_Else:
    assume {:partition} !(out_i18 < unsafe.$arrSizeHeap[in_r2] && out_i18 >= 0);
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    assert {:noverify} true;
    out_$return := 0;
    call out_$exception := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return, out_$exception, out_i18, out_i17, out_$b14, out_$i12, out_$i4, out_$i13 := in_$return, in_$exception, in_i18, in_i17, in_$b14, in_$i12, in_$i4, in_$i13;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon179_Else:
    assume {:partition} out_$i4 > out_i18;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} {:comment "elseblock"} true;
    goto anon84;

  anon93_dummy:
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$Entry;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$Entry:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$return := out_$return;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$exception := out_$exception;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i18 := out_i18;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i0 := in_i0;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r2 := in_r2;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i17 := out_i17;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r6 := in_r6;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$b14 := out_$b14;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i12 := out_$i12;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i4 := out_$i4;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i13 := out_$i13;
    havoc inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i13;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$intArrHeap := unsafe.$intArrHeap;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$objIndex := unsafe.$objIndex;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$heap := unsafe.$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$entry;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$entry:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i13 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i13;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$block4;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$block4:
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4 := unsafe.$mulInt(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i0, 
  128);
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon179_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon179_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon179_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18
   >= inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} {:comment "thenblock"} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i13 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i13;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon93:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r6 := unsafe.$intArrHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r6][inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$b14]];
    assert {:sourceloc "ImageMatcherWorker.java", 43, -1, -1, -1} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17
   + 1;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18
   + inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i0;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon93_dummy;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon182_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17
     < unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r6]
   && inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17
     >= 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon93;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon90:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i13 := unsafe.$modInt(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i12, 
  2);
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$b14 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i13;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon182_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon182_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon182_Else:
    assume {:partition} !(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17
     < unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r6]
   && inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17
     >= 0);
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    assert {:noverify} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return := 0;
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i13 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i13;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon181_Then:
    assume {:partition} 2 != 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon90;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon87:
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i12 := unsafe.$intArrHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r2][inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18];
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon181_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon181_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon181_Else:
    assume {:partition} 2 == 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    assert {:noverify} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return := 0;
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception := unsafe.$new(unsafe.java.lang.ArithmeticException);
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i13 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i13;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon180_Then:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18
     < unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r2]
   && inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18
     >= 0;
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon87;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon84:
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon180_Then, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon180_Else;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon180_Else:
    assume {:partition} !(inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18
     < unsafe.$arrSizeHeap[inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_r2]
   && inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18
     >= 0);
    assert {:sourceloc "ImageMatcherWorker.java", 42, -1, -1, -1} true;
    assert {:noverify} true;
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return := 0;
    call inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i13 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$return, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$exception, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i18, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_i17, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$b14, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i12, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i4, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$in_$i13;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$intArrHeap, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$objIndex, inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$$heap;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon179_Else:
    assume {:partition} inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4
   > inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18;
    assert {:sourceloc "ImageMatcherWorker.java", 41, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon84;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$anon93_dummy:
    assume false;
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$exit:
    goto inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$Return;

  inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$Return:
    out_$return := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$return;
    out_$exception := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$exception;
    out_i18 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i18;
    out_i17 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_i17;
    out_$b14 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$b14;
    out_$i12 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i12;
    out_$i4 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i4;
    out_$i13 := inline$ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$_loop_block4$0$out_$i13;
    goto anon93_dummy$1;

  anon93_dummy$1:
    return;

  exit:
    return;
}



type ref;

type javaType;

type Field _;

type $heap_type = <$GenericType__0>[ref,Field $GenericType__0]$GenericType__0;

type boolArrHeap_type = [ref][int]bool;

type refArrHeap_type = [ref][int]ref;

type realArrHeap_type = [ref][int]int;

type intArrHeap_type = [ref][int]int;
