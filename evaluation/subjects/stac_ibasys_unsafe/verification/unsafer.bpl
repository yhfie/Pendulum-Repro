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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $objIndex == old($objIndex) + 1;    modifies $objIndex, $heap;    ensures !old($heap[$obj,$alloc]);    ensures $obj == $intToRef(old($objIndex));    ensures $heap == old($heap)[$obj,$alloc := true][$obj,$type := obj_type];    ensures $obj != $null;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);        ensures $other != $null;    ensures $heap[$other,$alloc] == true;    ensures $heap[$other,$type] == $heap[$this,$type];

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

implementation ImageMatcherWorker$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var r0 : ref;    
var $fakelocal_0 : ref;    
var $r1 : ref;    
var $fakelocal_1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } $heap[$this,$type] <: ImageMatcherWorker;
    assume { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "ImageMatcherWorker.java",6,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "ImageMatcherWorker.java",12,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 0];
    $heap := $heap[r0,java.lang.String$ImageMatcherWorker$errorcode263 := $fakelocal_0];
    assert { :sourceloc "ImageMatcherWorker.java",13,-1,-1,-1 } true;
    call $fakelocal_1 := $new(java.lang.StringBuffer);
    $r1 := $fakelocal_1;
    assert { :sourceloc "ImageMatcherWorker.java",13,-1,-1,-1 } true;
    call $exception := java.lang.StringBuffer$$la$init$ra$$($r1);
    assert { :sourceloc "ImageMatcherWorker.java",13,-1,-1,-1 } true;
    $heap := $heap[r0,java.lang.StringBuffer$ImageMatcherWorker$error264 := $r1];
    assert { :sourceloc "ImageMatcherWorker.java",14,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$ImageMatcherWorker$success0 := 0];
    assert { :sourceloc "ImageMatcherWorker.java",14,-1,-1,-1 } true;
    goto block1;
  block1:
    return;
}


