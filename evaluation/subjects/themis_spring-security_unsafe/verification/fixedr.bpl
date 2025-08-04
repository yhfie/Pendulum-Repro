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
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique PasswordEncoderUtils : javaType extends  unique java.lang.Object complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  complete;
//const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Comparable, java.lang.CharSequence complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.lang.NullPointerException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique sg.edu.nus.comp.tsunami.safe.Safe : javaType extends  unique java.lang.Object complete;
//const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.lang.Boolean : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Comparable complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.lang.ClassCastException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.lang.IndexOutOfBoundsException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.lang.ArrayIndexOutOfBoundsException : javaType extends  unique java.lang.IndexOutOfBoundsException complete;
const unique $StringConst0 : ref extends  complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.io.IOException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.io.UnsupportedEncodingException : javaType extends  unique java.io.IOException complete;
const unique $StringConst1 : ref extends  complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.lang.AutoCloseable : javaType extends  complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.io.Closeable : javaType extends  java.lang.AutoCloseable complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.io.Flushable : javaType extends  complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.io.OutputStream : javaType extends  unique java.lang.Object, java.io.Closeable, java.io.Flushable complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.io.FilterOutputStream : javaType extends  unique java.io.OutputStream complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.lang.Appendable : javaType extends  complete;
const { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } unique java.io.PrintStream : javaType extends  unique java.io.FilterOutputStream, java.lang.Appendable, java.io.Closeable complete;
//const { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } unique fakejava.lang.StringBuilder : javaType extends  unique java.lang.Object complete;
const { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } unique java.lang.StringBuilder : javaType extends  unique java.lang.Object complete;
//const { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } unique fakejava.lang.String : javaType extends  unique java.lang.Object complete;
const { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Object complete;
//const { :sourceloc "Boolean.java",-1,-1,-1,-1 } unique fakejava.lang.Boolean : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Boolean.java",-1,-1,-1,-1 } unique java.lang.Boolean : javaType extends  unique java.lang.Object complete;
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
var java.io.PrintStream$java.lang.System$out260 : ref;
//var char$lp$$rp$$fakejava.lang.StringBuilder$chars347 : Field ref;
var char$lp$$rp$$java.lang.StringBuilder$chars347 : Field ref;
//var char$lp$$rp$$fakejava.lang.String$chars348 : Field ref;
var char$lp$$rp$$java.lang.String$chars348 : Field ref;
//var boolean$fakejava.lang.Boolean$value0 : Field int;
var boolean$java.lang.Boolean$value0 : Field int;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $heap == old($heap)[$obj,$alloc := true][$obj,$type := obj_type];    ensures $obj == $intToRef(old($objIndex));    ensures $objIndex == old($objIndex) + 1;    ensures !old($heap[$obj,$alloc]);    ensures $obj != $null;    modifies $objIndex, $heap;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $other != $null;    ensures $heap[$other,$alloc] == true;        ensures $heap[$other,$type] == $heap[$this,$type];

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

procedure PasswordEncoderUtils$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure PasswordEncoderUtils$equals_unsafe$java.lang.String_java.lang.String($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

procedure PasswordEncoderUtils$bytesUtf8$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

//procedure java.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref);    

//procedure java.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    

//procedure java.lang.String$getBytes$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.io.PrintStream$println$java.lang.String($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

//procedure fakejava.lang.StringBuilder$$la$init$ra$$($this:ref) returns ($exception:ref);    modifies $objIndex, $arrSizeHeap, $heap;
procedure java.lang.StringBuilder$$la$init$ra$$($this:ref) returns ($exception:ref);    modifies $objIndex, $arrSizeHeap, $heap;

//procedure fakejava.lang.StringBuilder$append$fakejava.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;
procedure java.lang.StringBuilder$append$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;

//procedure fakejava.lang.StringBuilder$toString$($this:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.StringBuilder$toString$($this:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure java.lang.String$$la$init$ra$$char$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

//procedure fakejava.lang.String$$la$init$ra$$char$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $objIndex, $arrSizeHeap, $heap, $intArrHeap;
procedure java.lang.String$$la$init$ra$$char$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $objIndex, $arrSizeHeap, $heap, $intArrHeap;

//procedure fakejava.lang.String$$la$init$ra$$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $objIndex, $arrSizeHeap, $heap, $intArrHeap;
procedure java.lang.String$$la$init$ra$$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $objIndex, $arrSizeHeap, $heap, $intArrHeap;

//procedure fakejava.lang.String$charAt$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.String$charAt$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.String$getBytes$fakejava.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;
procedure java.lang.String$getBytes$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;

//procedure fakejava.lang.String$getBytes$($this:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;
procedure java.lang.String$getBytes$($this:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;

//procedure fakejava.lang.String$format$fakejava.lang.String_java.lang.Object$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    
procedure java.lang.String$format$java.lang.String_java.lang.Object$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    

//procedure fakejava.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;
procedure java.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;

//procedure fakejava.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    
procedure java.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    

implementation PasswordEncoderUtils$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } $heap[$this,$type] <: PasswordEncoderUtils;
    assume { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "PasswordEncoderUtils.java",16,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "PasswordEncoderUtils.java",16,-1,-1,-1 } true;
    goto block1;
  block1:
    return;
}


implementation PasswordEncoderUtils$equals_unsafe$java.lang.String_java.lang.String($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var z2 : int;    
var $b5 : int;    
var $l3 : int;    
var $r11 : ref;    
var $fakelocal_3 : ref;    
var $r5 : ref;    
var $r16 : ref;    
var $r8 : ref;    
var $fakelocal_5 : ref;    
var $i8 : int;    
var $b6 : int;    
var $l2 : int;    
var b9 : int;    
var $i7 : int;    
var r2 : ref;    
var $r9 : ref;    
var $fakelocal_4 : ref;    
var $r7 : ref;    
var i1 : int;    
var z4 : int;    
var $z1 : int;    
var z3 : int;    
var r3 : ref;    
var $r4 : ref;    
var $r6 : ref;    
var $r17 : ref;    
var z0 : int;    
var r0 : ref;    
var $r10 : ref;    
var $r12 : ref;    
var $fakelocal_8 : ref;    
var $r14 : ref;    
var z5 : int;    
var i0 : int;    
var $r15 : ref;    
var $fakelocal_1 : ref;    
var $b4 : int;    
var $fakelocal_6 : ref;    
var i10 : int;    
var $fakelocal_9 : ref;    
var $fakelocal_7 : ref;    
var $r13 : ref;    
var r1 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_0 : ref;    
var $z6 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1,$type] <: java.lang.String;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "PasswordEncoderUtils.java",38,-1,-1,-1 } true;
    z2 := 0;
    assert { :sourceloc "PasswordEncoderUtils.java",39,-1,-1,-1 } true;
    z3 := 0;
    assert { :sourceloc "PasswordEncoderUtils.java",40,-1,-1,-1 } true;
    call r2, $exception := PasswordEncoderUtils$bytesUtf8$java.lang.String(r0);
    assert { :sourceloc "PasswordEncoderUtils.java",41,-1,-1,-1 } true;
    call r3, $exception := PasswordEncoderUtils$bytesUtf8$java.lang.String(r1);
    assert { :sourceloc "PasswordEncoderUtils.java",42,-1,-1,-1 } true;
    if (r2 != $null) {
        assert { :sourceloc "PasswordEncoderUtils.java",42,-1,-1,-1 } { :comment "thenblock" } true;
        goto block2;
    } else {
        assert { :sourceloc "PasswordEncoderUtils.java",42,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PasswordEncoderUtils.java",53,-1,-1,-1 } true;
    $i7 := -1;
    assert { :sourceloc "PasswordEncoderUtils.java",53,-1,-1,-1 } true;
    goto block3;
  block2:
    assert { :sourceloc "PasswordEncoderUtils.java",53,-1,-1,-1 } true;
    if (r2 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    $i7 := $arrSizeHeap[r2];
  block3:
    assert { :sourceloc "PasswordEncoderUtils.java",42,-1,-1,-1 } true;
    i0 := $i7;
    assert { :sourceloc "PasswordEncoderUtils.java",43,-1,-1,-1 } true;
    if (r3 != $null) {
        assert { :sourceloc "PasswordEncoderUtils.java",43,-1,-1,-1 } { :comment "thenblock" } true;
        goto block4;
    } else {
        assert { :sourceloc "PasswordEncoderUtils.java",43,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PasswordEncoderUtils.java",53,-1,-1,-1 } true;
    $i8 := -1;
    assert { :sourceloc "PasswordEncoderUtils.java",53,-1,-1,-1 } true;
    goto block5;
  block4:
    assert { :sourceloc "PasswordEncoderUtils.java",53,-1,-1,-1 } true;
    if (r3 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_1;
        return;
    }
    $i8 := $arrSizeHeap[r3];
  block5:
    assert { :sourceloc "PasswordEncoderUtils.java",43,-1,-1,-1 } true;
    i1 := $i8;
    assert { :sourceloc "PasswordEncoderUtils.java",45,-1,-1,-1 } true;
    $l3 := i0;
    assert { :sourceloc "PasswordEncoderUtils.java",45,-1,-1,-1 } true;
    $l2 := i1;
    assert { :sourceloc "PasswordEncoderUtils.java",45,-1,-1,-1 } true;
    call z0, $exception := sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($l3, $l2);
    assert { :sourceloc "PasswordEncoderUtils.java",47,-1,-1,-1 } true;
    call $r4, $exception := java.lang.Boolean$valueOf$boolean(z2);
    assert { :sourceloc "PasswordEncoderUtils.java",47,-1,-1,-1 } true;
    call $r5, $exception := java.lang.Boolean$valueOf$boolean(0);
    assert { :sourceloc "PasswordEncoderUtils.java",47,-1,-1,-1 } true;
    call $r6, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z3, $r4, $r5);
    assert { :sourceloc "PasswordEncoderUtils.java",47,-1,-1,-1 } true;
    call $r7, $exception := java.lang.Boolean$valueOf$boolean(z2);
    assert { :sourceloc "PasswordEncoderUtils.java",47,-1,-1,-1 } true;
    call $r8, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r6, $r7);
    assert { :sourceloc "PasswordEncoderUtils.java",47,-1,-1,-1 } true;
    if ($heap[$r8,$type] <: java.lang.Boolean) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_2;
        return;
    }
    $r9 := $r8;
    assert { :sourceloc "PasswordEncoderUtils.java",47,-1,-1,-1 } true;
    if ($r9 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_3;
        return;
    }
    call z4, $exception := java.lang.Boolean$booleanValue$($r9);
    assert { :sourceloc "PasswordEncoderUtils.java",48,-1,-1,-1 } true;
    call $r10, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert { :sourceloc "PasswordEncoderUtils.java",48,-1,-1,-1 } true;
    call $r11, $exception := java.lang.Boolean$valueOf$boolean(z3);
    assert { :sourceloc "PasswordEncoderUtils.java",48,-1,-1,-1 } true;
    call $r12, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r10, $r11);
    assert { :sourceloc "PasswordEncoderUtils.java",48,-1,-1,-1 } true;
    if ($heap[$r12,$type] <: java.lang.Boolean) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_4;
        return;
    }
    $r13 := $r12;
    assert { :sourceloc "PasswordEncoderUtils.java",48,-1,-1,-1 } true;
    if ($r13 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_5;
        return;
    }
    call z5, $exception := java.lang.Boolean$booleanValue$($r13);
    assert { :sourceloc "PasswordEncoderUtils.java",52,-1,-1,-1 } true;
    b9 := 0;
    assert { :sourceloc "PasswordEncoderUtils.java",53,-1,-1,-1 } true;
    i10 := 0;
  block6:
    assert { :sourceloc "PasswordEncoderUtils.java",53,-1,-1,-1 } true;
    if (i10 >= i0) {
        assert { :sourceloc "PasswordEncoderUtils.java",53,-1,-1,-1 } { :comment "thenblock" } true;
        goto block7;
    } else {
        assert { :sourceloc "PasswordEncoderUtils.java",53,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PasswordEncoderUtils.java",54,-1,-1,-1 } true;
    if (i10 < $arrSizeHeap[r2] && i10 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_6 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_6;
        return;
    }
    $b5 := $intArrHeap[r2][i10];
    assert { :sourceloc "PasswordEncoderUtils.java",54,-1,-1,-1 } true;
    if (i10 < $arrSizeHeap[r3] && i10 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_7 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_7;
        return;
    }
    $b4 := $intArrHeap[r3][i10];
    assert { :sourceloc "PasswordEncoderUtils.java",54,-1,-1,-1 } true;
    $b6 := $xorInt($b5, $b4);
    assert { :sourceloc "PasswordEncoderUtils.java",54,-1,-1,-1 } true;
    b9 := $bitOr(b9, $b6);
    assert { :sourceloc "PasswordEncoderUtils.java",53,-1,-1,-1 } true;
    i10 := i10 + 1;
    assert { :sourceloc "PasswordEncoderUtils.java",53,-1,-1,-1 } true;
    goto block6;
  block7:
    assert { :sourceloc "PasswordEncoderUtils.java",56,-1,-1,-1 } true;
    call $r14, $exception := java.lang.Boolean$valueOf$boolean(z4);
    assert { :sourceloc "PasswordEncoderUtils.java",56,-1,-1,-1 } true;
    if (b9 != 0) {
        assert { :sourceloc "PasswordEncoderUtils.java",56,-1,-1,-1 } { :comment "thenblock" } true;
        goto block8;
    } else {
        assert { :sourceloc "PasswordEncoderUtils.java",56,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PasswordEncoderUtils.java",56,-1,-1,-1 } true;
    $z6 := 1;
    assert { :sourceloc "PasswordEncoderUtils.java",56,-1,-1,-1 } true;
    goto block9;
  block8:
    assert { :sourceloc "PasswordEncoderUtils.java",56,-1,-1,-1 } true;
    $z6 := 0;
  block9:
    assert { :sourceloc "PasswordEncoderUtils.java",56,-1,-1,-1 } true;
    call $r15, $exception := java.lang.Boolean$valueOf$boolean($z6);
    assert { :sourceloc "PasswordEncoderUtils.java",56,-1,-1,-1 } true;
    call $r16, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z5, $r14, $r15);
    assert { :sourceloc "PasswordEncoderUtils.java",56,-1,-1,-1 } true;
    if ($heap[$r16,$type] <: java.lang.Boolean) {
        $exception := $exception;
    } else {
        call $fakelocal_8 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_8;
        return;
    }
    $r17 := $r16;
    assert { :sourceloc "PasswordEncoderUtils.java",56,-1,-1,-1 } true;
    if ($r17 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_9 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_9;
        return;
    }
    call $z1, $exception := java.lang.Boolean$booleanValue$($r17);
    assert { :sourceloc "PasswordEncoderUtils.java",56,-1,-1,-1 } true;
    $return := $z1;
    goto block10;
  block10:
    return;
}


implementation PasswordEncoderUtils$bytesUtf8$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $fakelocal_0 : ref;    
var r0 : ref;    
var $r3 : ref;    
var $r2 : ref;    
var $r4 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
  block11:
    assert { :sourceloc "PasswordEncoderUtils.java",61,-1,-1,-1 } true;
    if (r0 != $null) {
        assert { :sourceloc "PasswordEncoderUtils.java",61,-1,-1,-1 } { :comment "thenblock" } true;
        goto block12;
    } else {
        assert { :sourceloc "PasswordEncoderUtils.java",61,-1,-1,-1 } { :comment "elseblock" } true;
    }
  block13:
    assert { :sourceloc "PasswordEncoderUtils.java",62,-1,-1,-1 } true;
    $return := $null;
    goto block16;
  block12:
    assert { :sourceloc "PasswordEncoderUtils.java",65,-1,-1,-1 } true;
    call $r2, $exception := java.lang.String$getBytes$java.lang.String(r0, $StringConst0);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.io.UnsupportedEncodingException) {
            $return := $null;
            goto block14;
        } else {
            assert { :clone } true;
        }
    }
  block15:
    assert { :sourceloc "PasswordEncoderUtils.java",65,-1,-1,-1 } true;
    $return := $r2;
    goto block16;
  block14:
    assert { :sourceloc "PasswordEncoderUtils.java",62,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r3 := $exception;
    assert { :sourceloc "PasswordEncoderUtils.java",69,-1,-1,-1 } true;
    $r4 := java.io.PrintStream$java.lang.System$out260;
    assert { :sourceloc "PasswordEncoderUtils.java",69,-1,-1,-1 } true;
    if ($r4 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_0;
        return;
    }
    call $exception := java.io.PrintStream$println$java.lang.String($r4, $StringConst1);
    assert { :sourceloc "PasswordEncoderUtils.java",70,-1,-1,-1 } true;
    $return := $null;
    goto block16;
  block16:
    return;
}


