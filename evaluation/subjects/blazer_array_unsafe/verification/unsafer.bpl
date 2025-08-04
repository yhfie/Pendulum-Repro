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
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  complete;
//const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique fakejava.lang.Integer : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Comparable complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.lang.Integer : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Comparable complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.lang.NullPointerException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.lang.ClassCastException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "MoreSanity.java",-1,-1,-1,-1 } unique MoreSanity : javaType extends  unique java.lang.Object complete;
const { :sourceloc "MoreSanity.java",-1,-1,-1,-1 } unique java.lang.IndexOutOfBoundsException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "MoreSanity.java",-1,-1,-1,-1 } unique java.lang.ArrayIndexOutOfBoundsException : javaType extends  unique java.lang.IndexOutOfBoundsException complete;
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
//var int$fakejava.lang.Integer$value0 : Field int;
var int$java.lang.Integer$value0 : Field int;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $objIndex == old($objIndex) + 1;    ensures $obj != $null;    modifies $objIndex, $heap;    ensures $heap == old($heap)[$obj,$alloc := true][$obj,$type := obj_type];    ensures $obj == $intToRef(old($objIndex));    ensures !old($heap[$obj,$alloc]);

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $other != $null;    ensures $heap[$other,$alloc] == true;    ensures $heap[$other,$type] == $heap[$this,$type];    

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

//procedure fakejava.lang.Integer$$la$init$ra$$int($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;
procedure java.lang.Integer$$la$init$ra$$int($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;

procedure java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref);    

//procedure fakejava.lang.Integer$valueOf$int($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.Integer$valueOf$int($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.Integer$intValue$($this:ref) returns ($return:int, $exception:ref);    
procedure java.lang.Integer$intValue$($this:ref) returns ($return:int, $exception:ref);    

//procedure fakejava.lang.Integer$compareTo$fakejava.lang.Integer($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.Integer$compareTo$java.lang.Integer($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.Integer$compareTo$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.Integer$compareTo$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

procedure MoreSanity$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure MoreSanity$array_unsafe$int$lp$$rp$_int($in_parameter__0:ref, $in_parameter__1:int) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

