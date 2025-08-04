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
const { :sourceloc "MessageDigest.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :sourceloc "MessageDigest.java",-1,-1,-1,-1 } unique java.security.MessageDigestSpi : javaType extends  unique java.lang.Object complete;
const { :sourceloc "MessageDigest.java",-1,-1,-1,-1 } unique MessageDigest : javaType extends  unique java.security.MessageDigestSpi complete;
const { :sourceloc "MessageDigest.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  complete;
const { :sourceloc "MessageDigest.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "MessageDigest.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "MessageDigest.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "MessageDigest.java",-1,-1,-1,-1 } unique java.lang.NullPointerException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "MessageDigest.java",-1,-1,-1,-1 } unique java.lang.IndexOutOfBoundsException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "MessageDigest.java",-1,-1,-1,-1 } unique java.lang.ArrayIndexOutOfBoundsException : javaType extends  unique java.lang.IndexOutOfBoundsException complete;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $obj != $null;    ensures $heap == old($heap)[$obj,$alloc := true][$obj,$type := obj_type];    ensures !old($heap[$obj,$alloc]);    ensures $obj == $intToRef(old($objIndex));    modifies $objIndex, $heap;    ensures $objIndex == old($objIndex) + 1;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $other != $null;        ensures $heap[$other,$type] == $heap[$this,$type];    ensures $heap[$other,$alloc] == true;

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

procedure MessageDigest$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure java.security.MessageDigestSpi$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure MessageDigest$isEqual_unsafe$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;
procedure java.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;

procedure java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref);    

//procedure fakejava.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    
procedure java.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    

implementation MessageDigest$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "MessageDigest.java",-1,-1,-1,-1 } $heap[$this,$type] <: MessageDigest;
    assume { :sourceloc "MessageDigest.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "MessageDigest.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "MessageDigest.java",3,-1,-1,-1 } true;
    call $exception := java.security.MessageDigestSpi$$la$init$ra$$(r0);
    assert { :sourceloc "MessageDigest.java",3,-1,-1,-1 } true;
    goto block1;
  block1:
    return;
}


implementation MessageDigest$isEqual_unsafe$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var $b4 : int;    
var $fakelocal_3 : ref;    
var i5 : int;    
var $i1 : int;    
var $fakelocal_0 : ref;    
var r1 : ref;    
var $i0 : int;    
var $i2 : int;    
var $b3 : int;    
var $fakelocal_4 : ref;    
var r0 : ref;    
var $fakelocal_1 : ref;    
var $fakelocal_2 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "MessageDigest.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "MessageDigest.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "MessageDigest.java",14,-1,-1,-1 } true;
    if (r0 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    $i1 := $arrSizeHeap[r0];
    assert { :sourceloc "MessageDigest.java",14,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_1;
        return;
    }
    $i0 := $arrSizeHeap[r1];
    assert { :sourceloc "MessageDigest.java",14,-1,-1,-1 } true;
    if ($i1 == $i0) {
        assert { :sourceloc "MessageDigest.java",14,-1,-1,-1 } { :comment "thenblock" } true;
        goto block2;
    } else {
        assert { :sourceloc "MessageDigest.java",14,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "MessageDigest.java",15,-1,-1,-1 } true;
    $return := 0;
    goto block6;
  block2:
    assert { :sourceloc "MessageDigest.java",17,-1,-1,-1 } true;
    i5 := 0;
  block3:
    assert { :sourceloc "MessageDigest.java",17,-1,-1,-1 } true;
    if (r0 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_2;
        return;
    }
    $i2 := $arrSizeHeap[r0];
    assert { :sourceloc "MessageDigest.java",17,-1,-1,-1 } true;
    if (i5 >= $i2) {
        assert { :sourceloc "MessageDigest.java",17,-1,-1,-1 } { :comment "thenblock" } true;
        goto block4;
    } else {
        assert { :sourceloc "MessageDigest.java",17,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "MessageDigest.java",18,-1,-1,-1 } true;
    if (i5 < $arrSizeHeap[r0] && i5 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_3;
        return;
    }
    $b4 := $intArrHeap[r0][i5];
    assert { :sourceloc "MessageDigest.java",18,-1,-1,-1 } true;
    if (i5 < $arrSizeHeap[r1] && i5 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_4;
        return;
    }
    $b3 := $intArrHeap[r1][i5];
    assert { :sourceloc "MessageDigest.java",18,-1,-1,-1 } true;
    if ($b4 == $b3) {
        assert { :sourceloc "MessageDigest.java",18,-1,-1,-1 } { :comment "thenblock" } true;
        goto block5;
    } else {
        assert { :sourceloc "MessageDigest.java",18,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "MessageDigest.java",19,-1,-1,-1 } true;
    $return := 0;
    goto block6;
  block5:
    assert { :sourceloc "MessageDigest.java",17,-1,-1,-1 } true;
    i5 := i5 + 1;
    assert { :sourceloc "MessageDigest.java",17,-1,-1,-1 } true;
    goto block3;
  block4:
    assert { :sourceloc "MessageDigest.java",22,-1,-1,-1 } true;
    $return := 1;
    goto block6;
  block6:
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
    goto block7;
  block7:
    return;
}


//implementation fakejava.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref){
implementation java.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref){
    
var $fakelocal_0 : ref;    
var z0 : int;    
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
    goto block8;
  block8:
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
    goto block9;
  block9:
    return;
}


implementation java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref){
    $exception := $null;
    return;
}