//implementation fakejava.lang.StringBuilder$$la$init$ra$$($this:ref) returns ($exception:ref){
implementation java.lang.StringBuilder$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var $fakelocal_0 : ref;    
var r0 : ref;    
var $r1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.StringBuilder;
    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.StringBuilder;
    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StringBuilder.java",3,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "StringBuilder.java",4,-1,-1,-1 } true;
    call $fakelocal_0 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_0 := 0];
    $r1 := $fakelocal_0;
    assert { :sourceloc "StringBuilder.java",4,-1,-1,-1 } true;
//    $heap := $heap[r0,char$lp$$rp$$fakejava.lang.StringBuilder$chars347 := $r1];
    $heap := $heap[r0,char$lp$$rp$$java.lang.StringBuilder$chars347 := $r1];
    assert { :sourceloc "StringBuilder.java",4,-1,-1,-1 } true;
    goto block17;
  block17:
    return;
}


//implementation fakejava.lang.StringBuilder$append$fakejava.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
implementation java.lang.StringBuilder$append$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $fakelocal_7 : ref;    
var i8 : int;    
var $fakelocal_9 : ref;    
var $i3 : int;    
var $fakelocal_2 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_10 : ref;    
var $i1 : int;    
var $i2 : int;    
var $r4 : ref;    
var $c5 : int;    
var $r9 : ref;    
var $c6 : int;    
var $r8 : ref;    
var $r5 : ref;    
var $r3 : ref;    
var $r7 : ref;    
var $fakelocal_5 : ref;    
var $r6 : ref;    
var i7 : int;    
var r2 : ref;    
var $fakelocal_1 : ref;    
var $fakelocal_4 : ref;    
var $i4 : int;    
var $i0 : int;    
var $fakelocal_6 : ref;    
var r1 : ref;    
var r0 : ref;    
var $fakelocal_8 : ref;    
var $fakelocal_3 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.StringBuilder;
    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.StringBuilder;
    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $this != $null;