procedure MoreSanity$loopAndbranch_safe$int_int($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure MoreSanity$loopAndbranch_unsafe$int_int($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

//implementation fakejava.lang.Integer$$la$init$ra$$int($this:ref, $in_parameter__0:int) returns ($exception:ref){
implementation java.lang.Integer$$la$init$ra$$int($this:ref, $in_parameter__0:int) returns ($exception:ref){
    
var r0 : ref;    
var i0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "Integer.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.Integer;
    assume { :sourceloc "Integer.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.Integer;
    assume { :sourceloc "Integer.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "Integer.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "Integer.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__0;
    assert { :sourceloc "Integer.java",8,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "Integer.java",9,-1,-1,-1 } true;
//    $heap := $heap[r0,int$fakejava.lang.Integer$value0 := i0];
    $heap := $heap[r0,int$java.lang.Integer$value0 := i0];
    assert { :sourceloc "Integer.java",10,-1,-1,-1 } true;
    goto block1;
  block1:
    return;
}


//implementation fakejava.lang.Integer$valueOf$int($in_parameter__0:int) returns ($return:ref, $exception:ref){
implementation java.lang.Integer$valueOf$int($in_parameter__0:int) returns ($return:ref, $exception:ref){
    
var $r0 : ref;    
var i0 : int;    
var $fakelocal_0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume $heap[$return,$type] <: fakejava.lang.Integer;
    assume $heap[$return,$type] <: java.lang.Integer;
    $exception := $null;
    assert { :sourceloc "Integer.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__0;
    assert { :sourceloc "Integer.java",13,-1,-1,-1 } true;
//    call $fakelocal_0 := $new(fakejava.lang.Integer);
    call $fakelocal_0 := $new(java.lang.Integer);
    $r0 := $fakelocal_0;
    assert { :sourceloc "Integer.java",13,-1,-1,-1 } true;
//    call $exception := fakejava.lang.Integer$$la$init$ra$$int($r0, i0);
    call $exception := java.lang.Integer$$la$init$ra$$int($r0, i0);
    assert { :sourceloc "Integer.java",13,-1,-1,-1 } true;
    $return := $r0;
    goto block2;
  block2:
    return;
}


//implementation fakejava.lang.Integer$intValue$($this:ref) returns ($return:int, $exception:ref){
implementation java.lang.Integer$intValue$($this:ref) returns ($return:int, $exception:ref){
    
var $i0 : int;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "Integer.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.Integer;
    assume { :sourceloc "Integer.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.Integer;
    assume { :sourceloc "Integer.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "Integer.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "Integer.java",17,-1,-1,-1 } true;
//    $i0 := $heap[r0,int$fakejava.lang.Integer$value0];
    $i0 := $heap[r0,int$java.lang.Integer$value0];
    assert { :sourceloc "Integer.java",17,-1,-1,-1 } true;
    $return := $i0;
    goto block3;
  block3:
    return;
}


//implementation fakejava.lang.Integer$compareTo$fakejava.lang.Integer($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
implementation java.lang.Integer$compareTo$java.lang.Integer($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var $i3 : int;    
var $i0 : int;    
var $i1 : int;    
var $i2 : int;    
var r1 : ref;    
var $fakelocal_0 : ref;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "Integer.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.Integer;
    assume { :sourceloc "Integer.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.Integer;
    assume { :sourceloc "Integer.java",-1,-1,-1,-1 } $this != $null;
//    assume $heap[$in_parameter__0,$type] <: fakejava.lang.Integer;
    assume $heap[$in_parameter__0,$type] <: java.lang.Integer;
    $exception := $null;
    assert { :sourceloc "Integer.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "Integer.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "Integer.java",22,-1,-1,-1 } true;
//    $i1 := $heap[r0,int$fakejava.lang.Integer$value0];
    $i1 := $heap[r0,int$java.lang.Integer$value0];
    assert { :sourceloc "Integer.java",22,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
//    $i0 := $heap[r1,int$fakejava.lang.Integer$value0];
    $i0 := $heap[r1,int$java.lang.Integer$value0];
    assert { :sourceloc "Integer.java",22,-1,-1,-1 } true;
    if ($i1 <= $i0) {
        assert { :sourceloc "Integer.java",22,-1,-1,-1 } { :comment "thenblock" } true;
        goto block4;
    } else {
        assert { :sourceloc "Integer.java",22,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Integer.java",23,-1,-1,-1 } true;
    $return := 1;
    goto block6;
  block4:
    assert { :sourceloc "Integer.java",24,-1,-1,-1 } true;
//    $i3 := $heap[r0,int$fakejava.lang.Integer$value0];
    $i3 := $heap[r0,int$java.lang.Integer$value0];
    assert { :sourceloc "Integer.java",24,-1,-1,-1 } true;
//    $i2 := $heap[r1,int$fakejava.lang.Integer$value0];
    $i2 := $heap[r1,int$java.lang.Integer$value0];
    assert { :sourceloc "Integer.java",24,-1,-1,-1 } true;
    if ($i3 >= $i2) {
        assert { :sourceloc "Integer.java",24,-1,-1,-1 } { :comment "thenblock" } true;
        goto block5;
    } else {
        assert { :sourceloc "Integer.java",24,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Integer.java",25,-1,-1,-1 } true;
    $return := -1;
    goto block6;
  block5:
    assert { :sourceloc "Integer.java",27,-1,-1,-1 } true;
    $return := 0;
    goto block6;
  block6:
    return;
}


//implementation fakejava.lang.Integer$compareTo$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
implementation java.lang.Integer$compareTo$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var r1 : ref;    
var $r2 : ref;    
var $fakelocal_0 : ref;    
var r0 : ref;    
var $i0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "Integer.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.Integer;
    assume { :sourceloc "Integer.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.Integer;
    assume { :sourceloc "Integer.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    $exception := $null;
    assert { :sourceloc "Integer.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "Integer.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "Integer.java",5,-1,-1,-1 } true;
//    if ($heap[r1,$type] <: fakejava.lang.Integer) {
    if ($heap[r1,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    $r2 := r1;
    assert { :sourceloc "Integer.java",5,-1,-1,-1 } true;
//    call $i0, $exception := fakejava.lang.Integer$compareTo$fakejava.lang.Integer(r0, $r2);
    call $i0, $exception := java.lang.Integer$compareTo$java.lang.Integer(r0, $r2);
    assert { :sourceloc "Integer.java",5,-1,-1,-1 } true;
    $return := $i0;
    goto block7;
  block7:
    return;
}


implementation MoreSanity$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "MoreSanity.java",-1,-1,-1,-1 } $heap[$this,$type] <: MoreSanity;
    assume { :sourceloc "MoreSanity.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "MoreSanity.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "MoreSanity.java",1,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "MoreSanity.java",1,-1,-1,-1 } true;
    goto block8;
  block8:
    return;
}


implementation MoreSanity$array_unsafe$int$lp$$rp$_int($in_parameter__0:ref, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $i1 : int;    
var $i2 : int;    
var b5 : int;    
var i4 : int;    
var i3 : int;    
var r0 : ref;    
var $fakelocal_0 : ref;    
var i0 : int;    
var $fakelocal_1 : ref;    
var $fakelocal_2 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "MoreSanity.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "MoreSanity.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__1;
    assert { :sourceloc "MoreSanity.java",22,-1,-1,-1 } true;
    if (i0 >= 0) {
        assert { :sourceloc "MoreSanity.java",22,-1,-1,-1 } { :comment "thenblock" } true;
        goto block9;
    } else {
        assert { :sourceloc "MoreSanity.java",22,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "MoreSanity.java",23,-1,-1,-1 } true;
    if (r0 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    $i2 := $arrSizeHeap[r0];
    assert { :sourceloc "MoreSanity.java",23,-1,-1,-1 } true;
    i3 := $i2 - 1;
  block10:
    assert { :sourceloc "MoreSanity.java",25,-1,-1,-1 } true;
    if (i3 < 0) {
        assert { :sourceloc "MoreSanity.java",25,-1,-1,-1 } { :comment "thenblock" } true;
        goto block11;
    } else {
        assert { :sourceloc "MoreSanity.java",25,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "MoreSanity.java",26,-1,-1,-1 } true;
    if (i3 < $arrSizeHeap[r0] && i3 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_1;
        return;
    }
    i4 := $intArrHeap[r0][i3];
    assert { :sourceloc "MoreSanity.java",27,-1,-1,-1 } true;
    i3 := i3 + -1;
    assert { :sourceloc "MoreSanity.java",27,-1,-1,-1 } true;
    goto block10;
  block11:
    assert { :sourceloc "MoreSanity.java",29,-1,-1,-1 } true;
    goto block12;
  block9:
    assert { :sourceloc "MoreSanity.java",30,-1,-1,-1 } true;
    b5 := 0;
    assert { :sourceloc "MoreSanity.java",31,-1,-1,-1 } true;
    if (b5 < $arrSizeHeap[r0] && b5 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_2;
        return;
    }
    $i1 := $intArrHeap[r0][b5];
  block12:
    assert { :sourceloc "MoreSanity.java",34,-1,-1,-1 } true;
    $return := 0;
    goto block13;
  block13:
    return;
}


implementation MoreSanity$loopAndbranch_safe$int_int($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var i1 : int;    
var i5 : int;    
var i4 : int;    
var i3 : int;    
var i0 : int;    
var i2 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "MoreSanity.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__0;
    assert { :sourceloc "MoreSanity.java",-1,-1,-1,-1 } true;
    i1 := $in_parameter__1;
    assert { :sourceloc "MoreSanity.java",38,-1,-1,-1 } true;
    i2 := i0;
    assert { :sourceloc "MoreSanity.java",40,-1,-1,-1 } true;
    if (i1 >= 0) {
        assert { :sourceloc "MoreSanity.java",40,-1,-1,-1 } { :comment "thenblock" } true;
        goto block14;
    } else {
        assert { :sourceloc "MoreSanity.java",40,-1,-1,-1 } { :comment "elseblock" } true;
    }
  block15:
    assert { :sourceloc "MoreSanity.java",41,-1,-1,-1 } true;
    if (i2 <= 0) {
        assert { :sourceloc "MoreSanity.java",41,-1,-1,-1 } { :comment "thenblock" } true;
        goto block16;
    } else {
        assert { :sourceloc "MoreSanity.java",41,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "MoreSanity.java",42,-1,-1,-1 } true;
    i2 := i2 + -1;
    assert { :sourceloc "MoreSanity.java",42,-1,-1,-1 } true;
    goto block15;
  block14:
    assert { :sourceloc "MoreSanity.java",46,-1,-1,-1 } true;
    i3 := i1 + 10;
    assert { :sourceloc "MoreSanity.java",48,-1,-1,-1 } true;
    if (i3 < 10) {
        assert { :sourceloc "MoreSanity.java",48,-1,-1,-1 } { :comment "thenblock" } true;
        goto block17;
    } else {
        assert { :sourceloc "MoreSanity.java",48,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "MoreSanity.java",49,-1,-1,-1 } true;
    i4 := i0;
  block18:
    assert { :sourceloc "MoreSanity.java",50,-1,-1,-1 } true;
    if (i4 <= 0) {
        assert { :sourceloc "MoreSanity.java",50,-1,-1,-1 } { :comment "thenblock" } true;
        goto block19;
    } else {
        assert { :sourceloc "MoreSanity.java",50,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "MoreSanity.java",51,-1,-1,-1 } true;
    i4 := i4 + -1;
    assert { :sourceloc "MoreSanity.java",51,-1,-1,-1 } true;
    goto block18;
  block19:
    assert { :sourceloc "MoreSanity.java",53,-1,-1,-1 } true;
    goto block16;
  block17:
    assert { :sourceloc "MoreSanity.java",54,-1,-1,-1 } true;
    if (i0 >= 0) {
        assert { :sourceloc "MoreSanity.java",54,-1,-1,-1 } { :comment "thenblock" } true;
        goto block16;
    } else {
        assert { :sourceloc "MoreSanity.java",54,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "MoreSanity.java",55,-1,-1,-1 } true;
    i5 := i0;
  block20:
    assert { :sourceloc "MoreSanity.java",56,-1,-1,-1 } true;
    if (i5 <= 0) {
        assert { :sourceloc "MoreSanity.java",56,-1,-1,-1 } { :comment "thenblock" } true;
        goto block16;
    } else {
        assert { :sourceloc "MoreSanity.java",56,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "MoreSanity.java",57,-1,-1,-1 } true;
    i5 := i5 + -1;
    assert { :sourceloc "MoreSanity.java",57,-1,-1,-1 } true;
    goto block20;
  block16:
    assert { :sourceloc "MoreSanity.java",62,-1,-1,-1 } true;
    $return := 1;
    goto block21;
  block21:
    return;
}


implementation MoreSanity$loopAndbranch_unsafe$int_int($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var i1 : int;    
var i5 : int;    
var i4 : int;    
var i3 : int;    
var i0 : int;    
var i2 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "MoreSanity.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__0;
    assert { :sourceloc "MoreSanity.java",-1,-1,-1,-1 } true;
    i1 := $in_parameter__1;
    assert { :sourceloc "MoreSanity.java",66,-1,-1,-1 } true;
    i2 := i0;
    assert { :sourceloc "MoreSanity.java",68,-1,-1,-1 } true;
    if (i1 >= 0) {
        assert { :sourceloc "MoreSanity.java",68,-1,-1,-1 } { :comment "thenblock" } true;
        goto block22;
    } else {
        assert { :sourceloc "MoreSanity.java",68,-1,-1,-1 } { :comment "elseblock" } true;
    }
  block23:
    assert { :sourceloc "MoreSanity.java",69,-1,-1,-1 } true;
    if (i2 <= 0) {
        assert { :sourceloc "MoreSanity.java",69,-1,-1,-1 } { :comment "thenblock" } true;
        goto block24;
    } else {
        assert { :sourceloc "MoreSanity.java",69,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "MoreSanity.java",70,-1,-1,-1 } true;
    i2 := i2 + -1;
    assert { :sourceloc "MoreSanity.java",70,-1,-1,-1 } true;
    goto block23;
  block22:
    assert { :sourceloc "MoreSanity.java",74,-1,-1,-1 } true;
    i3 := i1 - 10;
    assert { :sourceloc "MoreSanity.java",76,-1,-1,-1 } true;
    if (i3 < 10) {
        assert { :sourceloc "MoreSanity.java",76,-1,-1,-1 } { :comment "thenblock" } true;
        goto block25;
    } else {
        assert { :sourceloc "MoreSanity.java",76,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "MoreSanity.java",77,-1,-1,-1 } true;
    i4 := i0;
  block26:
    assert { :sourceloc "MoreSanity.java",78,-1,-1,-1 } true;
    if (i4 <= 0) {
        assert { :sourceloc "MoreSanity.java",78,-1,-1,-1 } { :comment "thenblock" } true;
        goto block27;
    } else {
        assert { :sourceloc "MoreSanity.java",78,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "MoreSanity.java",79,-1,-1,-1 } true;
    i4 := i4 + -1;
    assert { :sourceloc "MoreSanity.java",79,-1,-1,-1 } true;
    goto block26;
  block27:
    assert { :sourceloc "MoreSanity.java",81,-1,-1,-1 } true;
    goto block24;
  block25:
    assert { :sourceloc "MoreSanity.java",82,-1,-1,-1 } true;
    if (i0 >= 0) {
        assert { :sourceloc "MoreSanity.java",82,-1,-1,-1 } { :comment "thenblock" } true;
        goto block24;
    } else {
        assert { :sourceloc "MoreSanity.java",82,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "MoreSanity.java",83,-1,-1,-1 } true;
    i5 := i0;
  block28:
    assert { :sourceloc "MoreSanity.java",84,-1,-1,-1 } true;
    if (i5 <= 0) {
        assert { :sourceloc "MoreSanity.java",84,-1,-1,-1 } { :comment "thenblock" } true;
        goto block24;
    } else {
        assert { :sourceloc "MoreSanity.java",84,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "MoreSanity.java",85,-1,-1,-1 } true;
    i5 := i5 + -1;
    assert { :sourceloc "MoreSanity.java",85,-1,-1,-1 } true;
    goto block28;
  block24:
    assert { :sourceloc "MoreSanity.java",90,-1,-1,-1 } true;
    $return := 1;
    goto block29;
  block29:
    return;
}


implementation java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref){
    $exception := $null;
    return;
}


