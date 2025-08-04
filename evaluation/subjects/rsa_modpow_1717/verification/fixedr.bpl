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
const { :sourceloc "Math.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
//const { :sourceloc "Math.java",-1,-1,-1,-1 } unique fakejava.lang.Math : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Math.java",-1,-1,-1,-1 } unique java.lang.Math : javaType extends  unique java.lang.Object complete;
const unique $DoubleConst0 : int extends  complete;
//const { :sourceloc "String.java",-1,-1,-1,-1 } unique fakejava.lang.String : javaType extends  unique java.lang.Object complete;
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Object complete;
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  complete;
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.lang.IndexOutOfBoundsException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.lang.ArrayIndexOutOfBoundsException : javaType extends  unique java.lang.IndexOutOfBoundsException complete;
//const { :sourceloc "Boolean.java",-1,-1,-1,-1 } unique fakejava.lang.Boolean : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Boolean.java",-1,-1,-1,-1 } unique java.lang.Boolean : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  complete;
//const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique fakejava.lang.Integer : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Comparable complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.lang.Integer : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Comparable complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.lang.NullPointerException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.lang.ClassCastException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "SimplifiedRSA.java",-1,-1,-1,-1 } unique modpow.SimplifiedRSA : javaType extends  unique java.lang.Object complete;
//const { :sourceloc "SimplifiedRSA.java",-1,-1,-1,-1 } unique java.lang.Math : javaType extends  unique java.lang.Object complete;
const unique $DoubleConst1 : int extends  complete;
const { :sourceloc "SimplifiedRSA.java",-1,-1,-1,-1 } unique sg.edu.nus.comp.tsunami.safe.Safe : javaType extends  unique java.lang.Object complete;
//const { :sourceloc "SimplifiedRSA.java",-1,-1,-1,-1 } unique java.lang.Boolean : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Comparable complete;
const { :sourceloc "SimplifiedRSA.java",-1,-1,-1,-1 } unique java.lang.ArithmeticException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "SimplifiedRSA.java",-1,-1,-1,-1 } unique java.lang.Number : javaType extends  unique java.lang.Object, java.io.Serializable complete;
//const { :sourceloc "SimplifiedRSA.java",-1,-1,-1,-1 } unique java.lang.Integer : javaType extends  unique java.lang.Number, java.lang.Comparable complete;
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
function $realOp32241(x:int, y:int) returns ($ret:int);
axiom (forall index : int :: $intToRef(index) != $null);
axiom (forall i1,i2 : int :: i1 == i2 <==> $intToRef(i1) == $intToRef(i2));
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $heap == old($heap)[$obj,$alloc := true][$obj,$type := obj_type];    ensures $obj != $null;    modifies $objIndex, $heap;    ensures !old($heap[$obj,$alloc]);    ensures $objIndex == old($objIndex) + 1;    ensures $obj == $intToRef(old($objIndex));

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $heap[$other,$alloc] == true;        ensures $heap[$other,$type] == $heap[$this,$type];    ensures $other != $null;

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

//procedure fakejava.lang.Math$$la$init$ra$$($this:ref) returns ($exception:ref);    
procedure java.lang.Math$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref);    