//    assume $heap[$return,$type] <: fakejava.lang.StringBuilder;
    assume $heap[$return,$type] <: java.lang.StringBuilder;
//    assume $heap[$in_parameter__0,$type] <: fakejava.lang.String;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "StringBuilder.java",7,-1,-1,-1 } true;
//    $r3 := $heap[r0,char$lp$$rp$$fakejava.lang.StringBuilder$chars347];
    $r3 := $heap[r0,char$lp$$rp$$java.lang.StringBuilder$chars347];
    assert { :sourceloc "StringBuilder.java",7,-1,-1,-1 } true;
    if ($r3 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.NullPointerException);
        $return := $null;
        $exception := $fakelocal_0;
        return;
    }
    $i1 := $arrSizeHeap[$r3];
    assert { :sourceloc "StringBuilder.java",7,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.NullPointerException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
//    $r4 := $heap[r1,char$lp$$rp$$fakejava.lang.String$chars348];
    $r4 := $heap[r1,char$lp$$rp$$java.lang.String$chars348];
    assert { :sourceloc "StringBuilder.java",7,-1,-1,-1 } true;
    if ($r4 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.NullPointerException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    $i0 := $arrSizeHeap[$r4];
    assert { :sourceloc "StringBuilder.java",7,-1,-1,-1 } true;
    $i2 := $i1 + $i0;
    assert { :sourceloc "StringBuilder.java",7,-1,-1,-1 } true;
    call $fakelocal_3 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_3 := $i2];
    r2 := $fakelocal_3;
    assert { :sourceloc "StringBuilder.java",8,-1,-1,-1 } true;
    i7 := 0;
  block18:
    assert { :sourceloc "StringBuilder.java",8,-1,-1,-1 } true;
//    $r5 := $heap[r0,char$lp$$rp$$fakejava.lang.StringBuilder$chars347];
    $r5 := $heap[r0,char$lp$$rp$$java.lang.StringBuilder$chars347];
    assert { :sourceloc "StringBuilder.java",8,-1,-1,-1 } true;
    if ($r5 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.NullPointerException);
        $return := $null;
        $exception := $fakelocal_4;
        return;
    }
    $i3 := $arrSizeHeap[$r5];
    assert { :sourceloc "StringBuilder.java",8,-1,-1,-1 } true;
    if (i7 >= $i3) {
        assert { :sourceloc "StringBuilder.java",8,-1,-1,-1 } { :comment "thenblock" } true;
        goto block19;
    } else {
        assert { :sourceloc "StringBuilder.java",8,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StringBuilder.java",9,-1,-1,-1 } true;
//    $r9 := $heap[r0,char$lp$$rp$$fakejava.lang.StringBuilder$chars347];
    $r9 := $heap[r0,char$lp$$rp$$java.lang.StringBuilder$chars347];
    assert { :sourceloc "StringBuilder.java",9,-1,-1,-1 } true;
    if (i7 < $arrSizeHeap[$r9] && i7 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_5;
        return;
    }
    $c6 := $intArrHeap[$r9][i7];
    assert { :sourceloc "StringBuilder.java",9,-1,-1,-1 } true;
    if (i7 < $arrSizeHeap[r2] && i7 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_6 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_6;
        return;
    }
    $intArrHeap := $intArrHeap[r2 := $intArrHeap[r2][i7 := $c6]];
    assert { :sourceloc "StringBuilder.java",8,-1,-1,-1 } true;
    i7 := i7 + 1;
    assert { :sourceloc "StringBuilder.java",8,-1,-1,-1 } true;
    goto block18;
  block19:
    assert { :sourceloc "StringBuilder.java",11,-1,-1,-1 } true;
//    $r6 := $heap[r0,char$lp$$rp$$fakejava.lang.StringBuilder$chars347];
    $r6 := $heap[r0,char$lp$$rp$$java.lang.StringBuilder$chars347];
    assert { :sourceloc "StringBuilder.java",11,-1,-1,-1 } true;
    if ($r6 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_7 := $new(java.lang.NullPointerException);
        $return := $null;
        $exception := $fakelocal_7;
        return;
    }
    i8 := $arrSizeHeap[$r6];
  block20:
    assert { :sourceloc "StringBuilder.java",11,-1,-1,-1 } true;
//    $r7 := $heap[r1,char$lp$$rp$$fakejava.lang.String$chars348];
    $r7 := $heap[r1,char$lp$$rp$$java.lang.String$chars348];
    assert { :sourceloc "StringBuilder.java",11,-1,-1,-1 } true;
    if ($r7 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_8 := $new(java.lang.NullPointerException);
        $return := $null;
        $exception := $fakelocal_8;
        return;
    }
    $i4 := $arrSizeHeap[$r7];
    assert { :sourceloc "StringBuilder.java",11,-1,-1,-1 } true;
    if (i8 >= $i4) {
        assert { :sourceloc "StringBuilder.java",11,-1,-1,-1 } { :comment "thenblock" } true;
        goto block21;
    } else {
        assert { :sourceloc "StringBuilder.java",11,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "StringBuilder.java",12,-1,-1,-1 } true;
//    $r8 := $heap[r1,char$lp$$rp$$fakejava.lang.String$chars348];
    $r8 := $heap[r1,char$lp$$rp$$java.lang.String$chars348];
    assert { :sourceloc "StringBuilder.java",12,-1,-1,-1 } true;
    if (i8 < $arrSizeHeap[$r8] && i8 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_9 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_9;
        return;
    }
    $c5 := $intArrHeap[$r8][i8];
    assert { :sourceloc "StringBuilder.java",12,-1,-1,-1 } true;
    if (i8 < $arrSizeHeap[r2] && i8 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_10 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_10;
        return;
    }
    $intArrHeap := $intArrHeap[r2 := $intArrHeap[r2][i8 := $c5]];
    assert { :sourceloc "StringBuilder.java",11,-1,-1,-1 } true;
    i8 := i8 + 1;
    assert { :sourceloc "StringBuilder.java",11,-1,-1,-1 } true;
    goto block20;
  block21:
    assert { :sourceloc "StringBuilder.java",14,-1,-1,-1 } true;
//    $heap := $heap[r0,char$lp$$rp$$fakejava.lang.StringBuilder$chars347 := r2];
    $heap := $heap[r0,char$lp$$rp$$java.lang.StringBuilder$chars347 := r2];
    assert { :sourceloc "StringBuilder.java",15,-1,-1,-1 } true;
    $return := r0;
    goto block22;
  block22:
    return;
}


//implementation fakejava.lang.StringBuilder$toString$($this:ref) returns ($return:ref, $exception:ref){
implementation java.lang.StringBuilder$toString$($this:ref) returns ($return:ref, $exception:ref){
    
var r0 : ref;    
var $r1 : ref;    
var $r2 : ref;    
var $fakelocal_0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.StringBuilder;
    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.StringBuilder;
    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$return,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StringBuilder.java",19,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.String);
    $r1 := $fakelocal_0;
    assert { :sourceloc "StringBuilder.java",19,-1,-1,-1 } true;
//    $r2 := $heap[r0,char$lp$$rp$$fakejava.lang.StringBuilder$chars347];
    $r2 := $heap[r0,char$lp$$rp$$java.lang.StringBuilder$chars347];
    assert { :sourceloc "StringBuilder.java",19,-1,-1,-1 } true;
    call $exception := java.lang.String$$la$init$ra$$char$lp$$rp$($r1, $r2);
    assert { :sourceloc "StringBuilder.java",19,-1,-1,-1 } true;
    $return := $r1;
    goto block23;
  block23:
    return;
}


//implementation fakejava.lang.String$$la$init$ra$$char$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref){
implementation java.lang.String$$la$init$ra$$char$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var r1 : ref;    
var $c2 : int;    
var $fakelocal_1 : ref;    
var $r3 : ref;    
var $i1 : int;    
var $fakelocal_0 : ref;    
var r0 : ref;    
var $fakelocal_4 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_3 : ref;    
var i3 : int;    
var $r2 : ref;    
var $i0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "String.java",7,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "String.java",8,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.NullPointerException);
        $exception := $fakelocal_0;
        return;
    }
    $i0 := $arrSizeHeap[r1];
    assert { :sourceloc "String.java",8,-1,-1,-1 } true;
    call $fakelocal_1 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := $i0];
    $r2 := $fakelocal_1;
    assert { :sourceloc "String.java",8,-1,-1,-1 } true;
