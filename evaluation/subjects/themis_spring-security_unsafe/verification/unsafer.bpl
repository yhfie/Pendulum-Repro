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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $heap == old($heap)[$obj,$alloc := true][$obj,$type := obj_type];    ensures $obj != $null;    ensures !old($heap[$obj,$alloc]);    ensures $objIndex == old($objIndex) + 1;    modifies $objIndex, $heap;    ensures $obj == $intToRef(old($objIndex));

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $other != $null;        ensures $heap[$other,$alloc] == true;    ensures $heap[$other,$type] == $heap[$this,$type];

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

procedure PasswordEncoderUtils$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure PasswordEncoderUtils$equals_unsafe$java.lang.String_java.lang.String($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

procedure PasswordEncoderUtils$bytesUtf8$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

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
    assert { :sourceloc "PasswordEncoderUtils.java",12,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "PasswordEncoderUtils.java",12,-1,-1,-1 } true;
    goto block1;
  block1:
    return;
}


implementation PasswordEncoderUtils$equals_unsafe$java.lang.String_java.lang.String($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var $z0 : int;    
var $b4 : int;    
var $fakelocal_1 : ref;    
var i1 : int;    
var $b2 : int;    
var b7 : int;    
var i8 : int;    
var r0 : ref;    
var $i5 : int;    
var r1 : ref;    
var $fakelocal_0 : ref;    
var r2 : ref;    
var $i6 : int;    
var $b3 : int;    
var $fakelocal_2 : ref;    
var r3 : ref;    
var $fakelocal_3 : ref;    
var i0 : int;
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
    assert { :sourceloc "PasswordEncoderUtils.java",34,-1,-1,-1 } true;
    call r2, $exception := PasswordEncoderUtils$bytesUtf8$java.lang.String(r0);
    assert { :sourceloc "PasswordEncoderUtils.java",35,-1,-1,-1 } true;
    call r3, $exception := PasswordEncoderUtils$bytesUtf8$java.lang.String(r1);
    assert { :sourceloc "PasswordEncoderUtils.java",36,-1,-1,-1 } true;
    if (r2 != $null) {
        assert { :sourceloc "PasswordEncoderUtils.java",36,-1,-1,-1 } { :comment "thenblock" } true;
        goto block2;
    } else {
        assert { :sourceloc "PasswordEncoderUtils.java",36,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PasswordEncoderUtils.java",39,-1,-1,-1 } true;
    $i5 := -1;
    assert { :sourceloc "PasswordEncoderUtils.java",39,-1,-1,-1 } true;
    goto block3;
  block2:
    assert { :sourceloc "PasswordEncoderUtils.java",39,-1,-1,-1 } true;
    if (r2 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    $i5 := $arrSizeHeap[r2];
  block3:
    assert { :sourceloc "PasswordEncoderUtils.java",36,-1,-1,-1 } true;
    i0 := $i5;
    assert { :sourceloc "PasswordEncoderUtils.java",37,-1,-1,-1 } true;
    if (r3 != $null) {
        assert { :sourceloc "PasswordEncoderUtils.java",37,-1,-1,-1 } { :comment "thenblock" } true;
        goto block4;
    } else {
        assert { :sourceloc "PasswordEncoderUtils.java",37,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PasswordEncoderUtils.java",40,-1,-1,-1 } true;
    $i6 := -1;
    assert { :sourceloc "PasswordEncoderUtils.java",40,-1,-1,-1 } true;
    goto block5;
  block4:
    assert { :sourceloc "PasswordEncoderUtils.java",40,-1,-1,-1 } true;
    if (r3 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_1;
        return;
    }
    $i6 := $arrSizeHeap[r3];
  block5:
    assert { :sourceloc "PasswordEncoderUtils.java",37,-1,-1,-1 } true;
    i1 := $i6;
    assert { :sourceloc "PasswordEncoderUtils.java",39,-1,-1,-1 } true;
    if (i0 == i1) {
        assert { :sourceloc "PasswordEncoderUtils.java",39,-1,-1,-1 } { :comment "thenblock" } true;
        goto block6;
    } else {
        assert { :sourceloc "PasswordEncoderUtils.java",39,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PasswordEncoderUtils.java",40,-1,-1,-1 } true;
    $return := 0;
    goto block11;
  block6:
    assert { :sourceloc "PasswordEncoderUtils.java",43,-1,-1,-1 } true;
    b7 := 0;
    assert { :sourceloc "PasswordEncoderUtils.java",44,-1,-1,-1 } true;
    i8 := 0;
  block7:
    assert { :sourceloc "PasswordEncoderUtils.java",44,-1,-1,-1 } true;
    if (i8 >= i0) {
        assert { :sourceloc "PasswordEncoderUtils.java",44,-1,-1,-1 } { :comment "thenblock" } true;
        goto block8;
    } else {
        assert { :sourceloc "PasswordEncoderUtils.java",44,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PasswordEncoderUtils.java",45,-1,-1,-1 } true;
    if (i8 < $arrSizeHeap[r2] && i8 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_2;
        return;
    }
    $b3 := $intArrHeap[r2][i8];
    assert { :sourceloc "PasswordEncoderUtils.java",45,-1,-1,-1 } true;
    if (i8 < $arrSizeHeap[r3] && i8 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_3;
        return;
    }
    $b2 := $intArrHeap[r3][i8];
    assert { :sourceloc "PasswordEncoderUtils.java",45,-1,-1,-1 } true;
    $b4 := $xorInt($b3, $b2);
    assert { :sourceloc "PasswordEncoderUtils.java",45,-1,-1,-1 } true;
    b7 := $bitOr(b7, $b4);
    assert { :sourceloc "PasswordEncoderUtils.java",44,-1,-1,-1 } true;
    i8 := i8 + 1;
    assert { :sourceloc "PasswordEncoderUtils.java",44,-1,-1,-1 } true;
    goto block7;
  block8:
    assert { :sourceloc "PasswordEncoderUtils.java",47,-1,-1,-1 } true;
    if (b7 != 0) {
        assert { :sourceloc "PasswordEncoderUtils.java",47,-1,-1,-1 } { :comment "thenblock" } true;
        goto block9;
    } else {
        assert { :sourceloc "PasswordEncoderUtils.java",47,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PasswordEncoderUtils.java",47,-1,-1,-1 } true;
    $z0 := 1;
    assert { :sourceloc "PasswordEncoderUtils.java",47,-1,-1,-1 } true;
    goto block10;
  block9:
    assert { :sourceloc "PasswordEncoderUtils.java",47,-1,-1,-1 } true;
    $z0 := 0;
  block10:
    assert { :sourceloc "PasswordEncoderUtils.java",47,-1,-1,-1 } true;
    $return := $z0;
    goto block11;
  block11:
    return;
}


implementation PasswordEncoderUtils$bytesUtf8$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r0 : ref;    
var $fakelocal_0 : ref;    
var $r2 : ref;    
var $r3 : ref;    
var $r4 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "PasswordEncoderUtils.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
  block12:
    assert { :sourceloc "PasswordEncoderUtils.java",52,-1,-1,-1 } true;
    if (r0 != $null) {
        assert { :sourceloc "PasswordEncoderUtils.java",52,-1,-1,-1 } { :comment "thenblock" } true;
        goto block13;
    } else {
        assert { :sourceloc "PasswordEncoderUtils.java",52,-1,-1,-1 } { :comment "elseblock" } true;
    }
  block14:
    assert { :sourceloc "PasswordEncoderUtils.java",53,-1,-1,-1 } true;
    $return := $null;
    goto block17;
  block13:
    assert { :sourceloc "PasswordEncoderUtils.java",56,-1,-1,-1 } true;
    call $r2, $exception := java.lang.String$getBytes$java.lang.String(r0, $StringConst0);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.io.UnsupportedEncodingException) {
            $return := $null;
            goto block15;
        } else {
            assert { :clone } true;
        }
    }
  block16:
    assert { :sourceloc "PasswordEncoderUtils.java",56,-1,-1,-1 } true;
    $return := $r2;
    goto block17;
  block15:
    assert { :sourceloc "PasswordEncoderUtils.java",53,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r3 := $exception;
    assert { :sourceloc "PasswordEncoderUtils.java",60,-1,-1,-1 } true;
    $r4 := java.io.PrintStream$java.lang.System$out260;
    assert { :sourceloc "PasswordEncoderUtils.java",60,-1,-1,-1 } true;
    if ($r4 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_0;
        return;
    }
    call $exception := java.io.PrintStream$println$java.lang.String($r4, $StringConst1);
    assert { :sourceloc "PasswordEncoderUtils.java",61,-1,-1,-1 } true;
    $return := $null;
    goto block17;
  block17:
    return;
}


//implementation fakejava.lang.StringBuilder$$la$init$ra$$($this:ref) returns ($exception:ref){
implementation java.lang.StringBuilder$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var r0 : ref;    
var $r1 : ref;    
var $fakelocal_0 : ref;
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
    goto block18;
  block18:
    return;
}


//implementation fakejava.lang.StringBuilder$append$fakejava.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
implementation java.lang.StringBuilder$append$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $fakelocal_0 : ref;    
var $c5 : int;    
var $i4 : int;    
var $r8 : ref;    
var $c6 : int;    
var $r3 : ref;    
var $fakelocal_9 : ref;    
var $fakelocal_4 : ref;    
var $fakelocal_2 : ref;    
var r2 : ref;    
var $fakelocal_3 : ref;    
var $fakelocal_5 : ref;    
var $fakelocal_8 : ref;    
var $fakelocal_10 : ref;    
var r0 : ref;    
var $fakelocal_7 : ref;    
var $r4 : ref;    
var $fakelocal_1 : ref;    
var $r7 : ref;    
var i8 : int;    
var $i2 : int;    
var $i0 : int;    
var i7 : int;    
var $r6 : ref;    
var $i1 : int;    
var $fakelocal_6 : ref;    
var $r5 : ref;    
var $i3 : int;    
var $r9 : ref;    
var r1 : ref;
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
  block19:
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
        goto block20;
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
    goto block19;
  block20:
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
  block21:
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
        goto block22;
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
    goto block21;
  block22:
    assert { :sourceloc "StringBuilder.java",14,-1,-1,-1 } true;
//    $heap := $heap[r0,char$lp$$rp$$fakejava.lang.StringBuilder$chars347 := r2];
    $heap := $heap[r0,char$lp$$rp$$java.lang.StringBuilder$chars347 := r2];
    assert { :sourceloc "StringBuilder.java",15,-1,-1,-1 } true;
    $return := r0;
    goto block23;
  block23:
    return;
}


//implementation fakejava.lang.StringBuilder$toString$($this:ref) returns ($return:ref, $exception:ref){
implementation java.lang.StringBuilder$toString$($this:ref) returns ($return:ref, $exception:ref){
    
var $r1 : ref;    
var $r2 : ref;    
var r0 : ref;    
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
    goto block24;
  block24:
    return;
}


//implementation fakejava.lang.String$$la$init$ra$$char$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref){
implementation java.lang.String$$la$init$ra$$char$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $fakelocal_0 : ref;    
var $i0 : int;    
var $fakelocal_2 : ref;    
var $fakelocal_1 : ref;    
var $fakelocal_4 : ref;    
var $c2 : int;    
var i3 : int;    
var $fakelocal_3 : ref;    
var r0 : ref;    
var r1 : ref;    
var $r2 : ref;    
var $r3 : ref;    
var $i1 : int;
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
  block25:
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
        goto block26;
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
    goto block25;
  block26:
    assert { :sourceloc "String.java",12,-1,-1,-1 } true;
    goto block27;
  block27:
    return;
}


//implementation fakejava.lang.String$$la$init$ra$$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref){
implementation java.lang.String$$la$init$ra$$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $fakelocal_1 : ref;    
var $r3 : ref;    
var $i0 : int;    
var $r2 : ref;    
var $i1 : int;    
var $c3 : int;    
var i4 : int;    
var $fakelocal_0 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_4 : ref;    
var r1 : ref;    
var r0 : ref;    
var $b2 : int;    
var $fakelocal_3 : ref;
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
  block28:
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
        goto block29;
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
    goto block28;
  block29:
    assert { :sourceloc "String.java",19,-1,-1,-1 } true;
    goto block30;
  block30:
    return;
}


//implementation fakejava.lang.String$charAt$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref){
implementation java.lang.String$charAt$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref){
    
var $c1 : int;    
var i0 : int;    
var $fakelocal_0 : ref;    
var $r1 : ref;    
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
    goto block31;
  block31:
    return;
}


//implementation fakejava.lang.String$getBytes$fakejava.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
implementation java.lang.String$getBytes$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $r2 : ref;    
var r1 : ref;    
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
    goto block32;
  block32:
    return;
}


//implementation fakejava.lang.String$getBytes$($this:ref) returns ($return:ref, $exception:ref){
implementation java.lang.String$getBytes$($this:ref) returns ($return:ref, $exception:ref){
    
var $b4 : int;    
var $i1 : int;    
var i5 : int;    
var r1 : ref;    
var $i0 : int;    
var $fakelocal_1 : ref;    
var $r2 : ref;    
var r0 : ref;    
var $fakelocal_4 : ref;    
var $fakelocal_0 : ref;    
var $r4 : ref;    
var $c3 : int;    
var $r3 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_3 : ref;    
var $c2 : int;
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
  block33:
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
        goto block34;
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
    goto block33;
  block34:
    assert { :sourceloc "String.java",34,-1,-1,-1 } true;
    $return := r1;
    goto block35;
  block35:
    return;
}


//implementation fakejava.lang.String$format$fakejava.lang.String_java.lang.Object$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref){
implementation java.lang.String$format$java.lang.String_java.lang.Object$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref){
    
var r0 : ref;    
var r1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume $heap[$return,$type] <: fakejava.lang.String;
    assume $heap[$return,$type] <: java.lang.String;
//    assume $heap[$in_parameter__0,$type] <: fakejava.lang.String;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "String.java",39,-1,-1,-1 } true;
    $return := r0;
    goto block36;
  block36:
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
    goto block37;
  block37:
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
    goto block38;
  block38:
    return;
}


//implementation fakejava.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref){
implementation java.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref){
    
var r0 : ref;    
var $z0 : int;
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
    goto block39;
  block39:
    return;
}


implementation java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref){
    $exception := $null;
    return;
}


