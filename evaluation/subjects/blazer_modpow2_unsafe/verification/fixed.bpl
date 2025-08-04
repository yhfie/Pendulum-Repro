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
const { :sourceloc "BigInteger.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
//const { :sourceloc "BigInteger.java",-1,-1,-1,-1 } unique fakejava.math.BigInteger : javaType extends  unique java.lang.Object complete;
const { :sourceloc "BigInteger.java",-1,-1,-1,-1 } unique java.math.BigInteger : javaType extends  unique java.lang.Object complete;
const { :sourceloc "BigInteger.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  complete;
const { :sourceloc "BigInteger.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "BigInteger.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "BigInteger.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "BigInteger.java",-1,-1,-1,-1 } unique java.lang.NullPointerException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "BigInteger.java",-1,-1,-1,-1 } unique java.lang.ArithmeticException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "BigInteger.java",-1,-1,-1,-1 } unique java.lang.reflect.AnnotatedElement : javaType extends  complete;
const { :sourceloc "BigInteger.java",-1,-1,-1,-1 } unique java.lang.reflect.GenericDeclaration : javaType extends  java.lang.reflect.AnnotatedElement complete;
const { :sourceloc "BigInteger.java",-1,-1,-1,-1 } unique java.lang.reflect.Type : javaType extends  complete;
const { :sourceloc "BigInteger.java",-1,-1,-1,-1 } unique java.lang.Class : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.reflect.GenericDeclaration, java.lang.reflect.Type, java.lang.reflect.AnnotatedElement complete;
const { :sourceloc "BigInteger.java",-1,-1,-1,-1 } unique java.lang.ClassCastException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "ModPow2.java",-1,-1,-1,-1 } unique ModPow2 : javaType extends  unique java.lang.Object complete;
const { :sourceloc "ModPow2.java",-1,-1,-1,-1 } unique java.lang.Number : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "ModPow2.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  complete;
//const { :sourceloc "ModPow2.java",-1,-1,-1,-1 } unique java.math.BigInteger : javaType extends  unique java.lang.Number, java.lang.Comparable complete;
const { :sourceloc "ModPow2.java",-1,-1,-1,-1 } unique sg.edu.nus.comp.tsunami.safe.Safe : javaType extends  unique java.lang.Object complete;
const { :sourceloc "ModPow2.java",-1,-1,-1,-1 } unique java.lang.Boolean : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Comparable complete;
const { :sourceloc "ModPow2.java",-1,-1,-1,-1 } unique java.lang.Math : javaType extends  unique java.lang.Object complete;
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
//var long$fakejava.math.BigInteger$value0 : Field int;
var long$java.math.BigInteger$value0 : Field int;
//var fakejava.math.BigInteger$fakejava.math.BigInteger$ONE259 : ref;
var java.math.BigInteger$java.math.BigInteger$ONE259 : ref;
//var fakejava.math.BigInteger$fakejava.math.BigInteger$ZERO260 : ref;
var java.math.BigInteger$java.math.BigInteger$ZERO260 : ref;
var java.math.BigInteger$java.math.BigInteger$ONE80 : ref;
var java.math.BigInteger$java.math.BigInteger$ZERO79 : ref;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $obj != $null;    ensures !old($heap[$obj,$alloc]);    modifies $objIndex, $heap;    ensures $objIndex == old($objIndex) + 1;    ensures $obj == $intToRef(old($objIndex));    ensures $heap == old($heap)[$obj,$alloc := true][$obj,$type := obj_type];

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $heap[$other,$alloc] == true;    ensures $heap[$other,$type] == $heap[$this,$type];        ensures $other != $null;

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

//procedure fakejava.math.BigInteger$$la$init$ra$$long($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;
procedure java.math.BigInteger$$la$init$ra$$long($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;

procedure java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref);    

//procedure fakejava.math.BigInteger$valueOf$long($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.math.BigInteger$valueOf$long($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.math.BigInteger$multiply$fakejava.math.BigInteger($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.math.BigInteger$multiply$java.math.BigInteger($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.math.BigInteger$shiftRight$int($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.math.BigInteger$shiftRight$int($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.math.BigInteger$shiftLeft$int($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.math.BigInteger$shiftLeft$int($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.math.BigInteger$subtract$fakejava.math.BigInteger($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.math.BigInteger$subtract$java.math.BigInteger($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.math.BigInteger$add$fakejava.math.BigInteger($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.math.BigInteger$add$java.math.BigInteger($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.math.BigInteger$mod$fakejava.math.BigInteger($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.math.BigInteger$mod$java.math.BigInteger($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

procedure java.lang.ArithmeticException$$la$init$ra$$($this:ref) returns ($exception:ref);    

//procedure fakejava.math.BigInteger$bitLength$($this:ref) returns ($return:int, $exception:ref);    
procedure java.math.BigInteger$bitLength$($this:ref) returns ($return:int, $exception:ref);    

//procedure fakejava.math.BigInteger$testBit$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    
procedure java.math.BigInteger$testBit$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    

//procedure fakejava.math.BigInteger$equals$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;
procedure java.math.BigInteger$equals$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

procedure java.lang.Object$getClass$($this:ref) returns ($return:ref, $exception:ref);    

//procedure fakejava.math.BigInteger$$la$clinit$ra$$() returns ($exception:ref);    modifies fakejava.math.BigInteger$fakejava.math.BigInteger$ONE259, $objIndex, $heap, fakejava.math.BigInteger$fakejava.math.BigInteger$ZERO260;
procedure java.math.BigInteger$$la$clinit$ra$$() returns ($exception:ref);    modifies java.math.BigInteger$java.math.BigInteger$ONE259, $objIndex, $heap, java.math.BigInteger$java.math.BigInteger$ZERO260;

procedure ModPow2$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure ModPow2$modPow2_unsafe$java.math.BigInteger_java.math.BigInteger_java.math.BigInteger_int($in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure java.math.BigInteger$valueOf$long($in_parameter__0:int) returns ($return:ref, $exception:ref);    

//procedure java.math.BigInteger$testBit$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure ModPow2$fastMultiply_inline$java.math.BigInteger_java.math.BigInteger($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure java.math.BigInteger$mod$java.math.BigInteger($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref);    

//procedure java.math.BigInteger$multiply$java.math.BigInteger($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

//procedure java.math.BigInteger$bitLength$($this:ref) returns ($return:int, $exception:ref);    

//procedure java.math.BigInteger$equals$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Math$max$int_int($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure java.lang.Math$abs$int($in_parameter__0:int) returns ($return:int, $exception:ref);    

//procedure java.math.BigInteger$shiftLeft$int($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

//procedure java.math.BigInteger$add$java.math.BigInteger($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

//procedure java.math.BigInteger$shiftRight$int($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

//procedure java.math.BigInteger$subtract$java.math.BigInteger($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure ModPow2$fastMultiply_1$java.math.BigInteger_java.math.BigInteger($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

procedure ModPow2$standardMultiply$java.math.BigInteger_java.math.BigInteger($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

procedure sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    

//implementation fakejava.math.BigInteger$$la$init$ra$$long($this:ref, $in_parameter__0:int) returns ($exception:ref){
implementation java.math.BigInteger$$la$init$ra$$long($this:ref, $in_parameter__0:int) returns ($exception:ref){
    
var r0 : ref;    
var l0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.math.BigInteger;
    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.math.BigInteger;
    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "BigInteger.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "BigInteger.java",-1,-1,-1,-1 } true;
    l0 := $in_parameter__0;
    assert { :sourceloc "BigInteger.java",6,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "BigInteger.java",7,-1,-1,-1 } true;
//    $heap := $heap[r0,long$fakejava.math.BigInteger$value0 := l0];
    $heap := $heap[r0,long$java.math.BigInteger$value0 := l0];
    assert { :sourceloc "BigInteger.java",8,-1,-1,-1 } true;
    goto block1;
  block1:
    return;
}


//implementation fakejava.math.BigInteger$valueOf$long($in_parameter__0:int) returns ($return:ref, $exception:ref){
implementation java.math.BigInteger$valueOf$long($in_parameter__0:int) returns ($return:ref, $exception:ref){
    
var $r0 : ref;    
var $fakelocal_0 : ref;    
var l0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume $heap[$return,$type] <: fakejava.math.BigInteger;
    assume $heap[$return,$type] <: java.math.BigInteger;
    $exception := $null;
    assert { :sourceloc "BigInteger.java",-1,-1,-1,-1 } true;
    l0 := $in_parameter__0;
    assert { :sourceloc "BigInteger.java",11,-1,-1,-1 } true;
//    call $fakelocal_0 := $new(fakejava.math.BigInteger);
    call $fakelocal_0 := $new(java.math.BigInteger);
    $r0 := $fakelocal_0;
    assert { :sourceloc "BigInteger.java",11,-1,-1,-1 } true;
//    call $exception := fakejava.math.BigInteger$$la$init$ra$$long($r0, l0);
    call $exception := java.math.BigInteger$$la$init$ra$$long($r0, l0);
    assert { :sourceloc "BigInteger.java",11,-1,-1,-1 } true;
    $return := $r0;
    goto block2;
  block2:
    return;
}


//implementation fakejava.math.BigInteger$multiply$fakejava.math.BigInteger($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
implementation java.math.BigInteger$multiply$java.math.BigInteger($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r0 : ref;    
var r1 : ref;    
var $fakelocal_1 : ref;    
var $r2 : ref;    
var $l1 : int;    
var $l2 : int;    
var $fakelocal_0 : ref;    
var $l0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.math.BigInteger;
    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.math.BigInteger;
    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $this != $null;
//    assume $heap[$in_parameter__0,$type] <: fakejava.math.BigInteger;
    assume $heap[$in_parameter__0,$type] <: java.math.BigInteger;
//    assume $heap[$return,$type] <: fakejava.math.BigInteger;
    assume $heap[$return,$type] <: java.math.BigInteger;
    $exception := $null;
    assert { :sourceloc "BigInteger.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "BigInteger.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "BigInteger.java",18,-1,-1,-1 } true;
//    call $fakelocal_0 := $new(fakejava.math.BigInteger);
    call $fakelocal_0 := $new(java.math.BigInteger);
    $r2 := $fakelocal_0;
    assert { :sourceloc "BigInteger.java",18,-1,-1,-1 } true;
//    $l1 := $heap[r0,long$fakejava.math.BigInteger$value0];
    $l1 := $heap[r0,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",18,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.NullPointerException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
//    $l0 := $heap[r1,long$fakejava.math.BigInteger$value0];
    $l0 := $heap[r1,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",18,-1,-1,-1 } true;
    $l2 := $mulInt($l1, $l0);
    assert { :sourceloc "BigInteger.java",18,-1,-1,-1 } true;
//    call $exception := fakejava.math.BigInteger$$la$init$ra$$long($r2, $l2);
    call $exception := java.math.BigInteger$$la$init$ra$$long($r2, $l2);
    assert { :sourceloc "BigInteger.java",18,-1,-1,-1 } true;
    $return := $r2;
    goto block3;
  block3:
    return;
}


//implementation fakejava.math.BigInteger$shiftRight$int($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref){
implementation java.math.BigInteger$shiftRight$int($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref){
    
var $l2 : int;    
var $fakelocal_0 : ref;    
var $l1 : int;    
var $r1 : ref;    
var i0 : int;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.math.BigInteger;
    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.math.BigInteger;
    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $this != $null;
//    assume $heap[$return,$type] <: fakejava.math.BigInteger;
    assume $heap[$return,$type] <: java.math.BigInteger;
    $exception := $null;
    assert { :sourceloc "BigInteger.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "BigInteger.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__0;
    assert { :sourceloc "BigInteger.java",22,-1,-1,-1 } true;
//    call $fakelocal_0 := $new(fakejava.math.BigInteger);
    call $fakelocal_0 := $new(java.math.BigInteger);
    $r1 := $fakelocal_0;
    assert { :sourceloc "BigInteger.java",22,-1,-1,-1 } true;
//    $l1 := $heap[r0,long$fakejava.math.BigInteger$value0];
    $l1 := $heap[r0,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",22,-1,-1,-1 } true;
    $l2 := $shrInt($l1, i0);
    assert { :sourceloc "BigInteger.java",22,-1,-1,-1 } true;
//    call $exception := fakejava.math.BigInteger$$la$init$ra$$long($r1, $l2);
    call $exception := java.math.BigInteger$$la$init$ra$$long($r1, $l2);
    assert { :sourceloc "BigInteger.java",22,-1,-1,-1 } true;
    $return := $r1;
    goto block4;
  block4:
    return;
}


//implementation fakejava.math.BigInteger$shiftLeft$int($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref){
implementation java.math.BigInteger$shiftLeft$int($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref){
    
var $l1 : int;    
var r0 : ref;    
var $fakelocal_0 : ref;    
var $r1 : ref;    
var i0 : int;    
var $l2 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.math.BigInteger;
    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.math.BigInteger;
    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $this != $null;
//    assume $heap[$return,$type] <: fakejava.math.BigInteger;
    assume $heap[$return,$type] <: java.math.BigInteger;
    $exception := $null;
    assert { :sourceloc "BigInteger.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "BigInteger.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__0;
    assert { :sourceloc "BigInteger.java",26,-1,-1,-1 } true;
//    call $fakelocal_0 := $new(fakejava.math.BigInteger);
    call $fakelocal_0 := $new(java.math.BigInteger);
    $r1 := $fakelocal_0;
    assert { :sourceloc "BigInteger.java",26,-1,-1,-1 } true;
//    $l1 := $heap[r0,long$fakejava.math.BigInteger$value0];
    $l1 := $heap[r0,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",26,-1,-1,-1 } true;
    $l2 := $shlInt($l1, i0);
    assert { :sourceloc "BigInteger.java",26,-1,-1,-1 } true;
//    call $exception := fakejava.math.BigInteger$$la$init$ra$$long($r1, $l2);
    call $exception := java.math.BigInteger$$la$init$ra$$long($r1, $l2);
    assert { :sourceloc "BigInteger.java",26,-1,-1,-1 } true;
    $return := $r1;
    goto block5;
  block5:
    return;
}


//implementation fakejava.math.BigInteger$subtract$fakejava.math.BigInteger($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
implementation java.math.BigInteger$subtract$java.math.BigInteger($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r1 : ref;    
var $r2 : ref;    
var r0 : ref;    
var $l0 : int;    
var $l2 : int;    
var $fakelocal_1 : ref;    
var $l1 : int;    
var $fakelocal_0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.math.BigInteger;
    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.math.BigInteger;
    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $this != $null;
//    assume $heap[$return,$type] <: fakejava.math.BigInteger;
    assume $heap[$return,$type] <: java.math.BigInteger;
//    assume $heap[$in_parameter__0,$type] <: fakejava.math.BigInteger;
    assume $heap[$in_parameter__0,$type] <: java.math.BigInteger;
    $exception := $null;
    assert { :sourceloc "BigInteger.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "BigInteger.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "BigInteger.java",30,-1,-1,-1 } true;
//    call $fakelocal_0 := $new(fakejava.math.BigInteger);
    call $fakelocal_0 := $new(java.math.BigInteger);
    $r2 := $fakelocal_0;
    assert { :sourceloc "BigInteger.java",30,-1,-1,-1 } true;
//    $l1 := $heap[r0,long$fakejava.math.BigInteger$value0];
    $l1 := $heap[r0,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",30,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.NullPointerException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
//    $l0 := $heap[r1,long$fakejava.math.BigInteger$value0];
    $l0 := $heap[r1,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",30,-1,-1,-1 } true;
    $l2 := $l1 - $l0;
    assert { :sourceloc "BigInteger.java",30,-1,-1,-1 } true;
//    call $exception := fakejava.math.BigInteger$$la$init$ra$$long($r2, $l2);
    call $exception := java.math.BigInteger$$la$init$ra$$long($r2, $l2);
    assert { :sourceloc "BigInteger.java",30,-1,-1,-1 } true;
    $return := $r2;
    goto block6;
  block6:
    return;
}


//implementation fakejava.math.BigInteger$add$fakejava.math.BigInteger($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
implementation java.math.BigInteger$add$java.math.BigInteger($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $l1 : int;    
var r0 : ref;    
var $fakelocal_0 : ref;    
var $r2 : ref;    
var $l2 : int;    
var $fakelocal_1 : ref;    
var $l0 : int;    
var r1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.math.BigInteger;
    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.math.BigInteger;
    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $this != $null;
//    assume $heap[$return,$type] <: fakejava.math.BigInteger;
    assume $heap[$return,$type] <: java.math.BigInteger;
//    assume $heap[$in_parameter__0,$type] <: fakejava.math.BigInteger;
    assume $heap[$in_parameter__0,$type] <: java.math.BigInteger;
    $exception := $null;
    assert { :sourceloc "BigInteger.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "BigInteger.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "BigInteger.java",34,-1,-1,-1 } true;
//    call $fakelocal_0 := $new(fakejava.math.BigInteger);
    call $fakelocal_0 := $new(java.math.BigInteger);
    $r2 := $fakelocal_0;
    assert { :sourceloc "BigInteger.java",34,-1,-1,-1 } true;
//    $l1 := $heap[r0,long$fakejava.math.BigInteger$value0];
    $l1 := $heap[r0,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",34,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.NullPointerException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
//    $l0 := $heap[r1,long$fakejava.math.BigInteger$value0];
    $l0 := $heap[r1,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",34,-1,-1,-1 } true;
    $l2 := $l1 + $l0;
    assert { :sourceloc "BigInteger.java",34,-1,-1,-1 } true;
//    call $exception := fakejava.math.BigInteger$$la$init$ra$$long($r2, $l2);
    call $exception := java.math.BigInteger$$la$init$ra$$long($r2, $l2);
    assert { :sourceloc "BigInteger.java",34,-1,-1,-1 } true;
    $return := $r2;
    goto block7;
  block7:
    return;
}


//implementation fakejava.math.BigInteger$mod$fakejava.math.BigInteger($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
implementation java.math.BigInteger$mod$java.math.BigInteger($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $l12 : int;    
var r0 : ref;    
var $l4 : int;    
var $fakelocal_1 : ref;    
var $l6 : int;    
var $l10 : int;    
var $fakelocal_5 : ref;    
var $b3 : int;    
var $fakelocal_4 : ref;    
var r1 : ref;    
var $l8 : int;    
var $r4 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_6 : ref;    
var $b1 : int;    
var $l5 : int;    
var $l14 : int;    
var $fakelocal_3 : ref;    
var $l2 : int;    
var $l11 : int;    
var $r2 : ref;    
var $r3 : ref;    
var $l13 : int;    
var $l7 : int;    
var $l9 : int;    
var $l0 : int;    
var $fakelocal_0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.math.BigInteger;
    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.math.BigInteger;
    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $this != $null;
//    assume $heap[$return,$type] <: fakejava.math.BigInteger;
    assume $heap[$return,$type] <: java.math.BigInteger;
//    assume $heap[$in_parameter__0,$type] <: fakejava.math.BigInteger;
    assume $heap[$in_parameter__0,$type] <: java.math.BigInteger;
    $exception := $null;
    assert { :sourceloc "BigInteger.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "BigInteger.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "BigInteger.java",38,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.NullPointerException);
        $return := $null;
        $exception := $fakelocal_0;
        return;
    }
//    $l0 := $heap[r1,long$fakejava.math.BigInteger$value0];
    $l0 := $heap[r1,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",38,-1,-1,-1 } true;
    $b1 := $cmpInt($l0, 0);
    assert { :sourceloc "BigInteger.java",38,-1,-1,-1 } true;
    if ($b1 > 0) {
        assert { :sourceloc "BigInteger.java",38,-1,-1,-1 } { :comment "thenblock" } true;
        goto block8;
    } else {
        assert { :sourceloc "BigInteger.java",38,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "BigInteger.java",39,-1,-1,-1 } true;
    call $fakelocal_1 := $new(java.lang.ArithmeticException);
    $r4 := $fakelocal_1;
    assert { :sourceloc "BigInteger.java",39,-1,-1,-1 } true;
    call $exception := java.lang.ArithmeticException$$la$init$ra$$($r4);
    assert { :sourceloc "BigInteger.java",39,-1,-1,-1 } true;
    $exception := $r4;
    goto block10;
  block8:
    assert { :sourceloc "BigInteger.java",42,-1,-1,-1 } true;
//    $l2 := $heap[r0,long$fakejava.math.BigInteger$value0];
    $l2 := $heap[r0,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",42,-1,-1,-1 } true;
    $b3 := $cmpInt($l2, 0);
    assert { :sourceloc "BigInteger.java",42,-1,-1,-1 } true;
    if ($b3 < 0) {
        assert { :sourceloc "BigInteger.java",42,-1,-1,-1 } { :comment "thenblock" } true;
        goto block9;
    } else {
        assert { :sourceloc "BigInteger.java",42,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "BigInteger.java",43,-1,-1,-1 } true;
//    call $fakelocal_2 := $new(fakejava.math.BigInteger);
    call $fakelocal_2 := $new(java.math.BigInteger);
    $r3 := $fakelocal_2;
    assert { :sourceloc "BigInteger.java",43,-1,-1,-1 } true;
//    $l13 := $heap[r0,long$fakejava.math.BigInteger$value0];
    $l13 := $heap[r0,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",43,-1,-1,-1 } true;
//    $l12 := $heap[r1,long$fakejava.math.BigInteger$value0];
    $l12 := $heap[r1,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",43,-1,-1,-1 } true;
    if ($l12 != 0) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ArithmeticException);
        $return := $null;
        $exception := $fakelocal_3;
        return;
    }
    $l14 := $modInt($l13, $l12);
    assert { :sourceloc "BigInteger.java",43,-1,-1,-1 } true;
//    call $exception := fakejava.math.BigInteger$$la$init$ra$$long($r3, $l14);
    call $exception := java.math.BigInteger$$la$init$ra$$long($r3, $l14);
    assert { :sourceloc "BigInteger.java",43,-1,-1,-1 } true;
    $return := $r3;
    goto block10;
  block9:
    assert { :sourceloc "BigInteger.java",45,-1,-1,-1 } true;
//    call $fakelocal_4 := $new(fakejava.math.BigInteger);
    call $fakelocal_4 := $new(java.math.BigInteger);
    $r2 := $fakelocal_4;
    assert { :sourceloc "BigInteger.java",45,-1,-1,-1 } true;
//    $l8 := $heap[r1,long$fakejava.math.BigInteger$value0];
    $l8 := $heap[r1,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",45,-1,-1,-1 } true;
//    $l4 := $heap[r0,long$fakejava.math.BigInteger$value0];
    $l4 := $heap[r0,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",45,-1,-1,-1 } true;
    $l6 := -$l4;
    assert { :sourceloc "BigInteger.java",45,-1,-1,-1 } true;
//    $l5 := $heap[r1,long$fakejava.math.BigInteger$value0];
    $l5 := $heap[r1,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",45,-1,-1,-1 } true;
    if ($l5 != 0) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.ArithmeticException);
        $return := $null;
        $exception := $fakelocal_5;
        return;
    }
    $l7 := $modInt($l6, $l5);
    assert { :sourceloc "BigInteger.java",45,-1,-1,-1 } true;
    $l10 := $l8 - $l7;
    assert { :sourceloc "BigInteger.java",45,-1,-1,-1 } true;
//    $l9 := $heap[r1,long$fakejava.math.BigInteger$value0];
    $l9 := $heap[r1,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",45,-1,-1,-1 } true;
    if ($l9 != 0) {
        $exception := $exception;
    } else {
        call $fakelocal_6 := $new(java.lang.ArithmeticException);
        $return := $null;
        $exception := $fakelocal_6;
        return;
    }
    $l11 := $modInt($l10, $l9);
    assert { :sourceloc "BigInteger.java",45,-1,-1,-1 } true;
//    call $exception := fakejava.math.BigInteger$$la$init$ra$$long($r2, $l11);
    call $exception := java.math.BigInteger$$la$init$ra$$long($r2, $l11);
    assert { :sourceloc "BigInteger.java",45,-1,-1,-1 } true;
    $return := $r2;
    goto block10;
  block10:
    return;
}


//implementation fakejava.math.BigInteger$bitLength$($this:ref) returns ($return:int, $exception:ref){
implementation java.math.BigInteger$bitLength$($this:ref) returns ($return:int, $exception:ref){
    
var $b1 : int;    
var $l4 : int;    
var l7 : int;    
var $b5 : int;    
var r0 : ref;    
var $l2 : int;    
var $l6 : int;    
var $b3 : int;    
var i8 : int;    
var $l0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.math.BigInteger;
    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.math.BigInteger;
    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "BigInteger.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "BigInteger.java",50,-1,-1,-1 } true;
//    $l0 := $heap[r0,long$fakejava.math.BigInteger$value0];
    $l0 := $heap[r0,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",50,-1,-1,-1 } true;
    $b1 := $cmpInt($l0, 0);
    assert { :sourceloc "BigInteger.java",50,-1,-1,-1 } true;
    if ($b1 != 0) {
        assert { :sourceloc "BigInteger.java",50,-1,-1,-1 } { :comment "thenblock" } true;
        goto block11;
    } else {
        assert { :sourceloc "BigInteger.java",50,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "BigInteger.java",51,-1,-1,-1 } true;
    $return := 1;
    goto block16;
  block11:
    assert { :sourceloc "BigInteger.java",54,-1,-1,-1 } true;
//    $l2 := $heap[r0,long$fakejava.math.BigInteger$value0];
    $l2 := $heap[r0,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",54,-1,-1,-1 } true;
    $b3 := $cmpInt($l2, 0);
    assert { :sourceloc "BigInteger.java",54,-1,-1,-1 } true;
    if ($b3 <= 0) {
        assert { :sourceloc "BigInteger.java",54,-1,-1,-1 } { :comment "thenblock" } true;
        goto block12;
    } else {
        assert { :sourceloc "BigInteger.java",54,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "BigInteger.java",56,-1,-1,-1 } true;
//    $l6 := $heap[r0,long$fakejava.math.BigInteger$value0];
    $l6 := $heap[r0,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",56,-1,-1,-1 } true;
    goto block13;
  block12:
    assert { :sourceloc "BigInteger.java",54,-1,-1,-1 } true;
//    $l4 := $heap[r0,long$fakejava.math.BigInteger$value0];
    $l4 := $heap[r0,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",56,-1,-1,-1 } true;
    $l6 := -$l4;
  block13:
    assert { :sourceloc "BigInteger.java",54,-1,-1,-1 } true;
    l7 := $l6;
    assert { :sourceloc "BigInteger.java",55,-1,-1,-1 } true;
    i8 := 0;
  block14:
    assert { :sourceloc "BigInteger.java",56,-1,-1,-1 } true;
    $b5 := $cmpInt(l7, 0);
    assert { :sourceloc "BigInteger.java",56,-1,-1,-1 } true;
    if ($b5 <= 0) {
        assert { :sourceloc "BigInteger.java",56,-1,-1,-1 } { :comment "thenblock" } true;
        goto block15;
    } else {
        assert { :sourceloc "BigInteger.java",56,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "BigInteger.java",57,-1,-1,-1 } true;
    i8 := i8 + 1;
    assert { :sourceloc "BigInteger.java",58,-1,-1,-1 } true;
    l7 := $shrInt(l7, 1);
    assert { :sourceloc "BigInteger.java",58,-1,-1,-1 } true;
    goto block14;
  block15:
    assert { :sourceloc "BigInteger.java",61,-1,-1,-1 } true;
    $return := i8;
    goto block16;
  block16:
    return;
}


//implementation fakejava.math.BigInteger$testBit$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref){
implementation java.math.BigInteger$testBit$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref){
    
var $z0 : int;    
var $i1 : int;    
var $l3 : int;    
var $l2 : int;    
var $b5 : int;    
var i0 : int;    
var r0 : ref;    
var $l4 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.math.BigInteger;
    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.math.BigInteger;
    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "BigInteger.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "BigInteger.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__0;
    assert { :sourceloc "BigInteger.java",65,-1,-1,-1 } true;
//    $l3 := $heap[r0,long$fakejava.math.BigInteger$value0];
    $l3 := $heap[r0,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",65,-1,-1,-1 } true;
    $i1 := $shlInt(1, i0);
    assert { :sourceloc "BigInteger.java",65,-1,-1,-1 } true;
    $l2 := $i1;
    assert { :sourceloc "BigInteger.java",65,-1,-1,-1 } true;
    $l4 := $bitAnd($l3, $l2);
    assert { :sourceloc "BigInteger.java",65,-1,-1,-1 } true;
    $b5 := $cmpInt($l4, 0);
    assert { :sourceloc "BigInteger.java",65,-1,-1,-1 } true;
    if ($b5 == 0) {
        assert { :sourceloc "BigInteger.java",65,-1,-1,-1 } { :comment "thenblock" } true;
        goto block17;
    } else {
        assert { :sourceloc "BigInteger.java",65,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "BigInteger.java",65,-1,-1,-1 } true;
    $z0 := 1;
    assert { :sourceloc "BigInteger.java",65,-1,-1,-1 } true;
    goto block18;
  block17:
    assert { :sourceloc "BigInteger.java",65,-1,-1,-1 } true;
    $z0 := 0;
  block18:
    assert { :sourceloc "BigInteger.java",65,-1,-1,-1 } true;
    $return := $z0;
    goto block19;
  block19:
    return;
}


//implementation fakejava.math.BigInteger$equals$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
implementation java.math.BigInteger$equals$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var r2 : ref;    
var $fakelocal_0 : ref;    
var $r4 : ref;    
var $l0 : int;    
var r0 : ref;    
var $l1 : int;    
var r1 : ref;    
var $b2 : int;    
var $r3 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.math.BigInteger;
    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.math.BigInteger;
    assume { :sourceloc "BigInteger.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    $exception := $null;
    assert { :sourceloc "BigInteger.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "BigInteger.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "BigInteger.java",70,-1,-1,-1 } true;
    if (r0 != r1) {
        assert { :sourceloc "BigInteger.java",70,-1,-1,-1 } { :comment "thenblock" } true;
        goto block20;
    } else {
        assert { :sourceloc "BigInteger.java",70,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "BigInteger.java",71,-1,-1,-1 } true;
    $return := 1;
    goto block24;
  block20:
    assert { :sourceloc "BigInteger.java",72,-1,-1,-1 } true;
    if (r1 != $null) {
        assert { :sourceloc "BigInteger.java",72,-1,-1,-1 } { :comment "thenblock" } true;
        goto block21;
    } else {
        assert { :sourceloc "BigInteger.java",72,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "BigInteger.java",73,-1,-1,-1 } true;
    $return := 0;
    goto block24;
  block21:
    assert { :sourceloc "BigInteger.java",74,-1,-1,-1 } true;
    call $r3, $exception := java.lang.Object$getClass$(r0);
    assert { :sourceloc "BigInteger.java",74,-1,-1,-1 } true;
    call $r4, $exception := java.lang.Object$getClass$(r1);
    assert { :sourceloc "BigInteger.java",74,-1,-1,-1 } true;
    if ($r3 == $r4) {
        assert { :sourceloc "BigInteger.java",74,-1,-1,-1 } { :comment "thenblock" } true;
        goto block22;
    } else {
        assert { :sourceloc "BigInteger.java",74,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "BigInteger.java",75,-1,-1,-1 } true;
    $return := 0;
    goto block24;
  block22:
    assert { :sourceloc "BigInteger.java",76,-1,-1,-1 } true;
//    if ($heap[r1,$type] <: fakejava.math.BigInteger) {
    if ($heap[r1,$type] <: java.math.BigInteger) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    r2 := r1;
    assert { :sourceloc "BigInteger.java",77,-1,-1,-1 } true;
//    $l1 := $heap[r0,long$fakejava.math.BigInteger$value0];
    $l1 := $heap[r0,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",77,-1,-1,-1 } true;
//    $l0 := $heap[r2,long$fakejava.math.BigInteger$value0];
    $l0 := $heap[r2,long$java.math.BigInteger$value0];
    assert { :sourceloc "BigInteger.java",77,-1,-1,-1 } true;
    $b2 := $cmpInt($l1, $l0);
    assert { :sourceloc "BigInteger.java",77,-1,-1,-1 } true;
    if ($b2 == 0) {
        assert { :sourceloc "BigInteger.java",77,-1,-1,-1 } { :comment "thenblock" } true;
        goto block23;
    } else {
        assert { :sourceloc "BigInteger.java",77,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "BigInteger.java",78,-1,-1,-1 } true;
    $return := 0;
    goto block24;
  block23:
    assert { :sourceloc "BigInteger.java",79,-1,-1,-1 } true;
    $return := 1;
    goto block24;
  block24:
    return;
}


//implementation fakejava.math.BigInteger$$la$clinit$ra$$() returns ($exception:ref){
implementation java.math.BigInteger$$la$clinit$ra$$() returns ($exception:ref){
    
var $fakelocal_1 : ref;    
var $r0 : ref;    
var $r1 : ref;    
var $fakelocal_0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "BigInteger.java",14,-1,-1,-1 } true;
//    call $fakelocal_0 := $new(fakejava.math.BigInteger);
    call $fakelocal_0 := $new(java.math.BigInteger);
    $r0 := $fakelocal_0;
    assert { :sourceloc "BigInteger.java",14,-1,-1,-1 } true;
//    call $exception := fakejava.math.BigInteger$$la$init$ra$$long($r0, 1);
    call $exception := java.math.BigInteger$$la$init$ra$$long($r0, 1);
    assert { :sourceloc "BigInteger.java",14,-1,-1,-1 } true;
//    fakejava.math.BigInteger$fakejava.math.BigInteger$ONE259 := $r0;
    java.math.BigInteger$java.math.BigInteger$ONE259 := $r0;
    assert { :sourceloc "BigInteger.java",15,-1,-1,-1 } true;
//    call $fakelocal_1 := $new(fakejava.math.BigInteger);
    call $fakelocal_1 := $new(java.math.BigInteger);
    $r1 := $fakelocal_1;
    assert { :sourceloc "BigInteger.java",15,-1,-1,-1 } true;
//    call $exception := fakejava.math.BigInteger$$la$init$ra$$long($r1, 0);
    call $exception := java.math.BigInteger$$la$init$ra$$long($r1, 0);
    assert { :sourceloc "BigInteger.java",15,-1,-1,-1 } true;
//    fakejava.math.BigInteger$fakejava.math.BigInteger$ZERO260 := $r1;
    java.math.BigInteger$java.math.BigInteger$ZERO260 := $r1;
    assert { :sourceloc "BigInteger.java",15,-1,-1,-1 } true;
    goto block25;
  block25:
    return;
}


implementation ModPow2$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "ModPow2.java",-1,-1,-1,-1 } $heap[$this,$type] <: ModPow2;
    assume { :sourceloc "ModPow2.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "ModPow2.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "ModPow2.java",6,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "ModPow2.java",6,-1,-1,-1 } true;
    goto block26;
  block26:
    return;
}


implementation ModPow2$modPow2_unsafe$java.math.BigInteger_java.math.BigInteger_java.math.BigInteger_int($in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:int) returns ($return:ref, $exception:ref){
    
var $fakelocal_4 : ref;    
var $r5 : ref;    
var $r12 : ref;    
var $r11 : ref;    
var $r6 : ref;    
var $fakelocal_1 : ref;    
var $r14 : ref;    
var i0 : int;    
var $fakelocal_9 : ref;    
var $fakelocal_10 : ref;    
var $r3 : ref;    
var $r9 : ref;    
var r2 : ref;    
var $fakelocal_7 : ref;    
var $r8 : ref;    
var z0 : int;    
var $fakelocal_3 : ref;    
var $i2 : int;    
var $fakelocal_2 : ref;    
var $r13 : ref;    
var $r4 : ref;    
var r0 : ref;    
var $z1 : int;    
var r1 : ref;    
var r16 : ref;    
var r18 : ref;    
var r17 : ref;    
var $fakelocal_5 : ref;    
var $fakelocal_8 : ref;    
var i3 : int;    
var $fakelocal_0 : ref;    
var $r10 : ref;    
var r15 : ref;    
var $r7 : ref;    
var $i1 : int;    
var $fakelocal_6 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1,$type] <: java.math.BigInteger;
    assume $heap[$in_parameter__0,$type] <: java.math.BigInteger;
    assume $heap[$return,$type] <: java.math.BigInteger;
    assume $heap[$in_parameter__2,$type] <: java.math.BigInteger;
    $exception := $null;
    assert { :sourceloc "ModPow2.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "ModPow2.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "ModPow2.java",-1,-1,-1,-1 } true;
    r2 := $in_parameter__2;
    assert { :sourceloc "ModPow2.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__3;
    assert { :sourceloc "ModPow2.java",33,-1,-1,-1 } true;
    call r15, $exception := java.math.BigInteger$valueOf$long(1);
    assert { :sourceloc "ModPow2.java",34,-1,-1,-1 } true;
    r16 := r0;
    assert { :sourceloc "ModPow2.java",36,-1,-1,-1 } true;
    i3 := 0;
  block27:
    assert { :sourceloc "ModPow2.java",36,-1,-1,-1 } true;
    if (i3 >= i0) {
        assert { :sourceloc "ModPow2.java",36,-1,-1,-1 } { :comment "thenblock" } true;
        goto block28;
    } else {
        assert { :sourceloc "ModPow2.java",36,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ModPow2.java",39,-1,-1,-1 } true;
    $i1 := i0 - i3;
    assert { :sourceloc "ModPow2.java",39,-1,-1,-1 } true;
    $i2 := $i1 - 1;
    assert { :sourceloc "ModPow2.java",39,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_0;
        return;
    }
    call $z1, $exception := java.math.BigInteger$testBit$int(r1, $i2);
    assert { :sourceloc "ModPow2.java",39,-1,-1,-1 } true;
    call z0, $exception := sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($z1);
    assert { :sourceloc "ModPow2.java",40,-1,-1,-1 } true;
    call $r3, $exception := ModPow2$fastMultiply_inline$java.math.BigInteger_java.math.BigInteger(r15, r16);
    assert { :sourceloc "ModPow2.java",40,-1,-1,-1 } true;
    if ($r3 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
    call $r4, $exception := java.math.BigInteger$mod$java.math.BigInteger($r3, r2);
    assert { :sourceloc "ModPow2.java",40,-1,-1,-1 } true;
    call $r5, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r4, r16);
    assert { :sourceloc "ModPow2.java",40,-1,-1,-1 } true;
    if ($heap[$r5,$type] <: java.math.BigInteger) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    r17 := $r5;
    assert { :sourceloc "ModPow2.java",41,-1,-1,-1 } true;
    if (r15 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_3;
        return;
    }
    call $r6, $exception := java.math.BigInteger$multiply$java.math.BigInteger(r15, r15);
    assert { :sourceloc "ModPow2.java",41,-1,-1,-1 } true;
    if ($r6 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_4;
        return;
    }
    call $r7, $exception := java.math.BigInteger$mod$java.math.BigInteger($r6, r2);
    assert { :sourceloc "ModPow2.java",41,-1,-1,-1 } true;
    call $r8, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r7, r15);
    assert { :sourceloc "ModPow2.java",41,-1,-1,-1 } true;
    if ($heap[$r8,$type] <: java.math.BigInteger) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_5;
        return;
    }
    r18 := $r8;
    assert { :sourceloc "ModPow2.java",42,-1,-1,-1 } true;
    call $r9, $exception := ModPow2$fastMultiply_inline$java.math.BigInteger_java.math.BigInteger(r18, r17);
    assert { :sourceloc "ModPow2.java",42,-1,-1,-1 } true;
    if ($r9 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_6 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_6;
        return;
    }
    call $r10, $exception := java.math.BigInteger$mod$java.math.BigInteger($r9, r2);
    assert { :sourceloc "ModPow2.java",42,-1,-1,-1 } true;
    call $r11, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, r18, $r10);
    assert { :sourceloc "ModPow2.java",42,-1,-1,-1 } true;
    if ($heap[$r11,$type] <: java.math.BigInteger) {
        $exception := $exception;
    } else {
        call $fakelocal_7 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_7;
        return;
    }
    r15 := $r11;
    assert { :sourceloc "ModPow2.java",43,-1,-1,-1 } true;
    if (r17 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_8 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_8;
        return;
    }
    call $r12, $exception := java.math.BigInteger$multiply$java.math.BigInteger(r17, r17);
    assert { :sourceloc "ModPow2.java",43,-1,-1,-1 } true;
    if ($r12 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_9 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_9;
        return;
    }
    call $r13, $exception := java.math.BigInteger$mod$java.math.BigInteger($r12, r2);
    assert { :sourceloc "ModPow2.java",43,-1,-1,-1 } true;
    call $r14, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, r17, $r13);
    assert { :sourceloc "ModPow2.java",43,-1,-1,-1 } true;
    if ($heap[$r14,$type] <: java.math.BigInteger) {
        $exception := $exception;
    } else {
        call $fakelocal_10 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_10;
        return;
    }
    r16 := $r14;
    assert { :sourceloc "ModPow2.java",36,-1,-1,-1 } true;
    i3 := i3 + 1;
    assert { :sourceloc "ModPow2.java",36,-1,-1,-1 } true;
    goto block27;
  block28:
    assert { :sourceloc "ModPow2.java",48,-1,-1,-1 } true;
    $return := r15;
    goto block29;
  block29:
    return;
}


implementation ModPow2$fastMultiply_inline$java.math.BigInteger_java.math.BigInteger($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref){
    
var $r9 : ref;    
var $fakelocal_1 : ref;    
var $r30 : ref;    
var $fakelocal_9 : ref;    
var $r34 : ref;    
var $i5 : int;    
var r5 : ref;    
var $r8 : ref;    
var $fakelocal_2 : ref;    
var $r16 : ref;    
var i1 : int;    
var $r26 : ref;    
var i0 : int;    
var z1 : int;    
var $fakelocal_11 : ref;    
var $fakelocal_19 : ref;    
var r40 : ref;    
var $z2 : int;    
var $fakelocal_20 : ref;    
var $r13 : ref;    
var $r21 : ref;    
var i9 : int;    
var $fakelocal_4 : ref;    
var $fakelocal_5 : ref;    
var $r33 : ref;    
var $r19 : ref;    
var $r28 : ref;    
var r37 : ref;    
var r38 : ref;    
var z3 : int;    
var z4 : int;    
var $fakelocal_16 : ref;    
var z0 : int;    
var $fakelocal_13 : ref;    
var $fakelocal_0 : ref;    
var r6 : ref;    
var $r35 : ref;    
var i10 : int;    
var r36 : ref;    
var $fakelocal_8 : ref;    
var $r29 : ref;    
var r1 : ref;    
var $fakelocal_10 : ref;    
var $i2 : int;    
var $fakelocal_12 : ref;    
var $r15 : ref;    
var $fakelocal_14 : ref;    
var $r27 : ref;    
var r3 : ref;    
var $fakelocal_7 : ref;    
var $fakelocal_15 : ref;    
var $r20 : ref;    
var $r31 : ref;    
var r7 : ref;    
var $fakelocal_17 : ref;    
var $r11 : ref;    
var $r12 : ref;    
var $r23 : ref;    
var $r18 : ref;    
var $fakelocal_21 : ref;    
var $r22 : ref;    
var $i4 : int;    
var $r32 : ref;    
var r2 : ref;    
var r39 : ref;    
var $i6 : int;    
var i8 : int;    
var $r17 : ref;    
var $fakelocal_18 : ref;    
var r0 : ref;    
var $r10 : ref;    
var $i7 : int;    
var $fakelocal_3 : ref;    
var $r25 : ref;    
var $fakelocal_6 : ref;    
var $r24 : ref;    
var $i3 : int;    
var r4 : ref;    
var $r14 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0,$type] <: java.math.BigInteger;
    assume $heap[$in_parameter__1,$type] <: java.math.BigInteger;
    assume $heap[$return,$type] <: java.math.BigInteger;
    $exception := $null;
    assert { :sourceloc "ModPow2.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "ModPow2.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "ModPow2.java",55,-1,-1,-1 } true;
    if (r0 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_0;
        return;
    }
    call i0, $exception := java.math.BigInteger$bitLength$(r0);
    assert { :sourceloc "ModPow2.java",56,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
    call i1, $exception := java.math.BigInteger$bitLength$(r1);
    assert { :sourceloc "ModPow2.java",57,-1,-1,-1 } true;
    $r8 := java.math.BigInteger$java.math.BigInteger$ONE80;
    assert { :sourceloc "ModPow2.java",57,-1,-1,-1 } true;
    call z0, $exception := java.math.BigInteger$equals$java.lang.Object(r0, $r8);
    assert { :sourceloc "ModPow2.java",59,-1,-1,-1 } true;
    call $r9, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(0, $null, r1);
    assert { :sourceloc "ModPow2.java",59,-1,-1,-1 } true;
    call $r10, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r9, $null);
    assert { :sourceloc "ModPow2.java",59,-1,-1,-1 } true;
    if ($heap[$r10,$type] <: java.math.BigInteger) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    r36 := $r10;
    assert { :sourceloc "ModPow2.java",60,-1,-1,-1 } true;
    call $r11, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert { :sourceloc "ModPow2.java",60,-1,-1,-1 } true;
    call $r12, $exception := java.lang.Boolean$valueOf$boolean(0);
    assert { :sourceloc "ModPow2.java",60,-1,-1,-1 } true;
    call $r13, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r11, $r12);
    assert { :sourceloc "ModPow2.java",60,-1,-1,-1 } true;
    if ($heap[$r13,$type] <: java.lang.Boolean) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_3;
        return;
    }
    $r14 := $r13;
    assert { :sourceloc "ModPow2.java",60,-1,-1,-1 } true;
    if ($r14 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_4;
        return;
    }
    call z3, $exception := java.lang.Boolean$booleanValue$($r14);
    assert { :sourceloc "ModPow2.java",63,-1,-1,-1 } true;
    $r15 := java.math.BigInteger$java.math.BigInteger$ONE80;
    assert { :sourceloc "ModPow2.java",63,-1,-1,-1 } true;
    call z1, $exception := java.math.BigInteger$equals$java.lang.Object(r1, $r15);
    assert { :sourceloc "ModPow2.java",65,-1,-1,-1 } true;
    call $r16, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z3, r36, r0);
    assert { :sourceloc "ModPow2.java",65,-1,-1,-1 } true;
    call $r17, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z3, r36, $r16);
    assert { :sourceloc "ModPow2.java",65,-1,-1,-1 } true;
    call $r18, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z1, $r17, r36);
    assert { :sourceloc "ModPow2.java",65,-1,-1,-1 } true;
    if ($heap[$r18,$type] <: java.math.BigInteger) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_5;
        return;
    }
    r37 := $r18;
    assert { :sourceloc "ModPow2.java",66,-1,-1,-1 } true;
    call $r19, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert { :sourceloc "ModPow2.java",66,-1,-1,-1 } true;
    call $r20, $exception := java.lang.Boolean$valueOf$boolean(z3);
    assert { :sourceloc "ModPow2.java",66,-1,-1,-1 } true;
    call $r21, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z1, $r19, $r20);
    assert { :sourceloc "ModPow2.java",66,-1,-1,-1 } true;
    if ($heap[$r21,$type] <: java.lang.Boolean) {
        $exception := $exception;
    } else {
        call $fakelocal_6 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_6;
        return;
    }
    $r22 := $r21;
    assert { :sourceloc "ModPow2.java",66,-1,-1,-1 } true;
    if ($r22 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_7 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_7;
        return;
    }
    call z4, $exception := java.lang.Boolean$booleanValue$($r22);
    assert { :sourceloc "ModPow2.java",69,-1,-1,-1 } true;
    r38 := java.math.BigInteger$java.math.BigInteger$ZERO79;
    assert { :sourceloc "ModPow2.java",70,-1,-1,-1 } true;
    call i8, $exception := java.lang.Math$max$int_int(i0, i1);
    assert { :sourceloc "ModPow2.java",73,-1,-1,-1 } true;
    if (i8 > 800) {
        assert { :sourceloc "ModPow2.java",73,-1,-1,-1 } { :comment "thenblock" } true;
        goto block30;
    } else {
        assert { :sourceloc "ModPow2.java",73,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ModPow2.java",74,-1,-1,-1 } true;
    call r39, $exception := java.math.BigInteger$multiply$java.math.BigInteger(r0, r1);
    assert { :sourceloc "ModPow2.java",74,-1,-1,-1 } true;
    goto block31;
  block30:
    assert { :sourceloc "ModPow2.java",75,-1,-1,-1 } true;
    $i2 := i0 - i1;
    assert { :sourceloc "ModPow2.java",75,-1,-1,-1 } true;
    call $i3, $exception := java.lang.Math$abs$int($i2);
    assert { :sourceloc "ModPow2.java",75,-1,-1,-1 } true;
    if ($i3 < 32) {
        assert { :sourceloc "ModPow2.java",75,-1,-1,-1 } { :comment "thenblock" } true;
        goto block32;
    } else {
        assert { :sourceloc "ModPow2.java",75,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ModPow2.java",76,-1,-1,-1 } true;
    r39 := java.math.BigInteger$java.math.BigInteger$ZERO79;
    assert { :sourceloc "ModPow2.java",77,-1,-1,-1 } true;
    i9 := 0;
  block33:
    assert { :sourceloc "ModPow2.java",77,-1,-1,-1 } true;
    call $i7, $exception := java.math.BigInteger$bitLength$(r1);
    assert { :sourceloc "ModPow2.java",77,-1,-1,-1 } true;
    if (i9 >= $i7) {
        assert { :sourceloc "ModPow2.java",77,-1,-1,-1 } { :comment "thenblock" } true;
        goto block34;
    } else {
        assert { :sourceloc "ModPow2.java",77,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ModPow2.java",78,-1,-1,-1 } true;
    call $z2, $exception := java.math.BigInteger$testBit$int(r1, i9);
    assert { :sourceloc "ModPow2.java",78,-1,-1,-1 } true;
    if ($z2 == 0) {
        assert { :sourceloc "ModPow2.java",78,-1,-1,-1 } { :comment "thenblock" } true;
        goto block35;
    } else {
        assert { :sourceloc "ModPow2.java",78,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ModPow2.java",79,-1,-1,-1 } true;
    call $r35, $exception := java.math.BigInteger$shiftLeft$int(r0, i9);
    assert { :sourceloc "ModPow2.java",79,-1,-1,-1 } true;
    if (r39 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_8 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_8;
        return;
    }
    call r39, $exception := java.math.BigInteger$add$java.math.BigInteger(r39, $r35);
  block35:
    assert { :sourceloc "ModPow2.java",77,-1,-1,-1 } true;
    i9 := i9 + 1;
    assert { :sourceloc "ModPow2.java",77,-1,-1,-1 } true;
    goto block33;
  block34:
    assert { :sourceloc "ModPow2.java",77,-1,-1,-1 } true;
    goto block31;
  block32:
    assert { :sourceloc "ModPow2.java",84,-1,-1,-1 } true;
    if (2 != 0) {
        $exception := $exception;
    } else {
        call $fakelocal_9 := $new(java.lang.ArithmeticException);
        $return := $null;
        $exception := $fakelocal_9;
        return;
    }
    $i5 := $divInt(i8, 2);
    assert { :sourceloc "ModPow2.java",84,-1,-1,-1 } true;
    if (2 != 0) {
        $exception := $exception;
    } else {
        call $fakelocal_10 := $new(java.lang.ArithmeticException);
        $return := $null;
        $exception := $fakelocal_10;
        return;
    }
    $i4 := $modInt(i8, 2);
    assert { :sourceloc "ModPow2.java",84,-1,-1,-1 } true;
    i10 := $i5 + $i4;
    assert { :sourceloc "ModPow2.java",86,-1,-1,-1 } true;
    call r40, $exception := java.math.BigInteger$shiftRight$int(r0, i10);
    assert { :sourceloc "ModPow2.java",87,-1,-1,-1 } true;
    if (r40 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_11 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_11;
        return;
    }
    call $r23, $exception := java.math.BigInteger$shiftLeft$int(r40, i10);
    assert { :sourceloc "ModPow2.java",87,-1,-1,-1 } true;
    call r2, $exception := java.math.BigInteger$subtract$java.math.BigInteger(r0, $r23);
    assert { :sourceloc "ModPow2.java",88,-1,-1,-1 } true;
    call r3, $exception := java.math.BigInteger$shiftRight$int(r1, i10);
    assert { :sourceloc "ModPow2.java",89,-1,-1,-1 } true;
    if (r3 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_12 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_12;
        return;
    }
    call $r24, $exception := java.math.BigInteger$shiftLeft$int(r3, i10);
    assert { :sourceloc "ModPow2.java",89,-1,-1,-1 } true;
    call r4, $exception := java.math.BigInteger$subtract$java.math.BigInteger(r1, $r24);
    assert { :sourceloc "ModPow2.java",91,-1,-1,-1 } true;
    call r5, $exception := ModPow2$fastMultiply_1$java.math.BigInteger_java.math.BigInteger(r2, r4);
    assert { :sourceloc "ModPow2.java",92,-1,-1,-1 } true;
    call r6, $exception := ModPow2$fastMultiply_1$java.math.BigInteger_java.math.BigInteger(r40, r3);
    assert { :sourceloc "ModPow2.java",93,-1,-1,-1 } true;
    if (r2 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_13 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_13;
        return;
    }
    call $r25, $exception := java.math.BigInteger$add$java.math.BigInteger(r2, r40);
    assert { :sourceloc "ModPow2.java",93,-1,-1,-1 } true;
    if (r4 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_14 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_14;
        return;
    }
    call $r26, $exception := java.math.BigInteger$add$java.math.BigInteger(r4, r3);
    assert { :sourceloc "ModPow2.java",93,-1,-1,-1 } true;
    call r7, $exception := ModPow2$fastMultiply_1$java.math.BigInteger_java.math.BigInteger($r25, $r26);
    assert { :sourceloc "ModPow2.java",94,-1,-1,-1 } true;
    if (r7 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_15 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_15;
        return;
    }
    call $r27, $exception := java.math.BigInteger$subtract$java.math.BigInteger(r7, r5);
    assert { :sourceloc "ModPow2.java",94,-1,-1,-1 } true;
    if ($r27 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_16 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_16;
        return;
    }
    call $r28, $exception := java.math.BigInteger$subtract$java.math.BigInteger($r27, r6);
    assert { :sourceloc "ModPow2.java",94,-1,-1,-1 } true;
    if ($r28 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_17 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_17;
        return;
    }
    call $r29, $exception := java.math.BigInteger$shiftLeft$int($r28, i10);
    assert { :sourceloc "ModPow2.java",94,-1,-1,-1 } true;
    if (r5 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_18 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_18;
        return;
    }
    call $r30, $exception := java.math.BigInteger$add$java.math.BigInteger(r5, $r29);
    assert { :sourceloc "ModPow2.java",94,-1,-1,-1 } true;
    $i6 := $mulInt(2, i10);
    assert { :sourceloc "ModPow2.java",94,-1,-1,-1 } true;
    if (r6 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_19 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_19;
        return;
    }
    call $r31, $exception := java.math.BigInteger$shiftLeft$int(r6, $i6);
    assert { :sourceloc "ModPow2.java",94,-1,-1,-1 } true;
    if ($r30 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_20 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_20;
        return;
    }
    call r39, $exception := java.math.BigInteger$add$java.math.BigInteger($r30, $r31);
  block31:
    assert { :sourceloc "ModPow2.java",96,-1,-1,-1 } true;
    call $r32, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z4, r37, r39);
    assert { :sourceloc "ModPow2.java",96,-1,-1,-1 } true;
    call $r33, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z4, r37, $r32);
    assert { :sourceloc "ModPow2.java",96,-1,-1,-1 } true;
    if ($heap[$r33,$type] <: java.math.BigInteger) {
        $exception := $exception;
    } else {
        call $fakelocal_21 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_21;
        return;
    }
    $r34 := $r33;
    assert { :sourceloc "ModPow2.java",96,-1,-1,-1 } true;
    $return := $r34;
    goto block36;
  block36:
    return;
}


implementation ModPow2$fastMultiply_1$java.math.BigInteger_java.math.BigInteger($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref){
    
var $fakelocal_8 : ref;    
var $z0 : int;    
var $fakelocal_5 : ref;    
var $fakelocal_1 : ref;    
var $fakelocal_6 : ref;    
var r7 : ref;    
var $fakelocal_2 : ref;    
var r4 : ref;    
var $i7 : int;    
var $r10 : ref;    
var $r9 : ref;    
var $r14 : ref;    
var r21 : ref;    
var r20 : ref;    
var $r12 : ref;    
var $fakelocal_9 : ref;    
var $fakelocal_11 : ref;    
var $r11 : ref;    
var r1 : ref;    
var $fakelocal_10 : ref;    
var i0 : int;    
var b3 : int;    
var r2 : ref;    
var $r17 : ref;    
var r5 : ref;    
var $r18 : ref;    
var i1 : int;    
var $i8 : int;    
var $fakelocal_13 : ref;    
var $r13 : ref;    
var $fakelocal_4 : ref;    
var r3 : ref;    
var $fakelocal_7 : ref;    
var r0 : ref;    
var $r19 : ref;    
var r8 : ref;    
var $i5 : int;    
var i10 : int;    
var r6 : ref;    
var $fakelocal_3 : ref;    
var s2 : int;    
var $i6 : int;    
var $r16 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_12 : ref;    
var $r15 : ref;    
var $z1 : int;    
var $i4 : int;    
var i9 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1,$type] <: java.math.BigInteger;
    assume $heap[$return,$type] <: java.math.BigInteger;
    assume $heap[$in_parameter__0,$type] <: java.math.BigInteger;
    $exception := $null;
    assert { :sourceloc "ModPow2.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "ModPow2.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "ModPow2.java",101,-1,-1,-1 } true;
    if (r0 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_0;
        return;
    }
    call i0, $exception := java.math.BigInteger$bitLength$(r0);
    assert { :sourceloc "ModPow2.java",102,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
    call i1, $exception := java.math.BigInteger$bitLength$(r1);
    assert { :sourceloc "ModPow2.java",103,-1,-1,-1 } true;
    $r9 := java.math.BigInteger$java.math.BigInteger$ONE80;
    assert { :sourceloc "ModPow2.java",103,-1,-1,-1 } true;
    call $z0, $exception := java.math.BigInteger$equals$java.lang.Object(r0, $r9);
    assert { :sourceloc "ModPow2.java",103,-1,-1,-1 } true;
    if ($z0 == 0) {
        assert { :sourceloc "ModPow2.java",103,-1,-1,-1 } { :comment "thenblock" } true;
        goto block37;
    } else {
        assert { :sourceloc "ModPow2.java",103,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ModPow2.java",104,-1,-1,-1 } true;
    $return := r1;
    goto block42;
  block37:
    assert { :sourceloc "ModPow2.java",106,-1,-1,-1 } true;
    $r10 := java.math.BigInteger$java.math.BigInteger$ONE80;
    assert { :sourceloc "ModPow2.java",106,-1,-1,-1 } true;
    call $z1, $exception := java.math.BigInteger$equals$java.lang.Object(r1, $r10);
    assert { :sourceloc "ModPow2.java",106,-1,-1,-1 } true;
    if ($z1 == 0) {
        assert { :sourceloc "ModPow2.java",106,-1,-1,-1 } { :comment "thenblock" } true;
        goto block38;
    } else {
        assert { :sourceloc "ModPow2.java",106,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ModPow2.java",107,-1,-1,-1 } true;
    $return := r0;
    goto block42;
  block38:
    assert { :sourceloc "ModPow2.java",109,-1,-1,-1 } true;
    r20 := java.math.BigInteger$java.math.BigInteger$ZERO79;
    assert { :sourceloc "ModPow2.java",110,-1,-1,-1 } true;
    call i9, $exception := java.lang.Math$max$int_int(i0, i1);
    assert { :sourceloc "ModPow2.java",111,-1,-1,-1 } true;
    s2 := 800;
    assert { :sourceloc "ModPow2.java",112,-1,-1,-1 } true;
    b3 := 32;
    assert { :sourceloc "ModPow2.java",113,-1,-1,-1 } true;
    if (i9 > s2) {
        assert { :sourceloc "ModPow2.java",113,-1,-1,-1 } { :comment "thenblock" } true;
        goto block39;
    } else {
        assert { :sourceloc "ModPow2.java",113,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ModPow2.java",114,-1,-1,-1 } true;
    call r21, $exception := java.math.BigInteger$multiply$java.math.BigInteger(r0, r1);
    assert { :sourceloc "ModPow2.java",114,-1,-1,-1 } true;
    goto block40;
  block39:
    assert { :sourceloc "ModPow2.java",115,-1,-1,-1 } true;
    $i4 := i0 - i1;
    assert { :sourceloc "ModPow2.java",115,-1,-1,-1 } true;
    call $i5, $exception := java.lang.Math$abs$int($i4);
    assert { :sourceloc "ModPow2.java",115,-1,-1,-1 } true;
    if ($i5 < b3) {
        assert { :sourceloc "ModPow2.java",115,-1,-1,-1 } { :comment "thenblock" } true;
        goto block41;
    } else {
        assert { :sourceloc "ModPow2.java",115,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ModPow2.java",117,-1,-1,-1 } true;
    call r21, $exception := java.math.BigInteger$multiply$java.math.BigInteger(r0, r1);
    assert { :sourceloc "ModPow2.java",117,-1,-1,-1 } true;
    goto block40;
  block41:
    assert { :sourceloc "ModPow2.java",120,-1,-1,-1 } true;
    if (2 != 0) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.ArithmeticException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    $i7 := $divInt(i9, 2);
    assert { :sourceloc "ModPow2.java",120,-1,-1,-1 } true;
    if (2 != 0) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ArithmeticException);
        $return := $null;
        $exception := $fakelocal_3;
        return;
    }
    $i6 := $modInt(i9, 2);
    assert { :sourceloc "ModPow2.java",120,-1,-1,-1 } true;
    i10 := $i7 + $i6;
    assert { :sourceloc "ModPow2.java",122,-1,-1,-1 } true;
    call r2, $exception := java.math.BigInteger$shiftRight$int(r0, i10);
    assert { :sourceloc "ModPow2.java",123,-1,-1,-1 } true;
    if (r2 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_4;
        return;
    }
    call $r11, $exception := java.math.BigInteger$shiftLeft$int(r2, i10);
    assert { :sourceloc "ModPow2.java",123,-1,-1,-1 } true;
    call r3, $exception := java.math.BigInteger$subtract$java.math.BigInteger(r0, $r11);
    assert { :sourceloc "ModPow2.java",124,-1,-1,-1 } true;
    call r4, $exception := java.math.BigInteger$shiftRight$int(r1, i10);
    assert { :sourceloc "ModPow2.java",125,-1,-1,-1 } true;
    if (r4 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_5;
        return;
    }
    call $r12, $exception := java.math.BigInteger$shiftLeft$int(r4, i10);
    assert { :sourceloc "ModPow2.java",125,-1,-1,-1 } true;
    call r5, $exception := java.math.BigInteger$subtract$java.math.BigInteger(r1, $r12);
    assert { :sourceloc "ModPow2.java",127,-1,-1,-1 } true;
    call r6, $exception := ModPow2$fastMultiply_1$java.math.BigInteger_java.math.BigInteger(r3, r5);
    assert { :sourceloc "ModPow2.java",128,-1,-1,-1 } true;
    call r7, $exception := ModPow2$fastMultiply_1$java.math.BigInteger_java.math.BigInteger(r2, r4);
    assert { :sourceloc "ModPow2.java",129,-1,-1,-1 } true;
    if (r3 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_6 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_6;
        return;
    }
    call $r13, $exception := java.math.BigInteger$add$java.math.BigInteger(r3, r2);
    assert { :sourceloc "ModPow2.java",129,-1,-1,-1 } true;
    if (r5 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_7 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_7;
        return;
    }
    call $r14, $exception := java.math.BigInteger$add$java.math.BigInteger(r5, r4);
    assert { :sourceloc "ModPow2.java",129,-1,-1,-1 } true;
    call r8, $exception := ModPow2$fastMultiply_1$java.math.BigInteger_java.math.BigInteger($r13, $r14);
    assert { :sourceloc "ModPow2.java",130,-1,-1,-1 } true;
    if (r8 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_8 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_8;
        return;
    }
    call $r15, $exception := java.math.BigInteger$subtract$java.math.BigInteger(r8, r6);
    assert { :sourceloc "ModPow2.java",130,-1,-1,-1 } true;
    if ($r15 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_9 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_9;
        return;
    }
    call $r16, $exception := java.math.BigInteger$subtract$java.math.BigInteger($r15, r7);
    assert { :sourceloc "ModPow2.java",130,-1,-1,-1 } true;
    if ($r16 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_10 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_10;
        return;
    }
    call $r17, $exception := java.math.BigInteger$shiftLeft$int($r16, i10);
    assert { :sourceloc "ModPow2.java",130,-1,-1,-1 } true;
    if (r6 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_11 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_11;
        return;
    }
    call $r18, $exception := java.math.BigInteger$add$java.math.BigInteger(r6, $r17);
    assert { :sourceloc "ModPow2.java",130,-1,-1,-1 } true;
    $i8 := $mulInt(2, i10);
    assert { :sourceloc "ModPow2.java",130,-1,-1,-1 } true;
    if (r7 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_12 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_12;
        return;
    }
    call $r19, $exception := java.math.BigInteger$shiftLeft$int(r7, $i8);
    assert { :sourceloc "ModPow2.java",130,-1,-1,-1 } true;
    if ($r18 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_13 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_13;
        return;
    }
    call r21, $exception := java.math.BigInteger$add$java.math.BigInteger($r18, $r19);
  block40:
    assert { :sourceloc "ModPow2.java",132,-1,-1,-1 } true;
    $return := r21;
    goto block42;
  block42:
    return;
}


implementation ModPow2$standardMultiply$java.math.BigInteger_java.math.BigInteger($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref){
    
var $fakelocal_1 : ref;    
var r1 : ref;    
var i1 : int;    
var $r2 : ref;    
var $i0 : int;    
var $z0 : int;    
var r3 : ref;    
var r0 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_2 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0,$type] <: java.math.BigInteger;
    assume $heap[$in_parameter__1,$type] <: java.math.BigInteger;
    assume $heap[$return,$type] <: java.math.BigInteger;
    $exception := $null;
    assert { :sourceloc "ModPow2.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "ModPow2.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "ModPow2.java",137,-1,-1,-1 } true;
    r3 := java.math.BigInteger$java.math.BigInteger$ZERO79;
    assert { :sourceloc "ModPow2.java",138,-1,-1,-1 } true;
    i1 := 0;
  block43:
    assert { :sourceloc "ModPow2.java",138,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_0;
        return;
    }
    call $i0, $exception := java.math.BigInteger$bitLength$(r1);
    assert { :sourceloc "ModPow2.java",138,-1,-1,-1 } true;
    if (i1 >= $i0) {
        assert { :sourceloc "ModPow2.java",138,-1,-1,-1 } { :comment "thenblock" } true;
        goto block44;
    } else {
        assert { :sourceloc "ModPow2.java",138,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ModPow2.java",139,-1,-1,-1 } true;
    call $z0, $exception := java.math.BigInteger$testBit$int(r1, i1);
    assert { :sourceloc "ModPow2.java",139,-1,-1,-1 } true;
    if ($z0 == 0) {
        assert { :sourceloc "ModPow2.java",139,-1,-1,-1 } { :comment "thenblock" } true;
        goto block45;
    } else {
        assert { :sourceloc "ModPow2.java",139,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "ModPow2.java",140,-1,-1,-1 } true;
    if (r0 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
    call $r2, $exception := java.math.BigInteger$shiftLeft$int(r0, i1);
    assert { :sourceloc "ModPow2.java",140,-1,-1,-1 } true;
    if (r3 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    call r3, $exception := java.math.BigInteger$add$java.math.BigInteger(r3, $r2);
  block45:
    assert { :sourceloc "ModPow2.java",138,-1,-1,-1 } true;
    i1 := i1 + 1;
    assert { :sourceloc "ModPow2.java",138,-1,-1,-1 } true;
    goto block43;
  block44:
    assert { :sourceloc "ModPow2.java",143,-1,-1,-1 } true;
    $return := r3;
    goto block46;
  block46:
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
    goto block47;
  block47:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0:int) returns ($return:int, $exception:ref){
    
var z1 : int;    
var z0 : int;
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
        goto block48;
    } else {
        assert { :sourceloc "Safe.java",6,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",8,-1,-1,-1 } true;
    z1 := 0;
  block48:
    assert { :sourceloc "Safe.java",7,-1,-1,-1 } true;
    if (z0 != 0) {
        assert { :sourceloc "Safe.java",7,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block49;
    } else {
        assert { :sourceloc "Safe.java",7,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",8,-1,-1,-1 } true;
    z1 := 1;
  block49:
    assert { :sourceloc "Safe.java",8,-1,-1,-1 } true;
    $return := z1;
    goto block50;
  block50:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var z0 : int;    
var $z2 : int;    
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
    goto block51;
  block51:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
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
    assert { :sourceloc "Safe.java",16,-1,-1,-1 } true;
    $z2 := $bitOr(z0, z1);
    assert { :sourceloc "Safe.java",16,-1,-1,-1 } true;
    $return := $z2;
    goto block52;
  block52:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b3 : int;    
var l0 : int;    
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
    assert { :sourceloc "Safe.java",20,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",21,-1,-1,-1 } true;
    $b2 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",21,-1,-1,-1 } true;
    if ($b2 <= 0) {
        assert { :sourceloc "Safe.java",21,-1,-1,-1 } { :comment "thenblock" } true;
        goto block53;
    } else {
        assert { :sourceloc "Safe.java",21,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",23,-1,-1,-1 } true;
    z0 := 1;
  block53:
    assert { :sourceloc "Safe.java",22,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",22,-1,-1,-1 } true;
    if ($b3 > 0) {
        assert { :sourceloc "Safe.java",22,-1,-1,-1 } { :comment "thenblock" } true;
        goto block54;
    } else {
        assert { :sourceloc "Safe.java",22,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",23,-1,-1,-1 } true;
    z0 := 0;
  block54:
    assert { :sourceloc "Safe.java",23,-1,-1,-1 } true;
    $return := z0;
    goto block55;
  block55:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b2 : int;    
var l1 : int;    
var l0 : int;    
var z0 : int;    
var $b3 : int;
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
        goto block56;
    } else {
        assert { :sourceloc "Safe.java",28,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",30,-1,-1,-1 } true;
    z0 := 1;
  block56:
    assert { :sourceloc "Safe.java",29,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",29,-1,-1,-1 } true;
    if ($b3 < 0) {
        assert { :sourceloc "Safe.java",29,-1,-1,-1 } { :comment "thenblock" } true;
        goto block57;
    } else {
        assert { :sourceloc "Safe.java",29,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",30,-1,-1,-1 } true;
    z0 := 0;
  block57:
    assert { :sourceloc "Safe.java",30,-1,-1,-1 } true;
    $return := z0;
    goto block58;
  block58:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var l1 : int;    
var l0 : int;    
var $b2 : int;    
var $b3 : int;    
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
        goto block59;
    } else {
        assert { :sourceloc "Safe.java",35,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",37,-1,-1,-1 } true;
    z0 := 1;
  block59:
    assert { :sourceloc "Safe.java",36,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",36,-1,-1,-1 } true;
    if ($b3 >= 0) {
        assert { :sourceloc "Safe.java",36,-1,-1,-1 } { :comment "thenblock" } true;
        goto block60;
    } else {
        assert { :sourceloc "Safe.java",36,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",37,-1,-1,-1 } true;
    z0 := 0;
  block60:
    assert { :sourceloc "Safe.java",37,-1,-1,-1 } true;
    $return := z0;
    goto block61;
  block61:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b2 : int;    
var l1 : int;    
var l0 : int;    
var $b3 : int;    
var z0 : int;
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
        goto block62;
    } else {
        assert { :sourceloc "Safe.java",42,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",44,-1,-1,-1 } true;
    z0 := 1;
  block62:
    assert { :sourceloc "Safe.java",43,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",43,-1,-1,-1 } true;
    if ($b3 <= 0) {
        assert { :sourceloc "Safe.java",43,-1,-1,-1 } { :comment "thenblock" } true;
        goto block63;
    } else {
        assert { :sourceloc "Safe.java",43,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",44,-1,-1,-1 } true;
    z0 := 0;
  block63:
    assert { :sourceloc "Safe.java",44,-1,-1,-1 } true;
    $return := z0;
    goto block64;
  block64:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b2 : int;    
var l0 : int;    
var $b3 : int;    
var z0 : int;    
var l1 : int;
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
        goto block65;
    } else {
        assert { :sourceloc "Safe.java",49,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",51,-1,-1,-1 } true;
    z0 := 1;
  block65:
    assert { :sourceloc "Safe.java",50,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",50,-1,-1,-1 } true;
    if ($b3 == 0) {
        assert { :sourceloc "Safe.java",50,-1,-1,-1 } { :comment "thenblock" } true;
        goto block66;
    } else {
        assert { :sourceloc "Safe.java",50,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",51,-1,-1,-1 } true;
    z0 := 0;
  block66:
    assert { :sourceloc "Safe.java",51,-1,-1,-1 } true;
    $return := z0;
    goto block67;
  block67:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var z0 : int;    
var $b3 : int;    
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
    assert { :sourceloc "Safe.java",55,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",56,-1,-1,-1 } true;
    $b2 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",56,-1,-1,-1 } true;
    if ($b2 == 0) {
        assert { :sourceloc "Safe.java",56,-1,-1,-1 } { :comment "thenblock" } true;
        goto block68;
    } else {
        assert { :sourceloc "Safe.java",56,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",58,-1,-1,-1 } true;
    z0 := 1;
  block68:
    assert { :sourceloc "Safe.java",57,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",57,-1,-1,-1 } true;
    if ($b3 != 0) {
        assert { :sourceloc "Safe.java",57,-1,-1,-1 } { :comment "thenblock" } true;
        goto block69;
    } else {
        assert { :sourceloc "Safe.java",57,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",58,-1,-1,-1 } true;
    z0 := 0;
  block69:
    assert { :sourceloc "Safe.java",58,-1,-1,-1 } true;
    $return := z0;
    goto block70;
  block70:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b0 : int;    
var $b1 : int;    
var d0 : int;    
var z0 : int;    
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
        goto block71;
    } else {
        assert { :sourceloc "Safe.java",63,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",65,-1,-1,-1 } true;
    z0 := 1;
  block71:
    assert { :sourceloc "Safe.java",64,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",64,-1,-1,-1 } true;
    if ($b1 > 0) {
        assert { :sourceloc "Safe.java",64,-1,-1,-1 } { :comment "thenblock" } true;
        goto block72;
    } else {
        assert { :sourceloc "Safe.java",64,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",65,-1,-1,-1 } true;
    z0 := 0;
  block72:
    assert { :sourceloc "Safe.java",65,-1,-1,-1 } true;
    $return := z0;
    goto block73;
  block73:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b1 : int;    
var d1 : int;    
var $b0 : int;    
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
    assert { :sourceloc "Safe.java",69,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",70,-1,-1,-1 } true;
    $b0 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",70,-1,-1,-1 } true;
    if ($b0 >= 0) {
        assert { :sourceloc "Safe.java",70,-1,-1,-1 } { :comment "thenblock" } true;
        goto block74;
    } else {
        assert { :sourceloc "Safe.java",70,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",72,-1,-1,-1 } true;
    z0 := 1;
  block74:
    assert { :sourceloc "Safe.java",71,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",71,-1,-1,-1 } true;
    if ($b1 < 0) {
        assert { :sourceloc "Safe.java",71,-1,-1,-1 } { :comment "thenblock" } true;
        goto block75;
    } else {
        assert { :sourceloc "Safe.java",71,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",72,-1,-1,-1 } true;
    z0 := 0;
  block75:
    assert { :sourceloc "Safe.java",72,-1,-1,-1 } true;
    $return := z0;
    goto block76;
  block76:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var d0 : int;    
var $b0 : int;    
var z0 : int;    
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
    assert { :sourceloc "Safe.java",76,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",77,-1,-1,-1 } true;
    $b0 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",77,-1,-1,-1 } true;
    if ($b0 < 0) {
        assert { :sourceloc "Safe.java",77,-1,-1,-1 } { :comment "thenblock" } true;
        goto block77;
    } else {
        assert { :sourceloc "Safe.java",77,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",79,-1,-1,-1 } true;
    z0 := 1;
  block77:
    assert { :sourceloc "Safe.java",78,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",78,-1,-1,-1 } true;
    if ($b1 >= 0) {
        assert { :sourceloc "Safe.java",78,-1,-1,-1 } { :comment "thenblock" } true;
        goto block78;
    } else {
        assert { :sourceloc "Safe.java",78,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",79,-1,-1,-1 } true;
    z0 := 0;
  block78:
    assert { :sourceloc "Safe.java",79,-1,-1,-1 } true;
    $return := z0;
    goto block79;
  block79:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
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
    assert { :sourceloc "Safe.java",83,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",84,-1,-1,-1 } true;
    $b0 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",84,-1,-1,-1 } true;
    if ($b0 > 0) {
        assert { :sourceloc "Safe.java",84,-1,-1,-1 } { :comment "thenblock" } true;
        goto block80;
    } else {
        assert { :sourceloc "Safe.java",84,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",86,-1,-1,-1 } true;
    z0 := 1;
  block80:
    assert { :sourceloc "Safe.java",85,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",85,-1,-1,-1 } true;
    if ($b1 <= 0) {
        assert { :sourceloc "Safe.java",85,-1,-1,-1 } { :comment "thenblock" } true;
        goto block81;
    } else {
        assert { :sourceloc "Safe.java",85,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",86,-1,-1,-1 } true;
    z0 := 0;
  block81:
    assert { :sourceloc "Safe.java",86,-1,-1,-1 } true;
    $return := z0;
    goto block82;
  block82:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var z0 : int;    
var $b1 : int;    
var $b0 : int;    
var d1 : int;    
var d0 : int;
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
        goto block83;
    } else {
        assert { :sourceloc "Safe.java",91,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",93,-1,-1,-1 } true;
    z0 := 1;
  block83:
    assert { :sourceloc "Safe.java",92,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",92,-1,-1,-1 } true;
    if ($b1 == 0) {
        assert { :sourceloc "Safe.java",92,-1,-1,-1 } { :comment "thenblock" } true;
        goto block84;
    } else {
        assert { :sourceloc "Safe.java",92,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",93,-1,-1,-1 } true;
    z0 := 0;
  block84:
    assert { :sourceloc "Safe.java",93,-1,-1,-1 } true;
    $return := z0;
    goto block85;
  block85:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var d0 : int;    
var $b1 : int;    
var z0 : int;    
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
        goto block86;
    } else {
        assert { :sourceloc "Safe.java",98,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",100,-1,-1,-1 } true;
    z0 := 1;
  block86:
    assert { :sourceloc "Safe.java",99,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",99,-1,-1,-1 } true;
    if ($b1 != 0) {
        assert { :sourceloc "Safe.java",99,-1,-1,-1 } { :comment "thenblock" } true;
        goto block87;
    } else {
        assert { :sourceloc "Safe.java",99,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",100,-1,-1,-1 } true;
    z0 := 0;
  block87:
    assert { :sourceloc "Safe.java",100,-1,-1,-1 } true;
    $return := z0;
    goto block88;
  block88:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var r0 : ref;    
var r1 : ref;    
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
        goto block89;
    } else {
        assert { :sourceloc "Safe.java",105,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",107,-1,-1,-1 } true;
    z0 := 1;
  block89:
    assert { :sourceloc "Safe.java",106,-1,-1,-1 } true;
    if (r0 == r1) {
        assert { :sourceloc "Safe.java",106,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block90;
    } else {
        assert { :sourceloc "Safe.java",106,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",107,-1,-1,-1 } true;
    z0 := 0;
  block90:
    assert { :sourceloc "Safe.java",107,-1,-1,-1 } true;
    $return := z0;
    goto block91;
  block91:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var r0 : ref;    
var r1 : ref;    
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
        goto block92;
    } else {
        assert { :sourceloc "Safe.java",112,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",114,-1,-1,-1 } true;
    z0 := 1;
  block92:
    assert { :sourceloc "Safe.java",113,-1,-1,-1 } true;
    if (r0 != r1) {
        assert { :sourceloc "Safe.java",113,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block93;
    } else {
        assert { :sourceloc "Safe.java",113,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",114,-1,-1,-1 } true;
    z0 := 0;
  block93:
    assert { :sourceloc "Safe.java",114,-1,-1,-1 } true;
    $return := z0;
    goto block94;
  block94:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref){
    
var r1 : ref;    
var z0 : int;    
var r0 : ref;    
var r2 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$return,$type] <: java.lang.Object;
    assume $heap[$in_parameter__1,$type] <: java.lang.Object;
    assume $heap[$in_parameter__2,$type] <: java.lang.Object;
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
        goto block95;
    } else {
        assert { :sourceloc "Safe.java",118,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",120,-1,-1,-1 } true;
    r2 := r0;
  block95:
    assert { :sourceloc "Safe.java",119,-1,-1,-1 } true;
    if (z0 != 0) {
        assert { :sourceloc "Safe.java",119,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block96;
    } else {
        assert { :sourceloc "Safe.java",119,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",120,-1,-1,-1 } true;
    r2 := r1;
  block96:
    assert { :sourceloc "Safe.java",120,-1,-1,-1 } true;
    $return := r2;
    goto block97;
  block97:
    return;
}


implementation java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref){
    $exception := $null;
    return;
}