//    $heap := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars348 := $r2];
    $heap := $heap[r0,char$lp$$rp$$java.lang.String$chars348 := $r2];
    assert { :sourceloc "String.java",9,-1,-1,-1 } true;
    i3 := 0;
  block24:
    assert { :sourceloc "String.java",9,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.NullPointerException);
        $exception := $fakelocal_2;
        return;
    }
    $i1 := $arrSizeHeap[r1];
    assert { :sourceloc "String.java",9,-1,-1,-1 } true;
    if (i3 >= $i1) {
        assert { :sourceloc "String.java",9,-1,-1,-1 } { :comment "thenblock" } true;
        goto block25;
    } else {
        assert { :sourceloc "String.java",9,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "String.java",10,-1,-1,-1 } true;
//    $r3 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars348];
    $r3 := $heap[r0,char$lp$$rp$$java.lang.String$chars348];
    assert { :sourceloc "String.java",10,-1,-1,-1 } true;
    if (i3 < $arrSizeHeap[r1] && i3 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $exception := $fakelocal_3;
        return;
    }
    $c2 := $intArrHeap[r1][i3];
    assert { :sourceloc "String.java",10,-1,-1,-1 } true;
    if (i3 < $arrSizeHeap[$r3] && i3 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $exception := $fakelocal_4;
        return;
    }
    $intArrHeap := $intArrHeap[$r3 := $intArrHeap[$r3][i3 := $c2]];
    assert { :sourceloc "String.java",9,-1,-1,-1 } true;
    i3 := i3 + 1;
    assert { :sourceloc "String.java",9,-1,-1,-1 } true;
    goto block24;
  block25:
    assert { :sourceloc "String.java",12,-1,-1,-1 } true;
    goto block26;
  block26:
    return;
}


