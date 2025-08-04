type ref;
type javaType;
type Field $GenericType__0;
type $heap_type = <$GenericType__0>[ref,Field $GenericType__0]$GenericType__0;
type boolArrHeap_type = [ref][int]bool;
type refArrHeap_type = [ref][int]ref;
type realArrHeap_type = [ref][int]int;
type intArrHeap_type = [ref][int]int;
const unique $type : Field javaType;
const unique $alloc : Field bool;
const unique $null : ref;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique ImageMatcherWorker : javaType extends  unique java.lang.Object complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Comparable, java.lang.CharSequence complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.Appendable : javaType extends  complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.AbstractStringBuilder : javaType extends  unique java.lang.Object, java.lang.Appendable, java.lang.CharSequence complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.StringBuffer : javaType extends  unique java.lang.AbstractStringBuilder, java.io.Serializable, java.lang.CharSequence complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique ScalrApplyTest : javaType extends  complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.awt.Image : javaType extends  unique java.lang.Object complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.awt.image.RenderedImage : javaType extends  complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.awt.image.WritableRenderedImage : javaType extends  java.awt.image.RenderedImage complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.awt.Transparency : javaType extends  complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.awt.image.BufferedImage : javaType extends  unique java.awt.Image, java.awt.image.WritableRenderedImage, java.awt.Transparency complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.ClassCastException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.NullPointerException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.nio.Buffer : javaType extends  unique java.lang.Object complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.nio.ByteBuffer : javaType extends  unique java.nio.Buffer, java.lang.Comparable complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.nio.IntBuffer : javaType extends  unique java.nio.Buffer, java.lang.Comparable complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.AutoCloseable : javaType extends  complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.io.Closeable : javaType extends  java.lang.AutoCloseable complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.io.Flushable : javaType extends  complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.io.OutputStream : javaType extends  unique java.lang.Object, java.io.Closeable, java.io.Flushable complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.io.ByteArrayOutputStream : javaType extends  unique java.io.OutputStream complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.io.IOException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.ArithmeticException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.IndexOutOfBoundsException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.ArrayIndexOutOfBoundsException : javaType extends  unique java.lang.IndexOutOfBoundsException complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.StringBuilder : javaType extends  unique java.lang.AbstractStringBuilder, java.io.Serializable, java.lang.CharSequence complete;
const unique $StringConst0 : ref extends  complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.io.FilterOutputStream : javaType extends  unique java.io.OutputStream complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.io.PrintStream : javaType extends  unique java.io.FilterOutputStream, java.lang.Appendable, java.io.Closeable complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.Math : javaType extends  unique java.lang.Object complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique sg.edu.nus.comp.tsunami.safe.Safe : javaType extends  unique java.lang.Object complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.Boolean : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Comparable complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.Number : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } unique java.lang.Byte : javaType extends  unique java.lang.Number, java.lang.Comparable complete;
var $heap : $heap_type;
var $intArrayType : javaType;
var $charArrayType : javaType;
var $boolArrayType : javaType;
var $byteArrayType : javaType;
var $longArrayType : javaType;
var $arrSizeHeap : [ref]int;
var $stringSizeHeap : [ref]int;
var $boolArrHeap : boolArrHeap_type;
var $refArrHeap : refArrHeap_type;
var $realArrHeap : realArrHeap_type;
var $intArrHeap : intArrHeap_type;
var $objIndex : int;
var java.lang.String$ImageMatcherWorker$errorcode263 : Field ref;
var java.lang.StringBuffer$ImageMatcherWorker$error264 : Field ref;
var boolean$ImageMatcherWorker$success0 : Field int;
var java.io.PrintStream$java.lang.System$out271 : ref;
function $arrayType(t:javaType) returns ($ret:javaType);
function $intToReal(x:int) returns ($ret:real);
function $intToBool(x:int) returns ($ret:bool) { (if x == 0 then false else true) }
function $refToBool(x:ref) returns ($ret:bool) { (if x == $null then false else true) }
function $boolToInt(x:bool) returns ($ret:int) { (if x == true then 1 else 0) }
function $cmpBool(x:bool, y:bool) returns ($ret:int);
function $cmpRef(x:ref, y:ref) returns ($ret:int);
function $cmpReal(x:real, y:real) returns ($ret:int) { (if x > y then 1 else (if x < y then -1 else 0)) }
function $cmpInt(x:int, y:int) returns ($ret:int) { (if x > y then 1 else (if x < y then -1 else 0)) }
function $bitOr(x:int, y:int) returns ($ret:int);
function $bitAnd(x:int, y:int) returns ($ret:int);
function $xorInt(x:int, y:int) returns ($ret:int);
function $shlInt(x:int, y:int) returns ($ret:int);
function $ushrInt(x:int, y:int) returns ($ret:int);
function $shrInt(x:int, y:int) returns ($ret:int);
function $mulInt(x:int, y:int) returns ($ret:int);
function $divInt(x:int, y:int) returns ($ret:int);
function $modInt(x:int, y:int) returns ($ret:int);
function $intToRef(id:int) returns ($ret:ref);
axiom (forall index : int :: $intToRef(index) != $null);
axiom (forall i1,i2 : int :: i1 == i2 <==> $intToRef(i1) == $intToRef(i2));
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures !old($heap[$obj,$alloc]);    ensures $heap == old($heap)[$obj,$alloc := true][$obj,$type := obj_type];    ensures $objIndex == old($objIndex) + 1;    modifies $objIndex, $heap;    ensures $obj == $intToRef(old($objIndex));    ensures $obj != $null;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $heap[$other,$alloc] == true;    ensures $heap[$other,$type] == $heap[$this,$type];    ensures $other != $null;    

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

procedure ImageMatcherWorker$$la$init$ra$$($this:ref) returns ($exception:ref);    modifies $objIndex, $heap, $stringSizeHeap;

