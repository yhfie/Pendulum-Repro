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
const { :sourceloc "Login.java",-1,-1,-1,-1 } unique Login : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Login.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  complete;
const { :sourceloc "Login.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  complete;
const { :sourceloc "Login.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  complete;
const { :sourceloc "Login.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Comparable, java.lang.CharSequence complete;
const { :sourceloc "Login.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "Login.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "Login.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "Login.java",-1,-1,-1,-1 } unique java.lang.NullPointerException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "Login.java",-1,-1,-1,-1 } unique java.lang.IndexOutOfBoundsException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "Login.java",-1,-1,-1,-1 } unique java.lang.ArrayIndexOutOfBoundsException : javaType extends  unique java.lang.IndexOutOfBoundsException complete;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $obj != $null;    modifies $objIndex, $heap;    ensures !old($heap[$obj,$alloc]);    ensures $obj == $intToRef(old($objIndex));    ensures $objIndex == old($objIndex) + 1;    ensures $heap == old($heap)[$obj,$alloc := true][$obj,$type := obj_type];

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $other != $null;    ensures $heap[$other,$type] == $heap[$this,$type];        ensures $heap[$other,$alloc] == true;

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

//procedure fakejava.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;
procedure java.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;

procedure java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref);    

//procedure fakejava.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    
procedure java.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    

procedure Login$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String($in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

procedure Login$retrieve$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;

//implementation fakejava.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref){
implementation java.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref){
    
var r0 : ref;    
var z0 : int;
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
    
var z0 : int;    
var $fakelocal_0 : ref;    
var $r0 : ref;
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


implementation Login$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "Login.java",-1,-1,-1,-1 } $heap[$this,$type] <: Login;
    assume { :sourceloc "Login.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "Login.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "Login.java",1,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "Login.java",1,-1,-1,-1 } true;
    goto block4;
  block4:
    return;
}


implementation Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String($in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:int, $exception:ref){
    
var r0 : ref;    
var $fakelocal_3 : ref;    
var $b3 : int;    
var r2 : ref;    
var r1 : ref;    
var $b2 : int;    
var $fakelocal_0 : ref;    
var $fakelocal_1 : ref;    
var $fakelocal_2 : ref;    
var $i0 : int;    
var i4 : int;    
var $i1 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__2,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "Login.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Login.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "Login.java",-1,-1,-1,-1 } true;
    r2 := $in_parameter__2;
    assert { :sourceloc "Login.java",8,-1,-1,-1 } true;
    if (r0 != $null) {
        assert { :sourceloc "Login.java",8,-1,-1,-1 } { :comment "thenblock" } true;
        goto block5;
    } else {
        assert { :sourceloc "Login.java",8,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Login.java",9,-1,-1,-1 } true;
    $return := 0;
    goto block10;
  block5:
    assert { :sourceloc "Login.java",12,-1,-1,-1 } true;
    i4 := 0;
  block6:
    assert { :sourceloc "Login.java",12,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    $i0 := $arrSizeHeap[r1];
    assert { :sourceloc "Login.java",12,-1,-1,-1 } true;
    if (i4 >= $i0) {
        assert { :sourceloc "Login.java",12,-1,-1,-1 } { :comment "thenblock" } true;
        goto block7;
    } else {
        assert { :sourceloc "Login.java",12,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Login.java",13,-1,-1,-1 } true;
    if (r0 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_1;
        return;
    }
    $i1 := $arrSizeHeap[r0];
    assert { :sourceloc "Login.java",13,-1,-1,-1 } true;
    if (i4 >= $i1) {
        assert { :sourceloc "Login.java",13,-1,-1,-1 } { :comment "thenblock" } true;
        goto block8;
    } else {
        assert { :sourceloc "Login.java",13,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Login.java",14,-1,-1,-1 } true;
    if (i4 < $arrSizeHeap[r1] && i4 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_2;
        return;
    }
    $b3 := $intArrHeap[r1][i4];
    assert { :sourceloc "Login.java",14,-1,-1,-1 } true;
    if (i4 < $arrSizeHeap[r0] && i4 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_3;
        return;
    }
    $b2 := $intArrHeap[r0][i4];
    assert { :sourceloc "Login.java",14,-1,-1,-1 } true;
    if ($b3 == $b2) {
        assert { :sourceloc "Login.java",14,-1,-1,-1 } { :comment "thenblock" } true;
        goto block9;
    } else {
        assert { :sourceloc "Login.java",14,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Login.java",15,-1,-1,-1 } true;
    $return := 0;
    goto block10;
  block8:
    assert { :sourceloc "Login.java",18,-1,-1,-1 } true;
    $return := 0;
    goto block10;
  block9:
    assert { :sourceloc "Login.java",12,-1,-1,-1 } true;
    i4 := i4 + 1;
    assert { :sourceloc "Login.java",12,-1,-1,-1 } true;
    goto block6;
  block7:
    assert { :sourceloc "Login.java",22,-1,-1,-1 } true;
    $return := 1;
    goto block10;
  block10:
    return;
}


implementation Login$retrieve$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r0 : ref;    
var $fakelocal_1 : ref;    
var $fakelocal_4 : ref;    
var $fakelocal_3 : ref;    
var r1 : ref;    
var $fakelocal_2 : ref;    
var $r2 : ref;    
var $fakelocal_0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "Login.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Login.java",53,-1,-1,-1 } true;
    call $fakelocal_0 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_0 := 4];
    $r2 := $fakelocal_0;
    assert { :sourceloc "Login.java",53,-1,-1,-1 } true;
    if (0 < $arrSizeHeap[$r2] && 0 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
    $intArrHeap := $intArrHeap[$r2 := $intArrHeap[$r2][0 := 10]];
    assert { :sourceloc "Login.java",53,-1,-1,-1 } true;
    if (1 < $arrSizeHeap[$r2] && 1 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    $intArrHeap := $intArrHeap[$r2 := $intArrHeap[$r2][1 := 3]];
    assert { :sourceloc "Login.java",53,-1,-1,-1 } true;
    if (2 < $arrSizeHeap[$r2] && 2 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_3;
        return;
    }
    $intArrHeap := $intArrHeap[$r2 := $intArrHeap[$r2][2 := 15]];
    assert { :sourceloc "Login.java",53,-1,-1,-1 } true;
    if (3 < $arrSizeHeap[$r2] && 3 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_4;
        return;
    }
    $intArrHeap := $intArrHeap[$r2 := $intArrHeap[$r2][3 := 1]];
    assert { :sourceloc "Login.java",53,-1,-1,-1 } true;
    r1 := $r2;
    assert { :sourceloc "Login.java",54,-1,-1,-1 } true;
    $return := r1;
    goto block11;
  block11:
    return;
}


implementation java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref){
    $exception := $null;
    return;
}