//implementation fakejava.lang.String$$la$init$ra$$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref){
implementation java.lang.String$$la$init$ra$$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var r0 : ref;    
var $fakelocal_0 : ref;    
var i4 : int;    
var $fakelocal_4 : ref;    
var $c3 : int;    
var $fakelocal_1 : ref;    
var $i0 : int;    
var r1 : ref;    
var $b2 : int;    
var $fakelocal_3 : ref;    
var $r2 : ref;    
var $r3 : ref;    
var $i1 : int;    
var $fakelocal_2 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "String.java",14,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "String.java",15,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.NullPointerException);
        $exception := $fakelocal_0;
        return;
    }
    $i0 := $arrSizeHeap[r1];
    assert { :sourceloc "String.java",15,-1,-1,-1 } true;
    call $fakelocal_1 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := $i0];
    $r2 := $fakelocal_1;
    assert { :sourceloc "String.java",15,-1,-1,-1 } true;
//    $heap := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars348 := $r2];
    $heap := $heap[r0,char$lp$$rp$$java.lang.String$chars348 := $r2];
    assert { :sourceloc "String.java",16,-1,-1,-1 } true;
    i4 := 0;
  block27:
    assert { :sourceloc "String.java",16,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.NullPointerException);
        $exception := $fakelocal_2;
        return;
    }
    $i1 := $arrSizeHeap[r1];
    assert { :sourceloc "String.java",16,-1,-1,-1 } true;
    if (i4 >= $i1) {
        assert { :sourceloc "String.java",16,-1,-1,-1 } { :comment "thenblock" } true;
        goto block28;
    } else {
        assert { :sourceloc "String.java",16,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "String.java",17,-1,-1,-1 } true;
//    $r3 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars348];
    $r3 := $heap[r0,char$lp$$rp$$java.lang.String$chars348];
    assert { :sourceloc "String.java",17,-1,-1,-1 } true;
    if (i4 < $arrSizeHeap[r1] && i4 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $exception := $fakelocal_3;
        return;
    }
    $b2 := $intArrHeap[r1][i4];
    assert { :sourceloc "String.java",17,-1,-1,-1 } true;
    $c3 := $b2;
    assert { :sourceloc "String.java",17,-1,-1,-1 } true;
    if (i4 < $arrSizeHeap[$r3] && i4 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $exception := $fakelocal_4;
        return;
    }
    $intArrHeap := $intArrHeap[$r3 := $intArrHeap[$r3][i4 := $c3]];
    assert { :sourceloc "String.java",16,-1,-1,-1 } true;
    i4 := i4 + 1;
    assert { :sourceloc "String.java",16,-1,-1,-1 } true;
    goto block27;
  block28:
    assert { :sourceloc "String.java",19,-1,-1,-1 } true;
    goto block29;
  block29:
    return;
}


//implementation fakejava.lang.String$charAt$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref){
implementation java.lang.String$charAt$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref){
    
var $fakelocal_0 : ref;    
var $r1 : ref;    
var $c1 : int;    
var i0 : int;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__0;
    assert { :sourceloc "String.java",22,-1,-1,-1 } true;
//    $r1 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars348];
    $r1 := $heap[r0,char$lp$$rp$$java.lang.String$chars348];
    assert { :sourceloc "String.java",22,-1,-1,-1 } true;
    if (i0 < $arrSizeHeap[$r1] && i0 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    $c1 := $intArrHeap[$r1][i0];
    assert { :sourceloc "String.java",22,-1,-1,-1 } true;
    $return := $c1;
    goto block30;
  block30:
    return;
}


//implementation fakejava.lang.String$getBytes$fakejava.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
implementation java.lang.String$getBytes$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r1 : ref;    
var $r2 : ref;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $this != $null;
//    assume $heap[$in_parameter__0,$type] <: fakejava.lang.String;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "String.java",26,-1,-1,-1 } true;
//    call $r2, $exception := fakejava.lang.String$getBytes$(r0);
    call $r2, $exception := java.lang.String$getBytes$(r0);
    assert { :sourceloc "String.java",26,-1,-1,-1 } true;
    $return := $r2;
    goto block31;
  block31:
    return;
}


