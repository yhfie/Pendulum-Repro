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
const { :sourceloc "PWCheck.java",-1,-1,-1,-1 } unique PWCheck : javaType extends  unique java.lang.Object complete;
const { :sourceloc "PWCheck.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  complete;
const { :sourceloc "PWCheck.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "PWCheck.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "PWCheck.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "PWCheck.java",-1,-1,-1,-1 } unique java.lang.NullPointerException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "PWCheck.java",-1,-1,-1,-1 } unique java.lang.IndexOutOfBoundsException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "PWCheck.java",-1,-1,-1,-1 } unique java.lang.ArrayIndexOutOfBoundsException : javaType extends  unique java.lang.IndexOutOfBoundsException complete;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $obj != $null;    ensures $objIndex == old($objIndex) + 1;    modifies $objIndex, $heap;    ensures !old($heap[$obj,$alloc]);    ensures $obj == $intToRef(old($objIndex));    ensures $heap == old($heap)[$obj,$alloc := true][$obj,$type := obj_type];

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $other != $null;    ensures $heap[$other,$alloc] == true;    ensures $heap[$other,$type] == $heap[$this,$type];    

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

//procedure fakejava.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;
procedure java.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;

procedure java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref);    

//procedure fakejava.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    
procedure java.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    

procedure PWCheck$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

procedure PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

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
    goto block3;
  block3:
    return;
}


implementation PWCheck$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "PWCheck.java",-1,-1,-1,-1 } $heap[$this,$type] <: PWCheck;
    assume { :sourceloc "PWCheck.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "PWCheck.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "PWCheck.java",1,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "PWCheck.java",1,-1,-1,-1 } true;
    goto block4;
  block4:
    return;
}


