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
const { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } unique com.acciente.oacc.Credentials : javaType extends  complete;
const { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } unique com.acciente.oacc.PasswordCredentials : javaType extends  unique java.lang.Object, com.acciente.oacc.Credentials complete;
const { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } unique com.acciente.oacc.PasswordCredentials$Impl : javaType extends  unique com.acciente.oacc.PasswordCredentials complete;
const { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  complete;
const { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } unique java.lang.reflect.AnnotatedElement : javaType extends  complete;
const { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } unique java.lang.reflect.GenericDeclaration : javaType extends  java.lang.reflect.AnnotatedElement complete;
const { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } unique java.lang.reflect.Type : javaType extends  complete;
const { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } unique java.lang.Class : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.reflect.GenericDeclaration, java.lang.reflect.Type, java.lang.reflect.AnnotatedElement complete;
const { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } unique java.lang.ClassCastException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } unique java.lang.NullPointerException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } unique java.lang.IndexOutOfBoundsException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } unique java.lang.ArrayIndexOutOfBoundsException : javaType extends  unique java.lang.IndexOutOfBoundsException complete;
const { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } unique java.util.Arrays : javaType extends  unique java.lang.Object complete;
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
var char$lp$$rp$$com.acciente.oacc.PasswordCredentials$Impl$password259 : Field ref;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures !old($heap[$obj,$alloc]);    ensures $objIndex == old($objIndex) + 1;    ensures $obj != $null;    ensures $heap == old($heap)[$obj,$alloc := true][$obj,$type := obj_type];    ensures $obj == $intToRef(old($objIndex));    modifies $objIndex, $heap;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);        ensures $other != $null;    ensures $heap[$other,$alloc] == true;    ensures $heap[$other,$type] == $heap[$this,$type];

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

procedure com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure com.acciente.oacc.PasswordCredentials$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure com.acciente.oacc.PasswordCredentials$Impl$getPassword$($this:ref) returns ($return:ref, $exception:ref);    

procedure com.acciente.oacc.PasswordCredentials$Impl$equals$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

procedure java.lang.Object$getClass$($this:ref) returns ($return:ref, $exception:ref);    

procedure com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

procedure com.acciente.oacc.PasswordCredentials$Impl$hashCode$($this:ref) returns ($return:int, $exception:ref);    

procedure java.util.Arrays$hashCode$char$lp$$rp$($in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure com.acciente.oacc.PasswordCredentials$newInstance$char$lp$$rp$($in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;
procedure java.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;

//procedure fakejava.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    
procedure java.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    

implementation com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var r0 : ref;    
var r1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } $heap[$this,$type] <: com.acciente.oacc.PasswordCredentials$Impl;
    assume { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "PasswordCredentials.java",45,-1,-1,-1 } true;
    call $exception := com.acciente.oacc.PasswordCredentials$$la$init$ra$$(r0);
    assert { :sourceloc "PasswordCredentials.java",46,-1,-1,-1 } true;
    $heap := $heap[r0,char$lp$$rp$$com.acciente.oacc.PasswordCredentials$Impl$password259 := r1];
    assert { :sourceloc "PasswordCredentials.java",47,-1,-1,-1 } true;
    goto block1;
  block1:
    return;
}


implementation com.acciente.oacc.PasswordCredentials$Impl$getPassword$($this:ref) returns ($return:ref, $exception:ref){
    
var $r1 : ref;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } $heap[$this,$type] <: com.acciente.oacc.PasswordCredentials$Impl;
    assume { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "PasswordCredentials.java",51,-1,-1,-1 } true;
    $r1 := $heap[r0,char$lp$$rp$$com.acciente.oacc.PasswordCredentials$Impl$password259];
    assert { :sourceloc "PasswordCredentials.java",51,-1,-1,-1 } true;
    $return := $r1;
    goto block2;
  block2:
    return;
}