//implementation fakejava.lang.String$getBytes$($this:ref) returns ($return:ref, $exception:ref){
implementation java.lang.String$getBytes$($this:ref) returns ($return:ref, $exception:ref){
    
var $fakelocal_0 : ref;    
var r0 : ref;    
var $c2 : int;    
var $c3 : int;    
var $fakelocal_4 : ref;    
var $i1 : int;    
var $fakelocal_3 : ref;    
var $r2 : ref;    
var r1 : ref;    
var $i0 : int;    
var $fakelocal_1 : ref;    
var $r4 : ref;    
var $r3 : ref;    
var i5 : int;    
var $fakelocal_2 : ref;    
var $b4 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "String.java",30,-1,-1,-1 } true;
//    $r2 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars348];
    $r2 := $heap[r0,char$lp$$rp$$java.lang.String$chars348];
    assert { :sourceloc "String.java",30,-1,-1,-1 } true;
    if ($r2 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.NullPointerException);
        $return := $null;
        $exception := $fakelocal_0;
        return;
    }
    $i0 := $arrSizeHeap[$r2];
    assert { :sourceloc "String.java",30,-1,-1,-1 } true;
    call $fakelocal_1 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := $i0];
    r1 := $fakelocal_1;
    assert { :sourceloc "String.java",31,-1,-1,-1 } true;
    i5 := 0;
  block32:
    assert { :sourceloc "String.java",31,-1,-1,-1 } true;
//    $r3 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars348];
    $r3 := $heap[r0,char$lp$$rp$$java.lang.String$chars348];
    assert { :sourceloc "String.java",31,-1,-1,-1 } true;
    if ($r3 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.NullPointerException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    $i1 := $arrSizeHeap[$r3];
    assert { :sourceloc "String.java",31,-1,-1,-1 } true;
    if (i5 >= $i1) {
        assert { :sourceloc "String.java",31,-1,-1,-1 } { :comment "thenblock" } true;
        goto block33;
    } else {
        assert { :sourceloc "String.java",31,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "String.java",32,-1,-1,-1 } true;
//    $r4 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars348];
    $r4 := $heap[r0,char$lp$$rp$$java.lang.String$chars348];
    assert { :sourceloc "String.java",32,-1,-1,-1 } true;
    if (i5 < $arrSizeHeap[$r4] && i5 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_3;
        return;
    }
    $c2 := $intArrHeap[$r4][i5];
    assert { :sourceloc "String.java",32,-1,-1,-1 } true;
    $c3 := $bitAnd($c2, 255);
    assert { :sourceloc "String.java",32,-1,-1,-1 } true;
    $b4 := $c3;
    assert { :sourceloc "String.java",32,-1,-1,-1 } true;
    if (i5 < $arrSizeHeap[r1] && i5 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_4;
        return;
    }
    $intArrHeap := $intArrHeap[r1 := $intArrHeap[r1][i5 := $b4]];
    assert { :sourceloc "String.java",31,-1,-1,-1 } true;
    i5 := i5 + 1;
    assert { :sourceloc "String.java",31,-1,-1,-1 } true;
    goto block32;
  block33:
    assert { :sourceloc "String.java",34,-1,-1,-1 } true;
    $return := r1;
    goto block34;
  block34:
    return;
}


//implementation fakejava.lang.String$format$fakejava.lang.String_java.lang.Object$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref){
implementation java.lang.String$format$java.lang.String_java.lang.Object$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref){
    
var r0 : ref;    
var r1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume $heap[$in_parameter__0,$type] <: fakejava.lang.String;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
//    assume $heap[$return,$type] <: fakejava.lang.String;
    assume $heap[$return,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "String.java",39,-1,-1,-1 } true;
    $return := r0;
    goto block35;
  block35:
    return;
}


//implementation fakejava.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref){
implementation java.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref){
    
var z0 : int;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "Boolean.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.Boolean;
    assume { :sourceloc "Boolean.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.Boolean;
    assume { :sourceloc "Boolean.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "Boolean.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "Boolean.java",-1,-1,-1,-1 } true;
    z0 := $in_parameter__0;
    assert { :sourceloc "Boolean.java",6,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "Boolean.java",7,-1,-1,-1 } true;
//    $heap := $heap[r0,boolean$fakejava.lang.Boolean$value0 := z0];
    $heap := $heap[r0,boolean$java.lang.Boolean$value0 := z0];
    assert { :sourceloc "Boolean.java",8,-1,-1,-1 } true;
    goto block36;
  block36:
    return;
}


//implementation fakejava.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref){
implementation java.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref){
    
var z0 : int;    
var $r0 : ref;    
var $fakelocal_0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume $heap[$return,$type] <: fakejava.lang.Boolean;
    assume $heap[$return,$type] <: java.lang.Boolean;
    $exception := $null;
    assert { :sourceloc "Boolean.java",-1,-1,-1,-1 } true;
    z0 := $in_parameter__0;
    assert { :sourceloc "Boolean.java",11,-1,-1,-1 } true;
//    call $fakelocal_0 := $new(fakejava.lang.Boolean);
    call $fakelocal_0 := $new(java.lang.Boolean);
    $r0 := $fakelocal_0;
    assert { :sourceloc "Boolean.java",11,-1,-1,-1 } true;
//    call $exception := fakejava.lang.Boolean$$la$init$ra$$boolean($r0, z0);
    call $exception := java.lang.Boolean$$la$init$ra$$boolean($r0, z0);
    assert { :sourceloc "Boolean.java",11,-1,-1,-1 } true;
    $return := $r0;
    goto block37;
  block37:
    return;
}


