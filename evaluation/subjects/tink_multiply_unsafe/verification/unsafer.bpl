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
const { :sourceloc "Boolean.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
//const { :sourceloc "Boolean.java",-1,-1,-1,-1 } unique fakejava.lang.Boolean : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Boolean.java",-1,-1,-1,-1 } unique java.lang.Boolean : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  complete;
//const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique fakejava.lang.Integer : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Comparable complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.lang.Integer : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Comparable complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.lang.NullPointerException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.lang.ClassCastException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "AesEaxJce.java",-1,-1,-1,-1 } unique AesEaxJce : javaType extends  unique java.lang.Object complete;
const { :sourceloc "AesEaxJce.java",-1,-1,-1,-1 } unique java.lang.IndexOutOfBoundsException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "AesEaxJce.java",-1,-1,-1,-1 } unique java.lang.ArrayIndexOutOfBoundsException : javaType extends  unique java.lang.IndexOutOfBoundsException complete;
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
//var boolean$fakejava.lang.Boolean$value0 : Field int;
var boolean$java.lang.Boolean$value0 : Field int;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    modifies $objIndex, $heap;    ensures $obj == $intToRef(old($objIndex));    ensures !old($heap[$obj,$alloc]);    ensures $heap == old($heap)[$obj,$alloc := true][$obj,$type := obj_type];    ensures $obj != $null;    ensures $objIndex == old($objIndex) + 1;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $heap[$other,$alloc] == true;    ensures $heap[$other,$type] == $heap[$this,$type];        ensures $other != $null;

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

//procedure fakejava.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;
procedure java.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;

procedure java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref);    

//procedure fakejava.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    
procedure java.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    

