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
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
//const { :sourceloc "String.java",-1,-1,-1,-1 } unique fakejava.lang.String : javaType extends  unique java.lang.Object complete;
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Object complete;
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  complete;
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.lang.IndexOutOfBoundsException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.lang.ArrayIndexOutOfBoundsException : javaType extends  unique java.lang.IndexOutOfBoundsException complete;
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.lang.NullPointerException : javaType extends  unique java.lang.RuntimeException complete;
//const { :sourceloc "Boolean.java",-1,-1,-1,-1 } unique fakejava.lang.Boolean : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Boolean.java",-1,-1,-1,-1 } unique java.lang.Boolean : javaType extends  unique java.lang.Object complete;
const { :sourceloc "UsernamePasswordLoginModule.java",-1,-1,-1,-1 } unique UsernamePasswordLoginModule : javaType extends  unique java.lang.Object complete;
const { :sourceloc "UsernamePasswordLoginModule.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  complete;
const { :sourceloc "UsernamePasswordLoginModule.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  complete;
//const { :sourceloc "UsernamePasswordLoginModule.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Comparable, java.lang.CharSequence complete;
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
//var char$lp$$rp$$fakejava.lang.String$chars259 : Field ref;
var char$lp$$rp$$java.lang.String$chars259 : Field ref;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $obj != $null;    ensures !old($heap[$obj,$alloc]);    ensures $heap == old($heap)[$obj,$alloc := true][$obj,$type := obj_type];    ensures $obj == $intToRef(old($objIndex));    ensures $objIndex == old($objIndex) + 1;    modifies $objIndex, $heap;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $heap[$other,$type] == $heap[$this,$type];        ensures $heap[$other,$alloc] == true;    ensures $other != $null;

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

//procedure fakejava.lang.String$$la$init$ra$$($this:ref) returns ($exception:ref);    
procedure java.lang.String$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref);    

//procedure fakejava.lang.String$charAt$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.String$charAt$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.String$toCharArray$($this:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;
procedure java.lang.String$toCharArray$($this:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;

//procedure fakejava.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;
procedure java.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;

//procedure fakejava.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    
procedure java.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    

procedure UsernamePasswordLoginModule$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure UsernamePasswordLoginModule$validatePassword_unsafe$java.lang.String_java.lang.String($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

procedure UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

//procedure java.lang.String$toCharArray$($this:ref) returns ($return:ref, $exception:ref);    

//implementation fakejava.lang.String$$la$init$ra$$($this:ref) returns ($exception:ref){
implementation java.lang.String$$la$init$ra$$($this:ref) returns ($exception:ref){
    
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
    assert { :sourceloc "String.java",3,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "String.java",3,-1,-1,-1 } true;
    goto block1;
  block1:
    return;
}


//implementation fakejava.lang.String$charAt$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref){
implementation java.lang.String$charAt$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref){
    
var $r1 : ref;    
var $c1 : int;    
var i0 : int;    
var $fakelocal_0 : ref;    
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
    assert { :sourceloc "String.java",7,-1,-1,-1 } true;
//    $r1 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars259];
    $r1 := $heap[r0,char$lp$$rp$$java.lang.String$chars259];
    assert { :sourceloc "String.java",7,-1,-1,-1 } true;
    if (i0 < $arrSizeHeap[$r1] && i0 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    $c1 := $intArrHeap[$r1][i0];
    assert { :sourceloc "String.java",7,-1,-1,-1 } true;
    $return := $c1;
    goto block2;
  block2:
    return;
}


//implementation fakejava.lang.String$toCharArray$($this:ref) returns ($return:ref, $exception:ref){
implementation java.lang.String$toCharArray$($this:ref) returns ($return:ref, $exception:ref){
    
var $i1 : int;    
var i3 : int;    
var r1 : ref;    
var $i0 : int;    
var $fakelocal_0 : ref;    
var $fakelocal_4 : ref;    
var $c2 : int;    
var $r3 : ref;    
var $fakelocal_2 : ref;    
var $r2 : ref;    
var $r4 : ref;    
var $fakelocal_1 : ref;    
var r0 : ref;    
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
    assert { :sourceloc "String.java",11,-1,-1,-1 } true;
//    $r2 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars259];
    $r2 := $heap[r0,char$lp$$rp$$java.lang.String$chars259];
    assert { :sourceloc "String.java",11,-1,-1,-1 } true;
    if ($r2 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.NullPointerException);
        $return := $null;
        $exception := $fakelocal_0;
        return;
    }
    $i0 := $arrSizeHeap[$r2];
    assert { :sourceloc "String.java",11,-1,-1,-1 } true;
    call $fakelocal_1 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := $i0];
    r1 := $fakelocal_1;
    assert { :sourceloc "String.java",12,-1,-1,-1 } true;
    i3 := 0;
  block3:
    assert { :sourceloc "String.java",12,-1,-1,-1 } true;
//    $r3 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars259];
    $r3 := $heap[r0,char$lp$$rp$$java.lang.String$chars259];
    assert { :sourceloc "String.java",12,-1,-1,-1 } true;
    if ($r3 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.NullPointerException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    $i1 := $arrSizeHeap[$r3];
    assert { :sourceloc "String.java",12,-1,-1,-1 } true;
    if (i3 >= $i1) {
        assert { :sourceloc "String.java",12,-1,-1,-1 } { :comment "thenblock" } true;
        goto block4;
    } else {
        assert { :sourceloc "String.java",12,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "String.java",13,-1,-1,-1 } true;
//    $r4 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars259];
    $r4 := $heap[r0,char$lp$$rp$$java.lang.String$chars259];
    assert { :sourceloc "String.java",13,-1,-1,-1 } true;
    if (i3 < $arrSizeHeap[$r4] && i3 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_3;
        return;
    }
    $c2 := $intArrHeap[$r4][i3];
    assert { :sourceloc "String.java",13,-1,-1,-1 } true;
    if (i3 < $arrSizeHeap[r1] && i3 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_4;
        return;
    }
    $intArrHeap := $intArrHeap[r1 := $intArrHeap[r1][i3 := $c2]];
    assert { :sourceloc "String.java",12,-1,-1,-1 } true;
    i3 := i3 + 1;
    assert { :sourceloc "String.java",12,-1,-1,-1 } true;
    goto block3;
  block4:
    assert { :sourceloc "String.java",15,-1,-1,-1 } true;
    $return := r1;
    goto block5;
  block5:
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
    goto block6;
  block6:
    return;
}


//implementation fakejava.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref){
implementation java.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref){
    
var $r0 : ref;    
var $fakelocal_0 : ref;    
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
    goto block7;
  block7:
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
    goto block8;
  block8:
    return;
}


implementation UsernamePasswordLoginModule$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "UsernamePasswordLoginModule.java",-1,-1,-1,-1 } $heap[$this,$type] <: UsernamePasswordLoginModule;
    assume { :sourceloc "UsernamePasswordLoginModule.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "UsernamePasswordLoginModule.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "UsernamePasswordLoginModule.java",59,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "UsernamePasswordLoginModule.java",59,-1,-1,-1 } true;
    goto block9;
  block9:
    return;
}