//implementation fakejava.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref){
implementation java.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref){
    
var $z0 : int;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "Boolean.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.Boolean;
    assume { :sourceloc "Boolean.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.Boolean;
    assume { :sourceloc "Boolean.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "Boolean.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "Boolean.java",15,-1,-1,-1 } true;
//    $z0 := $heap[r0,boolean$fakejava.lang.Boolean$value0];
    $z0 := $heap[r0,boolean$java.lang.Boolean$value0];
    assert { :sourceloc "Boolean.java",15,-1,-1,-1 } true;
    $return := $z0;
    goto block38;
  block38:
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
    goto block39;
  block39:
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
        goto block40;
    } else {
        assert { :sourceloc "Safe.java",6,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",8,-1,-1,-1 } true;
    z1 := 0;
  block40:
    assert { :sourceloc "Safe.java",7,-1,-1,-1 } true;
    if (z0 != 0) {
        assert { :sourceloc "Safe.java",7,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block41;
    } else {
        assert { :sourceloc "Safe.java",7,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",8,-1,-1,-1 } true;
    z1 := 1;
  block41:
    assert { :sourceloc "Safe.java",8,-1,-1,-1 } true;
    $return := z1;
    goto block42;
  block42:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var z1 : int;    
var z0 : int;    
var $z2 : int;
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
    goto block43;
  block43:
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
    goto block44;
  block44:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b2 : int;    
var $b3 : int;    
var z0 : int;    
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
    assert { :sourceloc "Safe.java",20,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",21,-1,-1,-1 } true;
    $b2 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",21,-1,-1,-1 } true;
    if ($b2 <= 0) {
        assert { :sourceloc "Safe.java",21,-1,-1,-1 } { :comment "thenblock" } true;
        goto block45;
    } else {
        assert { :sourceloc "Safe.java",21,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",23,-1,-1,-1 } true;
    z0 := 1;
  block45:
    assert { :sourceloc "Safe.java",22,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",22,-1,-1,-1 } true;
    if ($b3 > 0) {
        assert { :sourceloc "Safe.java",22,-1,-1,-1 } { :comment "thenblock" } true;
        goto block46;
    } else {
        assert { :sourceloc "Safe.java",22,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",23,-1,-1,-1 } true;
    z0 := 0;
  block46:
    assert { :sourceloc "Safe.java",23,-1,-1,-1 } true;
    $return := z0;
    goto block47;
  block47:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var l0 : int;    
var l1 : int;    
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
    assert { :sourceloc "Safe.java",27,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",28,-1,-1,-1 } true;
    $b2 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",28,-1,-1,-1 } true;
    if ($b2 >= 0) {
        assert { :sourceloc "Safe.java",28,-1,-1,-1 } { :comment "thenblock" } true;
        goto block48;
    } else {
        assert { :sourceloc "Safe.java",28,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",30,-1,-1,-1 } true;
    z0 := 1;
  block48:
    assert { :sourceloc "Safe.java",29,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",29,-1,-1,-1 } true;
    if ($b3 < 0) {
        assert { :sourceloc "Safe.java",29,-1,-1,-1 } { :comment "thenblock" } true;
        goto block49;
    } else {
        assert { :sourceloc "Safe.java",29,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",30,-1,-1,-1 } true;
    z0 := 0;
  block49:
    assert { :sourceloc "Safe.java",30,-1,-1,-1 } true;
    $return := z0;
    goto block50;
  block50:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var z0 : int;    
var l1 : int;    
var l0 : int;    
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
    assert { :sourceloc "Safe.java",34,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",35,-1,-1,-1 } true;
    $b2 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",35,-1,-1,-1 } true;
    if ($b2 < 0) {
        assert { :sourceloc "Safe.java",35,-1,-1,-1 } { :comment "thenblock" } true;
        goto block51;
    } else {
        assert { :sourceloc "Safe.java",35,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",37,-1,-1,-1 } true;
    z0 := 1;
  block51:
    assert { :sourceloc "Safe.java",36,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",36,-1,-1,-1 } true;
    if ($b3 >= 0) {
        assert { :sourceloc "Safe.java",36,-1,-1,-1 } { :comment "thenblock" } true;
        goto block52;
    } else {
        assert { :sourceloc "Safe.java",36,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",37,-1,-1,-1 } true;
    z0 := 0;
  block52:
    assert { :sourceloc "Safe.java",37,-1,-1,-1 } true;
    $return := z0;
    goto block53;
  block53:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b3 : int;    
var z0 : int;    
var l1 : int;    
var $b2 : int;    
var l0 : int;
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
        goto block54;
    } else {
        assert { :sourceloc "Safe.java",42,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",44,-1,-1,-1 } true;
    z0 := 1;
  block54:
    assert { :sourceloc "Safe.java",43,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",43,-1,-1,-1 } true;
    if ($b3 <= 0) {
        assert { :sourceloc "Safe.java",43,-1,-1,-1 } { :comment "thenblock" } true;
        goto block55;
    } else {
        assert { :sourceloc "Safe.java",43,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",44,-1,-1,-1 } true;
    z0 := 0;
  block55:
    assert { :sourceloc "Safe.java",44,-1,-1,-1 } true;
    $return := z0;
    goto block56;
  block56:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var l1 : int;    
var $b3 : int;    
var $b2 : int;    
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
        goto block57;
    } else {
        assert { :sourceloc "Safe.java",49,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",51,-1,-1,-1 } true;
    z0 := 1;
  block57:
    assert { :sourceloc "Safe.java",50,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",50,-1,-1,-1 } true;
    if ($b3 == 0) {
        assert { :sourceloc "Safe.java",50,-1,-1,-1 } { :comment "thenblock" } true;
        goto block58;
    } else {
        assert { :sourceloc "Safe.java",50,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",51,-1,-1,-1 } true;
    z0 := 0;
  block58:
    assert { :sourceloc "Safe.java",51,-1,-1,-1 } true;
    $return := z0;
    goto block59;
  block59:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var z0 : int;    
var l0 : int;    
var $b2 : int;    
var l1 : int;    
var $b3 : int;
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
        goto block60;
    } else {
        assert { :sourceloc "Safe.java",56,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",58,-1,-1,-1 } true;
    z0 := 1;
  block60:
    assert { :sourceloc "Safe.java",57,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",57,-1,-1,-1 } true;
    if ($b3 != 0) {
        assert { :sourceloc "Safe.java",57,-1,-1,-1 } { :comment "thenblock" } true;
        goto block61;
    } else {
        assert { :sourceloc "Safe.java",57,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",58,-1,-1,-1 } true;
    z0 := 0;
  block61:
    assert { :sourceloc "Safe.java",58,-1,-1,-1 } true;
    $return := z0;
    goto block62;
  block62:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
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
    assert { :sourceloc "Safe.java",62,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",63,-1,-1,-1 } true;
    $b0 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",63,-1,-1,-1 } true;
    if ($b0 <= 0) {
        assert { :sourceloc "Safe.java",63,-1,-1,-1 } { :comment "thenblock" } true;
        goto block63;
    } else {
        assert { :sourceloc "Safe.java",63,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",65,-1,-1,-1 } true;
    z0 := 1;
  block63:
    assert { :sourceloc "Safe.java",64,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",64,-1,-1,-1 } true;
    if ($b1 > 0) {
        assert { :sourceloc "Safe.java",64,-1,-1,-1 } { :comment "thenblock" } true;
        goto block64;
    } else {
        assert { :sourceloc "Safe.java",64,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",65,-1,-1,-1 } true;
    z0 := 0;
  block64:
    assert { :sourceloc "Safe.java",65,-1,-1,-1 } true;
    $return := z0;
    goto block65;
  block65:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b1 : int;    
var d1 : int;    
var d0 : int;    
var z0 : int;    
var $b0 : int;
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
        goto block66;
    } else {
        assert { :sourceloc "Safe.java",70,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",72,-1,-1,-1 } true;
    z0 := 1;
  block66:
    assert { :sourceloc "Safe.java",71,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",71,-1,-1,-1 } true;
    if ($b1 < 0) {
        assert { :sourceloc "Safe.java",71,-1,-1,-1 } { :comment "thenblock" } true;
        goto block67;
    } else {
        assert { :sourceloc "Safe.java",71,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",72,-1,-1,-1 } true;
    z0 := 0;
  block67:
    assert { :sourceloc "Safe.java",72,-1,-1,-1 } true;
    $return := z0;
    goto block68;
  block68:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var d0 : int;    
var d1 : int;    
var z0 : int;    
var $b0 : int;    
var $b1 : int;
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
        goto block69;
    } else {
        assert { :sourceloc "Safe.java",77,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",79,-1,-1,-1 } true;
    z0 := 1;
  block69:
    assert { :sourceloc "Safe.java",78,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",78,-1,-1,-1 } true;
    if ($b1 >= 0) {
        assert { :sourceloc "Safe.java",78,-1,-1,-1 } { :comment "thenblock" } true;
        goto block70;
    } else {
        assert { :sourceloc "Safe.java",78,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",79,-1,-1,-1 } true;
    z0 := 0;
  block70:
    assert { :sourceloc "Safe.java",79,-1,-1,-1 } true;
    $return := z0;
    goto block71;
  block71:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b1 : int;    
var $b0 : int;    
var d1 : int;    
var d0 : int;    
var z0 : int;
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
        goto block72;
    } else {
        assert { :sourceloc "Safe.java",84,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",86,-1,-1,-1 } true;
    z0 := 1;
  block72:
    assert { :sourceloc "Safe.java",85,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",85,-1,-1,-1 } true;
    if ($b1 <= 0) {
        assert { :sourceloc "Safe.java",85,-1,-1,-1 } { :comment "thenblock" } true;
        goto block73;
    } else {
        assert { :sourceloc "Safe.java",85,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",86,-1,-1,-1 } true;
    z0 := 0;
  block73:
    assert { :sourceloc "Safe.java",86,-1,-1,-1 } true;
    $return := z0;
    goto block74;
  block74:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b0 : int;    
var d1 : int;    
var z0 : int;    
var d0 : int;    
var $b1 : int;
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
        goto block75;
    } else {
        assert { :sourceloc "Safe.java",91,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",93,-1,-1,-1 } true;
    z0 := 1;
  block75:
    assert { :sourceloc "Safe.java",92,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",92,-1,-1,-1 } true;
    if ($b1 == 0) {
        assert { :sourceloc "Safe.java",92,-1,-1,-1 } { :comment "thenblock" } true;
        goto block76;
    } else {
        assert { :sourceloc "Safe.java",92,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",93,-1,-1,-1 } true;
    z0 := 0;
  block76:
    assert { :sourceloc "Safe.java",93,-1,-1,-1 } true;
    $return := z0;
    goto block77;
  block77:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b0 : int;    
var $b1 : int;    
var d1 : int;    
var z0 : int;    
var d0 : int;
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
        goto block78;
    } else {
        assert { :sourceloc "Safe.java",98,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",100,-1,-1,-1 } true;
    z0 := 1;
  block78:
    assert { :sourceloc "Safe.java",99,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",99,-1,-1,-1 } true;
    if ($b1 != 0) {
        assert { :sourceloc "Safe.java",99,-1,-1,-1 } { :comment "thenblock" } true;
        goto block79;
    } else {
        assert { :sourceloc "Safe.java",99,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",100,-1,-1,-1 } true;
    z0 := 0;
  block79:
    assert { :sourceloc "Safe.java",100,-1,-1,-1 } true;
    $return := z0;
    goto block80;
  block80:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var z0 : int;    
var r0 : ref;    
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
        goto block81;
    } else {
        assert { :sourceloc "Safe.java",105,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",107,-1,-1,-1 } true;
    z0 := 1;
  block81:
    assert { :sourceloc "Safe.java",106,-1,-1,-1 } true;
    if (r0 == r1) {
        assert { :sourceloc "Safe.java",106,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block82;
    } else {
        assert { :sourceloc "Safe.java",106,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",107,-1,-1,-1 } true;
    z0 := 0;
  block82:
    assert { :sourceloc "Safe.java",107,-1,-1,-1 } true;
    $return := z0;
    goto block83;
  block83:
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
        goto block84;
    } else {
        assert { :sourceloc "Safe.java",112,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",114,-1,-1,-1 } true;
    z0 := 1;
  block84:
    assert { :sourceloc "Safe.java",113,-1,-1,-1 } true;
    if (r0 != r1) {
        assert { :sourceloc "Safe.java",113,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block85;
    } else {
        assert { :sourceloc "Safe.java",113,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",114,-1,-1,-1 } true;
    z0 := 0;
  block85:
    assert { :sourceloc "Safe.java",114,-1,-1,-1 } true;
    $return := z0;
    goto block86;
  block86:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref){
    
var r1 : ref;    
var r2 : ref;    
var z0 : int;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1,$type] <: java.lang.Object;
    assume $heap[$in_parameter__2,$type] <: java.lang.Object;
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
        goto block87;
    } else {
        assert { :sourceloc "Safe.java",118,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",120,-1,-1,-1 } true;
    r2 := r0;
  block87:
    assert { :sourceloc "Safe.java",119,-1,-1,-1 } true;
    if (z0 != 0) {
        assert { :sourceloc "Safe.java",119,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block88;
    } else {
        assert { :sourceloc "Safe.java",119,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",120,-1,-1,-1 } true;
    r2 := r1;
  block88:
    assert { :sourceloc "Safe.java",120,-1,-1,-1 } true;
    $return := r2;
    goto block89;
  block89:
    return;
}


implementation java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref){
    $exception := $null;
    return;
}