implementation PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var $b4 : int;    
var $i0 : int;    
var $b3 : int;    
var $i1 : int;    
var $fakelocal_3 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_1 : ref;    
var r1 : ref;    
var $i2 : int;    
var i5 : int;    
var r0 : ref;    
var $fakelocal_4 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "PWCheck.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "PWCheck.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "PWCheck.java",3,-1,-1,-1 } true;
    if (r0 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    $i1 := $arrSizeHeap[r0];
    assert { :sourceloc "PWCheck.java",3,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_1;
        return;
    }
    $i0 := $arrSizeHeap[r1];
    assert { :sourceloc "PWCheck.java",3,-1,-1,-1 } true;
    if ($i1 == $i0) {
        assert { :sourceloc "PWCheck.java",3,-1,-1,-1 } { :comment "thenblock" } true;
        goto block5;
    } else {
        assert { :sourceloc "PWCheck.java",3,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PWCheck.java",4,-1,-1,-1 } true;
    $return := 0;
    goto block9;
  block5:
    assert { :sourceloc "PWCheck.java",9,-1,-1,-1 } true;
    i5 := 0;
  block6:
    assert { :sourceloc "PWCheck.java",9,-1,-1,-1 } true;
    if (r0 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_2;
        return;
    }
    $i2 := $arrSizeHeap[r0];
    assert { :sourceloc "PWCheck.java",9,-1,-1,-1 } true;
    if (i5 >= $i2) {
        assert { :sourceloc "PWCheck.java",9,-1,-1,-1 } { :comment "thenblock" } true;
        goto block7;
    } else {
        assert { :sourceloc "PWCheck.java",9,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PWCheck.java",10,-1,-1,-1 } true;
    if (i5 < $arrSizeHeap[r0] && i5 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_3;
        return;
    }
    $b4 := $intArrHeap[r0][i5];
    assert { :sourceloc "PWCheck.java",10,-1,-1,-1 } true;
    if (i5 < $arrSizeHeap[r1] && i5 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_4;
        return;
    }
    $b3 := $intArrHeap[r1][i5];
    assert { :sourceloc "PWCheck.java",10,-1,-1,-1 } true;
    if ($b4 == $b3) {
        assert { :sourceloc "PWCheck.java",10,-1,-1,-1 } { :comment "thenblock" } true;
        goto block8;
    } else {
        assert { :sourceloc "PWCheck.java",10,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PWCheck.java",11,-1,-1,-1 } true;
    $return := 0;
    goto block9;
  block8:
    assert { :sourceloc "PWCheck.java",9,-1,-1,-1 } true;
    i5 := i5 + 1;
    assert { :sourceloc "PWCheck.java",9,-1,-1,-1 } true;
    goto block6;
  block7:
    assert { :sourceloc "PWCheck.java",15,-1,-1,-1 } true;
    $return := 1;
    goto block9;
  block9:
    return;
}


implementation PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var $i2 : int;    
var $b5 : int;    
var $i0 : int;    
var $fakelocal_3 : ref;    
var $i1 : int;    
var $fakelocal_2 : ref;    
var $fakelocal_0 : ref;    
var $b4 : int;    
var $fakelocal_4 : ref;    
var r1 : ref;    
var $fakelocal_5 : ref;    
var $i3 : int;    
var i6 : int;    
var z0 : int;    
var r0 : ref;    
var $fakelocal_1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "PWCheck.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "PWCheck.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "PWCheck.java",20,-1,-1,-1 } true;
    if (r0 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    $i1 := $arrSizeHeap[r0];
    assert { :sourceloc "PWCheck.java",20,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_1;
        return;
    }
    $i0 := $arrSizeHeap[r1];
    assert { :sourceloc "PWCheck.java",20,-1,-1,-1 } true;
    if ($i1 == $i0) {
        assert { :sourceloc "PWCheck.java",20,-1,-1,-1 } { :comment "thenblock" } true;
        goto block10;
    } else {
        assert { :sourceloc "PWCheck.java",20,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PWCheck.java",21,-1,-1,-1 } true;
    $return := 0;
    goto block15;
  block10:
    assert { :sourceloc "PWCheck.java",26,-1,-1,-1 } true;
    z0 := 1;
    assert { :sourceloc "PWCheck.java",27,-1,-1,-1 } true;
    i6 := 0;
  block11:
    assert { :sourceloc "PWCheck.java",27,-1,-1,-1 } true;
    if (r0 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_2;
        return;
    }
    $i2 := $arrSizeHeap[r0];
    assert { :sourceloc "PWCheck.java",27,-1,-1,-1 } true;
    if (i6 >= $i2) {
        assert { :sourceloc "PWCheck.java",27,-1,-1,-1 } { :comment "thenblock" } true;
        goto block12;
    } else {
        assert { :sourceloc "PWCheck.java",27,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PWCheck.java",28,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_3;
        return;
    }
    $i3 := $arrSizeHeap[r1];
    assert { :sourceloc "PWCheck.java",28,-1,-1,-1 } true;
    if (i6 >= $i3) {
        assert { :sourceloc "PWCheck.java",28,-1,-1,-1 } { :comment "thenblock" } true;
        goto block13;
    } else {
        assert { :sourceloc "PWCheck.java",28,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PWCheck.java",29,-1,-1,-1 } true;
    if (i6 < $arrSizeHeap[r0] && i6 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_4;
        return;
    }
    $b5 := $intArrHeap[r0][i6];
    assert { :sourceloc "PWCheck.java",29,-1,-1,-1 } true;
    if (i6 < $arrSizeHeap[r1] && i6 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_5;
        return;
    }
    $b4 := $intArrHeap[r1][i6];
    assert { :sourceloc "PWCheck.java",29,-1,-1,-1 } true;
    if ($b5 == $b4) {
        assert { :sourceloc "PWCheck.java",29,-1,-1,-1 } { :comment "thenblock" } true;
        goto block14;
    } else {
        assert { :sourceloc "PWCheck.java",29,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PWCheck.java",30,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "PWCheck.java",30,-1,-1,-1 } true;
    goto block13;
  block14:
    assert { :sourceloc "PWCheck.java",32,-1,-1,-1 } true;
    goto block13;
  block13:
    assert { :sourceloc "PWCheck.java",27,-1,-1,-1 } true;
    i6 := i6 + 1;
    assert { :sourceloc "PWCheck.java",27,-1,-1,-1 } true;
    goto block11;
  block12:
    assert { :sourceloc "PWCheck.java",39,-1,-1,-1 } true;
    $return := z0;
    goto block15;
  block15:
    return;
}


implementation java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref){
    $exception := $null;
    return;
}