implementation UsernamePasswordLoginModule$validatePassword_unsafe$java.lang.String_java.lang.String($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var z1 : int;    
var r1 : ref;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1,$type] <: java.lang.String;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "UsernamePasswordLoginModule.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "UsernamePasswordLoginModule.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "UsernamePasswordLoginModule.java",82,-1,-1,-1 } true;
    if (r0 == $null) {
        assert { :sourceloc "UsernamePasswordLoginModule.java",82,-1,-1,-1 } { :comment "thenblock" } true;
        goto block10;
    } else {
        assert { :sourceloc "UsernamePasswordLoginModule.java",82,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "UsernamePasswordLoginModule.java",83,-1,-1,-1 } true;
    if (r1 != $null) {
        assert { :sourceloc "UsernamePasswordLoginModule.java",83,-1,-1,-1 } { :comment "thenblock" } true;
        goto block11;
    } else {
        assert { :sourceloc "UsernamePasswordLoginModule.java",83,-1,-1,-1 } { :comment "elseblock" } true;
    }
  block10:
    assert { :sourceloc "UsernamePasswordLoginModule.java",83,-1,-1,-1 } true;
    $return := 0;
    goto block12;
  block11:
    assert { :sourceloc "UsernamePasswordLoginModule.java",89,-1,-1,-1 } true;
    call z1, $exception := UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String(r0, r1);
    assert { :sourceloc "UsernamePasswordLoginModule.java",90,-1,-1,-1 } true;
    $return := z1;
    goto block12;
  block12:
    return;
}