//procedure fakejava.lang.Integer$$la$init$ra$$int($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;
procedure java.lang.Integer$$la$init$ra$$int($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;

//procedure fakejava.lang.Integer$valueOf$int($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.Integer$valueOf$int($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.Integer$intValue$($this:ref) returns ($return:int, $exception:ref);    
procedure java.lang.Integer$intValue$($this:ref) returns ($return:int, $exception:ref);    

//procedure fakejava.lang.Integer$compareTo$fakejava.lang.Integer($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.Integer$compareTo$java.lang.Integer($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.Integer$compareTo$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.Integer$compareTo$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

procedure AesEaxJce$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$($in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;

procedure AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int($in_parameter__0:ref, $in_parameter__1:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;

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
    goto block1;
  block1:
    return;
}


//implementation fakejava.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref){
implementation java.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref){
    
var $fakelocal_0 : ref;    
var $r0 : ref;    
var z0 : int;
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
    goto block2;
  block2:
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
    goto block3;
  block3:
    return;
}


//implementation fakejava.lang.Integer$$la$init$ra$$int($this:ref, $in_parameter__0:int) returns ($exception:ref){
implementation java.lang.Integer$$la$init$ra$$int($this:ref, $in_parameter__0:int) returns ($exception:ref){
    
var i0 : int;    
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
    assert { :sourceloc "Integer.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__0;
    assert { :sourceloc "Integer.java",8,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "Integer.java",9,-1,-1,-1 } true;
//    $heap := $heap[r0,int$fakejava.lang.Integer$value0 := i0];
    $heap := $heap[r0,int$java.lang.Integer$value0 := i0];
    assert { :sourceloc "Integer.java",10,-1,-1,-1 } true;
    goto block4;
  block4:
    return;
}


//implementation fakejava.lang.Integer$valueOf$int($in_parameter__0:int) returns ($return:ref, $exception:ref){
implementation java.lang.Integer$valueOf$int($in_parameter__0:int) returns ($return:ref, $exception:ref){
    
var $fakelocal_0 : ref;    
var $r0 : ref;    
var i0 : int;
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
    goto block5;
  block5:
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
    goto block6;
  block6:
    return;
}


//implementation fakejava.lang.Integer$compareTo$fakejava.lang.Integer($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
implementation java.lang.Integer$compareTo$java.lang.Integer($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var $i0 : int;    
var $i1 : int;    
var $i2 : int;    
var $i3 : int;    
var $fakelocal_0 : ref;    
var r1 : ref;    
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
        goto block7;
    } else {
        assert { :sourceloc "Integer.java",22,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Integer.java",23,-1,-1,-1 } true;
    $return := 1;
    goto block9;
  block7:
    assert { :sourceloc "Integer.java",24,-1,-1,-1 } true;
//    $i3 := $heap[r0,int$fakejava.lang.Integer$value0];
    $i3 := $heap[r0,int$java.lang.Integer$value0];
    assert { :sourceloc "Integer.java",24,-1,-1,-1 } true;
//    $i2 := $heap[r1,int$fakejava.lang.Integer$value0];
    $i2 := $heap[r1,int$java.lang.Integer$value0];
    assert { :sourceloc "Integer.java",24,-1,-1,-1 } true;
    if ($i3 >= $i2) {
        assert { :sourceloc "Integer.java",24,-1,-1,-1 } { :comment "thenblock" } true;
        goto block8;
    } else {
        assert { :sourceloc "Integer.java",24,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Integer.java",25,-1,-1,-1 } true;
    $return := -1;
    goto block9;
  block8:
    assert { :sourceloc "Integer.java",27,-1,-1,-1 } true;
    $return := 0;
    goto block9;
  block9:
    return;
}


//implementation fakejava.lang.Integer$compareTo$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
implementation java.lang.Integer$compareTo$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var $i0 : int;    
var r1 : ref;    
var $fakelocal_0 : ref;    
var r0 : ref;    
var $r2 : ref;
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
    goto block10;
  block10:
    return;
}


implementation AesEaxJce$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "AesEaxJce.java",-1,-1,-1,-1 } $heap[$this,$type] <: AesEaxJce;
    assume { :sourceloc "AesEaxJce.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "AesEaxJce.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "AesEaxJce.java",2,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "AesEaxJce.java",2,-1,-1,-1 } true;
    goto block11;
  block11:
    return;
}


implementation AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $fakelocal_3 : ref;    
var $fakelocal_6 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_0 : ref;    
var $s2 : int;    
var $fakelocal_4 : ref;    
var $b5 : int;    
var $s9 : int;    
var $b0 : int;    
var $fakelocal_1 : ref;    
var r1 : ref;    
var $i4 : int;    
var $i3 : int;    
var $i11 : int;    
var r0 : ref;    
var $i12 : int;    
var $s10 : int;    
var $s16 : int;    
var $i13 : int;    
var $b1 : int;    
var $b8 : int;    
var $fakelocal_5 : ref;    
var $b14 : int;    
var $i7 : int;    
var i15 : int;    
var $b6 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "AesEaxJce.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "AesEaxJce.java",7,-1,-1,-1 } true;
    call $fakelocal_0 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_0 := 16];
    r1 := $fakelocal_0;
    assert { :sourceloc "AesEaxJce.java",8,-1,-1,-1 } true;
    i15 := 0;
  block12:
    assert { :sourceloc "AesEaxJce.java",8,-1,-1,-1 } true;
    if (i15 >= 15) {
        assert { :sourceloc "AesEaxJce.java",8,-1,-1,-1 } { :comment "thenblock" } true;
        goto block13;
    } else {
        assert { :sourceloc "AesEaxJce.java",8,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "AesEaxJce.java",10,-1,-1,-1 } true;
    if (i15 < $arrSizeHeap[r0] && i15 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
    $b6 := $intArrHeap[r0][i15];
    assert { :sourceloc "AesEaxJce.java",10,-1,-1,-1 } true;
    $i11 := $shlInt($b6, 1);
    assert { :sourceloc "AesEaxJce.java",10,-1,-1,-1 } true;
    $i7 := i15 + 1;
    assert { :sourceloc "AesEaxJce.java",10,-1,-1,-1 } true;
    if ($i7 < $arrSizeHeap[r0] && $i7 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    $b8 := $intArrHeap[r0][$i7];
    assert { :sourceloc "AesEaxJce.java",10,-1,-1,-1 } true;
    $s9 := $bitAnd($b8, 255);
    assert { :sourceloc "AesEaxJce.java",10,-1,-1,-1 } true;
    $s10 := $ushrInt($s9, 7);
    assert { :sourceloc "AesEaxJce.java",10,-1,-1,-1 } true;
    $i12 := $xorInt($i11, $s10);
    assert { :sourceloc "AesEaxJce.java",10,-1,-1,-1 } true;
    $i13 := $bitAnd($i12, 255);
    assert { :sourceloc "AesEaxJce.java",10,-1,-1,-1 } true;
    $b14 := $i13;
    assert { :sourceloc "AesEaxJce.java",10,-1,-1,-1 } true;
    if (i15 < $arrSizeHeap[r1] && i15 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_3;
        return;
    }
    $intArrHeap := $intArrHeap[r1 := $intArrHeap[r1][i15 := $b14]];
    assert { :sourceloc "AesEaxJce.java",8,-1,-1,-1 } true;
    i15 := i15 + 1;
    assert { :sourceloc "AesEaxJce.java",8,-1,-1,-1 } true;
    goto block12;
  block13:
    assert { :sourceloc "AesEaxJce.java",13,-1,-1,-1 } true;
    if (15 < $arrSizeHeap[r0] && 15 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_4;
        return;
    }
    $b0 := $intArrHeap[r0][15];
    assert { :sourceloc "AesEaxJce.java",13,-1,-1,-1 } true;
    $i3 := $shlInt($b0, 1);
    assert { :sourceloc "AesEaxJce.java",13,-1,-1,-1 } true;
    if (0 < $arrSizeHeap[r0] && 0 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_5;
        return;
    }
    $b1 := $intArrHeap[r0][0];
    assert { :sourceloc "AesEaxJce.java",13,-1,-1,-1 } true;
    $s2 := $bitAnd($b1, 128);
    assert { :sourceloc "AesEaxJce.java",13,-1,-1,-1 } true;
    if ($s2 != 0) {
        assert { :sourceloc "AesEaxJce.java",13,-1,-1,-1 } { :comment "thenblock" } true;
        goto block14;
    } else {
        assert { :sourceloc "AesEaxJce.java",13,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "AesEaxJce.java",14,-1,-1,-1 } true;
    $s16 := 0;
    assert { :sourceloc "AesEaxJce.java",14,-1,-1,-1 } true;
    goto block15;
  block14:
    assert { :sourceloc "AesEaxJce.java",14,-1,-1,-1 } true;
    $s16 := 135;
  block15:
    assert { :sourceloc "AesEaxJce.java",13,-1,-1,-1 } true;
    $i4 := $xorInt($i3, $s16);
    assert { :sourceloc "AesEaxJce.java",13,-1,-1,-1 } true;
    $b5 := $i4;
    assert { :sourceloc "AesEaxJce.java",13,-1,-1,-1 } true;
    if (15 < $arrSizeHeap[r1] && 15 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_6 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_6;
        return;
    }
    $intArrHeap := $intArrHeap[r1 := $intArrHeap[r1][15 := $b5]];
    assert { :sourceloc "AesEaxJce.java",14,-1,-1,-1 } true;
    $return := r1;
    goto block16;
  block16:
    return;
}


implementation AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int($in_parameter__0:ref, $in_parameter__1:int) returns ($return:ref, $exception:ref){
    
var r0 : ref;    
var i1 : int;    
var i0 : int;    
var r1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "AesEaxJce.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "AesEaxJce.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__1;
    assert { :sourceloc "AesEaxJce.java",30,-1,-1,-1 } true;
    r1 := $null;
    assert { :sourceloc "AesEaxJce.java",31,-1,-1,-1 } true;
    i1 := 0;
  block17:
    assert { :sourceloc "AesEaxJce.java",31,-1,-1,-1 } true;
    if (i1 >= i0) {
        assert { :sourceloc "AesEaxJce.java",31,-1,-1,-1 } { :comment "thenblock" } true;
        goto block18;
    } else {
        assert { :sourceloc "AesEaxJce.java",31,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "AesEaxJce.java",32,-1,-1,-1 } true;
    call r1, $exception := AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$(r0);
    assert { :sourceloc "AesEaxJce.java",31,-1,-1,-1 } true;
    i1 := i1 + 1;
    assert { :sourceloc "AesEaxJce.java",31,-1,-1,-1 } true;
    goto block17;
  block18:
    assert { :sourceloc "AesEaxJce.java",34,-1,-1,-1 } true;
    $return := r1;
    goto block19;
  block19:
    return;
}


implementation java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref){
    $exception := $null;
    return;
}