procedure java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure java.lang.StringBuffer$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;

procedure ScalrApplyTest$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure ScalrApplyTest$setup$byte$lp$$rp$($in_parameter__0:ref) returns ($exception:ref);    

procedure ScalrApplyTest$testApply1$($this:ref) returns ($return:ref, $exception:ref);    

procedure java.awt.image.BufferedImage$getWidth$($this:ref) returns ($return:int, $exception:ref);    

procedure java.awt.image.BufferedImage$getHeight$($this:ref) returns ($return:int, $exception:ref);    

procedure java.awt.image.BufferedImage$getRGB$int_int_int_int_int$lp$$rp$_int_int($this:ref, $in_parameter__0:int, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:int, $in_parameter__4:ref, $in_parameter__5:int, $in_parameter__6:int) returns ($return:ref, $exception:ref);    

procedure java.nio.ByteBuffer$allocate$int($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.nio.ByteBuffer$asIntBuffer$($this:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure java.nio.IntBuffer$put$int$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.io.ByteArrayOutputStream$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure java.nio.ByteBuffer$array$($this:ref) returns ($return:ref, $exception:ref);    

procedure java.io.OutputStream$write$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.io.OutputStream$flush$($this:ref) returns ($exception:ref);    

procedure java.io.ByteArrayOutputStream$close$($this:ref) returns ($exception:ref);    

procedure ScalrApplyTest$tearDown$() returns ($exception:ref);    

procedure java.lang.StringBuilder$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure java.lang.StringBuilder$append$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Throwable$getMessage$($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.StringBuilder$toString$($this:ref) returns ($return:ref, $exception:ref);    

procedure java.io.PrintStream$println$java.lang.String($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.Math$abs$int($in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure java.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Byte$valueOf$byte($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.Byte$byteValue$($this:ref) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    

implementation ImageMatcherWorker$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var $fakelocal_0 : ref;    
var r0 : ref;    
var $fakelocal_1 : ref;    
var $r1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } $heap[$this,$type] <: ImageMatcherWorker;
    assume { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "ImageMatcherWorker.java",8,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "ImageMatcherWorker.java",14,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 0];
    $heap := $heap[r0,java.lang.String$ImageMatcherWorker$errorcode263 := $fakelocal_0];
    assert { :sourceloc "ImageMatcherWorker.java",15,-1,-1,-1 } true;
    call $fakelocal_1 := $new(java.lang.StringBuffer);
    $r1 := $fakelocal_1;
    assert { :sourceloc "ImageMatcherWorker.java",15,-1,-1,-1 } true;
    call $exception := java.lang.StringBuffer$$la$init$ra$$($r1);
    assert { :sourceloc "ImageMatcherWorker.java",15,-1,-1,-1 } true;
    $heap := $heap[r0,java.lang.StringBuffer$ImageMatcherWorker$error264 := $r1];
    assert { :sourceloc "ImageMatcherWorker.java",16,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$ImageMatcherWorker$success0 := 0];
    assert { :sourceloc "ImageMatcherWorker.java",16,-1,-1,-1 } true;
    goto block1;
  block1:
    return;
}


implementation ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var $fakelocal_12 : ref;    
var $r14 : ref;    
var $r29 : ref;    
var $fakelocal_18 : ref;    
var $i1 : int;    
var r32 : ref;    
var $r25 : ref;    
var r0 : ref;    
var $fakelocal_14 : ref;    
var $r9 : ref;    
var $b18 : int;    
var $fakelocal_3 : ref;    
var $fakelocal_11 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_13 : ref;    
var $r30 : ref;    
var $r11 : ref;    
var $r28 : ref;    
var $fakelocal_15 : ref;    
var $fakelocal_10 : ref;    
var $r21 : ref;    
var $b8 : int;    
var $z6 : int;    
var $r15 : ref;    
var $fakelocal_9 : ref;    
var $r24 : ref;    
var r1 : ref;    
var $fakelocal_21 : ref;    
var $fakelocal_17 : ref;    
var $i5 : int;    
var $r26 : ref;    
var $r8 : ref;    
var r3 : ref;    
var $i2 : int;    
var r4 : ref;    
var $i9 : int;    
var r33 : ref;    
var z5 : int;    
var $r17 : ref;    
var $r6 : ref;    
var $i10 : int;    
var $r13 : ref;    
var z2 : int;    
var $fakelocal_8 : ref;    
var $r12 : ref;    
var $fakelocal_5 : ref;    
var $i16 : int;    
var $r27 : ref;    
var r34 : ref;    
var $b13 : int;    
var $r16 : ref;    
var r31 : ref;    
var $r20 : ref;    
var $l12 : int;    
var $fakelocal_4 : ref;    
var i22 : int;    
var $b7 : int;    
var i21 : int;    
var z1 : int;    
var $i6 : int;    
var i24 : int;    
var $r19 : ref;    
var z4 : int;    
var i23 : int;    
var z3 : int;    
var $i4 : int;    
var r35 : ref;    
var $fakelocal_20 : ref;    
var $l11 : int;    
var $fakelocal_0 : ref;    
var $r10 : ref;    
var r2 : ref;    
var $i3 : int;    
var $b14 : int;    
var $b15 : int;    
var $r18 : ref;    
var i19 : int;    
var $r22 : ref;    
var i20 : int;    
var $fakelocal_16 : ref;    
var $r23 : ref;    
var r36 : ref;    
var $r5 : ref;    
var i0 : int;    
var $fakelocal_7 : ref;    
var i25 : int;    
var $i17 : int;    
var $fakelocal_1 : ref;    
var $fakelocal_6 : ref;    
var $fakelocal_19 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "ImageMatcherWorker.java",19,-1,-1,-1 } true;
    r31 := $null;
    assert { :sourceloc "ImageMatcherWorker.java",21,-1,-1,-1 } true;
    z1 := 0;
  block2:
    assert { :sourceloc "ImageMatcherWorker.java",24,-1,-1,-1 } true;
    call $fakelocal_0 := $new(ScalrApplyTest);
    $r5 := $fakelocal_0;
    assert { :sourceloc "ImageMatcherWorker.java",24,-1,-1,-1 } true;
    call $exception := ScalrApplyTest$$la$init$ra$$($r5);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            $r5 := $null;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",24,-1,-1,-1 } true;
    r32 := $r5;
    assert { :sourceloc "ImageMatcherWorker.java",25,-1,-1,-1 } true;
    call $exception := ScalrApplyTest$setup$byte$lp$$rp$(r0);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",26,-1,-1,-1 } true;
    call r33, $exception := ScalrApplyTest$testApply1$(r32);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",27,-1,-1,-1 } true;
    if (r33 != $null) {
        assert { :sourceloc "ImageMatcherWorker.java",27,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",27,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.RuntimeException);
        goto block3;
    }
    call i19, $exception := java.awt.image.BufferedImage$getWidth$(r33);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",28,-1,-1,-1 } true;
    call i20, $exception := java.awt.image.BufferedImage$getHeight$(r33);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",29,-1,-1,-1 } true;
    if ($heap[$null,$type] <: $intArrayType) {
        assert { :sourceloc "ImageMatcherWorker.java",29,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",29,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.ClassCastException);
        goto block3;
    }
    $r6 := $null;
    assert { :sourceloc "ImageMatcherWorker.java",29,-1,-1,-1 } true;
    call r34, $exception := java.awt.image.BufferedImage$getRGB$int_int_int_int_int$lp$$rp$_int_int(r33, 0, 0, i19, i20, $r6, 0, i19);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",30,-1,-1,-1 } true;
    if (r34 != $null) {
        assert { :sourceloc "ImageMatcherWorker.java",30,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",30,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.NullPointerException);
        goto block3;
    }
    $i1 := $arrSizeHeap[r34];
    assert { :sourceloc "ImageMatcherWorker.java",30,-1,-1,-1 } true;
    $i2 := $mulInt($i1, 4);
    assert { :sourceloc "ImageMatcherWorker.java",30,-1,-1,-1 } true;
    call r35, $exception := java.nio.ByteBuffer$allocate$int($i2);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",31,-1,-1,-1 } true;
    if (r35 != $null) {
        assert { :sourceloc "ImageMatcherWorker.java",31,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",31,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.RuntimeException);
        goto block3;
    }
    call r2, $exception := java.nio.ByteBuffer$asIntBuffer$(r35);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",32,-1,-1,-1 } true;
    if (r2 != $null) {
        assert { :sourceloc "ImageMatcherWorker.java",32,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",32,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.RuntimeException);
        goto block3;
    }
    call $fakelocal_1, $exception := java.nio.IntBuffer$put$int$lp$$rp$(r2, r34);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",33,-1,-1,-1 } true;
    call $fakelocal_2 := $new(java.io.ByteArrayOutputStream);
    $r8 := $fakelocal_2;
    assert { :sourceloc "ImageMatcherWorker.java",33,-1,-1,-1 } true;
    call $exception := java.io.ByteArrayOutputStream$$la$init$ra$$($r8);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            $r8 := $null;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",33,-1,-1,-1 } true;
    r3 := $r8;
    assert { :sourceloc "ImageMatcherWorker.java",34,-1,-1,-1 } true;
    call $r9, $exception := java.nio.ByteBuffer$array$(r35);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",34,-1,-1,-1 } true;
    call $exception := java.io.OutputStream$write$byte$lp$$rp$(r3, $r9);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.io.IOException) {
            $return := 0;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",35,-1,-1,-1 } true;
    call $exception := java.io.OutputStream$flush$(r3);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.io.IOException) {
            $return := 0;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",36,-1,-1,-1 } true;
    call $exception := java.io.ByteArrayOutputStream$close$(r3);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.io.IOException) {
            $return := 0;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",38,-1,-1,-1 } true;
    call $exception := ScalrApplyTest$tearDown$();
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",39,-1,-1,-1 } true;
    call $fakelocal_3 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_3 := 128];
    r4 := $fakelocal_3;
    assert { :sourceloc "ImageMatcherWorker.java",40,-1,-1,-1 } true;
    if (r34 != $null) {
        assert { :sourceloc "ImageMatcherWorker.java",40,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",40,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.NullPointerException);
        goto block3;
    }
    $i3 := $arrSizeHeap[r34];
    assert { :sourceloc "ImageMatcherWorker.java",40,-1,-1,-1 } true;
    if (128 != 0) {
        assert { :sourceloc "ImageMatcherWorker.java",40,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",40,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.ArithmeticException);
        goto block3;
    }
    i0 := $divInt($i3, 128);
    assert { :sourceloc "ImageMatcherWorker.java",41,-1,-1,-1 } true;
    i21 := 0;
    assert { :sourceloc "ImageMatcherWorker.java",43,-1,-1,-1 } true;
    i22 := 0;
  block4:
    assert { :sourceloc "ImageMatcherWorker.java",43,-1,-1,-1 } true;
    $i4 := $mulInt(i0, 128);
    assert { :sourceloc "ImageMatcherWorker.java",43,-1,-1,-1 } true;
    if (i22 >= $i4) {
        assert { :sourceloc "ImageMatcherWorker.java",43,-1,-1,-1 } { :comment "thenblock" } true;
        goto block5;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",43,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ImageMatcherWorker.java",44,-1,-1,-1 } true;
    if (i22 < $arrSizeHeap[r34] && i22 >= 0) {
        assert { :sourceloc "ImageMatcherWorker.java",44,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",44,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
        goto block3;
    }
    $i16 := $intArrHeap[r34][i22];
    assert { :sourceloc "ImageMatcherWorker.java",44,-1,-1,-1 } true;
    if (2 != 0) {
        assert { :sourceloc "ImageMatcherWorker.java",44,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",44,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.ArithmeticException);
        goto block3;
    }
    $i17 := $modInt($i16, 2);
    assert { :sourceloc "ImageMatcherWorker.java",44,-1,-1,-1 } true;
    $b18 := $i17;
    assert { :sourceloc "ImageMatcherWorker.java",44,-1,-1,-1 } true;
    if (i21 < $arrSizeHeap[r4] && i21 >= 0) {
        assert { :sourceloc "ImageMatcherWorker.java",44,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",44,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
        goto block3;
    }
    $intArrHeap := $intArrHeap[r4 := $intArrHeap[r4][i21 := $b18]];
    assert { :sourceloc "ImageMatcherWorker.java",45,-1,-1,-1 } true;
    i21 := i21 + 1;
    assert { :sourceloc "ImageMatcherWorker.java",43,-1,-1,-1 } true;
    i22 := i22 + i0;
    assert { :sourceloc "ImageMatcherWorker.java",43,-1,-1,-1 } true;
    goto block4;
  block5:
    assert { :sourceloc "ImageMatcherWorker.java",48,-1,-1,-1 } true;
    r31 := r4;
    assert { :sourceloc "ImageMatcherWorker.java",49,-1,-1,-1 } true;
    z1 := 1;
  block6:
    assert { :sourceloc "ImageMatcherWorker.java",52,-1,-1,-1 } true;
    goto block7;
  block3:
    assert { :sourceloc "ImageMatcherWorker.java",43,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r24 := $exception;
    assert { :sourceloc "ImageMatcherWorker.java",50,-1,-1,-1 } true;
    r36 := $r24;
    assert { :sourceloc "ImageMatcherWorker.java",51,-1,-1,-1 } true;
    $r26 := java.io.PrintStream$java.lang.System$out271;
    assert { :sourceloc "ImageMatcherWorker.java",51,-1,-1,-1 } true;
    call $fakelocal_4 := $new(java.lang.StringBuilder);
    $r25 := $fakelocal_4;
    assert { :sourceloc "ImageMatcherWorker.java",51,-1,-1,-1 } true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r25);
    assert { :sourceloc "ImageMatcherWorker.java",51,-1,-1,-1 } true;
    call $r27, $exception := java.lang.StringBuilder$append$java.lang.String($r25, $StringConst0);
    assert { :sourceloc "ImageMatcherWorker.java",51,-1,-1,-1 } true;
    call $r28, $exception := java.lang.Throwable$getMessage$(r36);
    assert { :sourceloc "ImageMatcherWorker.java",51,-1,-1,-1 } true;
    if ($r27 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_5;
        return;
    }
    call $r29, $exception := java.lang.StringBuilder$append$java.lang.String($r27, $r28);
    assert { :sourceloc "ImageMatcherWorker.java",51,-1,-1,-1 } true;
    if ($r29 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_6 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_6;
        return;
    }
    call $r30, $exception := java.lang.StringBuilder$toString$($r29);
    assert { :sourceloc "ImageMatcherWorker.java",51,-1,-1,-1 } true;
    if ($r26 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_7 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_7;
        return;
    }
    call $exception := java.io.PrintStream$println$java.lang.String($r26, $r30);
  block7:
    assert { :sourceloc "ImageMatcherWorker.java",54,-1,-1,-1 } true;
    if (z1 == 0) {
        assert { :sourceloc "ImageMatcherWorker.java",54,-1,-1,-1 } { :comment "thenblock" } true;
        goto block8;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",54,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ImageMatcherWorker.java",55,-1,-1,-1 } true;
    z2 := 1;
    assert { :sourceloc "ImageMatcherWorker.java",56,-1,-1,-1 } true;
    z3 := 0;
    assert { :sourceloc "ImageMatcherWorker.java",57,-1,-1,-1 } true;
    i23 := 0;
  block9:
    assert { :sourceloc "ImageMatcherWorker.java",57,-1,-1,-1 } true;
    if (r31 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_8 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_8;
        return;
    }
    $i5 := $arrSizeHeap[r31];
    assert { :sourceloc "ImageMatcherWorker.java",57,-1,-1,-1 } true;
    if (i23 >= $i5) {
        assert { :sourceloc "ImageMatcherWorker.java",57,-1,-1,-1 } { :comment "thenblock" } true;
        goto block10;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",57,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ImageMatcherWorker.java",77,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_9 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_9;
        return;
    }
    $i6 := $arrSizeHeap[r1];
    assert { :sourceloc "ImageMatcherWorker.java",77,-1,-1,-1 } true;
    if (i23 >= $i6) {
        assert { :sourceloc "ImageMatcherWorker.java",77,-1,-1,-1 } { :comment "thenblock" } true;
        goto block10;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",77,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ImageMatcherWorker.java",58,-1,-1,-1 } true;
    if (i23 < $arrSizeHeap[r31] && i23 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_10 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_10;
        return;
    }
    $b7 := $intArrHeap[r31][i23];
    assert { :sourceloc "ImageMatcherWorker.java",58,-1,-1,-1 } true;
    call i24, $exception := java.lang.Math$abs$int($b7);
    assert { :sourceloc "ImageMatcherWorker.java",60,-1,-1,-1 } true;
    if (i23 < $arrSizeHeap[r1] && i23 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_11 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_11;
        return;
    }
    $b8 := $intArrHeap[r1][i23];
    assert { :sourceloc "ImageMatcherWorker.java",60,-1,-1,-1 } true;
    call i25, $exception := java.lang.Math$abs$int($b8);
    assert { :sourceloc "ImageMatcherWorker.java",62,-1,-1,-1 } true;
    if (2 != 0) {
        $exception := $exception;
    } else {
        call $fakelocal_12 := $new(java.lang.ArithmeticException);
        $return := 0;
        $exception := $fakelocal_12;
        return;
    }
    $i9 := $modInt(i25, 2);
    assert { :sourceloc "ImageMatcherWorker.java",62,-1,-1,-1 } true;
    $l12 := $i9;
    assert { :sourceloc "ImageMatcherWorker.java",62,-1,-1,-1 } true;
    if (2 != 0) {
        $exception := $exception;
    } else {
        call $fakelocal_13 := $new(java.lang.ArithmeticException);
        $return := 0;
        $exception := $fakelocal_13;
        return;
    }
    $i10 := $modInt(i24, 2);
    assert { :sourceloc "ImageMatcherWorker.java",62,-1,-1,-1 } true;
    $l11 := $i10;
    assert { :sourceloc "ImageMatcherWorker.java",62,-1,-1,-1 } true;
    call z4, $exception := sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($l12, $l11);
    assert { :sourceloc "ImageMatcherWorker.java",64,-1,-1,-1 } true;
    call z5, $exception := sg.edu.nus.comp.tsunami.safe.Safe$not$boolean(z4);
    assert { :sourceloc "ImageMatcherWorker.java",66,-1,-1,-1 } true;
    call $r10, $exception := java.lang.Boolean$valueOf$boolean(z2);
    assert { :sourceloc "ImageMatcherWorker.java",66,-1,-1,-1 } true;
    call $r11, $exception := java.lang.Boolean$valueOf$boolean(0);
    assert { :sourceloc "ImageMatcherWorker.java",66,-1,-1,-1 } true;
    call $r12, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z3, $r10, $r11);
    assert { :sourceloc "ImageMatcherWorker.java",66,-1,-1,-1 } true;
    call $r13, $exception := java.lang.Boolean$valueOf$boolean(z2);
    assert { :sourceloc "ImageMatcherWorker.java",66,-1,-1,-1 } true;
    call $r14, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z5, $r12, $r13);
    assert { :sourceloc "ImageMatcherWorker.java",66,-1,-1,-1 } true;
    if ($heap[$r14,$type] <: java.lang.Boolean) {
        $exception := $exception;
    } else {
        call $fakelocal_14 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_14;
        return;
    }
    $r15 := $r14;
    assert { :sourceloc "ImageMatcherWorker.java",66,-1,-1,-1 } true;
    if ($r15 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_15 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_15;
        return;
    }
    call z2, $exception := java.lang.Boolean$booleanValue$($r15);
    assert { :sourceloc "ImageMatcherWorker.java",67,-1,-1,-1 } true;
    call $r16, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert { :sourceloc "ImageMatcherWorker.java",67,-1,-1,-1 } true;
    call $r17, $exception := java.lang.Boolean$valueOf$boolean(z3);
    assert { :sourceloc "ImageMatcherWorker.java",67,-1,-1,-1 } true;
    call $r18, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z5, $r16, $r17);
    assert { :sourceloc "ImageMatcherWorker.java",67,-1,-1,-1 } true;
    if ($heap[$r18,$type] <: java.lang.Boolean) {
        $exception := $exception;
    } else {
        call $fakelocal_16 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_16;
        return;
    }
    $r19 := $r18;
    assert { :sourceloc "ImageMatcherWorker.java",67,-1,-1,-1 } true;
    if ($r19 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_17 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_17;
        return;
    }
    call z3, $exception := java.lang.Boolean$booleanValue$($r19);
    assert { :sourceloc "ImageMatcherWorker.java",70,-1,-1,-1 } true;
    if (i23 < $arrSizeHeap[r31] && i23 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_18 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_18;
        return;
    }
    $b13 := $intArrHeap[r31][i23];
    assert { :sourceloc "ImageMatcherWorker.java",70,-1,-1,-1 } true;
    call $r20, $exception := java.lang.Byte$valueOf$byte($b13);
    assert { :sourceloc "ImageMatcherWorker.java",70,-1,-1,-1 } true;
    if (z4 == 0) {
        assert { :sourceloc "ImageMatcherWorker.java",70,-1,-1,-1 } { :comment "thenblock" } true;
        goto block11;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",70,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ImageMatcherWorker.java",57,-1,-1,-1 } true;
    $z6 := 1;
    assert { :sourceloc "ImageMatcherWorker.java",57,-1,-1,-1 } true;
    goto block12;
  block11:
    assert { :sourceloc "ImageMatcherWorker.java",57,-1,-1,-1 } true;
    $z6 := 0;
  block12:
    assert { :sourceloc "ImageMatcherWorker.java",70,-1,-1,-1 } true;
    $b14 := $z6;
    assert { :sourceloc "ImageMatcherWorker.java",70,-1,-1,-1 } true;
    call $r21, $exception := java.lang.Byte$valueOf$byte($b14);
    assert { :sourceloc "ImageMatcherWorker.java",70,-1,-1,-1 } true;
    call $r22, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z3, $r20, $r21);
    assert { :sourceloc "ImageMatcherWorker.java",70,-1,-1,-1 } true;
    if ($heap[$r22,$type] <: java.lang.Byte) {
        $exception := $exception;
    } else {
        call $fakelocal_19 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_19;
        return;
    }
    $r23 := $r22;
    assert { :sourceloc "ImageMatcherWorker.java",70,-1,-1,-1 } true;
    if ($r23 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_20 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_20;
        return;
    }
    call $b15, $exception := java.lang.Byte$byteValue$($r23);
    assert { :sourceloc "ImageMatcherWorker.java",70,-1,-1,-1 } true;
    if (i23 < $arrSizeHeap[r31] && i23 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_21 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_21;
        return;
    }
    $intArrHeap := $intArrHeap[r31 := $intArrHeap[r31][i23 := $b15]];
    assert { :sourceloc "ImageMatcherWorker.java",57,-1,-1,-1 } true;
    i23 := i23 + 4;
    assert { :sourceloc "ImageMatcherWorker.java",57,-1,-1,-1 } true;
    goto block9;
  block10:
    assert { :sourceloc "ImageMatcherWorker.java",74,-1,-1,-1 } true;
    goto block13;
  block8:
    assert { :sourceloc "ImageMatcherWorker.java",75,-1,-1,-1 } true;
    z2 := 0;
  block13:
    assert { :sourceloc "ImageMatcherWorker.java",77,-1,-1,-1 } true;
    $return := z2;
    goto block14;
  block14:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "Safe.java",-1,-1,-1,-1 } $heap[$this,$type] <: sg.edu.nus.comp.tsunami.safe.Safe;
    assume { :sourceloc "Safe.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "Safe.java",3,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "Safe.java",3,-1,-1,-1 } true;
    goto block15;
  block15:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0:int) returns ($return:int, $exception:ref){
    
var z0 : int;    
var z1 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    z0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",5,-1,-1,-1 } true;
    z1 := 0;
    assert { :sourceloc "Safe.java",6,-1,-1,-1 } true;
    if (z0 == 0) {
        assert { :sourceloc "Safe.java",6,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block16;
    } else {
        assert { :sourceloc "Safe.java",6,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",8,-1,-1,-1 } true;
    z1 := 0;
  block16:
    assert { :sourceloc "Safe.java",7,-1,-1,-1 } true;
    if (z0 != 0) {
        assert { :sourceloc "Safe.java",7,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block17;
    } else {
        assert { :sourceloc "Safe.java",7,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",8,-1,-1,-1 } true;
    z1 := 1;
  block17:
    assert { :sourceloc "Safe.java",8,-1,-1,-1 } true;
    $return := z1;
    goto block18;
  block18:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var z1 : int;    
var $z2 : int;    
var z0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    z0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    z1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",12,-1,-1,-1 } true;
    $z2 := $bitAnd(z0, z1);
    assert { :sourceloc "Safe.java",12,-1,-1,-1 } true;
    $return := $z2;
    goto block19;
  block19:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var z1 : int;    
var $z2 : int;    
var z0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    z0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    z1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",16,-1,-1,-1 } true;
    $z2 := $bitOr(z0, z1);
    assert { :sourceloc "Safe.java",16,-1,-1,-1 } true;
    $return := $z2;
    goto block20;
  block20:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var l0 : int;    
var l1 : int;    
var z0 : int;    
var $b2 : int;    
var $b3 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",20,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",21,-1,-1,-1 } true;
    $b2 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",21,-1,-1,-1 } true;
    if ($b2 <= 0) {
        assert { :sourceloc "Safe.java",21,-1,-1,-1 } { :comment "thenblock" } true;
        goto block21;
    } else {
        assert { :sourceloc "Safe.java",21,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",23,-1,-1,-1 } true;
    z0 := 1;
  block21:
    assert { :sourceloc "Safe.java",22,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",22,-1,-1,-1 } true;
    if ($b3 > 0) {
        assert { :sourceloc "Safe.java",22,-1,-1,-1 } { :comment "thenblock" } true;
        goto block22;
    } else {
        assert { :sourceloc "Safe.java",22,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",23,-1,-1,-1 } true;
    z0 := 0;
  block22:
    assert { :sourceloc "Safe.java",23,-1,-1,-1 } true;
    $return := z0;
    goto block23;
  block23:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var l0 : int;    
var l1 : int;    
var z0 : int;    
var $b3 : int;    
var $b2 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",27,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",28,-1,-1,-1 } true;
    $b2 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",28,-1,-1,-1 } true;
    if ($b2 >= 0) {
        assert { :sourceloc "Safe.java",28,-1,-1,-1 } { :comment "thenblock" } true;
        goto block24;
    } else {
        assert { :sourceloc "Safe.java",28,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",30,-1,-1,-1 } true;
    z0 := 1;
  block24:
    assert { :sourceloc "Safe.java",29,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",29,-1,-1,-1 } true;
    if ($b3 < 0) {
        assert { :sourceloc "Safe.java",29,-1,-1,-1 } { :comment "thenblock" } true;
        goto block25;
    } else {
        assert { :sourceloc "Safe.java",29,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",30,-1,-1,-1 } true;
    z0 := 0;
  block25:
    assert { :sourceloc "Safe.java",30,-1,-1,-1 } true;
    $return := z0;
    goto block26;
  block26:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var l1 : int;    
var l0 : int;    
var $b3 : int;    
var $b2 : int;    
var z0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",34,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",35,-1,-1,-1 } true;
    $b2 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",35,-1,-1,-1 } true;
    if ($b2 < 0) {
        assert { :sourceloc "Safe.java",35,-1,-1,-1 } { :comment "thenblock" } true;
        goto block27;
    } else {
        assert { :sourceloc "Safe.java",35,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",37,-1,-1,-1 } true;
    z0 := 1;
  block27:
    assert { :sourceloc "Safe.java",36,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",36,-1,-1,-1 } true;
    if ($b3 >= 0) {
        assert { :sourceloc "Safe.java",36,-1,-1,-1 } { :comment "thenblock" } true;
        goto block28;
    } else {
        assert { :sourceloc "Safe.java",36,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",37,-1,-1,-1 } true;
    z0 := 0;
  block28:
    assert { :sourceloc "Safe.java",37,-1,-1,-1 } true;
    $return := z0;
    goto block29;
  block29:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var l0 : int;    
var l1 : int;    
var z0 : int;    
var $b2 : int;    
var $b3 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",41,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",42,-1,-1,-1 } true;
    $b2 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",42,-1,-1,-1 } true;
    if ($b2 > 0) {
        assert { :sourceloc "Safe.java",42,-1,-1,-1 } { :comment "thenblock" } true;
        goto block30;
    } else {
        assert { :sourceloc "Safe.java",42,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",44,-1,-1,-1 } true;
    z0 := 1;
  block30:
    assert { :sourceloc "Safe.java",43,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",43,-1,-1,-1 } true;
    if ($b3 <= 0) {
        assert { :sourceloc "Safe.java",43,-1,-1,-1 } { :comment "thenblock" } true;
        goto block31;
    } else {
        assert { :sourceloc "Safe.java",43,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",44,-1,-1,-1 } true;
    z0 := 0;
  block31:
    assert { :sourceloc "Safe.java",44,-1,-1,-1 } true;
    $return := z0;
    goto block32;
  block32:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b2 : int;    
var l1 : int;    
var $b3 : int;    
var l0 : int;    
var z0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",48,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",49,-1,-1,-1 } true;
    $b2 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",49,-1,-1,-1 } true;
    if ($b2 != 0) {
        assert { :sourceloc "Safe.java",49,-1,-1,-1 } { :comment "thenblock" } true;
        goto block33;
    } else {
        assert { :sourceloc "Safe.java",49,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",51,-1,-1,-1 } true;
    z0 := 1;
  block33:
    assert { :sourceloc "Safe.java",50,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",50,-1,-1,-1 } true;
    if ($b3 == 0) {
        assert { :sourceloc "Safe.java",50,-1,-1,-1 } { :comment "thenblock" } true;
        goto block34;
    } else {
        assert { :sourceloc "Safe.java",50,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",51,-1,-1,-1 } true;
    z0 := 0;
  block34:
    assert { :sourceloc "Safe.java",51,-1,-1,-1 } true;
    $return := z0;
    goto block35;
  block35:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b3 : int;    
var z0 : int;    
var $b2 : int;    
var l1 : int;    
var l0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",55,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",56,-1,-1,-1 } true;
    $b2 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",56,-1,-1,-1 } true;
    if ($b2 == 0) {
        assert { :sourceloc "Safe.java",56,-1,-1,-1 } { :comment "thenblock" } true;
        goto block36;
    } else {
        assert { :sourceloc "Safe.java",56,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",58,-1,-1,-1 } true;
    z0 := 1;
  block36:
    assert { :sourceloc "Safe.java",57,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",57,-1,-1,-1 } true;
    if ($b3 != 0) {
        assert { :sourceloc "Safe.java",57,-1,-1,-1 } { :comment "thenblock" } true;
        goto block37;
    } else {
        assert { :sourceloc "Safe.java",57,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",58,-1,-1,-1 } true;
    z0 := 0;
  block37:
    assert { :sourceloc "Safe.java",58,-1,-1,-1 } true;
    $return := z0;
    goto block38;
  block38:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var d0 : int;    
var $b1 : int;    
var $b0 : int;    
var d1 : int;    
var z0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",62,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",63,-1,-1,-1 } true;
    $b0 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",63,-1,-1,-1 } true;
    if ($b0 <= 0) {
        assert { :sourceloc "Safe.java",63,-1,-1,-1 } { :comment "thenblock" } true;
        goto block39;
    } else {
        assert { :sourceloc "Safe.java",63,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",65,-1,-1,-1 } true;
    z0 := 1;
  block39:
    assert { :sourceloc "Safe.java",64,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",64,-1,-1,-1 } true;
    if ($b1 > 0) {
        assert { :sourceloc "Safe.java",64,-1,-1,-1 } { :comment "thenblock" } true;
        goto block40;
    } else {
        assert { :sourceloc "Safe.java",64,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",65,-1,-1,-1 } true;
    z0 := 0;
  block40:
    assert { :sourceloc "Safe.java",65,-1,-1,-1 } true;
    $return := z0;
    goto block41;
  block41:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b1 : int;    
var d0 : int;    
var $b0 : int;    
var z0 : int;    
var d1 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",69,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",70,-1,-1,-1 } true;
    $b0 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",70,-1,-1,-1 } true;
    if ($b0 >= 0) {
        assert { :sourceloc "Safe.java",70,-1,-1,-1 } { :comment "thenblock" } true;
        goto block42;
    } else {
        assert { :sourceloc "Safe.java",70,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",72,-1,-1,-1 } true;
    z0 := 1;
  block42:
    assert { :sourceloc "Safe.java",71,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",71,-1,-1,-1 } true;
    if ($b1 < 0) {
        assert { :sourceloc "Safe.java",71,-1,-1,-1 } { :comment "thenblock" } true;
        goto block43;
    } else {
        assert { :sourceloc "Safe.java",71,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",72,-1,-1,-1 } true;
    z0 := 0;
  block43:
    assert { :sourceloc "Safe.java",72,-1,-1,-1 } true;
    $return := z0;
    goto block44;
  block44:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b1 : int;    
var d0 : int;    
var d1 : int;    
var $b0 : int;    
var z0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",76,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",77,-1,-1,-1 } true;
    $b0 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",77,-1,-1,-1 } true;
    if ($b0 < 0) {
        assert { :sourceloc "Safe.java",77,-1,-1,-1 } { :comment "thenblock" } true;
        goto block45;
    } else {
        assert { :sourceloc "Safe.java",77,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",79,-1,-1,-1 } true;
    z0 := 1;
  block45:
    assert { :sourceloc "Safe.java",78,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",78,-1,-1,-1 } true;
    if ($b1 >= 0) {
        assert { :sourceloc "Safe.java",78,-1,-1,-1 } { :comment "thenblock" } true;
        goto block46;
    } else {
        assert { :sourceloc "Safe.java",78,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",79,-1,-1,-1 } true;
    z0 := 0;
  block46:
    assert { :sourceloc "Safe.java",79,-1,-1,-1 } true;
    $return := z0;
    goto block47;
  block47:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var d1 : int;    
var d0 : int;    
var z0 : int;    
var $b1 : int;    
var $b0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",83,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",84,-1,-1,-1 } true;
    $b0 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",84,-1,-1,-1 } true;
    if ($b0 > 0) {
        assert { :sourceloc "Safe.java",84,-1,-1,-1 } { :comment "thenblock" } true;
        goto block48;
    } else {
        assert { :sourceloc "Safe.java",84,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",86,-1,-1,-1 } true;
    z0 := 1;
  block48:
    assert { :sourceloc "Safe.java",85,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",85,-1,-1,-1 } true;
    if ($b1 <= 0) {
        assert { :sourceloc "Safe.java",85,-1,-1,-1 } { :comment "thenblock" } true;
        goto block49;
    } else {
        assert { :sourceloc "Safe.java",85,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",86,-1,-1,-1 } true;
    z0 := 0;
  block49:
    assert { :sourceloc "Safe.java",86,-1,-1,-1 } true;
    $return := z0;
    goto block50;
  block50:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var z0 : int;    
var $b1 : int;    
var $b0 : int;    
var d0 : int;    
var d1 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",90,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",91,-1,-1,-1 } true;
    $b0 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",91,-1,-1,-1 } true;
    if ($b0 != 0) {
        assert { :sourceloc "Safe.java",91,-1,-1,-1 } { :comment "thenblock" } true;
        goto block51;
    } else {
        assert { :sourceloc "Safe.java",91,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",93,-1,-1,-1 } true;
    z0 := 1;
  block51:
    assert { :sourceloc "Safe.java",92,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",92,-1,-1,-1 } true;
    if ($b1 == 0) {
        assert { :sourceloc "Safe.java",92,-1,-1,-1 } { :comment "thenblock" } true;
        goto block52;
    } else {
        assert { :sourceloc "Safe.java",92,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",93,-1,-1,-1 } true;
    z0 := 0;
  block52:
    assert { :sourceloc "Safe.java",93,-1,-1,-1 } true;
    $return := z0;
    goto block53;
  block53:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b0 : int;    
var d0 : int;    
var z0 : int;    
var $b1 : int;    
var d1 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",97,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",98,-1,-1,-1 } true;
    $b0 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",98,-1,-1,-1 } true;
    if ($b0 == 0) {
        assert { :sourceloc "Safe.java",98,-1,-1,-1 } { :comment "thenblock" } true;
        goto block54;
    } else {
        assert { :sourceloc "Safe.java",98,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",100,-1,-1,-1 } true;
    z0 := 1;
  block54:
    assert { :sourceloc "Safe.java",99,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",99,-1,-1,-1 } true;
    if ($b1 != 0) {
        assert { :sourceloc "Safe.java",99,-1,-1,-1 } { :comment "thenblock" } true;
        goto block55;
    } else {
        assert { :sourceloc "Safe.java",99,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",100,-1,-1,-1 } true;
    z0 := 0;
  block55:
    assert { :sourceloc "Safe.java",100,-1,-1,-1 } true;
    $return := z0;
    goto block56;
  block56:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var r0 : ref;    
var z0 : int;    
var r1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    assume $heap[$in_parameter__1,$type] <: java.lang.Object;
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",104,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",105,-1,-1,-1 } true;
    if (r0 != r1) {
        assert { :sourceloc "Safe.java",105,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block57;
    } else {
        assert { :sourceloc "Safe.java",105,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",107,-1,-1,-1 } true;
    z0 := 1;
  block57:
    assert { :sourceloc "Safe.java",106,-1,-1,-1 } true;
    if (r0 == r1) {
        assert { :sourceloc "Safe.java",106,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block58;
    } else {
        assert { :sourceloc "Safe.java",106,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",107,-1,-1,-1 } true;
    z0 := 0;
  block58:
    assert { :sourceloc "Safe.java",107,-1,-1,-1 } true;
    $return := z0;
    goto block59;
  block59:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var r1 : ref;    
var r0 : ref;    
var z0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    assume $heap[$in_parameter__1,$type] <: java.lang.Object;
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",111,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",112,-1,-1,-1 } true;
    if (r0 == r1) {
        assert { :sourceloc "Safe.java",112,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block60;
    } else {
        assert { :sourceloc "Safe.java",112,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",114,-1,-1,-1 } true;
    z0 := 1;
  block60:
    assert { :sourceloc "Safe.java",113,-1,-1,-1 } true;
    if (r0 != r1) {
        assert { :sourceloc "Safe.java",113,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block61;
    } else {
        assert { :sourceloc "Safe.java",113,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",114,-1,-1,-1 } true;
    z0 := 0;
  block61:
    assert { :sourceloc "Safe.java",114,-1,-1,-1 } true;
    $return := z0;
    goto block62;
  block62:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref){
    
var z0 : int;    
var r2 : ref;    
var r1 : ref;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__2,$type] <: java.lang.Object;
    assume $heap[$in_parameter__1,$type] <: java.lang.Object;
    assume $heap[$return,$type] <: java.lang.Object;
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    z0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__1;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__2;
    assert { :sourceloc "Safe.java",117,-1,-1,-1 } true;
    r2 := $null;
    assert { :sourceloc "Safe.java",118,-1,-1,-1 } true;
    if (z0 == 0) {
        assert { :sourceloc "Safe.java",118,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block63;
    } else {
        assert { :sourceloc "Safe.java",118,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",120,-1,-1,-1 } true;
    r2 := r0;
  block63:
    assert { :sourceloc "Safe.java",119,-1,-1,-1 } true;
    if (z0 != 0) {
        assert { :sourceloc "Safe.java",119,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block64;
    } else {
        assert { :sourceloc "Safe.java",119,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",120,-1,-1,-1 } true;
    r2 := r1;
  block64:
    assert { :sourceloc "Safe.java",120,-1,-1,-1 } true;
    $return := r2;
    goto block65;
  block65:
    return;
}


implementation java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref){
    $exception := $null;
    return;
}