implementation com.acciente.oacc.PasswordCredentials$Impl$equals$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var $z0 : int;    
var r1 : ref;    
var r0 : ref;    
var $r4 : ref;    
var $fakelocal_0 : ref;    
var $r6 : ref;    
var r2 : ref;    
var $r5 : ref;    
var $r3 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } $heap[$this,$type] <: com.acciente.oacc.PasswordCredentials$Impl;
    assume { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    $exception := $null;
    assert { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "PasswordCredentials.java",56,-1,-1,-1 } true;
    if (r0 != r1) {
        assert { :sourceloc "PasswordCredentials.java",56,-1,-1,-1 } { :comment "thenblock" } true;
        goto block3;
    } else {
        assert { :sourceloc "PasswordCredentials.java",56,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PasswordCredentials.java",57,-1,-1,-1 } true;
    $return := 1;
    goto block6;
  block3:
    assert { :sourceloc "PasswordCredentials.java",59,-1,-1,-1 } true;
    if (r1 == $null) {
        assert { :sourceloc "PasswordCredentials.java",59,-1,-1,-1 } { :comment "thenblock" } true;
        goto block4;
    } else {
        assert { :sourceloc "PasswordCredentials.java",59,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PasswordCredentials.java",60,-1,-1,-1 } true;
    call $r3, $exception := java.lang.Object$getClass$(r0);
    assert { :sourceloc "PasswordCredentials.java",60,-1,-1,-1 } true;
    call $r4, $exception := java.lang.Object$getClass$(r1);
    assert { :sourceloc "PasswordCredentials.java",60,-1,-1,-1 } true;
    if ($r3 == $r4) {
        assert { :sourceloc "PasswordCredentials.java",60,-1,-1,-1 } { :comment "thenblock" } true;
        goto block5;
    } else {
        assert { :sourceloc "PasswordCredentials.java",60,-1,-1,-1 } { :comment "elseblock" } true;
    }
  block4:
    assert { :sourceloc "PasswordCredentials.java",60,-1,-1,-1 } true;
    $return := 0;
    goto block6;
  block5:
    assert { :sourceloc "PasswordCredentials.java",63,-1,-1,-1 } true;
    if ($heap[r1,$type] <: com.acciente.oacc.PasswordCredentials$Impl) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    r2 := r1;
    assert { :sourceloc "PasswordCredentials.java",66,-1,-1,-1 } true;
    $r6 := $heap[r0,char$lp$$rp$$com.acciente.oacc.PasswordCredentials$Impl$password259];
    assert { :sourceloc "PasswordCredentials.java",66,-1,-1,-1 } true;
    $r5 := $heap[r2,char$lp$$rp$$com.acciente.oacc.PasswordCredentials$Impl$password259];
    assert { :sourceloc "PasswordCredentials.java",66,-1,-1,-1 } true;
    call $z0, $exception := com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$($r6, $r5);
    assert { :sourceloc "PasswordCredentials.java",66,-1,-1,-1 } true;
    $return := $z0;
    goto block6;
  block6:
    return;
}


implementation com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var $fakelocal_2 : ref;    
var i4 : int;    
var r1 : ref;    
var $i1 : int;    
var $fakelocal_0 : ref;    
var $fakelocal_3 : ref;    
var $c3 : int;    
var $c2 : int;    
var $fakelocal_1 : ref;    
var r0 : ref;    
var i0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "PasswordCredentials.java",71,-1,-1,-1 } true;
    if (r0 != r1) {
        assert { :sourceloc "PasswordCredentials.java",71,-1,-1,-1 } { :comment "thenblock" } true;
        goto block7;
    } else {
        assert { :sourceloc "PasswordCredentials.java",71,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PasswordCredentials.java",72,-1,-1,-1 } true;
    $return := 1;
    goto block14;
  block7:
    assert { :sourceloc "PasswordCredentials.java",73,-1,-1,-1 } true;
    if (r0 == $null) {
        assert { :sourceloc "PasswordCredentials.java",73,-1,-1,-1 } { :comment "thenblock" } true;
        goto block8;
    } else {
        assert { :sourceloc "PasswordCredentials.java",73,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PasswordCredentials.java",74,-1,-1,-1 } true;
    if (r1 != $null) {
        assert { :sourceloc "PasswordCredentials.java",74,-1,-1,-1 } { :comment "thenblock" } true;
        goto block9;
    } else {
        assert { :sourceloc "PasswordCredentials.java",74,-1,-1,-1 } { :comment "elseblock" } true;
    }
  block8:
    assert { :sourceloc "PasswordCredentials.java",74,-1,-1,-1 } true;
    $return := 0;
    goto block14;
  block9:
    assert { :sourceloc "PasswordCredentials.java",76,-1,-1,-1 } true;
    if (r0 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    i0 := $arrSizeHeap[r0];
    assert { :sourceloc "PasswordCredentials.java",77,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_1;
        return;
    }
    $i1 := $arrSizeHeap[r1];
    assert { :sourceloc "PasswordCredentials.java",77,-1,-1,-1 } true;
    if ($i1 == i0) {
        assert { :sourceloc "PasswordCredentials.java",77,-1,-1,-1 } { :comment "thenblock" } true;
        goto block10;
    } else {
        assert { :sourceloc "PasswordCredentials.java",77,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PasswordCredentials.java",78,-1,-1,-1 } true;
    $return := 0;
    goto block14;
  block10:
    assert { :sourceloc "PasswordCredentials.java",80,-1,-1,-1 } true;
    i4 := 0;
  block11:
    assert { :sourceloc "PasswordCredentials.java",80,-1,-1,-1 } true;
    if (i4 >= i0) {
        assert { :sourceloc "PasswordCredentials.java",80,-1,-1,-1 } { :comment "thenblock" } true;
        goto block12;
    } else {
        assert { :sourceloc "PasswordCredentials.java",80,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PasswordCredentials.java",81,-1,-1,-1 } true;
    if (i4 < $arrSizeHeap[r0] && i4 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_2;
        return;
    }
    $c3 := $intArrHeap[r0][i4];
    assert { :sourceloc "PasswordCredentials.java",81,-1,-1,-1 } true;
    if (i4 < $arrSizeHeap[r1] && i4 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_3;
        return;
    }
    $c2 := $intArrHeap[r1][i4];
    assert { :sourceloc "PasswordCredentials.java",81,-1,-1,-1 } true;
    if ($c3 == $c2) {
        assert { :sourceloc "PasswordCredentials.java",81,-1,-1,-1 } { :comment "thenblock" } true;
        goto block13;
    } else {
        assert { :sourceloc "PasswordCredentials.java",81,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "PasswordCredentials.java",82,-1,-1,-1 } true;
    $return := 0;
    goto block14;
  block13:
    assert { :sourceloc "PasswordCredentials.java",80,-1,-1,-1 } true;
    i4 := i4 + 1;
    assert { :sourceloc "PasswordCredentials.java",80,-1,-1,-1 } true;
    goto block11;
  block12:
    assert { :sourceloc "PasswordCredentials.java",84,-1,-1,-1 } true;
    $return := 1;
    goto block14;
  block14:
    return;
}


implementation com.acciente.oacc.PasswordCredentials$Impl$hashCode$($this:ref) returns ($return:int, $exception:ref){
    
var $i0 : int;    
var r0 : ref;    
var $r1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } $heap[$this,$type] <: com.acciente.oacc.PasswordCredentials$Impl;
    assume { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "PasswordCredentials.java",89,-1,-1,-1 } true;
    $r1 := $heap[r0,char$lp$$rp$$com.acciente.oacc.PasswordCredentials$Impl$password259];
    assert { :sourceloc "PasswordCredentials.java",89,-1,-1,-1 } true;
    call $i0, $exception := java.util.Arrays$hashCode$char$lp$$rp$($r1);
    assert { :sourceloc "PasswordCredentials.java",89,-1,-1,-1 } true;
    $return := $i0;
    goto block15;
  block15:
    return;
}


implementation com.acciente.oacc.PasswordCredentials$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } $heap[$this,$type] <: com.acciente.oacc.PasswordCredentials;
    assume { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "PasswordCredentials.java",30,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "PasswordCredentials.java",30,-1,-1,-1 } true;
    goto block16;
  block16:
    return;
}


implementation com.acciente.oacc.PasswordCredentials$newInstance$char$lp$$rp$($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $r1 : ref;    
var r0 : ref;    
var $fakelocal_0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$return,$type] <: com.acciente.oacc.PasswordCredentials;
    $exception := $null;
    assert { :sourceloc "PasswordCredentials.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "PasswordCredentials.java",39,-1,-1,-1 } true;
    call $fakelocal_0 := $new(com.acciente.oacc.PasswordCredentials$Impl);
    $r1 := $fakelocal_0;
    assert { :sourceloc "PasswordCredentials.java",39,-1,-1,-1 } true;
    call $exception := com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$($r1, r0);
    assert { :sourceloc "PasswordCredentials.java",39,-1,-1,-1 } true;
    $return := $r1;
    goto block17;
  block17:
    return;
}


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
    goto block18;
  block18:
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
    goto block19;
  block19:
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
    goto block20;
  block20:
    return;
}


implementation java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref){
    $exception := $null;
    return;
}