implementation UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var $i0 : int;    
var r3 : ref;    
var i8 : int;    
var $c5 : int;    
var $i2 : int;    
var r0 : ref;    
var $fakelocal_0 : ref;    
var r1 : ref;    
var $c4 : int;    
var $i1 : int;    
var i6 : int;    
var $fakelocal_1 : ref;    
var i7 : int;    
var r2 : ref;    
var $i3 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    assume $heap[$in_parameter__1,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "UsernamePasswordLoginModule.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "UsernamePasswordLoginModule.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "UsernamePasswordLoginModule.java",117,-1,-1,-1 } true;
    if (r0 != r1) {
        assert { :sourceloc "UsernamePasswordLoginModule.java",117,-1,-1,-1 } { :comment "thenblock" } true;
        goto block13;
    } else {
        assert { :sourceloc "UsernamePasswordLoginModule.java",117,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "UsernamePasswordLoginModule.java",126,-1,-1,-1 } true;
    $return := 1;
    goto block17;
  block13:
    assert { :sourceloc "UsernamePasswordLoginModule.java",118,-1,-1,-1 } true;
    i6 := $stringSizeHeap[r0];
    assert { :sourceloc "UsernamePasswordLoginModule.java",119,-1,-1,-1 } true;
    $i0 := $stringSizeHeap[r1];
    assert { :sourceloc "UsernamePasswordLoginModule.java",119,-1,-1,-1 } true;
    if (i6 != $i0) {
        assert { :sourceloc "UsernamePasswordLoginModule.java",119,-1,-1,-1 } { :comment "thenblock" } true;
        goto block14;
    } else {
        assert { :sourceloc "UsernamePasswordLoginModule.java",119,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "UsernamePasswordLoginModule.java",120,-1,-1,-1 } true;
    call r2, $exception := java.lang.String$toCharArray$(r0);
    assert { :sourceloc "UsernamePasswordLoginModule.java",121,-1,-1,-1 } true;
    call r3, $exception := java.lang.String$toCharArray$(r1);
    assert { :sourceloc "UsernamePasswordLoginModule.java",122,-1,-1,-1 } true;
    i7 := 0;
    assert { :sourceloc "UsernamePasswordLoginModule.java",123,-1,-1,-1 } true;
    i8 := 0;
  block15:
    assert { :sourceloc "UsernamePasswordLoginModule.java",124,-1,-1,-1 } true;
    $i1 := i6;
    assert { :sourceloc "UsernamePasswordLoginModule.java",124,-1,-1,-1 } true;
    i6 := i6 + -1;
    assert { :sourceloc "UsernamePasswordLoginModule.java",124,-1,-1,-1 } true;
    if ($i1 == 0) {
        assert { :sourceloc "UsernamePasswordLoginModule.java",124,-1,-1,-1 } { :comment "thenblock" } true;
        goto block16;
    } else {
        assert { :sourceloc "UsernamePasswordLoginModule.java",124,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "UsernamePasswordLoginModule.java",125,-1,-1,-1 } true;
    $i2 := i7;
    assert { :sourceloc "UsernamePasswordLoginModule.java",125,-1,-1,-1 } true;
    i7 := i7 + 1;
    assert { :sourceloc "UsernamePasswordLoginModule.java",125,-1,-1,-1 } true;
    if ($i2 < $arrSizeHeap[r2] && $i2 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    $c5 := $intArrHeap[r2][$i2];
    assert { :sourceloc "UsernamePasswordLoginModule.java",125,-1,-1,-1 } true;
    $i3 := i8;
    assert { :sourceloc "UsernamePasswordLoginModule.java",125,-1,-1,-1 } true;
    i8 := i8 + 1;
    assert { :sourceloc "UsernamePasswordLoginModule.java",125,-1,-1,-1 } true;
    if ($i3 < $arrSizeHeap[r3] && $i3 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_1;
        return;
    }
    $c4 := $intArrHeap[r3][$i3];
    assert { :sourceloc "UsernamePasswordLoginModule.java",125,-1,-1,-1 } true;
    if ($c5 == $c4) {
        assert { :sourceloc "UsernamePasswordLoginModule.java",125,-1,-1,-1 } { :comment "thenblock" } true;
        goto block15;
    } else {
        assert { :sourceloc "UsernamePasswordLoginModule.java",125,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "UsernamePasswordLoginModule.java",126,-1,-1,-1 } true;
    $return := 0;
    goto block17;
  block16:
    assert { :sourceloc "UsernamePasswordLoginModule.java",128,-1,-1,-1 } true;
    $return := 1;
    goto block17;
  block14:
    assert { :sourceloc "UsernamePasswordLoginModule.java",130,-1,-1,-1 } true;
    $return := 0;
    goto block17;
  block17:
    return;
}


implementation java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref){
    $exception := $null;
    return;
}