implementation ImageMatcherWorker$test$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var z4 : int;    
var $fakelocal_6 : ref;    
var i19 : int;    
var $r18 : ref;    
var $b8 : int;    
var $i10 : int;    
var $fakelocal_1 : ref;    
var i20 : int;    
var r4 : ref;    
var z2 : int;    
var $fakelocal_14 : ref;    
var $r13 : ref;    
var $fakelocal_4 : ref;    
var $b11 : int;    
var $r16 : ref;    
var i18 : int;    
var $r14 : ref;    
var $r10 : ref;    
var $r15 : ref;    
var r5 : ref;    
var i0 : int;    
var r2 : ref;    
var $i1 : int;    
var $fakelocal_13 : ref;    
var i17 : int;    
var $fakelocal_12 : ref;    
var $fakelocal_8 : ref;    
var r6 : ref;    
var r0 : ref;    
var $r8 : ref;    
var $r12 : ref;    
var $i9 : int;    
var $r11 : ref;    
var i21 : int;    
var $b14 : int;    
var r3 : ref;    
var $i3 : int;    
var $z3 : int;    
var $i5 : int;    
var $fakelocal_3 : ref;    
var $fakelocal_5 : ref;    
var $fakelocal_7 : ref;    
var r20 : ref;    
var $r17 : ref;    
var $b7 : int;    
var $i2 : int;    
var $r7 : ref;    
var $i12 : int;    
var r19 : ref;    
var z1 : int;    
var $fakelocal_10 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_2 : ref;    
var $i6 : int;    
var i16 : int;    
var r1 : ref;    
var $z5 : int;    
var $fakelocal_9 : ref;    
var r21 : ref;    
var i15 : int;    
var r22 : ref;    
var $i4 : int;    
var $i13 : int;    
var $fakelocal_11 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "ImageMatcherWorker.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "ImageMatcherWorker.java",17,-1,-1,-1 } true;
    r19 := $null;
    assert { :sourceloc "ImageMatcherWorker.java",19,-1,-1,-1 } true;
    z1 := 0;
  block2:
    assert { :sourceloc "ImageMatcherWorker.java",22,-1,-1,-1 } true;
    call $fakelocal_0 := $new(ScalrApplyTest);
    $r7 := $fakelocal_0;
    assert { :sourceloc "ImageMatcherWorker.java",22,-1,-1,-1 } true;
    call $exception := ScalrApplyTest$$la$init$ra$$($r7);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            $r7 := $null;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",22,-1,-1,-1 } true;
    r20 := $r7;
    assert { :sourceloc "ImageMatcherWorker.java",23,-1,-1,-1 } true;
    call $exception := ScalrApplyTest$setup$byte$lp$$rp$(r0);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",24,-1,-1,-1 } true;
    call r21, $exception := ScalrApplyTest$testApply1$(r20);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",25,-1,-1,-1 } true;
    if (r21 != $null) {
        assert { :sourceloc "ImageMatcherWorker.java",25,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",25,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.RuntimeException);
        goto block3;
    }
    call i15, $exception := java.awt.image.BufferedImage$getWidth$(r21);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",26,-1,-1,-1 } true;
    call i16, $exception := java.awt.image.BufferedImage$getHeight$(r21);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",27,-1,-1,-1 } true;
    if ($heap[$null,$type] <: $intArrayType) {
        assert { :sourceloc "ImageMatcherWorker.java",27,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",27,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.ClassCastException);
        goto block3;
    }
    $r8 := $null;
    assert { :sourceloc "ImageMatcherWorker.java",27,-1,-1,-1 } true;
    call r2, $exception := java.awt.image.BufferedImage$getRGB$int_int_int_int_int$lp$$rp$_int_int(r21, 0, 0, i15, i16, $r8, 0, i15);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",28,-1,-1,-1 } true;
    if (r2 != $null) {
        assert { :sourceloc "ImageMatcherWorker.java",28,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",28,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.NullPointerException);
        goto block3;
    }
    $i1 := $arrSizeHeap[r2];
    assert { :sourceloc "ImageMatcherWorker.java",28,-1,-1,-1 } true;
    $i2 := $mulInt($i1, 4);
    assert { :sourceloc "ImageMatcherWorker.java",28,-1,-1,-1 } true;
    call r3, $exception := java.nio.ByteBuffer$allocate$int($i2);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",29,-1,-1,-1 } true;
    if (r3 != $null) {
        assert { :sourceloc "ImageMatcherWorker.java",29,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",29,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.RuntimeException);
        goto block3;
    }
    call r4, $exception := java.nio.ByteBuffer$asIntBuffer$(r3);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",30,-1,-1,-1 } true;
    if (r4 != $null) {
        assert { :sourceloc "ImageMatcherWorker.java",30,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",30,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.RuntimeException);
        goto block3;
    }
    call $fakelocal_1, $exception := java.nio.IntBuffer$put$int$lp$$rp$(r4, r2);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",31,-1,-1,-1 } true;
    call $fakelocal_2 := $new(java.io.ByteArrayOutputStream);
    $r10 := $fakelocal_2;
    assert { :sourceloc "ImageMatcherWorker.java",31,-1,-1,-1 } true;
    call $exception := java.io.ByteArrayOutputStream$$la$init$ra$$($r10);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            $r10 := $null;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",31,-1,-1,-1 } true;
    r5 := $r10;
    assert { :sourceloc "ImageMatcherWorker.java",32,-1,-1,-1 } true;
    call $r11, $exception := java.nio.ByteBuffer$array$(r3);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",32,-1,-1,-1 } true;
    call $exception := java.io.OutputStream$write$byte$lp$$rp$(r5, $r11);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.io.IOException) {
            $return := 0;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",33,-1,-1,-1 } true;
    call $exception := java.io.OutputStream$flush$(r5);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.io.IOException) {
            $return := 0;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",34,-1,-1,-1 } true;
    call $exception := java.io.ByteArrayOutputStream$close$(r5);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.io.IOException) {
            $return := 0;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",36,-1,-1,-1 } true;
    call $exception := ScalrApplyTest$tearDown$();
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block3;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "ImageMatcherWorker.java",37,-1,-1,-1 } true;
    call $fakelocal_3 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_3 := 128];
    r6 := $fakelocal_3;
    assert { :sourceloc "ImageMatcherWorker.java",38,-1,-1,-1 } true;
    if (r2 != $null) {
        assert { :sourceloc "ImageMatcherWorker.java",38,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",38,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.NullPointerException);
        goto block3;
    }
    $i3 := $arrSizeHeap[r2];
    assert { :sourceloc "ImageMatcherWorker.java",38,-1,-1,-1 } true;
    if (128 != 0) {
        assert { :sourceloc "ImageMatcherWorker.java",38,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",38,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.ArithmeticException);
        goto block3;
    }
    i0 := $divInt($i3, 128);
    assert { :sourceloc "ImageMatcherWorker.java",39,-1,-1,-1 } true;
    i17 := 0;
    assert { :sourceloc "ImageMatcherWorker.java",41,-1,-1,-1 } true;
    i18 := 0;
  block4:
    assert { :sourceloc "ImageMatcherWorker.java",41,-1,-1,-1 } true;
    $i4 := $mulInt(i0, 128);
    assert { :sourceloc "ImageMatcherWorker.java",41,-1,-1,-1 } true;
    if (i18 >= $i4) {
        assert { :sourceloc "ImageMatcherWorker.java",41,-1,-1,-1 } { :comment "thenblock" } true;
        goto block5;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",41,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ImageMatcherWorker.java",42,-1,-1,-1 } true;
    if (i18 < $arrSizeHeap[r2] && i18 >= 0) {
        assert { :sourceloc "ImageMatcherWorker.java",42,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",42,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
        goto block3;
    }
    $i12 := $intArrHeap[r2][i18];
    assert { :sourceloc "ImageMatcherWorker.java",42,-1,-1,-1 } true;
    if (2 != 0) {
        assert { :sourceloc "ImageMatcherWorker.java",42,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",42,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.ArithmeticException);
        goto block3;
    }
    $i13 := $modInt($i12, 2);
    assert { :sourceloc "ImageMatcherWorker.java",42,-1,-1,-1 } true;
    $b14 := $i13;
    assert { :sourceloc "ImageMatcherWorker.java",42,-1,-1,-1 } true;
    if (i17 < $arrSizeHeap[r6] && i17 >= 0) {
        assert { :sourceloc "ImageMatcherWorker.java",42,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",42,-1,-1,-1 } true;
        assert { :noverify } true;
        $return := 0;
        call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
        goto block3;
    }
    $intArrHeap := $intArrHeap[r6 := $intArrHeap[r6][i17 := $b14]];
    assert { :sourceloc "ImageMatcherWorker.java",43,-1,-1,-1 } true;
    i17 := i17 + 1;
    assert { :sourceloc "ImageMatcherWorker.java",41,-1,-1,-1 } true;
    i18 := i18 + i0;
    assert { :sourceloc "ImageMatcherWorker.java",41,-1,-1,-1 } true;
    goto block4;
  block5:
    assert { :sourceloc "ImageMatcherWorker.java",46,-1,-1,-1 } true;
    r19 := r6;
    assert { :sourceloc "ImageMatcherWorker.java",47,-1,-1,-1 } true;
    z1 := 1;
  block6:
    assert { :sourceloc "ImageMatcherWorker.java",50,-1,-1,-1 } true;
    goto block7;
  block3:
    assert { :sourceloc "ImageMatcherWorker.java",41,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r12 := $exception;
    assert { :sourceloc "ImageMatcherWorker.java",48,-1,-1,-1 } true;
    r22 := $r12;
    assert { :sourceloc "ImageMatcherWorker.java",49,-1,-1,-1 } true;
    $r14 := java.io.PrintStream$java.lang.System$out271;
    assert { :sourceloc "ImageMatcherWorker.java",49,-1,-1,-1 } true;
    call $fakelocal_4 := $new(java.lang.StringBuilder);
    $r13 := $fakelocal_4;
    assert { :sourceloc "ImageMatcherWorker.java",49,-1,-1,-1 } true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r13);
    assert { :sourceloc "ImageMatcherWorker.java",49,-1,-1,-1 } true;
    call $r15, $exception := java.lang.StringBuilder$append$java.lang.String($r13, $StringConst0);
    assert { :sourceloc "ImageMatcherWorker.java",49,-1,-1,-1 } true;
    call $r16, $exception := java.lang.Throwable$getMessage$(r22);
    assert { :sourceloc "ImageMatcherWorker.java",49,-1,-1,-1 } true;
    if ($r15 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_5;
        return;
    }
    call $r17, $exception := java.lang.StringBuilder$append$java.lang.String($r15, $r16);
    assert { :sourceloc "ImageMatcherWorker.java",49,-1,-1,-1 } true;
    if ($r17 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_6 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_6;
        return;
    }
    call $r18, $exception := java.lang.StringBuilder$toString$($r17);
    assert { :sourceloc "ImageMatcherWorker.java",49,-1,-1,-1 } true;
    if ($r14 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_7 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_7;
        return;
    }
    call $exception := java.io.PrintStream$println$java.lang.String($r14, $r18);
  block7:
    assert { :sourceloc "ImageMatcherWorker.java",52,-1,-1,-1 } true;
    if (z1 == 0) {
        assert { :sourceloc "ImageMatcherWorker.java",52,-1,-1,-1 } { :comment "thenblock" } true;
        goto block8;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",52,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ImageMatcherWorker.java",53,-1,-1,-1 } true;
    z2 := 1;
    assert { :sourceloc "ImageMatcherWorker.java",54,-1,-1,-1 } true;
    i19 := 0;
  block9:
    assert { :sourceloc "ImageMatcherWorker.java",54,-1,-1,-1 } true;
    if (r19 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_8 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_8;
        return;
    }
    $i5 := $arrSizeHeap[r19];
    assert { :sourceloc "ImageMatcherWorker.java",54,-1,-1,-1 } true;
    if (i19 >= $i5) {
        assert { :sourceloc "ImageMatcherWorker.java",54,-1,-1,-1 } { :comment "thenblock" } true;
        goto block10;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",54,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ImageMatcherWorker.java",70,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_9 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_9;
        return;
    }
    $i6 := $arrSizeHeap[r1];
    assert { :sourceloc "ImageMatcherWorker.java",70,-1,-1,-1 } true;
    if (i19 >= $i6) {
        assert { :sourceloc "ImageMatcherWorker.java",70,-1,-1,-1 } { :comment "thenblock" } true;
        goto block10;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",70,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ImageMatcherWorker.java",55,-1,-1,-1 } true;
    if (i19 < $arrSizeHeap[r19] && i19 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_10 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_10;
        return;
    }
    $b7 := $intArrHeap[r19][i19];
    assert { :sourceloc "ImageMatcherWorker.java",55,-1,-1,-1 } true;
    call i20, $exception := java.lang.Math$abs$int($b7);
    assert { :sourceloc "ImageMatcherWorker.java",56,-1,-1,-1 } true;
    if (i19 < $arrSizeHeap[r1] && i19 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_11 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_11;
        return;
    }
    $b8 := $intArrHeap[r1][i19];
    assert { :sourceloc "ImageMatcherWorker.java",56,-1,-1,-1 } true;
    call i21, $exception := java.lang.Math$abs$int($b8);
    assert { :sourceloc "ImageMatcherWorker.java",57,-1,-1,-1 } { :clone } true;
    if (2 != 0) {
        $exception := $exception;
    } else {
        call $fakelocal_12 := $new(java.lang.ArithmeticException);
        $return := 0;
        $exception := $fakelocal_12;
        return;
    }
    $i10 := $modInt(i21, 2);
    assert { :sourceloc "ImageMatcherWorker.java",57,-1,-1,-1 } { :clone } true;
    if (2 != 0) {
        $exception := $exception;
    } else {
        call $fakelocal_13 := $new(java.lang.ArithmeticException);
        $return := 0;
        $exception := $fakelocal_13;
        return;
    }
    $i9 := $modInt(i20, 2);
    assert { :sourceloc "ImageMatcherWorker.java",57,-1,-1,-1 } { :clone } true;
    if ($i10 != $i9) {
        assert { :sourceloc "ImageMatcherWorker.java",57,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block11;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",57,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ImageMatcherWorker.java",60,-1,-1,-1 } { :clone } true;
    $z3 := 1;
    assert { :sourceloc "ImageMatcherWorker.java",60,-1,-1,-1 } { :clone } true;
    goto block12;
  block11:
    assert { :sourceloc "ImageMatcherWorker.java",60,-1,-1,-1 } { :clone } true;
    $z3 := 0;
  block12:
    assert { :sourceloc "ImageMatcherWorker.java",57,-1,-1,-1 } { :clone } true;
    z4 := $z3;
    assert { :sourceloc "ImageMatcherWorker.java",58,-1,-1,-1 } true;
    if (z4 != 0) {
        assert { :sourceloc "ImageMatcherWorker.java",58,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block13;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",58,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ImageMatcherWorker.java",59,-1,-1,-1 } true;
    z2 := 0;
    assert { :sourceloc "ImageMatcherWorker.java",60,-1,-1,-1 } { :clone } true;
    goto block10;
  block13:
    assert { :sourceloc "ImageMatcherWorker.java",63,-1,-1,-1 } true;
    if (z4 == 0) {
        assert { :sourceloc "ImageMatcherWorker.java",63,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block14;
    } else {
        assert { :sourceloc "ImageMatcherWorker.java",63,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ImageMatcherWorker.java",54,-1,-1,-1 } true;
    $z5 := 1;
    assert { :sourceloc "ImageMatcherWorker.java",54,-1,-1,-1 } true;
    goto block15;
  block14:
    assert { :sourceloc "ImageMatcherWorker.java",54,-1,-1,-1 } true;
    $z5 := 0;
  block15:
    assert { :sourceloc "ImageMatcherWorker.java",63,-1,-1,-1 } true;
    $b11 := $z5;
    assert { :sourceloc "ImageMatcherWorker.java",63,-1,-1,-1 } true;
    if (i19 < $arrSizeHeap[r19] && i19 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_14 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_14;
        return;
    }
    $intArrHeap := $intArrHeap[r19 := $intArrHeap[r19][i19 := $b11]];
    assert { :sourceloc "ImageMatcherWorker.java",54,-1,-1,-1 } true;
    i19 := i19 + 4;
    assert { :sourceloc "ImageMatcherWorker.java",54,-1,-1,-1 } true;
    goto block9;
  block10:
    assert { :sourceloc "ImageMatcherWorker.java",54,-1,-1,-1 } true;
    goto block16;
  block8:
    assert { :sourceloc "ImageMatcherWorker.java",68,-1,-1,-1 } true;
    z2 := 0;
  block16:
    assert { :sourceloc "ImageMatcherWorker.java",70,-1,-1,-1 } true;
    $return := z2;
    goto block17;
  block17:
    return;
}


implementation java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref){
    $exception := $null;
    return;
}