//procedure fakejava.lang.Math$min$int_int($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    
procedure java.lang.Math$min$int_int($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

//procedure fakejava.lang.Math$log$double($in_parameter__0:int) returns ($return:int, $exception:ref);    
procedure java.lang.Math$log$double($in_parameter__0:int) returns ($return:int, $exception:ref);    

//procedure fakejava.lang.String$$la$init$ra$$($this:ref) returns ($exception:ref);    
procedure java.lang.String$$la$init$ra$$($this:ref) returns ($exception:ref);    

//procedure fakejava.lang.String$charAt$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.String$charAt$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;
procedure java.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;

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

procedure modpow.SimplifiedRSA$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int($in_parameter__0:int, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:int) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

//procedure java.lang.Math$log$double($in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0:int) returns ($return:int, $exception:ref);    

//procedure java.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref);    

//procedure java.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

//procedure java.lang.Integer$valueOf$int($in_parameter__0:int) returns ($return:ref, $exception:ref);    

//procedure java.lang.Integer$intValue$($this:ref) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    

//implementation fakejava.lang.Math$$la$init$ra$$($this:ref) returns ($exception:ref){
implementation java.lang.Math$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "Math.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.Math;
    assume { :sourceloc "Math.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.Math;
    assume { :sourceloc "Math.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "Math.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "Math.java",3,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "Math.java",3,-1,-1,-1 } true;
    goto block1;
  block1:
    return;
}


//implementation fakejava.lang.Math$min$int_int($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
implementation java.lang.Math$min$int_int($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var i0 : int;    
var $i2 : int;    
var i1 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Math.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__0;
    assert { :sourceloc "Math.java",-1,-1,-1,-1 } true;
    i1 := $in_parameter__1;
    assert { :sourceloc "Math.java",5,-1,-1,-1 } true;
    if (i0 >= i1) {
        assert { :sourceloc "Math.java",5,-1,-1,-1 } { :comment "thenblock" } true;
        goto block2;
    } else {
        assert { :sourceloc "Math.java",5,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Math.java",5,-1,-1,-1 } true;
    $i2 := i0;
    assert { :sourceloc "Math.java",5,-1,-1,-1 } true;
    goto block3;
  block2:
    assert { :sourceloc "Math.java",5,-1,-1,-1 } true;
    $i2 := i1;
  block3:
    assert { :sourceloc "Math.java",5,-1,-1,-1 } true;
    $return := $i2;
    goto block4;
  block4:
    return;
}


//implementation fakejava.lang.Math$log$double($in_parameter__0:int) returns ($return:int, $exception:ref){
implementation java.lang.Math$log$double($in_parameter__0:int) returns ($return:int, $exception:ref){
    
var d0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Math.java",-1,-1,-1,-1 } true;
    d0 := $in_parameter__0;
    assert { :sourceloc "Math.java",10,-1,-1,-1 } true;
    $return := $DoubleConst0;
    goto block5;
  block5:
    return;
}


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
    goto block6;
  block6:
    return;
}


//implementation fakejava.lang.String$charAt$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref){
implementation java.lang.String$charAt$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref){
    
var $c1 : int;    
var $fakelocal_0 : ref;    
var r0 : ref;    
var $r1 : ref;    
var i0 : int;
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
    goto block7;
  block7:
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
    goto block8;
  block8:
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
    goto block9;
  block9:
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
    goto block10;
  block10:
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
    goto block11;
  block11:
    return;
}


//implementation fakejava.lang.Integer$valueOf$int($in_parameter__0:int) returns ($return:ref, $exception:ref){
implementation java.lang.Integer$valueOf$int($in_parameter__0:int) returns ($return:ref, $exception:ref){
    
var i0 : int;    
var $fakelocal_0 : ref;    
var $r0 : ref;
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
    goto block12;
  block12:
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
    goto block13;
  block13:
    return;
}


//implementation fakejava.lang.Integer$compareTo$fakejava.lang.Integer($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
implementation java.lang.Integer$compareTo$java.lang.Integer($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var $i1 : int;    
var r1 : ref;    
var $i0 : int;    
var $i2 : int;    
var $fakelocal_0 : ref;    
var $i3 : int;    
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
        goto block14;
    } else {
        assert { :sourceloc "Integer.java",22,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Integer.java",23,-1,-1,-1 } true;
    $return := 1;
    goto block16;
  block14:
    assert { :sourceloc "Integer.java",24,-1,-1,-1 } true;
//    $i3 := $heap[r0,int$fakejava.lang.Integer$value0];
    $i3 := $heap[r0,int$java.lang.Integer$value0];
    assert { :sourceloc "Integer.java",24,-1,-1,-1 } true;
//    $i2 := $heap[r1,int$fakejava.lang.Integer$value0];
    $i2 := $heap[r1,int$java.lang.Integer$value0];
    assert { :sourceloc "Integer.java",24,-1,-1,-1 } true;
    if ($i3 >= $i2) {
        assert { :sourceloc "Integer.java",24,-1,-1,-1 } { :comment "thenblock" } true;
        goto block15;
    } else {
        assert { :sourceloc "Integer.java",24,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Integer.java",25,-1,-1,-1 } true;
    $return := -1;
    goto block16;
  block15:
    assert { :sourceloc "Integer.java",27,-1,-1,-1 } true;
    $return := 0;
    goto block16;
  block16:
    return;
}


//implementation fakejava.lang.Integer$compareTo$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
implementation java.lang.Integer$compareTo$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var $r2 : ref;    
var $fakelocal_0 : ref;    
var r1 : ref;    
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
    goto block17;
  block17:
    return;
}


implementation modpow.SimplifiedRSA$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "SimplifiedRSA.java",-1,-1,-1,-1 } $heap[$this,$type] <: modpow.SimplifiedRSA;
    assume { :sourceloc "SimplifiedRSA.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "SimplifiedRSA.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "SimplifiedRSA.java",7,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "SimplifiedRSA.java",7,-1,-1,-1 } true;
    goto block18;
  block18:
    return;
}


implementation modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int($in_parameter__0:int, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:int) returns ($return:int, $exception:ref){
    
var $r19 : ref;    
var $l6 : int;    
var i2 : int;    
var i0 : int;    
var z1 : int;    
var i20 : int;    
var $r0 : ref;    
var $r7 : ref;    
var $fakelocal_14 : ref;    
var i17 : int;    
var $fakelocal_0 : ref;    
var $fakelocal_1 : ref;    
var i19 : int;    
var $fakelocal_15 : ref;    
var $fakelocal_9 : ref;    
var $fakelocal_10 : ref;    
var $r9 : ref;    
var i3 : int;    
var $r2 : ref;    
var $i12 : int;    
var z2 : int;    
var i24 : int;    
var $d1 : int;    
var $r14 : ref;    
var $i16 : int;    
var $r11 : ref;    
var $r1 : ref;    
var $fakelocal_6 : ref;    
var $d2 : int;    
var $fakelocal_4 : ref;    
var $fakelocal_7 : ref;    
var i1 : int;    
var $r18 : ref;    
var $l10 : int;    
var $r23 : ref;    
var i22 : int;    
var $i11 : int;    
var i21 : int;    
var $z3 : int;    
var $r20 : ref;    
var i23 : int;    
var $d3 : int;    
var $r24 : ref;    
var $fakelocal_3 : ref;    
var $i15 : int;    
var $r27 : ref;    
var $r31 : ref;    
var $i7 : int;    
var $fakelocal_2 : ref;    
var $r17 : ref;    
var $r29 : ref;    
var $r25 : ref;    
var $fakelocal_13 : ref;    
var $r30 : ref;    
var $fakelocal_12 : ref;    
var $r4 : ref;    
var $i14 : int;    
var $r3 : ref;    
var $r22 : ref;    
var $r5 : ref;    
var $r8 : ref;    
var $r13 : ref;    
var $r12 : ref;    
var $fakelocal_17 : ref;    
var $d0 : int;    
var $fakelocal_11 : ref;    
var z0 : int;    
var $r15 : ref;    
var $r26 : ref;    
var $fakelocal_16 : ref;    
var $l8 : int;    
var $r6 : ref;    
var $fakelocal_5 : ref;    
var $i5 : int;    
var i18 : int;    
var $fakelocal_8 : ref;    
var $i13 : int;    
var $r10 : ref;    
var $r16 : ref;    
var i4 : int;    
var $r21 : ref;    
var $r28 : ref;    
var z4 : int;    
var $l9 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "SimplifiedRSA.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__0;
    assert { :sourceloc "SimplifiedRSA.java",-1,-1,-1,-1 } true;
    i17 := $in_parameter__1;
    assert { :sourceloc "SimplifiedRSA.java",-1,-1,-1,-1 } true;
    i1 := $in_parameter__2;
    assert { :sourceloc "SimplifiedRSA.java",-1,-1,-1,-1 } true;
    i2 := $in_parameter__3;
    assert { :sourceloc "SimplifiedRSA.java",12,-1,-1,-1 } true;
    i18 := 1;
    assert { :sourceloc "SimplifiedRSA.java",13,-1,-1,-1 } true;
    i3 := i0;
    assert { :sourceloc "SimplifiedRSA.java",14,-1,-1,-1 } true;
    i19 := 0;
    assert { :sourceloc "SimplifiedRSA.java",16,-1,-1,-1 } true;
    $i5 := i2 + 1;
    assert { :sourceloc "SimplifiedRSA.java",16,-1,-1,-1 } true;
    $d0 := $i5;
    assert { :sourceloc "SimplifiedRSA.java",16,-1,-1,-1 } true;
    call $d1, $exception := java.lang.Math$log$double($d0);
    assert { :sourceloc "SimplifiedRSA.java",16,-1,-1,-1 } true;
    call $d2, $exception := java.lang.Math$log$double($DoubleConst1);
    assert { :sourceloc "SimplifiedRSA.java",16,-1,-1,-1 } true;
    $d3 := $realOp32241($d1, $d2);
    assert { :sourceloc "SimplifiedRSA.java",16,-1,-1,-1 } true;
    i4 := $d3;
    assert { :sourceloc "SimplifiedRSA.java",18,-1,-1,-1 } true;
    i20 := 0;
    assert { :sourceloc "SimplifiedRSA.java",19,-1,-1,-1 } true;
    i21 := 32;
    assert { :sourceloc "SimplifiedRSA.java",20,-1,-1,-1 } true;
    z4 := 0;
  block19:
    assert { :sourceloc "SimplifiedRSA.java",21,-1,-1,-1 } true;
    i21 := i21 + -1;
    assert { :sourceloc "SimplifiedRSA.java",21,-1,-1,-1 } true;
    if (i21 <= 0) {
        assert { :sourceloc "SimplifiedRSA.java",21,-1,-1,-1 } { :comment "thenblock" } true;
        goto block20;
    } else {
        assert { :sourceloc "SimplifiedRSA.java",21,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "SimplifiedRSA.java",22,-1,-1,-1 } true;
    $l6 := i17;
    assert { :sourceloc "SimplifiedRSA.java",22,-1,-1,-1 } true;
    call $z3, $exception := sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($l6, 0);
    assert { :sourceloc "SimplifiedRSA.java",22,-1,-1,-1 } true;
    call z0, $exception := sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($z3);
    assert { :sourceloc "SimplifiedRSA.java",24,-1,-1,-1 } true;
    call $r0, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert { :sourceloc "SimplifiedRSA.java",24,-1,-1,-1 } true;
    call $r1, $exception := java.lang.Boolean$valueOf$boolean(z4);
    assert { :sourceloc "SimplifiedRSA.java",24,-1,-1,-1 } true;
    call $r2, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r0, $r1);
    assert { :sourceloc "SimplifiedRSA.java",24,-1,-1,-1 } true;
    if ($heap[$r2,$type] <: java.lang.Boolean) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    $r3 := $r2;
    assert { :sourceloc "SimplifiedRSA.java",24,-1,-1,-1 } true;
    if ($r3 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_1;
        return;
    }
    call z4, $exception := java.lang.Boolean$booleanValue$($r3);
    assert { :sourceloc "SimplifiedRSA.java",26,-1,-1,-1 } true;
    if (2 != 0) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.ArithmeticException);
        $return := 0;
        $exception := $fakelocal_2;
        return;
    }
    $i7 := $modInt(i17, 2);
    assert { :sourceloc "SimplifiedRSA.java",26,-1,-1,-1 } true;
    $l8 := $i7;
    assert { :sourceloc "SimplifiedRSA.java",26,-1,-1,-1 } true;
    call z1, $exception := sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($l8, 1);
    assert { :sourceloc "SimplifiedRSA.java",28,-1,-1,-1 } true;
    i22 := $mulInt(i18, i3);
    assert { :sourceloc "SimplifiedRSA.java",31,-1,-1,-1 } true;
    $l10 := i22;
    assert { :sourceloc "SimplifiedRSA.java",31,-1,-1,-1 } true;
    $l9 := i1;
    assert { :sourceloc "SimplifiedRSA.java",31,-1,-1,-1 } true;
    call z2, $exception := sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($l10, $l9);
    assert { :sourceloc "SimplifiedRSA.java",34,-1,-1,-1 } true;
    $i11 := i22 - i1;
    assert { :sourceloc "SimplifiedRSA.java",34,-1,-1,-1 } true;
    call $r4, $exception := java.lang.Integer$valueOf$int($i11);
    assert { :sourceloc "SimplifiedRSA.java",34,-1,-1,-1 } true;
    call $r5, $exception := java.lang.Integer$valueOf$int(i22);
    assert { :sourceloc "SimplifiedRSA.java",34,-1,-1,-1 } true;
    call $r6, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z2, $r4, $r5);
    assert { :sourceloc "SimplifiedRSA.java",34,-1,-1,-1 } true;
    if ($heap[$r6,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_3;
        return;
    }
    $r7 := $r6;
    assert { :sourceloc "SimplifiedRSA.java",34,-1,-1,-1 } true;
    if ($r7 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_4;
        return;
    }
    call i23, $exception := java.lang.Integer$intValue$($r7);
    assert { :sourceloc "SimplifiedRSA.java",36,-1,-1,-1 } true;
    call $r8, $exception := java.lang.Integer$valueOf$int(i19);
    assert { :sourceloc "SimplifiedRSA.java",36,-1,-1,-1 } true;
    if (i1 != 0) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.ArithmeticException);
        $return := 0;
        $exception := $fakelocal_5;
        return;
    }
    $i12 := $modInt(i23, i1);
    assert { :sourceloc "SimplifiedRSA.java",36,-1,-1,-1 } true;
    call $r9, $exception := java.lang.Integer$valueOf$int($i12);
    assert { :sourceloc "SimplifiedRSA.java",36,-1,-1,-1 } true;
    call $r10, $exception := java.lang.Integer$valueOf$int(i19);
    assert { :sourceloc "SimplifiedRSA.java",36,-1,-1,-1 } true;
    call $r11, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z1, $r9, $r10);
    assert { :sourceloc "SimplifiedRSA.java",36,-1,-1,-1 } true;
    call $r12, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z4, $r8, $r11);
    assert { :sourceloc "SimplifiedRSA.java",36,-1,-1,-1 } true;
    if ($heap[$r12,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_6 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_6;
        return;
    }
    $r13 := $r12;
    assert { :sourceloc "SimplifiedRSA.java",36,-1,-1,-1 } true;
    if ($r13 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_7 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_7;
        return;
    }
    call i24, $exception := java.lang.Integer$intValue$($r13);
    assert { :sourceloc "SimplifiedRSA.java",37,-1,-1,-1 } true;
    call $r14, $exception := java.lang.Integer$valueOf$int(i24);
    assert { :sourceloc "SimplifiedRSA.java",37,-1,-1,-1 } true;
    call $r15, $exception := java.lang.Integer$valueOf$int(i24);
    assert { :sourceloc "SimplifiedRSA.java",37,-1,-1,-1 } true;
    call $r16, $exception := java.lang.Integer$valueOf$int(i18);
    assert { :sourceloc "SimplifiedRSA.java",37,-1,-1,-1 } true;
    call $r17, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z1, $r15, $r16);
    assert { :sourceloc "SimplifiedRSA.java",37,-1,-1,-1 } true;
    call $r18, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z4, $r14, $r17);
    assert { :sourceloc "SimplifiedRSA.java",37,-1,-1,-1 } true;
    if ($heap[$r18,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_8 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_8;
        return;
    }
    $r19 := $r18;
    assert { :sourceloc "SimplifiedRSA.java",37,-1,-1,-1 } true;
    if ($r19 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_9 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_9;
        return;
    }
    call i19, $exception := java.lang.Integer$intValue$($r19);
    assert { :sourceloc "SimplifiedRSA.java",39,-1,-1,-1 } true;
    call $r20, $exception := java.lang.Integer$valueOf$int(i18);
    assert { :sourceloc "SimplifiedRSA.java",39,-1,-1,-1 } true;
    $i13 := $mulInt(i19, i19);
    assert { :sourceloc "SimplifiedRSA.java",39,-1,-1,-1 } true;
    if (i1 != 0) {
        $exception := $exception;
    } else {
        call $fakelocal_10 := $new(java.lang.ArithmeticException);
        $return := 0;
        $exception := $fakelocal_10;
        return;
    }
    $i14 := $modInt($i13, i1);
    assert { :sourceloc "SimplifiedRSA.java",39,-1,-1,-1 } true;
    call $r21, $exception := java.lang.Integer$valueOf$int($i14);
    assert { :sourceloc "SimplifiedRSA.java",39,-1,-1,-1 } true;
    call $r22, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z4, $r20, $r21);
    assert { :sourceloc "SimplifiedRSA.java",39,-1,-1,-1 } true;
    if ($heap[$r22,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_11 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_11;
        return;
    }
    $r23 := $r22;
    assert { :sourceloc "SimplifiedRSA.java",39,-1,-1,-1 } true;
    if ($r23 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_12 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_12;
        return;
    }
    call i18, $exception := java.lang.Integer$intValue$($r23);
    assert { :sourceloc "SimplifiedRSA.java",40,-1,-1,-1 } true;
    call $r24, $exception := java.lang.Integer$valueOf$int(i17);
    assert { :sourceloc "SimplifiedRSA.java",40,-1,-1,-1 } true;
    if (2 != 0) {
        $exception := $exception;
    } else {
        call $fakelocal_13 := $new(java.lang.ArithmeticException);
        $return := 0;
        $exception := $fakelocal_13;
        return;
    }
    $i15 := $divInt(i17, 2);
    assert { :sourceloc "SimplifiedRSA.java",40,-1,-1,-1 } true;
    call $r25, $exception := java.lang.Integer$valueOf$int($i15);
    assert { :sourceloc "SimplifiedRSA.java",40,-1,-1,-1 } true;
    call $r26, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z4, $r24, $r25);
    assert { :sourceloc "SimplifiedRSA.java",40,-1,-1,-1 } true;
    if ($heap[$r26,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_14 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_14;
        return;
    }
    $r27 := $r26;
    assert { :sourceloc "SimplifiedRSA.java",40,-1,-1,-1 } true;
    if ($r27 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_15 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_15;
        return;
    }
    call i17, $exception := java.lang.Integer$intValue$($r27);
    assert { :sourceloc "SimplifiedRSA.java",41,-1,-1,-1 } true;
    call $r28, $exception := java.lang.Integer$valueOf$int(i20);
    assert { :sourceloc "SimplifiedRSA.java",41,-1,-1,-1 } true;
    $i16 := i20 + 1;
    assert { :sourceloc "SimplifiedRSA.java",41,-1,-1,-1 } true;
    call $r29, $exception := java.lang.Integer$valueOf$int($i16);
    assert { :sourceloc "SimplifiedRSA.java",41,-1,-1,-1 } true;
    call $r30, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z4, $r28, $r29);
    assert { :sourceloc "SimplifiedRSA.java",41,-1,-1,-1 } true;
    if ($heap[$r30,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_16 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_16;
        return;
    }
    $r31 := $r30;
    assert { :sourceloc "SimplifiedRSA.java",41,-1,-1,-1 } true;
    if ($r31 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_17 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_17;
        return;
    }
    call i20, $exception := java.lang.Integer$intValue$($r31);
    assert { :sourceloc "SimplifiedRSA.java",44,-1,-1,-1 } true;
    goto block19;
  block20:
    assert { :sourceloc "SimplifiedRSA.java",45,-1,-1,-1 } true;
    $return := i19;
    goto block21;
  block21:
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
    goto block22;
  block22:
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
        goto block23;
    } else {
        assert { :sourceloc "Safe.java",6,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",8,-1,-1,-1 } true;
    z1 := 0;
  block23:
    assert { :sourceloc "Safe.java",7,-1,-1,-1 } true;
    if (z0 != 0) {
        assert { :sourceloc "Safe.java",7,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block24;
    } else {
        assert { :sourceloc "Safe.java",7,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",8,-1,-1,-1 } true;
    z1 := 1;
  block24:
    assert { :sourceloc "Safe.java",8,-1,-1,-1 } true;
    $return := z1;
    goto block25;
  block25:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $z2 : int;    
var z0 : int;    
var z1 : int;
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
    goto block26;
  block26:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
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
    assert { :sourceloc "Safe.java",16,-1,-1,-1 } true;
    $z2 := $bitOr(z0, z1);
    assert { :sourceloc "Safe.java",16,-1,-1,-1 } true;
    $return := $z2;
    goto block27;
  block27:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var l0 : int;    
var $b3 : int;    
var z0 : int;    
var $b2 : int;    
var l1 : int;
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
        goto block28;
    } else {
        assert { :sourceloc "Safe.java",21,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",23,-1,-1,-1 } true;
    z0 := 1;
  block28:
    assert { :sourceloc "Safe.java",22,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",22,-1,-1,-1 } true;
    if ($b3 > 0) {
        assert { :sourceloc "Safe.java",22,-1,-1,-1 } { :comment "thenblock" } true;
        goto block29;
    } else {
        assert { :sourceloc "Safe.java",22,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",23,-1,-1,-1 } true;
    z0 := 0;
  block29:
    assert { :sourceloc "Safe.java",23,-1,-1,-1 } true;
    $return := z0;
    goto block30;
  block30:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var l0 : int;    
var $b2 : int;    
var $b3 : int;    
var l1 : int;    
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
        goto block31;
    } else {
        assert { :sourceloc "Safe.java",28,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",30,-1,-1,-1 } true;
    z0 := 1;
  block31:
    assert { :sourceloc "Safe.java",29,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",29,-1,-1,-1 } true;
    if ($b3 < 0) {
        assert { :sourceloc "Safe.java",29,-1,-1,-1 } { :comment "thenblock" } true;
        goto block32;
    } else {
        assert { :sourceloc "Safe.java",29,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",30,-1,-1,-1 } true;
    z0 := 0;
  block32:
    assert { :sourceloc "Safe.java",30,-1,-1,-1 } true;
    $return := z0;
    goto block33;
  block33:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b2 : int;    
var $b3 : int;    
var l0 : int;    
var l1 : int;    
var z0 : int;
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
        goto block34;
    } else {
        assert { :sourceloc "Safe.java",35,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",37,-1,-1,-1 } true;
    z0 := 1;
  block34:
    assert { :sourceloc "Safe.java",36,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",36,-1,-1,-1 } true;
    if ($b3 >= 0) {
        assert { :sourceloc "Safe.java",36,-1,-1,-1 } { :comment "thenblock" } true;
        goto block35;
    } else {
        assert { :sourceloc "Safe.java",36,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",37,-1,-1,-1 } true;
    z0 := 0;
  block35:
    assert { :sourceloc "Safe.java",37,-1,-1,-1 } true;
    $return := z0;
    goto block36;
  block36:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var l0 : int;    
var $b3 : int;    
var l1 : int;    
var z0 : int;    
var $b2 : int;
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
        goto block37;
    } else {
        assert { :sourceloc "Safe.java",42,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",44,-1,-1,-1 } true;
    z0 := 1;
  block37:
    assert { :sourceloc "Safe.java",43,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",43,-1,-1,-1 } true;
    if ($b3 <= 0) {
        assert { :sourceloc "Safe.java",43,-1,-1,-1 } { :comment "thenblock" } true;
        goto block38;
    } else {
        assert { :sourceloc "Safe.java",43,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",44,-1,-1,-1 } true;
    z0 := 0;
  block38:
    assert { :sourceloc "Safe.java",44,-1,-1,-1 } true;
    $return := z0;
    goto block39;
  block39:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var l0 : int;    
var $b3 : int;    
var z0 : int;    
var l1 : int;    
var $b2 : int;
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
        goto block40;
    } else {
        assert { :sourceloc "Safe.java",49,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",51,-1,-1,-1 } true;
    z0 := 1;
  block40:
    assert { :sourceloc "Safe.java",50,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",50,-1,-1,-1 } true;
    if ($b3 == 0) {
        assert { :sourceloc "Safe.java",50,-1,-1,-1 } { :comment "thenblock" } true;
        goto block41;
    } else {
        assert { :sourceloc "Safe.java",50,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",51,-1,-1,-1 } true;
    z0 := 0;
  block41:
    assert { :sourceloc "Safe.java",51,-1,-1,-1 } true;
    $return := z0;
    goto block42;
  block42:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var l1 : int;    
var z0 : int;    
var $b2 : int;    
var $b3 : int;    
var l0 : int;
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
        goto block43;
    } else {
        assert { :sourceloc "Safe.java",56,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",58,-1,-1,-1 } true;
    z0 := 1;
  block43:
    assert { :sourceloc "Safe.java",57,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",57,-1,-1,-1 } true;
    if ($b3 != 0) {
        assert { :sourceloc "Safe.java",57,-1,-1,-1 } { :comment "thenblock" } true;
        goto block44;
    } else {
        assert { :sourceloc "Safe.java",57,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",58,-1,-1,-1 } true;
    z0 := 0;
  block44:
    assert { :sourceloc "Safe.java",58,-1,-1,-1 } true;
    $return := z0;
    goto block45;
  block45:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b1 : int;    
var z0 : int;    
var $b0 : int;    
var d0 : int;    
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
        goto block46;
    } else {
        assert { :sourceloc "Safe.java",63,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",65,-1,-1,-1 } true;
    z0 := 1;
  block46:
    assert { :sourceloc "Safe.java",64,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",64,-1,-1,-1 } true;
    if ($b1 > 0) {
        assert { :sourceloc "Safe.java",64,-1,-1,-1 } { :comment "thenblock" } true;
        goto block47;
    } else {
        assert { :sourceloc "Safe.java",64,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",65,-1,-1,-1 } true;
    z0 := 0;
  block47:
    assert { :sourceloc "Safe.java",65,-1,-1,-1 } true;
    $return := z0;
    goto block48;
  block48:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b1 : int;    
var d1 : int;    
var z0 : int;    
var d0 : int;    
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
        goto block49;
    } else {
        assert { :sourceloc "Safe.java",70,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",72,-1,-1,-1 } true;
    z0 := 1;
  block49:
    assert { :sourceloc "Safe.java",71,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",71,-1,-1,-1 } true;
    if ($b1 < 0) {
        assert { :sourceloc "Safe.java",71,-1,-1,-1 } { :comment "thenblock" } true;
        goto block50;
    } else {
        assert { :sourceloc "Safe.java",71,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",72,-1,-1,-1 } true;
    z0 := 0;
  block50:
    assert { :sourceloc "Safe.java",72,-1,-1,-1 } true;
    $return := z0;
    goto block51;
  block51:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var d0 : int;    
var d1 : int;    
var z0 : int;    
var $b1 : int;    
var $b0 : int;
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
        goto block52;
    } else {
        assert { :sourceloc "Safe.java",77,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",79,-1,-1,-1 } true;
    z0 := 1;
  block52:
    assert { :sourceloc "Safe.java",78,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",78,-1,-1,-1 } true;
    if ($b1 >= 0) {
        assert { :sourceloc "Safe.java",78,-1,-1,-1 } { :comment "thenblock" } true;
        goto block53;
    } else {
        assert { :sourceloc "Safe.java",78,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",79,-1,-1,-1 } true;
    z0 := 0;
  block53:
    assert { :sourceloc "Safe.java",79,-1,-1,-1 } true;
    $return := z0;
    goto block54;
  block54:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b0 : int;    
var z0 : int;    
var d0 : int;    
var d1 : int;    
var $b1 : int;
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
        goto block55;
    } else {
        assert { :sourceloc "Safe.java",84,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",86,-1,-1,-1 } true;
    z0 := 1;
  block55:
    assert { :sourceloc "Safe.java",85,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",85,-1,-1,-1 } true;
    if ($b1 <= 0) {
        assert { :sourceloc "Safe.java",85,-1,-1,-1 } { :comment "thenblock" } true;
        goto block56;
    } else {
        assert { :sourceloc "Safe.java",85,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",86,-1,-1,-1 } true;
    z0 := 0;
  block56:
    assert { :sourceloc "Safe.java",86,-1,-1,-1 } true;
    $return := z0;
    goto block57;
  block57:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var d0 : int;    
var d1 : int;    
var $b1 : int;    
var $b0 : int;    
var z0 : int;
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
        goto block58;
    } else {
        assert { :sourceloc "Safe.java",91,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",93,-1,-1,-1 } true;
    z0 := 1;
  block58:
    assert { :sourceloc "Safe.java",92,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",92,-1,-1,-1 } true;
    if ($b1 == 0) {
        assert { :sourceloc "Safe.java",92,-1,-1,-1 } { :comment "thenblock" } true;
        goto block59;
    } else {
        assert { :sourceloc "Safe.java",92,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",93,-1,-1,-1 } true;
    z0 := 0;
  block59:
    assert { :sourceloc "Safe.java",93,-1,-1,-1 } true;
    $return := z0;
    goto block60;
  block60:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var z0 : int;    
var d0 : int;    
var $b1 : int;    
var $b0 : int;    
var d1 : int;
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
        goto block61;
    } else {
        assert { :sourceloc "Safe.java",98,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",100,-1,-1,-1 } true;
    z0 := 1;
  block61:
    assert { :sourceloc "Safe.java",99,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",99,-1,-1,-1 } true;
    if ($b1 != 0) {
        assert { :sourceloc "Safe.java",99,-1,-1,-1 } { :comment "thenblock" } true;
        goto block62;
    } else {
        assert { :sourceloc "Safe.java",99,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",100,-1,-1,-1 } true;
    z0 := 0;
  block62:
    assert { :sourceloc "Safe.java",100,-1,-1,-1 } true;
    $return := z0;
    goto block63;
  block63:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
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
    assert { :sourceloc "Safe.java",104,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",105,-1,-1,-1 } true;
    if (r0 != r1) {
        assert { :sourceloc "Safe.java",105,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block64;
    } else {
        assert { :sourceloc "Safe.java",105,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",107,-1,-1,-1 } true;
    z0 := 1;
  block64:
    assert { :sourceloc "Safe.java",106,-1,-1,-1 } true;
    if (r0 == r1) {
        assert { :sourceloc "Safe.java",106,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block65;
    } else {
        assert { :sourceloc "Safe.java",106,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",107,-1,-1,-1 } true;
    z0 := 0;
  block65:
    assert { :sourceloc "Safe.java",107,-1,-1,-1 } true;
    $return := z0;
    goto block66;
  block66:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var z0 : int;    
var r1 : ref;    
var r0 : ref;
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
        goto block67;
    } else {
        assert { :sourceloc "Safe.java",112,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",114,-1,-1,-1 } true;
    z0 := 1;
  block67:
    assert { :sourceloc "Safe.java",113,-1,-1,-1 } true;
    if (r0 != r1) {
        assert { :sourceloc "Safe.java",113,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block68;
    } else {
        assert { :sourceloc "Safe.java",113,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",114,-1,-1,-1 } true;
    z0 := 0;
  block68:
    assert { :sourceloc "Safe.java",114,-1,-1,-1 } true;
    $return := z0;
    goto block69;
  block69:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref){
    
var z0 : int;    
var r2 : ref;    
var r0 : ref;    
var r1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__2,$type] <: java.lang.Object;
    assume $heap[$in_parameter__1,$type] <: java.lang.Object;
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
        goto block70;
    } else {
        assert { :sourceloc "Safe.java",118,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",120,-1,-1,-1 } true;
    r2 := r0;
  block70:
    assert { :sourceloc "Safe.java",119,-1,-1,-1 } true;
    if (z0 != 0) {
        assert { :sourceloc "Safe.java",119,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block71;
    } else {
        assert { :sourceloc "Safe.java",119,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",120,-1,-1,-1 } true;
    r2 := r1;
  block71:
    assert { :sourceloc "Safe.java",120,-1,-1,-1 } true;
    $return := r2;
    goto block72;
  block72:
    return;
}


implementation java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref){
    $exception := $null;
    return;
}


