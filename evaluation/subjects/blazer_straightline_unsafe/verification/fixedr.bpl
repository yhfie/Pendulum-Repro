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
const { :sourceloc "Safe.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :sourceloc "Safe.java",-1,-1,-1,-1 } unique sg.edu.nus.comp.tsunami.safe.Safe : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique Sanity : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.IndexOutOfBoundsException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.ArrayIndexOutOfBoundsException : javaType extends  unique java.lang.IndexOutOfBoundsException complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.Number : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.Integer : javaType extends  unique java.lang.Number, java.lang.Comparable complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.ClassCastException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.Appendable : javaType extends  complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.AbstractStringBuilder : javaType extends  unique java.lang.Object, java.lang.Appendable, java.lang.CharSequence complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.StringBuilder : javaType extends  unique java.lang.AbstractStringBuilder, java.io.Serializable, java.lang.CharSequence complete;
const unique $StringConst0 : ref extends  complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Comparable, java.lang.CharSequence complete;
const unique $StringConst1 : ref extends  complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.AutoCloseable : javaType extends  complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.io.Closeable : javaType extends  java.lang.AutoCloseable complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.io.Flushable : javaType extends  complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.io.OutputStream : javaType extends  unique java.lang.Object, java.io.Closeable, java.io.Flushable complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.io.FilterOutputStream : javaType extends  unique java.io.OutputStream complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.io.PrintStream : javaType extends  unique java.io.FilterOutputStream, java.lang.Appendable, java.io.Closeable complete;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $heap == old($heap)[$obj,$alloc := true][$obj,$type := obj_type];    ensures $obj == $intToRef(old($objIndex));    ensures !old($heap[$obj,$alloc]);    ensures $objIndex == old($objIndex) + 1;    modifies $objIndex, $heap;    ensures $obj != $null;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $heap[$other,$alloc] == true;        ensures $other != $null;    ensures $heap[$other,$type] == $heap[$this,$type];

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0:int) returns ($return:int, $exception:ref);    

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

procedure sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref);    

procedure Sanity$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure Sanity$notaint_unsafe$int$lp$$rp$_int($in_parameter__0:ref, $in_parameter__1:int) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

procedure Sanity$nosecret_safe$int$lp$$rp$_int($in_parameter__0:ref, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure Sanity$straightline_unsafe$int_int($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

procedure java.lang.Integer$valueOf$int($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.Integer$intValue$($this:ref) returns ($return:int, $exception:ref);    

procedure Sanity$sanity_safe$int_int($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

procedure java.lang.StringBuilder$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure java.lang.StringBuilder$append$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.StringBuilder$append$int($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.StringBuilder$toString$($this:ref) returns ($return:ref, $exception:ref);    

procedure java.io.PrintStream$println$java.lang.String($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure Sanity$sanity_unsafe$int_int($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

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
    goto block1;
  block1:
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
        goto block2;
    } else {
        assert { :sourceloc "Safe.java",6,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",8,-1,-1,-1 } true;
    z1 := 0;
  block2:
    assert { :sourceloc "Safe.java",7,-1,-1,-1 } true;
    if (z0 != 0) {
        assert { :sourceloc "Safe.java",7,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block3;
    } else {
        assert { :sourceloc "Safe.java",7,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",8,-1,-1,-1 } true;
    z1 := 1;
  block3:
    assert { :sourceloc "Safe.java",8,-1,-1,-1 } true;
    $return := z1;
    goto block4;
  block4:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var z1 : int;    
var $z2 : int;    
var z0 : int;
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
    goto block5;
  block5:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
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
    assert { :sourceloc "Safe.java",16,-1,-1,-1 } true;
    $z2 := $bitOr(z0, z1);
    assert { :sourceloc "Safe.java",16,-1,-1,-1 } true;
    $return := $z2;
    goto block6;
  block6:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b3 : int;    
var $b2 : int;    
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
    assert { :sourceloc "Safe.java",20,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",21,-1,-1,-1 } true;
    $b2 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",21,-1,-1,-1 } true;
    if ($b2 <= 0) {
        assert { :sourceloc "Safe.java",21,-1,-1,-1 } { :comment "thenblock" } true;
        goto block7;
    } else {
        assert { :sourceloc "Safe.java",21,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",23,-1,-1,-1 } true;
    z0 := 1;
  block7:
    assert { :sourceloc "Safe.java",22,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",22,-1,-1,-1 } true;
    if ($b3 > 0) {
        assert { :sourceloc "Safe.java",22,-1,-1,-1 } { :comment "thenblock" } true;
        goto block8;
    } else {
        assert { :sourceloc "Safe.java",22,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",23,-1,-1,-1 } true;
    z0 := 0;
  block8:
    assert { :sourceloc "Safe.java",23,-1,-1,-1 } true;
    $return := z0;
    goto block9;
  block9:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b2 : int;    
var $b3 : int;    
var z0 : int;    
var l1 : int;    
var l0 : int;
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
        goto block10;
    } else {
        assert { :sourceloc "Safe.java",28,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",30,-1,-1,-1 } true;
    z0 := 1;
  block10:
    assert { :sourceloc "Safe.java",29,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",29,-1,-1,-1 } true;
    if ($b3 < 0) {
        assert { :sourceloc "Safe.java",29,-1,-1,-1 } { :comment "thenblock" } true;
        goto block11;
    } else {
        assert { :sourceloc "Safe.java",29,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",30,-1,-1,-1 } true;
    z0 := 0;
  block11:
    assert { :sourceloc "Safe.java",30,-1,-1,-1 } true;
    $return := z0;
    goto block12;
  block12:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var z0 : int;    
var l0 : int;    
var $b3 : int;    
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
    assert { :sourceloc "Safe.java",34,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",35,-1,-1,-1 } true;
    $b2 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",35,-1,-1,-1 } true;
    if ($b2 < 0) {
        assert { :sourceloc "Safe.java",35,-1,-1,-1 } { :comment "thenblock" } true;
        goto block13;
    } else {
        assert { :sourceloc "Safe.java",35,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",37,-1,-1,-1 } true;
    z0 := 1;
  block13:
    assert { :sourceloc "Safe.java",36,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",36,-1,-1,-1 } true;
    if ($b3 >= 0) {
        assert { :sourceloc "Safe.java",36,-1,-1,-1 } { :comment "thenblock" } true;
        goto block14;
    } else {
        assert { :sourceloc "Safe.java",36,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",37,-1,-1,-1 } true;
    z0 := 0;
  block14:
    assert { :sourceloc "Safe.java",37,-1,-1,-1 } true;
    $return := z0;
    goto block15;
  block15:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b3 : int;    
var l1 : int;    
var z0 : int;    
var l0 : int;    
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
        goto block16;
    } else {
        assert { :sourceloc "Safe.java",42,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",44,-1,-1,-1 } true;
    z0 := 1;
  block16:
    assert { :sourceloc "Safe.java",43,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",43,-1,-1,-1 } true;
    if ($b3 <= 0) {
        assert { :sourceloc "Safe.java",43,-1,-1,-1 } { :comment "thenblock" } true;
        goto block17;
    } else {
        assert { :sourceloc "Safe.java",43,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",44,-1,-1,-1 } true;
    z0 := 0;
  block17:
    assert { :sourceloc "Safe.java",44,-1,-1,-1 } true;
    $return := z0;
    goto block18;
  block18:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b2 : int;    
var l0 : int;    
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
    assert { :sourceloc "Safe.java",48,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",49,-1,-1,-1 } true;
    $b2 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",49,-1,-1,-1 } true;
    if ($b2 != 0) {
        assert { :sourceloc "Safe.java",49,-1,-1,-1 } { :comment "thenblock" } true;
        goto block19;
    } else {
        assert { :sourceloc "Safe.java",49,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",51,-1,-1,-1 } true;
    z0 := 1;
  block19:
    assert { :sourceloc "Safe.java",50,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",50,-1,-1,-1 } true;
    if ($b3 == 0) {
        assert { :sourceloc "Safe.java",50,-1,-1,-1 } { :comment "thenblock" } true;
        goto block20;
    } else {
        assert { :sourceloc "Safe.java",50,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",51,-1,-1,-1 } true;
    z0 := 0;
  block20:
    assert { :sourceloc "Safe.java",51,-1,-1,-1 } true;
    $return := z0;
    goto block21;
  block21:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b2 : int;    
var z0 : int;    
var l0 : int;    
var l1 : int;    
var $b3 : int;
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
        goto block22;
    } else {
        assert { :sourceloc "Safe.java",56,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",58,-1,-1,-1 } true;
    z0 := 1;
  block22:
    assert { :sourceloc "Safe.java",57,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",57,-1,-1,-1 } true;
    if ($b3 != 0) {
        assert { :sourceloc "Safe.java",57,-1,-1,-1 } { :comment "thenblock" } true;
        goto block23;
    } else {
        assert { :sourceloc "Safe.java",57,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",58,-1,-1,-1 } true;
    z0 := 0;
  block23:
    assert { :sourceloc "Safe.java",58,-1,-1,-1 } true;
    $return := z0;
    goto block24;
  block24:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
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
    assert { :sourceloc "Safe.java",62,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",63,-1,-1,-1 } true;
    $b0 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",63,-1,-1,-1 } true;
    if ($b0 <= 0) {
        assert { :sourceloc "Safe.java",63,-1,-1,-1 } { :comment "thenblock" } true;
        goto block25;
    } else {
        assert { :sourceloc "Safe.java",63,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",65,-1,-1,-1 } true;
    z0 := 1;
  block25:
    assert { :sourceloc "Safe.java",64,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",64,-1,-1,-1 } true;
    if ($b1 > 0) {
        assert { :sourceloc "Safe.java",64,-1,-1,-1 } { :comment "thenblock" } true;
        goto block26;
    } else {
        assert { :sourceloc "Safe.java",64,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",65,-1,-1,-1 } true;
    z0 := 0;
  block26:
    assert { :sourceloc "Safe.java",65,-1,-1,-1 } true;
    $return := z0;
    goto block27;
  block27:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var d0 : int;    
var $b1 : int;    
var d1 : int;    
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
    assert { :sourceloc "Safe.java",69,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",70,-1,-1,-1 } true;
    $b0 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",70,-1,-1,-1 } true;
    if ($b0 >= 0) {
        assert { :sourceloc "Safe.java",70,-1,-1,-1 } { :comment "thenblock" } true;
        goto block28;
    } else {
        assert { :sourceloc "Safe.java",70,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",72,-1,-1,-1 } true;
    z0 := 1;
  block28:
    assert { :sourceloc "Safe.java",71,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",71,-1,-1,-1 } true;
    if ($b1 < 0) {
        assert { :sourceloc "Safe.java",71,-1,-1,-1 } { :comment "thenblock" } true;
        goto block29;
    } else {
        assert { :sourceloc "Safe.java",71,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",72,-1,-1,-1 } true;
    z0 := 0;
  block29:
    assert { :sourceloc "Safe.java",72,-1,-1,-1 } true;
    $return := z0;
    goto block30;
  block30:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var d0 : int;    
var $b1 : int;    
var $b0 : int;    
var d1 : int;    
var z0 : int;
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
        goto block31;
    } else {
        assert { :sourceloc "Safe.java",77,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",79,-1,-1,-1 } true;
    z0 := 1;
  block31:
    assert { :sourceloc "Safe.java",78,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",78,-1,-1,-1 } true;
    if ($b1 >= 0) {
        assert { :sourceloc "Safe.java",78,-1,-1,-1 } { :comment "thenblock" } true;
        goto block32;
    } else {
        assert { :sourceloc "Safe.java",78,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",79,-1,-1,-1 } true;
    z0 := 0;
  block32:
    assert { :sourceloc "Safe.java",79,-1,-1,-1 } true;
    $return := z0;
    goto block33;
  block33:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b0 : int;    
var d1 : int;    
var $b1 : int;    
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
    assert { :sourceloc "Safe.java",83,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",84,-1,-1,-1 } true;
    $b0 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",84,-1,-1,-1 } true;
    if ($b0 > 0) {
        assert { :sourceloc "Safe.java",84,-1,-1,-1 } { :comment "thenblock" } true;
        goto block34;
    } else {
        assert { :sourceloc "Safe.java",84,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",86,-1,-1,-1 } true;
    z0 := 1;
  block34:
    assert { :sourceloc "Safe.java",85,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",85,-1,-1,-1 } true;
    if ($b1 <= 0) {
        assert { :sourceloc "Safe.java",85,-1,-1,-1 } { :comment "thenblock" } true;
        goto block35;
    } else {
        assert { :sourceloc "Safe.java",85,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",86,-1,-1,-1 } true;
    z0 := 0;
  block35:
    assert { :sourceloc "Safe.java",86,-1,-1,-1 } true;
    $return := z0;
    goto block36;
  block36:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
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
    assert { :sourceloc "Safe.java",90,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",91,-1,-1,-1 } true;
    $b0 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",91,-1,-1,-1 } true;
    if ($b0 != 0) {
        assert { :sourceloc "Safe.java",91,-1,-1,-1 } { :comment "thenblock" } true;
        goto block37;
    } else {
        assert { :sourceloc "Safe.java",91,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",93,-1,-1,-1 } true;
    z0 := 1;
  block37:
    assert { :sourceloc "Safe.java",92,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",92,-1,-1,-1 } true;
    if ($b1 == 0) {
        assert { :sourceloc "Safe.java",92,-1,-1,-1 } { :comment "thenblock" } true;
        goto block38;
    } else {
        assert { :sourceloc "Safe.java",92,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",93,-1,-1,-1 } true;
    z0 := 0;
  block38:
    assert { :sourceloc "Safe.java",93,-1,-1,-1 } true;
    $return := z0;
    goto block39;
  block39:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var d1 : int;    
var d0 : int;    
var $b0 : int;    
var $b1 : int;    
var z0 : int;
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
        goto block40;
    } else {
        assert { :sourceloc "Safe.java",98,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",100,-1,-1,-1 } true;
    z0 := 1;
  block40:
    assert { :sourceloc "Safe.java",99,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",99,-1,-1,-1 } true;
    if ($b1 != 0) {
        assert { :sourceloc "Safe.java",99,-1,-1,-1 } { :comment "thenblock" } true;
        goto block41;
    } else {
        assert { :sourceloc "Safe.java",99,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",100,-1,-1,-1 } true;
    z0 := 0;
  block41:
    assert { :sourceloc "Safe.java",100,-1,-1,-1 } true;
    $return := z0;
    goto block42;
  block42:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var z0 : int;    
var r1 : ref;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1,$type] <: java.lang.Object;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
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
        goto block43;
    } else {
        assert { :sourceloc "Safe.java",105,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",107,-1,-1,-1 } true;
    z0 := 1;
  block43:
    assert { :sourceloc "Safe.java",106,-1,-1,-1 } true;
    if (r0 == r1) {
        assert { :sourceloc "Safe.java",106,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block44;
    } else {
        assert { :sourceloc "Safe.java",106,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",107,-1,-1,-1 } true;
    z0 := 0;
  block44:
    assert { :sourceloc "Safe.java",107,-1,-1,-1 } true;
    $return := z0;
    goto block45;
  block45:
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
        goto block46;
    } else {
        assert { :sourceloc "Safe.java",112,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",114,-1,-1,-1 } true;
    z0 := 1;
  block46:
    assert { :sourceloc "Safe.java",113,-1,-1,-1 } true;
    if (r0 != r1) {
        assert { :sourceloc "Safe.java",113,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block47;
    } else {
        assert { :sourceloc "Safe.java",113,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",114,-1,-1,-1 } true;
    z0 := 0;
  block47:
    assert { :sourceloc "Safe.java",114,-1,-1,-1 } true;
    $return := z0;
    goto block48;
  block48:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref){
    
var r2 : ref;    
var r1 : ref;    
var r0 : ref;    
var z0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$return,$type] <: java.lang.Object;
    assume $heap[$in_parameter__2,$type] <: java.lang.Object;
    assume $heap[$in_parameter__1,$type] <: java.lang.Object;
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
        goto block49;
    } else {
        assert { :sourceloc "Safe.java",118,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",120,-1,-1,-1 } true;
    r2 := r0;
  block49:
    assert { :sourceloc "Safe.java",119,-1,-1,-1 } true;
    if (z0 != 0) {
        assert { :sourceloc "Safe.java",119,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block50;
    } else {
        assert { :sourceloc "Safe.java",119,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",120,-1,-1,-1 } true;
    r2 := r1;
  block50:
    assert { :sourceloc "Safe.java",120,-1,-1,-1 } true;
    $return := r2;
    goto block51;
  block51:
    return;
}


implementation Sanity$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "Sanity.java",-1,-1,-1,-1 } $heap[$this,$type] <: Sanity;
    assume { :sourceloc "Sanity.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "Sanity.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "Sanity.java",4,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "Sanity.java",4,-1,-1,-1 } true;
    goto block52;
  block52:
    return;
}


implementation Sanity$notaint_unsafe$int$lp$$rp$_int($in_parameter__0:ref, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $fakelocal_0 : ref;    
var i3 : int;    
var $i2 : int;    
var $i1 : int;    
var i0 : int;    
var r0 : ref;    
var $fakelocal_1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Sanity.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Sanity.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__1;
    assert { :sourceloc "Sanity.java",7,-1,-1,-1 } true;
    if (0 < $arrSizeHeap[r0] && 0 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    $i1 := $intArrHeap[r0][0];
    assert { :sourceloc "Sanity.java",7,-1,-1,-1 } true;
    if ($i1 <= 0) {
        assert { :sourceloc "Sanity.java",7,-1,-1,-1 } { :comment "thenblock" } true;
        goto block53;
    } else {
        assert { :sourceloc "Sanity.java",7,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",8,-1,-1,-1 } true;
    i3 := 0;
  block54:
    assert { :sourceloc "Sanity.java",8,-1,-1,-1 } true;
    if (0 < $arrSizeHeap[r0] && 0 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_1;
        return;
    }
    $i2 := $intArrHeap[r0][0];
    assert { :sourceloc "Sanity.java",8,-1,-1,-1 } true;
    if (i3 >= $i2) {
        assert { :sourceloc "Sanity.java",8,-1,-1,-1 } { :comment "thenblock" } true;
        goto block53;
    } else {
        assert { :sourceloc "Sanity.java",8,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",10,-1,-1,-1 } true;
    i3 := i3 + 1;
    assert { :sourceloc "Sanity.java",10,-1,-1,-1 } true;
    goto block54;
  block53:
    assert { :sourceloc "Sanity.java",10,-1,-1,-1 } true;
    $return := 1;
    goto block55;
  block55:
    return;
}


implementation Sanity$nosecret_safe$int$lp$$rp$_int($in_parameter__0:ref, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var i0 : int;    
var i1 : int;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Sanity.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Sanity.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__1;
    assert { :sourceloc "Sanity.java",13,-1,-1,-1 } true;
    if (i0 <= 0) {
        assert { :sourceloc "Sanity.java",13,-1,-1,-1 } { :comment "thenblock" } true;
        goto block56;
    } else {
        assert { :sourceloc "Sanity.java",13,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",14,-1,-1,-1 } true;
    i1 := 0;
  block57:
    assert { :sourceloc "Sanity.java",14,-1,-1,-1 } true;
    if (i1 >= i0) {
        assert { :sourceloc "Sanity.java",14,-1,-1,-1 } { :comment "thenblock" } true;
        goto block56;
    } else {
        assert { :sourceloc "Sanity.java",14,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",16,-1,-1,-1 } true;
    i1 := i1 + 1;
    assert { :sourceloc "Sanity.java",16,-1,-1,-1 } true;
    goto block57;
  block56:
    assert { :sourceloc "Sanity.java",16,-1,-1,-1 } true;
    $return := 1;
    goto block58;
  block58:
    return;
}


implementation Sanity$straightline_unsafe$int_int($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $r310 : ref;    
var $fakelocal_356 : ref;    
var $i3 : int;    
var $fakelocal_542 : int;    
var $r140 : ref;    
var $fakelocal_201 : ref;    
var $r28 : ref;    
var $r995 : ref;    
var $r860 : ref;    
var $r522 : ref;    
var $r712 : ref;    
var $r254 : ref;    
var i381 : int;    
var $r878 : ref;    
var $fakelocal_515 : ref;    
var $r618 : ref;    
var $r745 : ref;    
var $r409 : ref;    
var $r405 : ref;    
var $r234 : ref;    
var $fakelocal_84 : ref;    
var $fakelocal_7 : ref;    
var $fakelocal_272 : ref;    
var $fakelocal_511 : ref;    
var $r877 : ref;    
var $fakelocal_72 : ref;    
var $r174 : ref;    
var $i71 : int;    
var $fakelocal_360 : ref;    
var i412 : int;    
var $fakelocal_254 : ref;    
var $i154 : int;    
var $i68 : int;    
var $fakelocal_20 : ref;    
var $r526 : ref;    
var $fakelocal_456 : ref;    
var $fakelocal_148 : ref;    
var $r323 : ref;    
var $r23 : ref;    
var $fakelocal_37 : ref;    
var $fakelocal_313 : ref;    
var $r809 : ref;    
var $fakelocal_233 : ref;    
var i537 : int;    
var $r430 : ref;    
var $fakelocal_399 : ref;    
var $r754 : ref;    
var $r948 : ref;    
var $fakelocal_125 : ref;    
var $r486 : ref;    
var $r275 : ref;    
var $r940 : ref;    
var $r156 : ref;    
var $fakelocal_91 : ref;    
var i420 : int;    
var $i72 : int;    
var $r903 : ref;    
var $r384 : ref;    
var $r88 : ref;    
var i322 : int;    
var $r803 : ref;    
var $r650 : ref;    
var i494 : int;    
var $fakelocal_297 : ref;    
var $r1002 : ref;    
var i332 : int;    
var $r52 : ref;    
var i518 : int;    
var $r372 : ref;    
var $fakelocal_266 : ref;    
var $r158 : ref;    
var $r776 : ref;    
var $i74 : int;    
var $fakelocal_240 : ref;    
var $fakelocal_429 : ref;    
var $fakelocal_92 : ref;    
var $i96 : int;    
var $fakelocal_531 : ref;    
var $fakelocal_341 : ref;    
var $r534 : ref;    
var $r950 : ref;    
var $r849 : ref;    
var $r1038 : ref;    
var $fakelocal_107 : ref;    
var i289 : int;    
var i370 : int;    
var i457 : int;    
var $r544 : ref;    
var $fakelocal_454 : ref;    
var i277 : int;    
var $r242 : ref;    
var i362 : int;    
var $fakelocal_489 : ref;    
var i298 : int;    
var i493 : int;    
var $r229 : ref;    
var $fakelocal_83 : ref;    
var $r460 : ref;    
var $fakelocal_357 : ref;    
var $r353 : ref;    
var $r839 : ref;    
var i324 : int;    
var $r542 : ref;    
var $fakelocal_332 : ref;    
var $i258 : int;    
var $r721 : ref;    
var $r4 : ref;    
var $r1008 : ref;    
var $r284 : ref;    
var i317 : int;    
var $i202 : int;    
var i343 : int;    
var i394 : int;    
var $r624 : ref;    
var $r1030 : ref;    
var $i37 : int;    
var $r871 : ref;    
var $r967 : ref;    
var $fakelocal_299 : ref;    
var $i192 : int;    
var $fakelocal_443 : ref;    
var $r75 : ref;    
var $r773 : ref;    
var $r66 : ref;    
var $r709 : ref;    
var $r0 : ref;    
var $fakelocal_111 : ref;    
var $r123 : ref;    
var $fakelocal_289 : ref;    
var $r885 : ref;    
var $r1032 : ref;    
var $fakelocal_236 : ref;    
var i487 : int;    
var $r131 : ref;    
var $r154 : ref;    
var $r828 : ref;    
var $r728 : ref;    
var i352 : int;    
var $r1066 : ref;    
var $r402 : ref;    
var $r533 : ref;    
var $r128 : ref;    
var $fakelocal_385 : ref;    
var i403 : int;    
var $i172 : int;    
var $r157 : ref;    
var $r765 : ref;    
var $r33 : ref;    
var $r1013 : ref;    
var $r226 : ref;    
var $r104 : ref;    
var $i103 : int;    
var $fakelocal_182 : ref;    
var $r289 : ref;    
var i399 : int;    
var $r272 : ref;    
var $r488 : ref;    
var $r616 : ref;    
var $i173 : int;    
var $fakelocal_195 : ref;    
var $fakelocal_517 : ref;    
var $i244 : int;    
var $i133 : int;    
var $i59 : int;    
var $fakelocal_513 : ref;    
var $fakelocal_261 : ref;    
var i290 : int;    
var $r450 : ref;    
var $fakelocal_243 : ref;    
var $r899 : ref;    
var $r348 : ref;    
var $r520 : ref;    
var i273 : int;    
var $r983 : ref;    
var $i230 : int;    
var i383 : int;    
var $r415 : ref;    
var $r641 : ref;    
var $fakelocal_140 : ref;    
var $r51 : ref;    
var $i21 : int;    
var i380 : int;    
var $r3 : ref;    
var $r166 : ref;    
var $r16 : ref;    
var $i124 : int;    
var $fakelocal_138 : ref;    
var $fakelocal_163 : ref;    
var $fakelocal_484 : ref;    
var $r705 : ref;    
var $r99 : ref;    
var $r781 : ref;    
var $fakelocal_221 : ref;    
var $fakelocal_405 : ref;    
var $fakelocal_253 : ref;    
var $r547 : ref;    
var $i107 : int;    
var $fakelocal_160 : ref;    
var $r802 : ref;    
var $r1051 : ref;    
var i331 : int;    
var $r461 : ref;    
var $r152 : ref;    
var $r237 : ref;    
var $fakelocal_198 : ref;    
var $fakelocal_2 : ref;    
var $r202 : ref;    
var $i49 : int;    
var $i129 : int;    
var $r21 : ref;    
var $r711 : ref;    
var $fakelocal_225 : ref;    
var $r827 : ref;    
var i473 : int;    
var $r599 : ref;    
var $r674 : ref;    
var $fakelocal_401 : ref;    
var $r579 : ref;    
var $fakelocal_404 : ref;    
var $i248 : int;    
var $r723 : ref;    
var $r669 : ref;    
var $i233 : int;    
var i382 : int;    
var $r423 : ref;    
var $i110 : int;    
var $r412 : ref;    
var $fakelocal_431 : ref;    
var $r207 : ref;    
var $r49 : ref;    
var $fakelocal_389 : ref;    
var $fakelocal_492 : ref;    
var $i95 : int;    
var $r1065 : ref;    
var $r988 : ref;    
var $r615 : ref;    
var i326 : int;    
var i363 : int;    
var $r945 : ref;    
var $i239 : int;    
var $fakelocal_60 : ref;    
var $r35 : ref;    
var $i24 : int;    
var $i143 : int;    
var $i23 : int;    
var $r178 : ref;    
var $r17 : ref;    
var i306 : int;    
var $r805 : ref;    
var $r968 : ref;    
var $r245 : ref;    
var i357 : int;    
var $r210 : ref;    
var $z1 : int;    
var $r642 : ref;    
var $r570 : ref;    
var $r469 : ref;    
var $r868 : ref;    
var $r478 : ref;    
var $r317 : ref;    
var i422 : int;    
var $fakelocal_432 : ref;    
var $r311 : ref;    
var $r349 : ref;    
var i437 : int;    
var $r238 : ref;    
var $r359 : ref;    
var $r627 : ref;    
var $r121 : ref;    
var $fakelocal_318 : ref;    
var $r592 : ref;    
var $r498 : ref;    
var $fakelocal_226 : ref;    
var $r955 : ref;    
var $r1021 : ref;    
var $r856 : ref;    
var $r529 : ref;    
var $fakelocal_512 : ref;    
var $fakelocal_114 : ref;    
var $r1076 : ref;    
var i359 : int;    
var $r276 : ref;    
var $fakelocal_74 : ref;    
var $i222 : int;    
var $r866 : ref;    
var $r316 : ref;    
var $fakelocal_407 : ref;    
var i413 : int;    
var $r182 : ref;    
var $fakelocal_98 : ref;    
var $fakelocal_175 : ref;    
var $r133 : ref;    
var $i111 : int;    
var $i43 : int;    
var $i99 : int;    
var $r445 : ref;    
var $r993 : ref;    
var $r601 : ref;    
var i365 : int;    
var $fakelocal_437 : ref;    
var $fakelocal_94 : ref;    
var $r806 : ref;    
var $r186 : ref;    
var i316 : int;    
var $r573 : ref;    
var i318 : int;    
var $r312 : ref;    
var $r429 : ref;    
var $i60 : int;    
var i301 : int;    
var $fakelocal_164 : ref;    
var $r1056 : ref;    
var $fakelocal_453 : ref;    
var $fakelocal_68 : ref;    
var i516 : int;    
var i345 : int;    
var $i263 : int;    
var $r290 : ref;    
var $r1045 : ref;    
var $r1060 : ref;    
var $r1059 : ref;    
var $i256 : int;    
var $i194 : int;    
var $fakelocal_49 : ref;    
var $r329 : ref;    
var $r994 : ref;    
var $r501 : ref;    
var i364 : int;    
var $fakelocal_505 : ref;    
var $r428 : ref;    
var i479 : int;    
var $r575 : ref;    
var $r957 : ref;    
var $r94 : ref;    
var $r485 : ref;    
var $fakelocal_306 : ref;    
var $r278 : ref;    
var $i255 : int;    
var $i48 : int;    
var $r649 : ref;    
var $r1061 : ref;    
var $r292 : ref;    
var $i122 : int;    
var $i250 : int;    
var i337 : int;    
var $r377 : ref;    
var $r648 : ref;    
var $fakelocal_528 : ref;    
var $fakelocal_282 : ref;    
var $fakelocal_5 : ref;    
var $r607 : ref;    
var $r122 : ref;    
var $r302 : ref;    
var i525 : int;    
var $r1069 : ref;    
var i469 : int;    
var $fakelocal_468 : ref;    
var $i211 : int;    
var $r555 : ref;    
var $i132 : int;    
var $r989 : ref;    
var $r176 : ref;    
var $r963 : ref;    
var $r177 : ref;    
var $fakelocal_255 : ref;    
var $fakelocal_304 : ref;    
var $r408 : ref;    
var $r1033 : ref;    
var $fakelocal_482 : ref;    
var $i14 : int;    
var $fakelocal_283 : ref;    
var $r495 : ref;    
var $r638 : ref;    
var $r250 : ref;    
var $i162 : int;    
var $i171 : int;    
var $i10 : int;    
var $r467 : ref;    
var $r414 : ref;    
var $fakelocal_469 : ref;    
var $r436 : ref;    
var $fakelocal_490 : ref;    
var i379 : int;    
var $i22 : int;    
var $r683 : ref;    
var $i184 : int;    
var i471 : int;    
var $r385 : ref;    
var $fakelocal_71 : ref;    
var $fakelocal_442 : ref;    
var $fakelocal_1 : ref;    
var $r288 : ref;    
var $i11 : int;    
var i395 : int;    
var $r882 : ref;    
var $i102 : int;    
var $r101 : ref;    
var $fakelocal_406 : ref;    
var $r195 : ref;    
var $r314 : ref;    
var $r619 : ref;    
var $r550 : ref;    
var i366 : int;    
var $fakelocal_486 : ref;    
var $r958 : ref;    
var $r685 : ref;    
var $r309 : ref;    
var $fakelocal_96 : ref;    
var $r201 : ref;    
var $l2 : int;    
var $fakelocal_258 : ref;    
var $r55 : ref;    
var $fakelocal_54 : ref;    
var $i76 : int;    
var $r677 : ref;    
var $r374 : ref;    
var $r459 : ref;    
var $r530 : ref;    
var $fakelocal_363 : ref;    
var $fakelocal_455 : ref;    
var i506 : int;    
var $r151 : ref;    
var $fakelocal_374 : ref;    
var $fakelocal_80 : ref;    
var $r792 : ref;    
var $r1054 : ref;    
var $fakelocal_510 : ref;    
var $r192 : ref;    
var $fakelocal_13 : ref;    
var i288 : int;    
var $fakelocal_403 : ref;    
var $r1050 : ref;    
var $i269 : int;    
var $i67 : int;    
var $r332 : ref;    
var $r443 : ref;    
var $i13 : int;    
var $fakelocal_82 : ref;    
var $i180 : int;    
var $r453 : ref;    
var $r1049 : ref;    
var $r780 : ref;    
var i534 : int;    
var $r569 : ref;    
var $r901 : ref;    
var $r509 : ref;    
var i532 : int;    
var $r1019 : ref;    
var $fakelocal_523 : ref;    
var $fakelocal_317 : ref;    
var $fakelocal_89 : ref;    
var $fakelocal_120 : ref;    
var $fakelocal_186 : ref;    
var $fakelocal_235 : ref;    
var $r264 : ref;    
var i402 : int;    
var i501 : int;    
var $r700 : ref;    
var $fakelocal_197 : ref;    
var $r643 : ref;    
var $i187 : int;    
var i529 : int;    
var $r364 : ref;    
var $i87 : int;    
var $i19 : int;    
var $fakelocal_210 : ref;    
var $r300 : ref;    
var $r554 : ref;    
var $fakelocal_85 : ref;    
var $r25 : ref;    
var $r449 : ref;    
var $fakelocal_11 : ref;    
var $fakelocal_187 : ref;    
var $r76 : ref;    
var $r253 : ref;    
var $fakelocal_427 : ref;    
var $r96 : ref;    
var $r870 : ref;    
var $r978 : ref;    
var $fakelocal_421 : ref;    
var i533 : int;    
var $r671 : ref;    
var $i36 : int;    
var $fakelocal_97 : ref;    
var $fakelocal_312 : ref;    
var $r111 : ref;    
var $fakelocal_537 : ref;    
var $fakelocal_519 : ref;    
var $r83 : ref;    
var $fakelocal_142 : ref;    
var $r523 : ref;    
var $fakelocal_307 : ref;    
var $fakelocal_530 : ref;    
var $fakelocal_340 : ref;    
var i498 : int;    
var $fakelocal_105 : ref;    
var $r431 : ref;    
var i423 : int;    
var $r68 : ref;    
var $r218 : ref;    
var $r887 : ref;    
var $r696 : ref;    
var $fakelocal_342 : ref;    
var $i213 : int;    
var $r714 : ref;    
var $i205 : int;    
var $r559 : ref;    
var $fakelocal_497 : ref;    
var $r563 : ref;    
var $i241 : int;    
var $r889 : ref;    
var i472 : int;    
var $fakelocal_457 : ref;    
var $r594 : ref;    
var $r511 : ref;    
var $i115 : int;    
var $r873 : ref;    
var $r2 : ref;    
var $r43 : ref;    
var $r29 : ref;    
var $fakelocal_328 : ref;    
var $r48 : ref;    
var $r568 : ref;    
var $fakelocal_150 : ref;    
var $r283 : ref;    
var $r1073 : ref;    
var $r58 : ref;    
var $fakelocal_63 : ref;    
var $r906 : ref;    
var i459 : int;    
var $i101 : int;    
var $r837 : ref;    
var $r930 : ref;    
var $i90 : int;    
var $i82 : int;    
var $i63 : int;    
var $i53 : int;    
var $r379 : ref;    
var $r1072 : ref;    
var $fakelocal_128 : ref;    
var i311 : int;    
var $r678 : ref;    
var $r421 : ref;    
var $r22 : ref;    
var $r992 : ref;    
var $r1063 : ref;    
var $fakelocal_28 : ref;    
var $r386 : ref;    
var $fakelocal_42 : ref;    
var $fakelocal_525 : ref;    
var $fakelocal_303 : ref;    
var $r1020 : ref;    
var $r695 : ref;    
var $r794 : ref;    
var $r171 : ref;    
var $i128 : int;    
var $fakelocal_231 : ref;    
var $r295 : ref;    
var i465 : int;    
var $r205 : ref;    
var $fakelocal_476 : ref;    
var $r571 : ref;    
var $fakelocal_541 : ref;    
var $i259 : int;    
var $fakelocal_214 : ref;    
var $fakelocal_308 : ref;    
var i478 : int;    
var $r1015 : ref;    
var $r134 : ref;    
var $r580 : ref;    
var $r286 : ref;    
var $r661 : ref;    
var i424 : int;    
var $r221 : ref;    
var $r227 : ref;    
var $r1039 : ref;    
var $r934 : ref;    
var $r654 : ref;    
var $fakelocal_156 : ref;    
var $fakelocal_522 : ref;    
var $fakelocal_424 : ref;    
var $i272 : int;    
var $r1003 : ref;    
var $fakelocal_110 : ref;    
var i489 : int;    
var $fakelocal_333 : ref;    
var $r838 : ref;    
var i503 : int;    
var $fakelocal_263 : ref;    
var $fakelocal_479 : ref;    
var $r668 : ref;    
var $r798 : ref;    
var $r89 : ref;    
var $i189 : int;    
var $r432 : ref;    
var $i253 : int;    
var $r710 : ref;    
var $r830 : ref;    
var $fakelocal_38 : ref;    
var $fakelocal_75 : ref;    
var $r251 : ref;    
var $r426 : ref;    
var $r189 : ref;    
var $i262 : int;    
var $r564 : ref;    
var $r874 : ref;    
var i356 : int;    
var $r1006 : ref;    
var $i29 : int;    
var i283 : int;    
var $fakelocal_252 : ref;    
var $r506 : ref;    
var $r173 : ref;    
var $fakelocal_439 : ref;    
var $r153 : ref;    
var $fakelocal_154 : ref;    
var $r872 : ref;    
var $r549 : ref;    
var $r722 : ref;    
var $r973 : ref;    
var $r923 : ref;    
var $fakelocal_319 : ref;    
var $i113 : int;    
var $r625 : ref;    
var $r883 : ref;    
var $r336 : ref;    
var $fakelocal_86 : ref;    
var $i58 : int;    
var $r1079 : ref;    
var $r864 : ref;    
var $r855 : ref;    
var $r107 : ref;    
var $r1067 : ref;    
var $r401 : ref;    
var $r211 : ref;    
var $r783 : ref;    
var $r185 : ref;    
var $r620 : ref;    
var i303 : int;    
var $r324 : ref;    
var i307 : int;    
var $r630 : ref;    
var i360 : int;    
var $r532 : ref;    
var $i112 : int;    
var $r1075 : ref;    
var $fakelocal_6 : ref;    
var $r636 : ref;    
var $fakelocal_190 : ref;    
var $r1001 : ref;    
var $r452 : ref;    
var $r884 : ref;    
var $fakelocal_136 : ref;    
var $fakelocal_196 : ref;    
var $r472 : ref;    
var $fakelocal_52 : ref;    
var i405 : int;    
var $r731 : ref;    
var $i183 : int;    
var $fakelocal_345 : ref;    
var $r357 : ref;    
var $i86 : int;    
var $r217 : ref;    
var $r1053 : ref;    
var $i16 : int;    
var $r744 : ref;    
var $r352 : ref;    
var $fakelocal_388 : ref;    
var $r320 : ref;    
var $r779 : ref;    
var $r933 : ref;    
var $r545 : ref;    
var $r1027 : ref;    
var $fakelocal_305 : ref;    
var $fakelocal_331 : ref;    
var $r39 : ref;    
var $i114 : int;    
var $r886 : ref;    
var $i186 : int;    
var $fakelocal_470 : ref;    
var $r125 : ref;    
var $r527 : ref;    
var $r212 : ref;    
var $fakelocal_458 : ref;    
var $r760 : ref;    
var $r179 : ref;    
var i514 : int;    
var $r102 : ref;    
var i544 : int;    
var $fakelocal_415 : ref;    
var i384 : int;    
var $fakelocal_507 : ref;    
var $i119 : int;    
var $r410 : ref;    
var $r720 : ref;    
var $i54 : int;    
var $fakelocal_90 : ref;    
var $r321 : ref;    
var $r56 : ref;    
var $i268 : int;    
var $r1042 : ref;    
var i330 : int;    
var $r632 : ref;    
var $fakelocal_102 : ref;    
var i414 : int;    
var $fakelocal_534 : ref;    
var $fakelocal_229 : ref;    
var $r214 : ref;    
var $r693 : ref;    
var i287 : int;    
var $r927 : ref;    
var $r246 : ref;    
var $r836 : ref;    
var $fakelocal_219 : ref;    
var i485 : int;    
var $i179 : int;    
var $r442 : ref;    
var $i12 : int;    
var $fakelocal_481 : ref;    
var $r146 : ref;    
var $r982 : ref;    
var $r1057 : ref;    
var $r206 : ref;    
var i361 : int;    
var $r746 : ref;    
var $r26 : ref;    
var $r491 : ref;    
var $fakelocal_504 : ref;    
var i536 : int;    
var $r416 : ref;    
var i280 : int;    
var $r13 : ref;    
var $r113 : ref;    
var $fakelocal_362 : ref;    
var i429 : int;    
var $i254 : int;    
var $fakelocal_286 : ref;    
var i321 : int;    
var $fakelocal_234 : ref;    
var $i195 : int;    
var $fakelocal_256 : ref;    
var $r149 : ref;    
var $r482 : ref;    
var $r203 : ref;    
var $r857 : ref;    
var $i9 : int;    
var $r751 : ref;    
var i500 : int;    
var $i176 : int;    
var i449 : int;    
var $fakelocal_250 : ref;    
var $r306 : ref;    
var $r987 : ref;    
var i294 : int;    
var $r861 : ref;    
var $i203 : int;    
var i377 : int;    
var i349 : int;    
var $r893 : ref;    
var $i117 : int;    
var $fakelocal_9 : ref;    
var $fakelocal_358 : ref;    
var $r738 : ref;    
var $fakelocal_153 : ref;    
var $fakelocal_382 : ref;    
var $r1034 : ref;    
var $r567 : ref;    
var $i240 : int;    
var $r819 : ref;    
var $fakelocal_239 : ref;    
var $fakelocal_532 : ref;    
var $fakelocal_324 : ref;    
var $r894 : ref;    
var $r793 : ref;    
var i275 : int;    
var $fakelocal_448 : ref;    
var $r239 : ref;    
var $fakelocal_30 : ref;    
var $fakelocal_193 : ref;    
var $fakelocal_19 : ref;    
var $fakelocal_32 : ref;    
var $i34 : int;    
var $fakelocal_412 : ref;    
var $i123 : int;    
var $r114 : ref;    
var $r729 : ref;    
var $r621 : ref;    
var $r481 : ref;    
var $r755 : ref;    
var $r167 : ref;    
var $r411 : ref;    
var $r1044 : ref;    
var $fakelocal_459 : ref;    
var $r565 : ref;    
var i512 : int;    
var i281 : int;    
var $r93 : ref;    
var $r670 : ref;    
var i367 : int;    
var $fakelocal_472 : ref;    
var $i231 : int;    
var $r997 : ref;    
var $fakelocal_441 : ref;    
var $r655 : ref;    
var $fakelocal_418 : ref;    
var $fakelocal_179 : ref;    
var $r916 : ref;    
var $r747 : ref;    
var i522 : int;    
var $r333 : ref;    
var $r420 : ref;    
var $r103 : ref;    
var $fakelocal_336 : ref;    
var $r476 : ref;    
var $r132 : ref;    
var $i140 : int;    
var $fakelocal_108 : ref;    
var $fakelocal_506 : ref;    
var $r69 : ref;    
var i320 : int;    
var $r1082 : ref;    
var $r785 : ref;    
var $r1055 : ref;    
var $r774 : ref;    
var $i251 : int;    
var $r981 : ref;    
var $i181 : int;    
var $r1029 : ref;    
var $fakelocal_22 : ref;    
var $r1009 : ref;    
var $fakelocal_265 : ref;    
var $r396 : ref;    
var $r155 : ref;    
var $r505 : ref;    
var $i226 : int;    
var $fakelocal_109 : ref;    
var $fakelocal_70 : ref;    
var $fakelocal_460 : ref;    
var i427 : int;    
var $fakelocal_241 : ref;    
var $fakelocal_327 : ref;    
var i409 : int;    
var $r1058 : ref;    
var $r666 : ref;    
var $r1062 : ref;    
var $fakelocal_285 : ref;    
var i323 : int;    
var $r552 : ref;    
var $r1048 : ref;    
var i329 : int;    
var $i66 : int;    
var $r1041 : ref;    
var $r810 : ref;    
var $r1016 : ref;    
var i535 : int;    
var $fakelocal_73 : ref;    
var $fakelocal_508 : ref;    
var $r635 : ref;    
var $i130 : int;    
var $fakelocal_279 : ref;    
var $r716 : ref;    
var $r252 : ref;    
var $r1083 : ref;    
var $i18 : int;    
var $r14 : ref;    
var $r633 : ref;    
var $r929 : ref;    
var $fakelocal_56 : ref;    
var z0 : int;    
var $r36 : ref;    
var $fakelocal_183 : ref;    
var $fakelocal_172 : ref;    
var $i260 : int;    
var $r742 : ref;    
var $fakelocal_491 : ref;    
var i341 : int;    
var i350 : int;    
var $r787 : ref;    
var $fakelocal_99 : ref;    
var i488 : int;    
var $fakelocal_417 : ref;    
var $fakelocal_257 : ref;    
var $r605 : ref;    
var $fakelocal_326 : ref;    
var $i136 : int;    
var i492 : int;    
var $i229 : int;    
var $r197 : ref;    
var $r110 : ref;    
var i511 : int;    
var $r150 : ref;    
var $i42 : int;    
var i313 : int;    
var $r370 : ref;    
var $i206 : int;    
var $r613 : ref;    
var $r274 : ref;    
var $r84 : ref;    
var $r761 : ref;    
var i375 : int;    
var $fakelocal_62 : ref;    
var $r434 : ref;    
var $r305 : ref;    
var $i51 : int;    
var $fakelocal_199 : ref;    
var $fakelocal_494 : ref;    
var $r419 : ref;    
var $r92 : ref;    
var $fakelocal_47 : ref;    
var $fakelocal_51 : ref;    
var i348 : int;    
var $i108 : int;    
var $fakelocal_139 : ref;    
var $i165 : int;    
var $r845 : ref;    
var $r909 : ref;    
var $r926 : ref;    
var i346 : int;    
var $r147 : ref;    
var $r1010 : ref;    
var $r938 : ref;    
var $i52 : int;    
var $r835 : ref;    
var $r999 : ref;    
var $i41 : int;    
var $r475 : ref;    
var $i150 : int;    
var $r193 : ref;    
var $i215 : int;    
var $fakelocal_440 : ref;    
var $fakelocal_189 : ref;    
var $r216 : ref;    
var $r181 : ref;    
var $fakelocal_496 : ref;    
var i296 : int;    
var $i28 : int;    
var $r991 : ref;    
var $r752 : ref;    
var $r652 : ref;    
var $i40 : int;    
var $fakelocal_222 : ref;    
var i476 : int;    
var $fakelocal_76 : ref;    
var $fakelocal_133 : ref;    
var $r724 : ref;    
var $r956 : ref;    
var $fakelocal_25 : ref;    
var $i220 : int;    
var $r376 : ref;    
var $fakelocal_242 : ref;    
var $r879 : ref;    
var $fakelocal_533 : ref;    
var $fakelocal_291 : ref;    
var $fakelocal_348 : ref;    
var $fakelocal_430 : ref;    
var i436 : int;    
var $r78 : ref;    
var $r941 : ref;    
var $r1031 : ref;    
var $r653 : ref;    
var i305 : int;    
var $r905 : ref;    
var $r707 : ref;    
var $fakelocal_325 : ref;    
var $r1074 : ref;    
var $fakelocal_270 : ref;    
var $r974 : ref;    
var i486 : int;    
var $r50 : ref;    
var $fakelocal_371 : ref;    
var $i249 : int;    
var $i25 : int;    
var $r119 : ref;    
var $fakelocal_467 : ref;    
var $r1011 : ref;    
var $r161 : ref;    
var $i157 : int;    
var $r820 : ref;    
var $r248 : ref;    
var $r593 : ref;    
var $fakelocal_444 : ref;    
var $r557 : ref;    
var $i245 : int;    
var $r293 : ref;    
var $r853 : ref;    
var $r138 : ref;    
var $i121 : int;    
var $r679 : ref;    
var $fakelocal_500 : ref;    
var $fakelocal_18 : ref;    
var $fakelocal_343 : ref;    
var $fakelocal_8 : ref;    
var $fakelocal_428 : ref;    
var $fakelocal_278 : ref;    
var $r464 : ref;    
var $fakelocal_146 : ref;    
var $i142 : int;    
var $fakelocal_168 : ref;    
var $fakelocal_65 : ref;    
var $i159 : int;    
var $r100 : ref;    
var $r959 : ref;    
var $r44 : ref;    
var $r406 : ref;    
var $r299 : ref;    
var i312 : int;    
var $fakelocal_409 : ref;    
var $i47 : int;    
var $r298 : ref;    
var $r869 : ref;    
var $r126 : ref;    
var $fakelocal_0 : ref;    
var $i84 : int;    
var $r95 : ref;    
var $fakelocal_247 : ref;    
var $fakelocal_483 : ref;    
var $r80 : ref;    
var $fakelocal_354 : ref;    
var $fakelocal_433 : ref;    
var $i116 : int;    
var $fakelocal_217 : ref;    
var $i270 : int;    
var $r667 : ref;    
var $r536 : ref;    
var $i207 : int;    
var $r686 : ref;    
var $r424 : ref;    
var $i35 : int;    
var $fakelocal_488 : ref;    
var i401 : int;    
var $fakelocal_59 : ref;    
var i428 : int;    
var $fakelocal_535 : ref;    
var $r862 : ref;    
var $r546 : ref;    
var $fakelocal_64 : ref;    
var $r1017 : ref;    
var $r858 : ref;    
var $r818 : ref;    
var $r15 : ref;    
var $r846 : ref;    
var $r334 : ref;    
var $fakelocal_413 : ref;    
var $i185 : int;    
var $r688 : ref;    
var $r318 : ref;    
var $fakelocal_228 : ref;    
var i434 : int;    
var $fakelocal_35 : ref;    
var $fakelocal_206 : ref;    
var $fakelocal_316 : ref;    
var $r387 : ref;    
var $r172 : ref;    
var $r676 : ref;    
var i319 : int;    
var $i158 : int;    
var $fakelocal_31 : ref;    
var $r910 : ref;    
var $r277 : ref;    
var i419 : int;    
var i452 : int;    
var $i97 : int;    
var $r813 : ref;    
var $r1000 : ref;    
var $i146 : int;    
var $r32 : ref;    
var $i152 : int;    
var $r949 : ref;    
var $r817 : ref;    
var $fakelocal_446 : ref;    
var i291 : int;    
var $fakelocal_309 : ref;    
var i474 : int;    
var $i271 : int;    
var $i210 : int;    
var $i221 : int;    
var $fakelocal_526 : ref;    
var i450 : int;    
var $r614 : ref;    
var $r513 : ref;    
var $r417 : ref;    
var i464 : int;    
var $fakelocal_338 : ref;    
var $fakelocal_419 : ref;    
var $i261 : int;    
var i376 : int;    
var $fakelocal_144 : ref;    
var $i20 : int;    
var $r455 : ref;    
var $r34 : ref;    
var $r255 : ref;    
var $r966 : ref;    
var $r281 : ref;    
var $r479 : ref;    
var $i75 : int;    
var $r325 : ref;    
var $r902 : ref;    
var $r341 : ref;    
var $r979 : ref;    
var i509 : int;    
var i439 : int;    
var $z2 : int;    
var $fakelocal_27 : ref;    
var $r770 : ref;    
var $fakelocal_237 : ref;    
var $i198 : int;    
var $r87 : ref;    
var $r109 : ref;    
var $r1068 : ref;    
var $fakelocal_423 : ref;    
var $r807 : ref;    
var $fakelocal_113 : ref;    
var $r1071 : ref;    
var $fakelocal_397 : ref;    
var $fakelocal_524 : ref;    
var $fakelocal_314 : ref;    
var $r915 : ref;    
var $r865 : ref;    
var i433 : int;    
var i416 : int;    
var $i218 : int;    
var $r931 : ref;    
var i410 : int;    
var $r350 : ref;    
var $r656 : ref;    
var $fakelocal_162 : ref;    
var $i81 : int;    
var $r657 : ref;    
var i393 : int;    
var i354 : int;    
var $r629 : ref;    
var $r265 : ref;    
var $r854 : ref;    
var i528 : int;    
var $fakelocal_322 : ref;    
var $r413 : ref;    
var $r844 : ref;    
var $r106 : ref;    
var $r10 : ref;    
var $fakelocal_351 : ref;    
var $fakelocal_499 : ref;    
var $r399 : ref;    
var $r365 : ref;    
var i385 : int;    
var $r517 : ref;    
var $r1012 : ref;    
var $r222 : ref;    
var $r315 : ref;    
var $r775 : ref;    
var $r939 : ref;    
var $r706 : ref;    
var $r129 : ref;    
var $fakelocal_145 : ref;    
var $r1070 : ref;    
var $r733 : ref;    
var $fakelocal_245 : ref;    
var $fakelocal_87 : ref;    
var $fakelocal_202 : ref;    
var $fakelocal_288 : ref;    
var $r960 : ref;    
var $r863 : ref;    
var $r832 : ref;    
var $i104 : int;    
var i466 : int;    
var $fakelocal_34 : ref;    
var i541 : int;    
var $r881 : ref;    
var $r759 : ref;    
var $r583 : ref;    
var i523 : int;    
var $i236 : int;    
var $r596 : ref;    
var $r85 : ref;    
var $r1014 : ref;    
var $r53 : ref;    
var $r904 : ref;    
var $r646 : ref;    
var $i223 : int;    
var $fakelocal_262 : ref;    
var $fakelocal_475 : ref;    
var $fakelocal_501 : ref;    
var i309 : int;    
var $r944 : ref;    
var i295 : int;    
var $r304 : ref;    
var i491 : int;    
var $r280 : ref;    
var $r585 : ref;    
var i502 : int;    
var $fakelocal_211 : ref;    
var $fakelocal_213 : ref;    
var $r294 : ref;    
var $r98 : ref;    
var $r962 : ref;    
var i304 : int;    
var i355 : int;    
var $r160 : ref;    
var $r215 : ref;    
var $fakelocal_230 : ref;    
var $r483 : ref;    
var $r322 : ref;    
var $r244 : ref;    
var $r356 : ref;    
var $r480 : ref;    
var $i156 : int;    
var $r224 : ref;    
var $r1037 : ref;    
var $r777 : ref;    
var $fakelocal_124 : ref;    
var $r704 : ref;    
var $r715 : ref;    
var $r890 : ref;    
var $r347 : ref;    
var $fakelocal_166 : ref;    
var $r11 : ref;    
var $r831 : ref;    
var $fakelocal_134 : ref;    
var $i32 : int;    
var $r647 : ref;    
var $fakelocal_465 : ref;    
var $fakelocal_167 : ref;    
var $r766 : ref;    
var $r758 : ref;    
var $i208 : int;    
var $fakelocal_48 : ref;    
var $r524 : ref;    
var $r393 : ref;    
var i435 : int;    
var $r757 : ref;    
var $r628 : ref;    
var $r514 : ref;    
var $i100 : int;    
var $r812 : ref;    
var $r578 : ref;    
var i438 : int;    
var i453 : int;    
var i443 : int;    
var $r473 : ref;    
var i425 : int;    
var $r303 : ref;    
var $fakelocal_194 : ref;    
var $r833 : ref;    
var $i212 : int;    
var $r81 : ref;    
var $r240 : ref;    
var $r644 : ref;    
var $r371 : ref;    
var i462 : int;    
var $r378 : ref;    
var $r388 : ref;    
var $r919 : ref;    
var i542 : int;    
var $r815 : ref;    
var $fakelocal_521 : ref;    
var $fakelocal_161 : ref;    
var $fakelocal_88 : ref;    
var $r762 : ref;    
var $fakelocal_451 : ref;    
var i335 : int;    
var $r692 : ref;    
var $r639 : ref;    
var i513 : int;    
var i0 : int;    
var $r976 : ref;    
var $fakelocal_101 : ref;    
var $fakelocal_463 : ref;    
var i372 : int;    
var $r717 : ref;    
var $r531 : ref;    
var $r689 : ref;    
var $fakelocal_293 : ref;    
var $fakelocal_269 : ref;    
var $fakelocal_260 : ref;    
var $fakelocal_81 : ref;    
var $fakelocal_180 : ref;    
var $r617 : ref;    
var $r63 : ref;    
var $r825 : ref;    
var $r398 : ref;    
var i297 : int;    
var $fakelocal_379 : ref;    
var $fakelocal_112 : ref;    
var $r18 : ref;    
var $r734 : ref;    
var $r588 : ref;    
var $r112 : ref;    
var $r235 : ref;    
var $fakelocal_123 : ref;    
var $i174 : int;    
var $r228 : ref;    
var $i252 : int;    
var $r664 : ref;    
var i483 : int;    
var $fakelocal_58 : ref;    
var $fakelocal_232 : ref;    
var $r771 : ref;    
var $i120 : int;    
var $r470 : ref;    
var $fakelocal_165 : ref;    
var $fakelocal_473 : ref;    
var $fakelocal_498 : ref;    
var $r71 : ref;    
var i339 : int;    
var $i144 : int;    
var i278 : int;    
var $fakelocal_36 : ref;    
var $fakelocal_376 : ref;    
var $fakelocal_364 : ref;    
var $r990 : ref;    
var $i182 : int;    
var i520 : int;    
var $fakelocal_177 : ref;    
var $r456 : ref;    
var $i26 : int;    
var $fakelocal_462 : ref;    
var $r27 : ref;    
var $r691 : ref;    
var $i155 : int;    
var $r913 : ref;    
var i495 : int;    
var $i15 : int;    
var $r180 : ref;    
var $r213 : ref;    
var $i77 : int;    
var $r843 : ref;    
var $r975 : ref;    
var $r850 : ref;    
var $r198 : ref;    
var $r541 : ref;    
var $i38 : int;    
var i392 : int;    
var $fakelocal_540 : ref;    
var i543 : int;    
var $r852 : ref;    
var $r961 : ref;    
var $fakelocal_373 : ref;    
var $r41 : ref;    
var i373 : int;    
var $i204 : int;    
var $r503 : ref;    
var $r390 : ref;    
var i477 : int;    
var $i46 : int;    
var $r891 : ref;    
var i284 : int;    
var i340 : int;    
var i389 : int;    
var $r924 : ref;    
var i445 : int;    
var $fakelocal_141 : ref;    
var $r61 : ref;    
var $r597 : ref;    
var $r645 : ref;    
var $fakelocal_350 : ref;    
var $r148 : ref;    
var $r262 : ref;    
var $fakelocal_310 : ref;    
var i396 : int;    
var $fakelocal_127 : ref;    
var $r1081 : ref;    
var $i8 : int;    
var $fakelocal_396 : ref;    
var $fakelocal_410 : ref;    
var i1 : int;    
var $r598 : ref;    
var i481 : int;    
var $r380 : ref;    
var $fakelocal_251 : ref;    
var $fakelocal_452 : ref;    
var $fakelocal_200 : ref;    
var $r708 : ref;    
var $fakelocal_320 : ref;    
var $fakelocal_435 : ref;    
var i285 : int;    
var $r258 : ref;    
var $r600 : ref;    
var $r535 : ref;    
var $fakelocal_149 : ref;    
var $fakelocal_300 : ref;    
var $fakelocal_337 : ref;    
var i431 : int;    
var $fakelocal_207 : ref;    
var $r168 : ref;    
var $r772 : ref;    
var i358 : int;    
var $fakelocal_281 : ref;    
var $fakelocal_330 : ref;    
var $r736 : ref;    
var $fakelocal_321 : ref;    
var $fakelocal_40 : ref;    
var $r952 : ref;    
var $fakelocal_184 : ref;    
var $r726 : ref;    
var $r558 : ref;    
var $r908 : ref;    
var $r823 : ref;    
var $r136 : ref;    
var $r184 : ref;    
var $r1047 : ref;    
var $i153 : int;    
var $r800 : ref;    
var $r120 : ref;    
var $fakelocal_158 : ref;    
var $r1005 : ref;    
var $fakelocal_339 : ref;    
var $r946 : ref;    
var $r732 : ref;    
var $r437 : ref;    
var $fakelocal_29 : ref;    
var i338 : int;    
var $fakelocal_155 : ref;    
var $i79 : int;    
var $i50 : int;    
var $r118 : ref;    
var $fakelocal_117 : ref;    
var i458 : int;    
var $r801 : ref;    
var $r260 : ref;    
var $r659 : ref;    
var $r510 : ref;    
var $fakelocal_464 : ref;    
var $fakelocal_170 : ref;    
var $r135 : ref;    
var $fakelocal_509 : ref;    
var $r439 : ref;    
var i310 : int;    
var $r986 : ref;    
var $r73 : ref;    
var i344 : int;    
var i456 : int;    
var $r433 : ref;    
var $r79 : ref;    
var i530 : int;    
var $r169 : ref;    
var i315 : int;    
var $r268 : ref;    
var $r500 : ref;    
var $r1064 : ref;    
var $r57 : ref;    
var $fakelocal_33 : ref;    
var $r912 : ref;    
var $i224 : int;    
var $fakelocal_275 : ref;    
var $fakelocal_461 : ref;    
var $r59 : ref;    
var i482 : int;    
var $r582 : ref;    
var $i170 : int;    
var i274 : int;    
var i442 : int;    
var $fakelocal_369 : ref;    
var $r8 : ref;    
var i369 : int;    
var $fakelocal_129 : ref;    
var i368 : int;    
var $r236 : ref;    
var $fakelocal_367 : ref;    
var i454 : int;    
var $fakelocal_426 : ref;    
var $r577 : ref;    
var $r743 : ref;    
var $r296 : ref;    
var $r196 : ref;    
var $r603 : ref;    
var i468 : int;    
var $i17 : int;    
var $r159 : ref;    
var $r345 : ref;    
var $i57 : int;    
var $fakelocal_147 : ref;    
var $fakelocal_131 : ref;    
var $r848 : ref;    
var $r769 : ref;    
var $i85 : int;    
var $r895 : ref;    
var $r451 : ref;    
var $r232 : ref;    
var $fakelocal_244 : ref;    
var $fakelocal_119 : ref;    
var $fakelocal_181 : ref;    
var $r143 : ref;    
var $i197 : int;    
var $r1023 : ref;    
var $r985 : ref;    
var $r343 : ref;    
var i517 : int;    
var $r425 : ref;    
var $r394 : ref;    
var $r499 : ref;    
var i426 : int;    
var $r225 : ref;    
var $r608 : ref;    
var $fakelocal_238 : ref;    
var $r497 : ref;    
var $r829 : ref;    
var $i214 : int;    
var $i216 : int;    
var $i209 : int;    
var $r1080 : ref;    
var $fakelocal_218 : ref;    
var $i134 : int;    
var $r20 : ref;    
var $r188 : ref;    
var $r508 : ref;    
var $r998 : ref;    
var $r230 : ref;    
var $fakelocal_273 : ref;    
var $r834 : ref;    
var $fakelocal_55 : ref;    
var $r438 : ref;    
var $r462 : ref;    
var $r1035 : ref;    
var $r142 : ref;    
var $r859 : ref;    
var $i125 : int;    
var $i44 : int;    
var $fakelocal_425 : ref;    
var i347 : int;    
var $fakelocal_152 : ref;    
var $i78 : int;    
var i417 : int;    
var $r447 : ref;    
var $r367 : ref;    
var $r595 : ref;    
var $r702 : ref;    
var $i149 : int;    
var $i177 : int;    
var $fakelocal_16 : ref;    
var $r972 : ref;    
var $fakelocal_135 : ref;    
var $r351 : ref;    
var $fakelocal_311 : ref;    
var $r403 : ref;    
var $fakelocal_10 : ref;    
var $r1018 : ref;    
var i407 : int;    
var $r474 : ref;    
var $fakelocal_50 : ref;    
var $r502 : ref;    
var $r1007 : ref;    
var $i246 : int;    
var i521 : int;    
var $r824 : ref;    
var $fakelocal_208 : ref;    
var i467 : int;    
var $r623 : ref;    
var $r984 : ref;    
var $r270 : ref;    
var $r796 : ref;    
var $r900 : ref;    
var $r263 : ref;    
var $fakelocal_445 : ref;    
var $r928 : ref;    
var $r609 : ref;    
var $r538 : ref;    
var $r634 : ref;    
var $r842 : ref;    
var $fakelocal_370 : ref;    
var $r342 : ref;    
var $fakelocal_61 : ref;    
var $r418 : ref;    
var $i139 : int;    
var i499 : int;    
var i490 : int;    
var $fakelocal_173 : ref;    
var $r187 : ref;    
var $r355 : ref;    
var $i190 : int;    
var $r335 : ref;    
var $fakelocal_335 : ref;    
var $i175 : int;    
var $r663 : ref;    
var $fakelocal_57 : ref;    
var i391 : int;    
var $r64 : ref;    
var $r247 : ref;    
var $r971 : ref;    
var $r690 : ref;    
var i430 : int;    
var i299 : int;    
var $fakelocal_205 : ref;    
var i282 : int;    
var $r687 : ref;    
var $fakelocal_478 : ref;    
var $r631 : ref;    
var $fakelocal_264 : ref;    
var $r718 : ref;    
var $fakelocal_39 : ref;    
var $fakelocal_514 : ref;    
var $r468 : ref;    
var i505 : int;    
var $fakelocal_301 : ref;    
var $fakelocal_402 : ref;    
var $r921 : ref;    
var i415 : int;    
var $r338 : ref;    
var $fakelocal_387 : ref;    
var $i5 : int;    
var $i163 : int;    
var $r750 : ref;    
var $fakelocal_372 : ref;    
var i406 : int;    
var $fakelocal_174 : ref;    
var $i234 : int;    
var $i178 : int;    
var $r786 : ref;    
var i451 : int;    
var $r30 : ref;    
var $r279 : ref;    
var i327 : int;    
var $fakelocal_277 : ref;    
var $r381 : ref;    
var $r562 : ref;    
var $r219 : ref;    
var $r741 : ref;    
var $i135 : int;    
var $r90 : ref;    
var $i166 : int;    
var $r368 : ref;    
var $i94 : int;    
var $r363 : ref;    
var i397 : int;    
var $r604 : ref;    
var $r395 : ref;    
var $i31 : int;    
var $i88 : int;    
var $r223 : ref;    
var $r727 : ref;    
var $r841 : ref;    
var $r504 : ref;    
var $fakelocal_209 : ref;    
var $i168 : int;    
var $r200 : ref;    
var $r662 : ref;    
var $r1025 : ref;    
var $r954 : ref;    
var i519 : int;    
var i480 : int;    
var $i45 : int;    
var $r273 : ref;    
var $r67 : ref;    
var $fakelocal_17 : ref;    
var $r489 : ref;    
var $r658 : ref;    
var $r880 : ref;    
var i400 : int;    
var $fakelocal_176 : ref;    
var $fakelocal_271 : ref;    
var $fakelocal_15 : ref;    
var i371 : int;    
var $r435 : ref;    
var $r191 : ref;    
var $i55 : int;    
var $r1077 : ref;    
var $r46 : ref;    
var $fakelocal_46 : ref;    
var $r537 : ref;    
var i440 : int;    
var $r301 : ref;    
var i538 : int;    
var $i39 : int;    
var $fakelocal_216 : ref;    
var $r358 : ref;    
var $fakelocal_538 : ref;    
var $r194 : ref;    
var $r116 : ref;    
var $r493 : ref;    
var $r512 : ref;    
var $r970 : ref;    
var $r521 : ref;    
var $r821 : ref;    
var $r672 : ref;    
var $i225 : int;    
var $r584 : ref;    
var i328 : int;    
var $fakelocal_392 : ref;    
var $fakelocal_349 : ref;    
var i386 : int;    
var $fakelocal_383 : ref;    
var $i188 : int;    
var $r233 : ref;    
var $r297 : ref;    
var $r1 : ref;    
var $fakelocal_394 : ref;    
var $r917 : ref;    
var $fakelocal_518 : ref;    
var $i235 : int;    
var $i91 : int;    
var $r790 : ref;    
var i496 : int;    
var $fakelocal_516 : ref;    
var $r947 : ref;    
var $r313 : ref;    
var $r1078 : ref;    
var $fakelocal_390 : ref;    
var $r47 : ref;    
var i353 : int;    
var $r9 : ref;    
var $r375 : ref;    
var $r115 : ref;    
var $fakelocal_302 : ref;    
var $r220 : ref;    
var $fakelocal_103 : ref;    
var $r97 : ref;    
var $fakelocal_203 : ref;    
var $r680 : ref;    
var $r576 : ref;    
var $r271 : ref;    
var $fakelocal_69 : ref;    
var $r606 : ref;    
var $fakelocal_290 : ref;    
var $fakelocal_359 : ref;    
var i378 : int;    
var $r965 : ref;    
var i441 : int;    
var $fakelocal_408 : ref;    
var $r876 : ref;    
var $r822 : ref;    
var $fakelocal_95 : ref;    
var $fakelocal_477 : ref;    
var $r699 : ref;    
var $fakelocal_280 : ref;    
var $r626 : ref;    
var $i33 : int;    
var $i267 : int;    
var $i264 : int;    
var $fakelocal_43 : ref;    
var $i62 : int;    
var $fakelocal_539 : ref;    
var $i30 : int;    
var i293 : int;    
var $fakelocal_191 : ref;    
var $r888 : ref;    
var $r163 : ref;    
var $fakelocal_493 : ref;    
var $r1022 : ref;    
var $i238 : int;    
var i336 : int;    
var $r137 : ref;    
var $i73 : int;    
var $r1026 : ref;    
var $i92 : int;    
var $r719 : ref;    
var $fakelocal_118 : ref;    
var $fakelocal_520 : ref;    
var $r164 : ref;    
var $r466 : ref;    
var $r337 : ref;    
var $r267 : ref;    
var i286 : int;    
var $r487 : ref;    
var $fakelocal_495 : ref;    
var $fakelocal_26 : ref;    
var $r127 : ref;    
var i390 : int;    
var $fakelocal_355 : ref;    
var $fakelocal_438 : ref;    
var $r911 : ref;    
var $i266 : int;    
var $fakelocal_104 : ref;    
var $r797 : ref;    
var $r694 : ref;    
var $r764 : ref;    
var $i64 : int;    
var $fakelocal_295 : ref;    
var $fakelocal_44 : ref;    
var $r572 : ref;    
var $fakelocal_398 : ref;    
var $r587 : ref;    
var $r339 : ref;    
var $r935 : ref;    
var $r784 : ref;    
var $fakelocal_436 : ref;    
var $i169 : int;    
var $r261 : ref;    
var $fakelocal_79 : ref;    
var $r391 : ref;    
var $r920 : ref;    
var $r713 : ref;    
var i444 : int;    
var $fakelocal_122 : ref;    
var $r539 : ref;    
var i374 : int;    
var $r795 : ref;    
var $r581 : ref;    
var $r7 : ref;    
var i421 : int;    
var $fakelocal_334 : ref;    
var $fakelocal_411 : ref;    
var $r31 : ref;    
var $r665 : ref;    
var $fakelocal_215 : ref;    
var $fakelocal_466 : ref;    
var i515 : int;    
var $r1024 : ref;    
var $i167 : int;    
var $r847 : ref;    
var $fakelocal_185 : ref;    
var i411 : int;    
var $fakelocal_296 : ref;    
var $fakelocal_384 : ref;    
var $i137 : int;    
var $r145 : ref;    
var $r918 : ref;    
var $r525 : ref;    
var $fakelocal_223 : ref;    
var $i70 : int;    
var $i196 : int;    
var $fakelocal_4 : ref;    
var i300 : int;    
var $r739 : ref;    
var $r199 : ref;    
var $fakelocal_474 : ref;    
var $i191 : int;    
var $r282 : ref;    
var $r767 : ref;    
var $fakelocal_375 : ref;    
var i463 : int;    
var $r490 : ref;    
var $fakelocal_268 : ref;    
var i527 : int;    
var $fakelocal_67 : ref;    
var $r782 : ref;    
var $r12 : ref;    
var $r703 : ref;    
var i302 : int;    
var $r892 : ref;    
var $r789 : ref;    
var $fakelocal_485 : ref;    
var $fakelocal_130 : ref;    
var $fakelocal_115 : ref;    
var $i141 : int;    
var $fakelocal_347 : ref;    
var $fakelocal_157 : ref;    
var i510 : int;    
var $r344 : ref;    
var $r259 : ref;    
var i432 : int;    
var $r740 : ref;    
var i540 : int;    
var $r936 : ref;    
var $i6 : int;    
var i447 : int;    
var $r70 : ref;    
var $r953 : ref;    
var $i93 : int;    
var $r440 : ref;    
var i333 : int;    
var $r6 : ref;    
var $fakelocal_450 : ref;    
var $r996 : ref;    
var $r698 : ref;    
var $i131 : int;    
var $r737 : ref;    
var $r256 : ref;    
var $i151 : int;    
var $fakelocal_378 : ref;    
var $i126 : int;    
var $i56 : int;    
var $i69 : int;    
var $fakelocal_132 : ref;    
var $r45 : ref;    
var $i199 : int;    
var $fakelocal_365 : ref;    
var $r942 : ref;    
var $r1043 : ref;    
var $r589 : ref;    
var $fakelocal_249 : ref;    
var $r477 : ref;    
var $r360 : ref;    
var i470 : int;    
var $i193 : int;    
var $r74 : ref;    
var $r144 : ref;    
var $r165 : ref;    
var $fakelocal_259 : ref;    
var i279 : int;    
var $r484 : ref;    
var $i105 : int;    
var $fakelocal_116 : ref;    
var i418 : int;    
var i524 : int;    
var i351 : int;    
var $r458 : ref;    
var $r1040 : ref;    
var $fakelocal_298 : ref;    
var $i242 : int;    
var i325 : int;    
var $i161 : int;    
var $fakelocal_447 : ref;    
var $r170 : ref;    
var $r697 : ref;    
var $r441 : ref;    
var $r763 : ref;    
var i504 : int;    
var $fakelocal_224 : ref;    
var $r640 : ref;    
var $r382 : ref;    
var $fakelocal_45 : ref;    
var $r400 : ref;    
var $fakelocal_400 : ref;    
var $r108 : ref;    
var $r124 : ref;    
var $r319 : ref;    
var $fakelocal_53 : ref;    
var $fakelocal_267 : ref;    
var $fakelocal_276 : ref;    
var $r241 : ref;    
var $i201 : int;    
var $i27 : int;    
var $fakelocal_361 : ref;    
var $r566 : ref;    
var $r392 : ref;    
var $r54 : ref;    
var $fakelocal_380 : ref;    
var $r612 : ref;    
var $r964 : ref;    
var $r553 : ref;    
var $r637 : ref;    
var $r492 : ref;    
var $fakelocal_3 : ref;    
var $fakelocal_487 : ref;    
var $i127 : int;    
var $r19 : ref;    
var i292 : int;    
var $r471 : ref;    
var $r105 : ref;    
var $r799 : ref;    
var i531 : int;    
var $r130 : ref;    
var $r5 : ref;    
var $r269 : ref;    
var i314 : int;    
var $r651 : ref;    
var i408 : int;    
var $fakelocal_12 : ref;    
var $r1036 : ref;    
var $fakelocal_192 : ref;    
var $r139 : ref;    
var $r898 : ref;    
var $i106 : int;    
var $fakelocal_23 : ref;    
var $r756 : ref;    
var $fakelocal_287 : ref;    
var $i257 : int;    
var i539 : int;    
var $r515 : ref;    
var i484 : int;    
var $fakelocal_106 : ref;    
var i276 : int;    
var $r808 : ref;    
var i475 : int;    
var $r422 : ref;    
var $r141 : ref;    
var $r285 : ref;    
var $r369 : ref;    
var $r330 : ref;    
var $r897 : ref;    
var $r943 : ref;    
var $i147 : int;    
var $r354 : ref;    
var $r77 : ref;    
var $r925 : ref;    
var $r463 : ref;    
var $fakelocal_381 : ref;    
var $i65 : int;    
var $r548 : ref;    
var $fakelocal_274 : ref;    
var $r701 : ref;    
var $fakelocal_246 : ref;    
var $r91 : ref;    
var $r331 : ref;    
var $fakelocal_169 : ref;    
var $r753 : ref;    
var $fakelocal_77 : ref;    
var $fakelocal_126 : ref;    
var i387 : int;    
var $r291 : ref;    
var $fakelocal_503 : ref;    
var $r561 : ref;    
var $r748 : ref;    
var $r72 : ref;    
var $fakelocal_204 : ref;    
var $fakelocal_220 : ref;    
var $r208 : ref;    
var $r257 : ref;    
var $r519 : ref;    
var $r540 : ref;    
var $fakelocal_366 : ref;    
var $r287 : ref;    
var $i4 : int;    
var $r867 : ref;    
var $fakelocal_502 : ref;    
var $r457 : ref;    
var $r735 : ref;    
var $r826 : ref;    
var $r266 : ref;    
var $fakelocal_395 : ref;    
var $r660 : ref;    
var $r725 : ref;    
var $i118 : int;    
var $r507 : ref;    
var i448 : int;    
var $fakelocal_353 : ref;    
var i342 : int;    
var $fakelocal_527 : ref;    
var $i228 : int;    
var $r231 : ref;    
var i508 : int;    
var $r209 : ref;    
var $fakelocal_284 : ref;    
var $r977 : ref;    
var $r896 : ref;    
var $fakelocal_171 : ref;    
var $i217 : int;    
var $fakelocal_315 : ref;    
var $r444 : ref;    
var $fakelocal_24 : ref;    
var $fakelocal_294 : ref;    
var $r518 : ref;    
var $fakelocal_21 : ref;    
var $r465 : ref;    
var $r308 : ref;    
var $r427 : ref;    
var $fakelocal_329 : ref;    
var $fakelocal_420 : ref;    
var $r326 : ref;    
var $r190 : ref;    
var $r204 : ref;    
var $r162 : ref;    
var $r366 : ref;    
var $r611 : ref;    
var $fakelocal_368 : ref;    
var $r768 : ref;    
var $r249 : ref;    
var $fakelocal_422 : ref;    
var $r516 : ref;    
var $r496 : ref;    
var $r586 : ref;    
var $r730 : ref;    
var $fakelocal_137 : ref;    
var $fakelocal_41 : ref;    
var $fakelocal_416 : ref;    
var $r60 : ref;    
var $r551 : ref;    
var i507 : int;    
var $i145 : int;    
var $i243 : int;    
var $r82 : ref;    
var $i164 : int;    
var $r448 : ref;    
var $r560 : ref;    
var $r804 : ref;    
var i334 : int;    
var $fakelocal_212 : ref;    
var $r682 : ref;    
var $i232 : int;    
var i404 : int;    
var $r117 : ref;    
var $r932 : ref;    
var $fakelocal_188 : ref;    
var $r951 : ref;    
var $r37 : ref;    
var $i227 : int;    
var $r673 : ref;    
var $r327 : ref;    
var $r307 : ref;    
var $i148 : int;    
var $i200 : int;    
var $i61 : int;    
var $fakelocal_414 : ref;    
var i446 : int;    
var $fakelocal_159 : ref;    
var $fakelocal_14 : ref;    
var $fakelocal_471 : ref;    
var $r1046 : ref;    
var $i160 : int;    
var $r851 : ref;    
var $r407 : ref;    
var $r42 : ref;    
var $fakelocal_352 : ref;    
var $fakelocal_536 : ref;    
var $r24 : ref;    
var $fakelocal_346 : ref;    
var $fakelocal_393 : ref;    
var $i138 : int;    
var $r346 : ref;    
var $i89 : int;    
var $fakelocal_377 : ref;    
var $fakelocal_227 : ref;    
var $fakelocal_449 : ref;    
var $r937 : ref;    
var $r86 : ref;    
var $i7 : int;    
var $fakelocal_386 : ref;    
var $r446 : ref;    
var $i237 : int;    
var $r454 : ref;    
var $r1028 : ref;    
var $r907 : ref;    
var $r38 : ref;    
var $r397 : ref;    
var $r675 : ref;    
var $r788 : ref;    
var $r175 : ref;    
var $fakelocal_178 : ref;    
var $r969 : ref;    
var $r778 : ref;    
var $fakelocal_434 : ref;    
var $r749 : ref;    
var $r404 : ref;    
var $r556 : ref;    
var i388 : int;    
var i308 : int;    
var $r362 : ref;    
var $fakelocal_66 : ref;    
var $fakelocal_292 : ref;    
var $r590 : ref;    
var i460 : int;    
var $i80 : int;    
var $i265 : int;    
var $r816 : ref;    
var $fakelocal_121 : ref;    
var $r591 : ref;    
var $i83 : int;    
var $r922 : ref;    
var $r389 : ref;    
var $fakelocal_100 : ref;    
var i497 : int;    
var $r622 : ref;    
var $r875 : ref;    
var $r40 : ref;    
var $r373 : ref;    
var $r980 : ref;    
var $r528 : ref;    
var $r243 : ref;    
var $r840 : ref;    
var $i247 : int;    
var $fakelocal_480 : ref;    
var i455 : int;    
var $i109 : int;    
var $r814 : ref;    
var $fakelocal_151 : ref;    
var $r361 : ref;    
var $r328 : ref;    
var $i98 : int;    
var $fakelocal_391 : ref;    
var $fakelocal_323 : ref;    
var $r543 : ref;    
var $r383 : ref;    
var $r1004 : ref;    
var $r65 : ref;    
var i398 : int;    
var $r610 : ref;    
var $r183 : ref;    
var $fakelocal_143 : ref;    
var $fakelocal_344 : ref;    
var $fakelocal_93 : ref;    
var $r62 : ref;    
var $r494 : ref;    
var i461 : int;    
var $fakelocal_529 : ref;    
var $r340 : ref;    
var $fakelocal_78 : ref;    
var $fakelocal_248 : ref;    
var $r574 : ref;    
var $r1052 : ref;    
var $r681 : ref;    
var $r914 : ref;    
var $r602 : ref;    
var $r811 : ref;    
var $r791 : ref;    
var $i219 : int;    
var $r684 : ref;    
var i526 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Sanity.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__0;
    assert { :sourceloc "Sanity.java",-1,-1,-1,-1 } true;
    i1 := $in_parameter__1;
    assert { :sourceloc "Sanity.java",20,-1,-1,-1 } true;
    i273 := i0;
    assert { :sourceloc "Sanity.java",20,-1,-1,-1 } true;
    i274 := i1;
    assert { :sourceloc "Sanity.java",21,-1,-1,-1 } true;
    if (i0 <= 0) {
        assert { :sourceloc "Sanity.java",21,-1,-1,-1 } { :comment "thenblock" } true;
        goto block59;
    } else {
        assert { :sourceloc "Sanity.java",21,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",33,-1,-1,-1 } true;
    $z2 := 1;
    assert { :sourceloc "Sanity.java",33,-1,-1,-1 } true;
    goto block60;
  block59:
    assert { :sourceloc "Sanity.java",21,-1,-1,-1 } true;
    $z2 := 0;
  block60:
    assert { :sourceloc "Sanity.java",21,-1,-1,-1 } true;
    $l2 := i1;
    assert { :sourceloc "Sanity.java",21,-1,-1,-1 } true;
    call $z1, $exception := sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($l2, 0);
    assert { :sourceloc "Sanity.java",21,-1,-1,-1 } true;
    call z0, $exception := sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($z2, $z1);
    assert { :sourceloc "Sanity.java",22,-1,-1,-1 } true;
    call $r0, $exception := java.lang.Integer$valueOf$int(2);
    assert { :sourceloc "Sanity.java",22,-1,-1,-1 } true;
    call $r1, $exception := java.lang.Integer$valueOf$int(i273);
    assert { :sourceloc "Sanity.java",22,-1,-1,-1 } true;
    call $r2, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r0, $r1);
    assert { :sourceloc "Sanity.java",22,-1,-1,-1 } true;
    if ($heap[$r2,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    $r3 := $r2;
    assert { :sourceloc "Sanity.java",22,-1,-1,-1 } true;
    if ($r3 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_1;
        return;
    }
    call i275, $exception := java.lang.Integer$intValue$($r3);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r4, $exception := java.lang.Integer$valueOf$int(i275);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i3 := 1 + i274;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r5, $exception := java.lang.Integer$valueOf$int($i3);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r6, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r4, $r5);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r6,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_2;
        return;
    }
    $r7 := $r6;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r7 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_3;
        return;
    }
    call i276, $exception := java.lang.Integer$intValue$($r7);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r8, $exception := java.lang.Integer$valueOf$int(i274);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i4 := 2 + i276;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r9, $exception := java.lang.Integer$valueOf$int($i4);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r10, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r8, $r9);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r10,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_4;
        return;
    }
    $r11 := $r10;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r11 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_5;
        return;
    }
    call i277, $exception := java.lang.Integer$intValue$($r11);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r12, $exception := java.lang.Integer$valueOf$int(i276);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i5 := 3 + i277;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r13, $exception := java.lang.Integer$valueOf$int($i5);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r14, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r12, $r13);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r14,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_6 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_6;
        return;
    }
    $r15 := $r14;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r15 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_7 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_7;
        return;
    }
    call i278, $exception := java.lang.Integer$intValue$($r15);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r16, $exception := java.lang.Integer$valueOf$int(i277);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i6 := 4 + i278;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r17, $exception := java.lang.Integer$valueOf$int($i6);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r18, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r16, $r17);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r18,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_8 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_8;
        return;
    }
    $r19 := $r18;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r19 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_9 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_9;
        return;
    }
    call i279, $exception := java.lang.Integer$intValue$($r19);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r20, $exception := java.lang.Integer$valueOf$int(i278);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i7 := 5 + i279;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r21, $exception := java.lang.Integer$valueOf$int($i7);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r22, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r20, $r21);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r22,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_10 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_10;
        return;
    }
    $r23 := $r22;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r23 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_11 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_11;
        return;
    }
    call i280, $exception := java.lang.Integer$intValue$($r23);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r24, $exception := java.lang.Integer$valueOf$int(i279);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i8 := 6 + i280;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r25, $exception := java.lang.Integer$valueOf$int($i8);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r26, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r24, $r25);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r26,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_12 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_12;
        return;
    }
    $r27 := $r26;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r27 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_13 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_13;
        return;
    }
    call i281, $exception := java.lang.Integer$intValue$($r27);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r28, $exception := java.lang.Integer$valueOf$int(i280);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i9 := 7 + i281;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r29, $exception := java.lang.Integer$valueOf$int($i9);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r30, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r28, $r29);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r30,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_14 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_14;
        return;
    }
    $r31 := $r30;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r31 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_15 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_15;
        return;
    }
    call i282, $exception := java.lang.Integer$intValue$($r31);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r32, $exception := java.lang.Integer$valueOf$int(i281);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i10 := 8 + i282;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r33, $exception := java.lang.Integer$valueOf$int($i10);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r34, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r32, $r33);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r34,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_16 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_16;
        return;
    }
    $r35 := $r34;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r35 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_17 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_17;
        return;
    }
    call i283, $exception := java.lang.Integer$intValue$($r35);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r36, $exception := java.lang.Integer$valueOf$int(i282);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i11 := 9 + i283;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r37, $exception := java.lang.Integer$valueOf$int($i11);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r38, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r36, $r37);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r38,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_18 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_18;
        return;
    }
    $r39 := $r38;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r39 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_19 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_19;
        return;
    }
    call i284, $exception := java.lang.Integer$intValue$($r39);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r40, $exception := java.lang.Integer$valueOf$int(i283);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i12 := 10 + i284;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r41, $exception := java.lang.Integer$valueOf$int($i12);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r42, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r40, $r41);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r42,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_20 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_20;
        return;
    }
    $r43 := $r42;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r43 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_21 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_21;
        return;
    }
    call i285, $exception := java.lang.Integer$intValue$($r43);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r44, $exception := java.lang.Integer$valueOf$int(i284);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i13 := 1 + i285;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r45, $exception := java.lang.Integer$valueOf$int($i13);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r46, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r44, $r45);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r46,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_22 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_22;
        return;
    }
    $r47 := $r46;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r47 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_23 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_23;
        return;
    }
    call i286, $exception := java.lang.Integer$intValue$($r47);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r48, $exception := java.lang.Integer$valueOf$int(i285);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i14 := 2 + i286;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r49, $exception := java.lang.Integer$valueOf$int($i14);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r50, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r48, $r49);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r50,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_24 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_24;
        return;
    }
    $r51 := $r50;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r51 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_25 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_25;
        return;
    }
    call i287, $exception := java.lang.Integer$intValue$($r51);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r52, $exception := java.lang.Integer$valueOf$int(i286);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i15 := 3 + i287;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r53, $exception := java.lang.Integer$valueOf$int($i15);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r54, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r52, $r53);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r54,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_26 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_26;
        return;
    }
    $r55 := $r54;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r55 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_27 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_27;
        return;
    }
    call i288, $exception := java.lang.Integer$intValue$($r55);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r56, $exception := java.lang.Integer$valueOf$int(i287);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i16 := 4 + i288;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r57, $exception := java.lang.Integer$valueOf$int($i16);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r58, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r56, $r57);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r58,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_28 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_28;
        return;
    }
    $r59 := $r58;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r59 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_29 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_29;
        return;
    }
    call i289, $exception := java.lang.Integer$intValue$($r59);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r60, $exception := java.lang.Integer$valueOf$int(i288);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i17 := 5 + i289;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r61, $exception := java.lang.Integer$valueOf$int($i17);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r62, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r60, $r61);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r62,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_30 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_30;
        return;
    }
    $r63 := $r62;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r63 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_31 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_31;
        return;
    }
    call i290, $exception := java.lang.Integer$intValue$($r63);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r64, $exception := java.lang.Integer$valueOf$int(i289);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i18 := 6 + i290;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r65, $exception := java.lang.Integer$valueOf$int($i18);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r66, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r64, $r65);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r66,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_32 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_32;
        return;
    }
    $r67 := $r66;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r67 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_33 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_33;
        return;
    }
    call i291, $exception := java.lang.Integer$intValue$($r67);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r68, $exception := java.lang.Integer$valueOf$int(i290);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i19 := 7 + i291;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r69, $exception := java.lang.Integer$valueOf$int($i19);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r70, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r68, $r69);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r70,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_34 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_34;
        return;
    }
    $r71 := $r70;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r71 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_35 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_35;
        return;
    }
    call i292, $exception := java.lang.Integer$intValue$($r71);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r72, $exception := java.lang.Integer$valueOf$int(i291);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i20 := 8 + i292;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r73, $exception := java.lang.Integer$valueOf$int($i20);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r74, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r72, $r73);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r74,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_36 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_36;
        return;
    }
    $r75 := $r74;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r75 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_37 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_37;
        return;
    }
    call i293, $exception := java.lang.Integer$intValue$($r75);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r76, $exception := java.lang.Integer$valueOf$int(i292);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i21 := 9 + i293;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r77, $exception := java.lang.Integer$valueOf$int($i21);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r78, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r76, $r77);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r78,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_38 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_38;
        return;
    }
    $r79 := $r78;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r79 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_39 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_39;
        return;
    }
    call i294, $exception := java.lang.Integer$intValue$($r79);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r80, $exception := java.lang.Integer$valueOf$int(i293);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i22 := 10 + i294;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r81, $exception := java.lang.Integer$valueOf$int($i22);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r82, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r80, $r81);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r82,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_40 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_40;
        return;
    }
    $r83 := $r82;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r83 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_41 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_41;
        return;
    }
    call i295, $exception := java.lang.Integer$intValue$($r83);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r84, $exception := java.lang.Integer$valueOf$int(i294);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i23 := 1 + i295;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r85, $exception := java.lang.Integer$valueOf$int($i23);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r86, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r84, $r85);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r86,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_42 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_42;
        return;
    }
    $r87 := $r86;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r87 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_43 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_43;
        return;
    }
    call i296, $exception := java.lang.Integer$intValue$($r87);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r88, $exception := java.lang.Integer$valueOf$int(i295);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i24 := 2 + i296;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r89, $exception := java.lang.Integer$valueOf$int($i24);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r90, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r88, $r89);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r90,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_44 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_44;
        return;
    }
    $r91 := $r90;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r91 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_45 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_45;
        return;
    }
    call i297, $exception := java.lang.Integer$intValue$($r91);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r92, $exception := java.lang.Integer$valueOf$int(i296);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i25 := 3 + i297;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r93, $exception := java.lang.Integer$valueOf$int($i25);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r94, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r92, $r93);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r94,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_46 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_46;
        return;
    }
    $r95 := $r94;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r95 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_47 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_47;
        return;
    }
    call i298, $exception := java.lang.Integer$intValue$($r95);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r96, $exception := java.lang.Integer$valueOf$int(i297);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i26 := 4 + i298;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r97, $exception := java.lang.Integer$valueOf$int($i26);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r98, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r96, $r97);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r98,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_48 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_48;
        return;
    }
    $r99 := $r98;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r99 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_49 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_49;
        return;
    }
    call i299, $exception := java.lang.Integer$intValue$($r99);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r100, $exception := java.lang.Integer$valueOf$int(i298);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i27 := 5 + i299;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r101, $exception := java.lang.Integer$valueOf$int($i27);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r102, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r100, $r101);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r102,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_50 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_50;
        return;
    }
    $r103 := $r102;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r103 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_51 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_51;
        return;
    }
    call i300, $exception := java.lang.Integer$intValue$($r103);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r104, $exception := java.lang.Integer$valueOf$int(i299);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i28 := 6 + i300;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r105, $exception := java.lang.Integer$valueOf$int($i28);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r106, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r104, $r105);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r106,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_52 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_52;
        return;
    }
    $r107 := $r106;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r107 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_53 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_53;
        return;
    }
    call i301, $exception := java.lang.Integer$intValue$($r107);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r108, $exception := java.lang.Integer$valueOf$int(i300);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i29 := 7 + i301;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r109, $exception := java.lang.Integer$valueOf$int($i29);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r110, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r108, $r109);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r110,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_54 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_54;
        return;
    }
    $r111 := $r110;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r111 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_55 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_55;
        return;
    }
    call i302, $exception := java.lang.Integer$intValue$($r111);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r112, $exception := java.lang.Integer$valueOf$int(i301);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i30 := 8 + i302;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r113, $exception := java.lang.Integer$valueOf$int($i30);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r114, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r112, $r113);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r114,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_56 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_56;
        return;
    }
    $r115 := $r114;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r115 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_57 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_57;
        return;
    }
    call i303, $exception := java.lang.Integer$intValue$($r115);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r116, $exception := java.lang.Integer$valueOf$int(i302);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i31 := 9 + i303;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r117, $exception := java.lang.Integer$valueOf$int($i31);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r118, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r116, $r117);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r118,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_58 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_58;
        return;
    }
    $r119 := $r118;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r119 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_59 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_59;
        return;
    }
    call i304, $exception := java.lang.Integer$intValue$($r119);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r120, $exception := java.lang.Integer$valueOf$int(i303);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    $i32 := 10 + i304;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r121, $exception := java.lang.Integer$valueOf$int($i32);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    call $r122, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r120, $r121);
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($heap[$r122,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_60 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_60;
        return;
    }
    $r123 := $r122;
    assert { :sourceloc "Sanity.java",23,-1,-1,-1 } true;
    if ($r123 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_61 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_61;
        return;
    }
    call i305, $exception := java.lang.Integer$intValue$($r123);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r124, $exception := java.lang.Integer$valueOf$int(i304);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i33 := 1 + i305;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r125, $exception := java.lang.Integer$valueOf$int($i33);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r126, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r124, $r125);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r126,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_62 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_62;
        return;
    }
    $r127 := $r126;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r127 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_63 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_63;
        return;
    }
    call i306, $exception := java.lang.Integer$intValue$($r127);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r128, $exception := java.lang.Integer$valueOf$int(i305);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i34 := 2 + i306;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r129, $exception := java.lang.Integer$valueOf$int($i34);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r130, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r128, $r129);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r130,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_64 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_64;
        return;
    }
    $r131 := $r130;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r131 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_65 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_65;
        return;
    }
    call i307, $exception := java.lang.Integer$intValue$($r131);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r132, $exception := java.lang.Integer$valueOf$int(i306);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i35 := 3 + i307;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r133, $exception := java.lang.Integer$valueOf$int($i35);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r134, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r132, $r133);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r134,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_66 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_66;
        return;
    }
    $r135 := $r134;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r135 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_67 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_67;
        return;
    }
    call i308, $exception := java.lang.Integer$intValue$($r135);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r136, $exception := java.lang.Integer$valueOf$int(i307);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i36 := 4 + i308;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r137, $exception := java.lang.Integer$valueOf$int($i36);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r138, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r136, $r137);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r138,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_68 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_68;
        return;
    }
    $r139 := $r138;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r139 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_69 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_69;
        return;
    }
    call i309, $exception := java.lang.Integer$intValue$($r139);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r140, $exception := java.lang.Integer$valueOf$int(i308);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i37 := 5 + i309;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r141, $exception := java.lang.Integer$valueOf$int($i37);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r142, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r140, $r141);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r142,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_70 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_70;
        return;
    }
    $r143 := $r142;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r143 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_71 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_71;
        return;
    }
    call i310, $exception := java.lang.Integer$intValue$($r143);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r144, $exception := java.lang.Integer$valueOf$int(i309);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i38 := 6 + i310;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r145, $exception := java.lang.Integer$valueOf$int($i38);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r146, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r144, $r145);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r146,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_72 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_72;
        return;
    }
    $r147 := $r146;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r147 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_73 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_73;
        return;
    }
    call i311, $exception := java.lang.Integer$intValue$($r147);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r148, $exception := java.lang.Integer$valueOf$int(i310);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i39 := 7 + i311;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r149, $exception := java.lang.Integer$valueOf$int($i39);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r150, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r148, $r149);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r150,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_74 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_74;
        return;
    }
    $r151 := $r150;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r151 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_75 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_75;
        return;
    }
    call i312, $exception := java.lang.Integer$intValue$($r151);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r152, $exception := java.lang.Integer$valueOf$int(i311);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i40 := 8 + i312;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r153, $exception := java.lang.Integer$valueOf$int($i40);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r154, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r152, $r153);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r154,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_76 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_76;
        return;
    }
    $r155 := $r154;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r155 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_77 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_77;
        return;
    }
    call i313, $exception := java.lang.Integer$intValue$($r155);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r156, $exception := java.lang.Integer$valueOf$int(i312);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i41 := 9 + i313;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r157, $exception := java.lang.Integer$valueOf$int($i41);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r158, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r156, $r157);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r158,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_78 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_78;
        return;
    }
    $r159 := $r158;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r159 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_79 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_79;
        return;
    }
    call i314, $exception := java.lang.Integer$intValue$($r159);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r160, $exception := java.lang.Integer$valueOf$int(i313);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i42 := 10 + i314;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r161, $exception := java.lang.Integer$valueOf$int($i42);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r162, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r160, $r161);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r162,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_80 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_80;
        return;
    }
    $r163 := $r162;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r163 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_81 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_81;
        return;
    }
    call i315, $exception := java.lang.Integer$intValue$($r163);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r164, $exception := java.lang.Integer$valueOf$int(i314);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i43 := 1 + i315;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r165, $exception := java.lang.Integer$valueOf$int($i43);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r166, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r164, $r165);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r166,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_82 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_82;
        return;
    }
    $r167 := $r166;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r167 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_83 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_83;
        return;
    }
    call i316, $exception := java.lang.Integer$intValue$($r167);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r168, $exception := java.lang.Integer$valueOf$int(i315);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i44 := 2 + i316;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r169, $exception := java.lang.Integer$valueOf$int($i44);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r170, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r168, $r169);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r170,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_84 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_84;
        return;
    }
    $r171 := $r170;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r171 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_85 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_85;
        return;
    }
    call i317, $exception := java.lang.Integer$intValue$($r171);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r172, $exception := java.lang.Integer$valueOf$int(i316);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i45 := 3 + i317;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r173, $exception := java.lang.Integer$valueOf$int($i45);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r174, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r172, $r173);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r174,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_86 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_86;
        return;
    }
    $r175 := $r174;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r175 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_87 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_87;
        return;
    }
    call i318, $exception := java.lang.Integer$intValue$($r175);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r176, $exception := java.lang.Integer$valueOf$int(i317);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i46 := 4 + i318;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r177, $exception := java.lang.Integer$valueOf$int($i46);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r178, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r176, $r177);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r178,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_88 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_88;
        return;
    }
    $r179 := $r178;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r179 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_89 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_89;
        return;
    }
    call i319, $exception := java.lang.Integer$intValue$($r179);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r180, $exception := java.lang.Integer$valueOf$int(i318);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i47 := 5 + i319;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r181, $exception := java.lang.Integer$valueOf$int($i47);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r182, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r180, $r181);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r182,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_90 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_90;
        return;
    }
    $r183 := $r182;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r183 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_91 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_91;
        return;
    }
    call i320, $exception := java.lang.Integer$intValue$($r183);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r184, $exception := java.lang.Integer$valueOf$int(i319);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i48 := 6 + i320;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r185, $exception := java.lang.Integer$valueOf$int($i48);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r186, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r184, $r185);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r186,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_92 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_92;
        return;
    }
    $r187 := $r186;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r187 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_93 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_93;
        return;
    }
    call i321, $exception := java.lang.Integer$intValue$($r187);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r188, $exception := java.lang.Integer$valueOf$int(i320);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i49 := 7 + i321;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r189, $exception := java.lang.Integer$valueOf$int($i49);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r190, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r188, $r189);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r190,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_94 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_94;
        return;
    }
    $r191 := $r190;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r191 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_95 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_95;
        return;
    }
    call i322, $exception := java.lang.Integer$intValue$($r191);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r192, $exception := java.lang.Integer$valueOf$int(i321);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i50 := 8 + i322;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r193, $exception := java.lang.Integer$valueOf$int($i50);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r194, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r192, $r193);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r194,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_96 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_96;
        return;
    }
    $r195 := $r194;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r195 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_97 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_97;
        return;
    }
    call i323, $exception := java.lang.Integer$intValue$($r195);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r196, $exception := java.lang.Integer$valueOf$int(i322);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i51 := 9 + i323;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r197, $exception := java.lang.Integer$valueOf$int($i51);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r198, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r196, $r197);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r198,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_98 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_98;
        return;
    }
    $r199 := $r198;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r199 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_99 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_99;
        return;
    }
    call i324, $exception := java.lang.Integer$intValue$($r199);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r200, $exception := java.lang.Integer$valueOf$int(i323);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i52 := 10 + i324;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r201, $exception := java.lang.Integer$valueOf$int($i52);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r202, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r200, $r201);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r202,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_100 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_100;
        return;
    }
    $r203 := $r202;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r203 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_101 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_101;
        return;
    }
    call i325, $exception := java.lang.Integer$intValue$($r203);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r204, $exception := java.lang.Integer$valueOf$int(i324);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i53 := 1 + i325;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r205, $exception := java.lang.Integer$valueOf$int($i53);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r206, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r204, $r205);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r206,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_102 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_102;
        return;
    }
    $r207 := $r206;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r207 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_103 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_103;
        return;
    }
    call i326, $exception := java.lang.Integer$intValue$($r207);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r208, $exception := java.lang.Integer$valueOf$int(i325);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i54 := 2 + i326;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r209, $exception := java.lang.Integer$valueOf$int($i54);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r210, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r208, $r209);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r210,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_104 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_104;
        return;
    }
    $r211 := $r210;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r211 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_105 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_105;
        return;
    }
    call i327, $exception := java.lang.Integer$intValue$($r211);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r212, $exception := java.lang.Integer$valueOf$int(i326);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i55 := 3 + i327;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r213, $exception := java.lang.Integer$valueOf$int($i55);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r214, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r212, $r213);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r214,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_106 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_106;
        return;
    }
    $r215 := $r214;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r215 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_107 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_107;
        return;
    }
    call i328, $exception := java.lang.Integer$intValue$($r215);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r216, $exception := java.lang.Integer$valueOf$int(i327);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i56 := 4 + i328;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r217, $exception := java.lang.Integer$valueOf$int($i56);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r218, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r216, $r217);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r218,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_108 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_108;
        return;
    }
    $r219 := $r218;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r219 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_109 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_109;
        return;
    }
    call i329, $exception := java.lang.Integer$intValue$($r219);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r220, $exception := java.lang.Integer$valueOf$int(i328);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i57 := 5 + i329;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r221, $exception := java.lang.Integer$valueOf$int($i57);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r222, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r220, $r221);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r222,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_110 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_110;
        return;
    }
    $r223 := $r222;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r223 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_111 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_111;
        return;
    }
    call i330, $exception := java.lang.Integer$intValue$($r223);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r224, $exception := java.lang.Integer$valueOf$int(i329);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i58 := 6 + i330;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r225, $exception := java.lang.Integer$valueOf$int($i58);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r226, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r224, $r225);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r226,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_112 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_112;
        return;
    }
    $r227 := $r226;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r227 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_113 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_113;
        return;
    }
    call i331, $exception := java.lang.Integer$intValue$($r227);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r228, $exception := java.lang.Integer$valueOf$int(i330);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i59 := 7 + i331;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r229, $exception := java.lang.Integer$valueOf$int($i59);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r230, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r228, $r229);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r230,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_114 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_114;
        return;
    }
    $r231 := $r230;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r231 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_115 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_115;
        return;
    }
    call i332, $exception := java.lang.Integer$intValue$($r231);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r232, $exception := java.lang.Integer$valueOf$int(i331);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i60 := 8 + i332;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r233, $exception := java.lang.Integer$valueOf$int($i60);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r234, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r232, $r233);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r234,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_116 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_116;
        return;
    }
    $r235 := $r234;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r235 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_117 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_117;
        return;
    }
    call i333, $exception := java.lang.Integer$intValue$($r235);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r236, $exception := java.lang.Integer$valueOf$int(i332);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i61 := 9 + i333;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r237, $exception := java.lang.Integer$valueOf$int($i61);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r238, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r236, $r237);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r238,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_118 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_118;
        return;
    }
    $r239 := $r238;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r239 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_119 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_119;
        return;
    }
    call i334, $exception := java.lang.Integer$intValue$($r239);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r240, $exception := java.lang.Integer$valueOf$int(i333);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    $i62 := 10 + i334;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r241, $exception := java.lang.Integer$valueOf$int($i62);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    call $r242, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r240, $r241);
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($heap[$r242,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_120 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_120;
        return;
    }
    $r243 := $r242;
    assert { :sourceloc "Sanity.java",24,-1,-1,-1 } true;
    if ($r243 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_121 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_121;
        return;
    }
    call i335, $exception := java.lang.Integer$intValue$($r243);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r244, $exception := java.lang.Integer$valueOf$int(i334);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i63 := 1 + i335;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r245, $exception := java.lang.Integer$valueOf$int($i63);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r246, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r244, $r245);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r246,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_122 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_122;
        return;
    }
    $r247 := $r246;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r247 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_123 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_123;
        return;
    }
    call i336, $exception := java.lang.Integer$intValue$($r247);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r248, $exception := java.lang.Integer$valueOf$int(i335);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i64 := 2 + i336;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r249, $exception := java.lang.Integer$valueOf$int($i64);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r250, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r248, $r249);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r250,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_124 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_124;
        return;
    }
    $r251 := $r250;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r251 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_125 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_125;
        return;
    }
    call i337, $exception := java.lang.Integer$intValue$($r251);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r252, $exception := java.lang.Integer$valueOf$int(i336);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i65 := 3 + i337;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r253, $exception := java.lang.Integer$valueOf$int($i65);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r254, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r252, $r253);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r254,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_126 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_126;
        return;
    }
    $r255 := $r254;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r255 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_127 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_127;
        return;
    }
    call i338, $exception := java.lang.Integer$intValue$($r255);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r256, $exception := java.lang.Integer$valueOf$int(i337);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i66 := 4 + i338;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r257, $exception := java.lang.Integer$valueOf$int($i66);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r258, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r256, $r257);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r258,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_128 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_128;
        return;
    }
    $r259 := $r258;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r259 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_129 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_129;
        return;
    }
    call i339, $exception := java.lang.Integer$intValue$($r259);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r260, $exception := java.lang.Integer$valueOf$int(i338);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i67 := 5 + i339;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r261, $exception := java.lang.Integer$valueOf$int($i67);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r262, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r260, $r261);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r262,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_130 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_130;
        return;
    }
    $r263 := $r262;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r263 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_131 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_131;
        return;
    }
    call i340, $exception := java.lang.Integer$intValue$($r263);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r264, $exception := java.lang.Integer$valueOf$int(i339);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i68 := 6 + i340;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r265, $exception := java.lang.Integer$valueOf$int($i68);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r266, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r264, $r265);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r266,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_132 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_132;
        return;
    }
    $r267 := $r266;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r267 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_133 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_133;
        return;
    }
    call i341, $exception := java.lang.Integer$intValue$($r267);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r268, $exception := java.lang.Integer$valueOf$int(i340);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i69 := 7 + i341;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r269, $exception := java.lang.Integer$valueOf$int($i69);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r270, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r268, $r269);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r270,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_134 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_134;
        return;
    }
    $r271 := $r270;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r271 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_135 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_135;
        return;
    }
    call i342, $exception := java.lang.Integer$intValue$($r271);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r272, $exception := java.lang.Integer$valueOf$int(i341);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i70 := 8 + i342;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r273, $exception := java.lang.Integer$valueOf$int($i70);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r274, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r272, $r273);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r274,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_136 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_136;
        return;
    }
    $r275 := $r274;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r275 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_137 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_137;
        return;
    }
    call i343, $exception := java.lang.Integer$intValue$($r275);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r276, $exception := java.lang.Integer$valueOf$int(i342);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i71 := 9 + i343;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r277, $exception := java.lang.Integer$valueOf$int($i71);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r278, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r276, $r277);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r278,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_138 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_138;
        return;
    }
    $r279 := $r278;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r279 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_139 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_139;
        return;
    }
    call i344, $exception := java.lang.Integer$intValue$($r279);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r280, $exception := java.lang.Integer$valueOf$int(i343);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i72 := 10 + i344;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r281, $exception := java.lang.Integer$valueOf$int($i72);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r282, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r280, $r281);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r282,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_140 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_140;
        return;
    }
    $r283 := $r282;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r283 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_141 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_141;
        return;
    }
    call i345, $exception := java.lang.Integer$intValue$($r283);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r284, $exception := java.lang.Integer$valueOf$int(i344);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i73 := 1 + i345;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r285, $exception := java.lang.Integer$valueOf$int($i73);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r286, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r284, $r285);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r286,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_142 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_142;
        return;
    }
    $r287 := $r286;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r287 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_143 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_143;
        return;
    }
    call i346, $exception := java.lang.Integer$intValue$($r287);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r288, $exception := java.lang.Integer$valueOf$int(i345);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i74 := 2 + i346;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r289, $exception := java.lang.Integer$valueOf$int($i74);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r290, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r288, $r289);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r290,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_144 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_144;
        return;
    }
    $r291 := $r290;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r291 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_145 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_145;
        return;
    }
    call i347, $exception := java.lang.Integer$intValue$($r291);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r292, $exception := java.lang.Integer$valueOf$int(i346);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i75 := 3 + i347;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r293, $exception := java.lang.Integer$valueOf$int($i75);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r294, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r292, $r293);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r294,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_146 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_146;
        return;
    }
    $r295 := $r294;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r295 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_147 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_147;
        return;
    }
    call i348, $exception := java.lang.Integer$intValue$($r295);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r296, $exception := java.lang.Integer$valueOf$int(i347);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i76 := 4 + i348;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r297, $exception := java.lang.Integer$valueOf$int($i76);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r298, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r296, $r297);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r298,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_148 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_148;
        return;
    }
    $r299 := $r298;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r299 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_149 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_149;
        return;
    }
    call i349, $exception := java.lang.Integer$intValue$($r299);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r300, $exception := java.lang.Integer$valueOf$int(i348);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i77 := 5 + i349;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r301, $exception := java.lang.Integer$valueOf$int($i77);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r302, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r300, $r301);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r302,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_150 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_150;
        return;
    }
    $r303 := $r302;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r303 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_151 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_151;
        return;
    }
    call i350, $exception := java.lang.Integer$intValue$($r303);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r304, $exception := java.lang.Integer$valueOf$int(i349);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i78 := 6 + i350;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r305, $exception := java.lang.Integer$valueOf$int($i78);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r306, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r304, $r305);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r306,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_152 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_152;
        return;
    }
    $r307 := $r306;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r307 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_153 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_153;
        return;
    }
    call i351, $exception := java.lang.Integer$intValue$($r307);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r308, $exception := java.lang.Integer$valueOf$int(i350);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i79 := 7 + i351;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r309, $exception := java.lang.Integer$valueOf$int($i79);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r310, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r308, $r309);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r310,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_154 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_154;
        return;
    }
    $r311 := $r310;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r311 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_155 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_155;
        return;
    }
    call i352, $exception := java.lang.Integer$intValue$($r311);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r312, $exception := java.lang.Integer$valueOf$int(i351);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i80 := 8 + i352;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r313, $exception := java.lang.Integer$valueOf$int($i80);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r314, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r312, $r313);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r314,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_156 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_156;
        return;
    }
    $r315 := $r314;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r315 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_157 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_157;
        return;
    }
    call i353, $exception := java.lang.Integer$intValue$($r315);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r316, $exception := java.lang.Integer$valueOf$int(i352);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i81 := 9 + i353;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r317, $exception := java.lang.Integer$valueOf$int($i81);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r318, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r316, $r317);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r318,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_158 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_158;
        return;
    }
    $r319 := $r318;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r319 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_159 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_159;
        return;
    }
    call i354, $exception := java.lang.Integer$intValue$($r319);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r320, $exception := java.lang.Integer$valueOf$int(i353);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i82 := 10 + i354;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r321, $exception := java.lang.Integer$valueOf$int($i82);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r322, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r320, $r321);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r322,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_160 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_160;
        return;
    }
    $r323 := $r322;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r323 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_161 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_161;
        return;
    }
    call i355, $exception := java.lang.Integer$intValue$($r323);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r324, $exception := java.lang.Integer$valueOf$int(i354);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i83 := 1 + i355;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r325, $exception := java.lang.Integer$valueOf$int($i83);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r326, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r324, $r325);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r326,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_162 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_162;
        return;
    }
    $r327 := $r326;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r327 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_163 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_163;
        return;
    }
    call i356, $exception := java.lang.Integer$intValue$($r327);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r328, $exception := java.lang.Integer$valueOf$int(i355);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i84 := 2 + i356;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r329, $exception := java.lang.Integer$valueOf$int($i84);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r330, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r328, $r329);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r330,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_164 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_164;
        return;
    }
    $r331 := $r330;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r331 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_165 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_165;
        return;
    }
    call i357, $exception := java.lang.Integer$intValue$($r331);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r332, $exception := java.lang.Integer$valueOf$int(i356);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i85 := 3 + i357;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r333, $exception := java.lang.Integer$valueOf$int($i85);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r334, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r332, $r333);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r334,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_166 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_166;
        return;
    }
    $r335 := $r334;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r335 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_167 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_167;
        return;
    }
    call i358, $exception := java.lang.Integer$intValue$($r335);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r336, $exception := java.lang.Integer$valueOf$int(i357);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i86 := 4 + i358;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r337, $exception := java.lang.Integer$valueOf$int($i86);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r338, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r336, $r337);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r338,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_168 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_168;
        return;
    }
    $r339 := $r338;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r339 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_169 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_169;
        return;
    }
    call i359, $exception := java.lang.Integer$intValue$($r339);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r340, $exception := java.lang.Integer$valueOf$int(i358);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i87 := 5 + i359;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r341, $exception := java.lang.Integer$valueOf$int($i87);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r342, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r340, $r341);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r342,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_170 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_170;
        return;
    }
    $r343 := $r342;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r343 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_171 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_171;
        return;
    }
    call i360, $exception := java.lang.Integer$intValue$($r343);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r344, $exception := java.lang.Integer$valueOf$int(i359);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i88 := 6 + i360;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r345, $exception := java.lang.Integer$valueOf$int($i88);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r346, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r344, $r345);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r346,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_172 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_172;
        return;
    }
    $r347 := $r346;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r347 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_173 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_173;
        return;
    }
    call i361, $exception := java.lang.Integer$intValue$($r347);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r348, $exception := java.lang.Integer$valueOf$int(i360);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i89 := 7 + i361;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r349, $exception := java.lang.Integer$valueOf$int($i89);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r350, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r348, $r349);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r350,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_174 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_174;
        return;
    }
    $r351 := $r350;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r351 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_175 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_175;
        return;
    }
    call i362, $exception := java.lang.Integer$intValue$($r351);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r352, $exception := java.lang.Integer$valueOf$int(i361);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i90 := 8 + i362;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r353, $exception := java.lang.Integer$valueOf$int($i90);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r354, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r352, $r353);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r354,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_176 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_176;
        return;
    }
    $r355 := $r354;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r355 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_177 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_177;
        return;
    }
    call i363, $exception := java.lang.Integer$intValue$($r355);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r356, $exception := java.lang.Integer$valueOf$int(i362);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i91 := 9 + i363;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r357, $exception := java.lang.Integer$valueOf$int($i91);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r358, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r356, $r357);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r358,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_178 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_178;
        return;
    }
    $r359 := $r358;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r359 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_179 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_179;
        return;
    }
    call i364, $exception := java.lang.Integer$intValue$($r359);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r360, $exception := java.lang.Integer$valueOf$int(i363);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    $i92 := 10 + i364;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r361, $exception := java.lang.Integer$valueOf$int($i92);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    call $r362, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r360, $r361);
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($heap[$r362,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_180 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_180;
        return;
    }
    $r363 := $r362;
    assert { :sourceloc "Sanity.java",25,-1,-1,-1 } true;
    if ($r363 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_181 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_181;
        return;
    }
    call i365, $exception := java.lang.Integer$intValue$($r363);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r364, $exception := java.lang.Integer$valueOf$int(i364);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i93 := 1 + i365;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r365, $exception := java.lang.Integer$valueOf$int($i93);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r366, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r364, $r365);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r366,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_182 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_182;
        return;
    }
    $r367 := $r366;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r367 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_183 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_183;
        return;
    }
    call i366, $exception := java.lang.Integer$intValue$($r367);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r368, $exception := java.lang.Integer$valueOf$int(i365);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i94 := 2 + i366;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r369, $exception := java.lang.Integer$valueOf$int($i94);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r370, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r368, $r369);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r370,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_184 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_184;
        return;
    }
    $r371 := $r370;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r371 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_185 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_185;
        return;
    }
    call i367, $exception := java.lang.Integer$intValue$($r371);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r372, $exception := java.lang.Integer$valueOf$int(i366);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i95 := 3 + i367;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r373, $exception := java.lang.Integer$valueOf$int($i95);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r374, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r372, $r373);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r374,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_186 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_186;
        return;
    }
    $r375 := $r374;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r375 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_187 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_187;
        return;
    }
    call i368, $exception := java.lang.Integer$intValue$($r375);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r376, $exception := java.lang.Integer$valueOf$int(i367);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i96 := 4 + i368;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r377, $exception := java.lang.Integer$valueOf$int($i96);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r378, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r376, $r377);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r378,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_188 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_188;
        return;
    }
    $r379 := $r378;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r379 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_189 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_189;
        return;
    }
    call i369, $exception := java.lang.Integer$intValue$($r379);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r380, $exception := java.lang.Integer$valueOf$int(i368);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i97 := 5 + i369;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r381, $exception := java.lang.Integer$valueOf$int($i97);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r382, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r380, $r381);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r382,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_190 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_190;
        return;
    }
    $r383 := $r382;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r383 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_191 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_191;
        return;
    }
    call i370, $exception := java.lang.Integer$intValue$($r383);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r384, $exception := java.lang.Integer$valueOf$int(i369);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i98 := 6 + i370;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r385, $exception := java.lang.Integer$valueOf$int($i98);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r386, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r384, $r385);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r386,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_192 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_192;
        return;
    }
    $r387 := $r386;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r387 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_193 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_193;
        return;
    }
    call i371, $exception := java.lang.Integer$intValue$($r387);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r388, $exception := java.lang.Integer$valueOf$int(i370);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i99 := 7 + i371;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r389, $exception := java.lang.Integer$valueOf$int($i99);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r390, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r388, $r389);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r390,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_194 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_194;
        return;
    }
    $r391 := $r390;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r391 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_195 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_195;
        return;
    }
    call i372, $exception := java.lang.Integer$intValue$($r391);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r392, $exception := java.lang.Integer$valueOf$int(i371);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i100 := 8 + i372;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r393, $exception := java.lang.Integer$valueOf$int($i100);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r394, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r392, $r393);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r394,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_196 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_196;
        return;
    }
    $r395 := $r394;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r395 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_197 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_197;
        return;
    }
    call i373, $exception := java.lang.Integer$intValue$($r395);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r396, $exception := java.lang.Integer$valueOf$int(i372);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i101 := 9 + i373;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r397, $exception := java.lang.Integer$valueOf$int($i101);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r398, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r396, $r397);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r398,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_198 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_198;
        return;
    }
    $r399 := $r398;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r399 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_199 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_199;
        return;
    }
    call i374, $exception := java.lang.Integer$intValue$($r399);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r400, $exception := java.lang.Integer$valueOf$int(i373);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i102 := 10 + i374;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r401, $exception := java.lang.Integer$valueOf$int($i102);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r402, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r400, $r401);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r402,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_200 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_200;
        return;
    }
    $r403 := $r402;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r403 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_201 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_201;
        return;
    }
    call i375, $exception := java.lang.Integer$intValue$($r403);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r404, $exception := java.lang.Integer$valueOf$int(i374);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i103 := 1 + i375;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r405, $exception := java.lang.Integer$valueOf$int($i103);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r406, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r404, $r405);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r406,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_202 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_202;
        return;
    }
    $r407 := $r406;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r407 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_203 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_203;
        return;
    }
    call i376, $exception := java.lang.Integer$intValue$($r407);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r408, $exception := java.lang.Integer$valueOf$int(i375);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i104 := 2 + i376;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r409, $exception := java.lang.Integer$valueOf$int($i104);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r410, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r408, $r409);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r410,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_204 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_204;
        return;
    }
    $r411 := $r410;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r411 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_205 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_205;
        return;
    }
    call i377, $exception := java.lang.Integer$intValue$($r411);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r412, $exception := java.lang.Integer$valueOf$int(i376);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i105 := 3 + i377;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r413, $exception := java.lang.Integer$valueOf$int($i105);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r414, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r412, $r413);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r414,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_206 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_206;
        return;
    }
    $r415 := $r414;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r415 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_207 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_207;
        return;
    }
    call i378, $exception := java.lang.Integer$intValue$($r415);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r416, $exception := java.lang.Integer$valueOf$int(i377);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i106 := 4 + i378;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r417, $exception := java.lang.Integer$valueOf$int($i106);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r418, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r416, $r417);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r418,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_208 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_208;
        return;
    }
    $r419 := $r418;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r419 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_209 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_209;
        return;
    }
    call i379, $exception := java.lang.Integer$intValue$($r419);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r420, $exception := java.lang.Integer$valueOf$int(i378);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i107 := 5 + i379;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r421, $exception := java.lang.Integer$valueOf$int($i107);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r422, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r420, $r421);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r422,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_210 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_210;
        return;
    }
    $r423 := $r422;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r423 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_211 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_211;
        return;
    }
    call i380, $exception := java.lang.Integer$intValue$($r423);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r424, $exception := java.lang.Integer$valueOf$int(i379);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i108 := 6 + i380;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r425, $exception := java.lang.Integer$valueOf$int($i108);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r426, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r424, $r425);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r426,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_212 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_212;
        return;
    }
    $r427 := $r426;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r427 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_213 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_213;
        return;
    }
    call i381, $exception := java.lang.Integer$intValue$($r427);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r428, $exception := java.lang.Integer$valueOf$int(i380);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i109 := 7 + i381;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r429, $exception := java.lang.Integer$valueOf$int($i109);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r430, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r428, $r429);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r430,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_214 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_214;
        return;
    }
    $r431 := $r430;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r431 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_215 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_215;
        return;
    }
    call i382, $exception := java.lang.Integer$intValue$($r431);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r432, $exception := java.lang.Integer$valueOf$int(i381);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i110 := 8 + i382;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r433, $exception := java.lang.Integer$valueOf$int($i110);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r434, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r432, $r433);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r434,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_216 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_216;
        return;
    }
    $r435 := $r434;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r435 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_217 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_217;
        return;
    }
    call i383, $exception := java.lang.Integer$intValue$($r435);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r436, $exception := java.lang.Integer$valueOf$int(i382);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i111 := 9 + i383;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r437, $exception := java.lang.Integer$valueOf$int($i111);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r438, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r436, $r437);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r438,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_218 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_218;
        return;
    }
    $r439 := $r438;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r439 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_219 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_219;
        return;
    }
    call i384, $exception := java.lang.Integer$intValue$($r439);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r440, $exception := java.lang.Integer$valueOf$int(i383);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i112 := 10 + i384;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r441, $exception := java.lang.Integer$valueOf$int($i112);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r442, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r440, $r441);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r442,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_220 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_220;
        return;
    }
    $r443 := $r442;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r443 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_221 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_221;
        return;
    }
    call i385, $exception := java.lang.Integer$intValue$($r443);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r444, $exception := java.lang.Integer$valueOf$int(i384);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i113 := 1 + i385;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r445, $exception := java.lang.Integer$valueOf$int($i113);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r446, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r444, $r445);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r446,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_222 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_222;
        return;
    }
    $r447 := $r446;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r447 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_223 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_223;
        return;
    }
    call i386, $exception := java.lang.Integer$intValue$($r447);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r448, $exception := java.lang.Integer$valueOf$int(i385);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i114 := 2 + i386;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r449, $exception := java.lang.Integer$valueOf$int($i114);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r450, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r448, $r449);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r450,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_224 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_224;
        return;
    }
    $r451 := $r450;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r451 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_225 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_225;
        return;
    }
    call i387, $exception := java.lang.Integer$intValue$($r451);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r452, $exception := java.lang.Integer$valueOf$int(i386);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i115 := 3 + i387;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r453, $exception := java.lang.Integer$valueOf$int($i115);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r454, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r452, $r453);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r454,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_226 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_226;
        return;
    }
    $r455 := $r454;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r455 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_227 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_227;
        return;
    }
    call i388, $exception := java.lang.Integer$intValue$($r455);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r456, $exception := java.lang.Integer$valueOf$int(i387);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i116 := 4 + i388;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r457, $exception := java.lang.Integer$valueOf$int($i116);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r458, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r456, $r457);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r458,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_228 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_228;
        return;
    }
    $r459 := $r458;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r459 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_229 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_229;
        return;
    }
    call i389, $exception := java.lang.Integer$intValue$($r459);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r460, $exception := java.lang.Integer$valueOf$int(i388);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i117 := 5 + i389;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r461, $exception := java.lang.Integer$valueOf$int($i117);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r462, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r460, $r461);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r462,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_230 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_230;
        return;
    }
    $r463 := $r462;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r463 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_231 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_231;
        return;
    }
    call i390, $exception := java.lang.Integer$intValue$($r463);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r464, $exception := java.lang.Integer$valueOf$int(i389);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i118 := 6 + i390;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r465, $exception := java.lang.Integer$valueOf$int($i118);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r466, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r464, $r465);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r466,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_232 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_232;
        return;
    }
    $r467 := $r466;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r467 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_233 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_233;
        return;
    }
    call i391, $exception := java.lang.Integer$intValue$($r467);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r468, $exception := java.lang.Integer$valueOf$int(i390);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i119 := 7 + i391;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r469, $exception := java.lang.Integer$valueOf$int($i119);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r470, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r468, $r469);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r470,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_234 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_234;
        return;
    }
    $r471 := $r470;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r471 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_235 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_235;
        return;
    }
    call i392, $exception := java.lang.Integer$intValue$($r471);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r472, $exception := java.lang.Integer$valueOf$int(i391);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i120 := 8 + i392;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r473, $exception := java.lang.Integer$valueOf$int($i120);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r474, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r472, $r473);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r474,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_236 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_236;
        return;
    }
    $r475 := $r474;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r475 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_237 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_237;
        return;
    }
    call i393, $exception := java.lang.Integer$intValue$($r475);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r476, $exception := java.lang.Integer$valueOf$int(i392);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i121 := 9 + i393;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r477, $exception := java.lang.Integer$valueOf$int($i121);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r478, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r476, $r477);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r478,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_238 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_238;
        return;
    }
    $r479 := $r478;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r479 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_239 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_239;
        return;
    }
    call i394, $exception := java.lang.Integer$intValue$($r479);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r480, $exception := java.lang.Integer$valueOf$int(i393);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    $i122 := 10 + i394;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r481, $exception := java.lang.Integer$valueOf$int($i122);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    call $r482, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r480, $r481);
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($heap[$r482,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_240 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_240;
        return;
    }
    $r483 := $r482;
    assert { :sourceloc "Sanity.java",26,-1,-1,-1 } true;
    if ($r483 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_241 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_241;
        return;
    }
    call i395, $exception := java.lang.Integer$intValue$($r483);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r484, $exception := java.lang.Integer$valueOf$int(i394);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i123 := 1 + i395;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r485, $exception := java.lang.Integer$valueOf$int($i123);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r486, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r484, $r485);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r486,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_242 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_242;
        return;
    }
    $r487 := $r486;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r487 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_243 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_243;
        return;
    }
    call i396, $exception := java.lang.Integer$intValue$($r487);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r488, $exception := java.lang.Integer$valueOf$int(i395);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i124 := 2 + i396;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r489, $exception := java.lang.Integer$valueOf$int($i124);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r490, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r488, $r489);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r490,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_244 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_244;
        return;
    }
    $r491 := $r490;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r491 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_245 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_245;
        return;
    }
    call i397, $exception := java.lang.Integer$intValue$($r491);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r492, $exception := java.lang.Integer$valueOf$int(i396);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i125 := 3 + i397;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r493, $exception := java.lang.Integer$valueOf$int($i125);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r494, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r492, $r493);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r494,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_246 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_246;
        return;
    }
    $r495 := $r494;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r495 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_247 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_247;
        return;
    }
    call i398, $exception := java.lang.Integer$intValue$($r495);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r496, $exception := java.lang.Integer$valueOf$int(i397);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i126 := 4 + i398;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r497, $exception := java.lang.Integer$valueOf$int($i126);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r498, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r496, $r497);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r498,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_248 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_248;
        return;
    }
    $r499 := $r498;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r499 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_249 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_249;
        return;
    }
    call i399, $exception := java.lang.Integer$intValue$($r499);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r500, $exception := java.lang.Integer$valueOf$int(i398);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i127 := 5 + i399;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r501, $exception := java.lang.Integer$valueOf$int($i127);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r502, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r500, $r501);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r502,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_250 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_250;
        return;
    }
    $r503 := $r502;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r503 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_251 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_251;
        return;
    }
    call i400, $exception := java.lang.Integer$intValue$($r503);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r504, $exception := java.lang.Integer$valueOf$int(i399);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i128 := 6 + i400;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r505, $exception := java.lang.Integer$valueOf$int($i128);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r506, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r504, $r505);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r506,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_252 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_252;
        return;
    }
    $r507 := $r506;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r507 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_253 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_253;
        return;
    }
    call i401, $exception := java.lang.Integer$intValue$($r507);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r508, $exception := java.lang.Integer$valueOf$int(i400);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i129 := 7 + i401;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r509, $exception := java.lang.Integer$valueOf$int($i129);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r510, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r508, $r509);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r510,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_254 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_254;
        return;
    }
    $r511 := $r510;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r511 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_255 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_255;
        return;
    }
    call i402, $exception := java.lang.Integer$intValue$($r511);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r512, $exception := java.lang.Integer$valueOf$int(i401);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i130 := 8 + i402;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r513, $exception := java.lang.Integer$valueOf$int($i130);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r514, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r512, $r513);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r514,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_256 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_256;
        return;
    }
    $r515 := $r514;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r515 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_257 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_257;
        return;
    }
    call i403, $exception := java.lang.Integer$intValue$($r515);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r516, $exception := java.lang.Integer$valueOf$int(i402);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i131 := 9 + i403;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r517, $exception := java.lang.Integer$valueOf$int($i131);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r518, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r516, $r517);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r518,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_258 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_258;
        return;
    }
    $r519 := $r518;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r519 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_259 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_259;
        return;
    }
    call i404, $exception := java.lang.Integer$intValue$($r519);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r520, $exception := java.lang.Integer$valueOf$int(i403);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i132 := 10 + i404;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r521, $exception := java.lang.Integer$valueOf$int($i132);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r522, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r520, $r521);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r522,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_260 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_260;
        return;
    }
    $r523 := $r522;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r523 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_261 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_261;
        return;
    }
    call i405, $exception := java.lang.Integer$intValue$($r523);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r524, $exception := java.lang.Integer$valueOf$int(i404);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i133 := 1 + i405;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r525, $exception := java.lang.Integer$valueOf$int($i133);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r526, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r524, $r525);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r526,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_262 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_262;
        return;
    }
    $r527 := $r526;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r527 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_263 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_263;
        return;
    }
    call i406, $exception := java.lang.Integer$intValue$($r527);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r528, $exception := java.lang.Integer$valueOf$int(i405);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i134 := 2 + i406;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r529, $exception := java.lang.Integer$valueOf$int($i134);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r530, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r528, $r529);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r530,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_264 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_264;
        return;
    }
    $r531 := $r530;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r531 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_265 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_265;
        return;
    }
    call i407, $exception := java.lang.Integer$intValue$($r531);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r532, $exception := java.lang.Integer$valueOf$int(i406);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i135 := 3 + i407;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r533, $exception := java.lang.Integer$valueOf$int($i135);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r534, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r532, $r533);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r534,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_266 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_266;
        return;
    }
    $r535 := $r534;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r535 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_267 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_267;
        return;
    }
    call i408, $exception := java.lang.Integer$intValue$($r535);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r536, $exception := java.lang.Integer$valueOf$int(i407);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i136 := 4 + i408;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r537, $exception := java.lang.Integer$valueOf$int($i136);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r538, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r536, $r537);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r538,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_268 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_268;
        return;
    }
    $r539 := $r538;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r539 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_269 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_269;
        return;
    }
    call i409, $exception := java.lang.Integer$intValue$($r539);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r540, $exception := java.lang.Integer$valueOf$int(i408);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i137 := 5 + i409;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r541, $exception := java.lang.Integer$valueOf$int($i137);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r542, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r540, $r541);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r542,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_270 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_270;
        return;
    }
    $r543 := $r542;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r543 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_271 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_271;
        return;
    }
    call i410, $exception := java.lang.Integer$intValue$($r543);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r544, $exception := java.lang.Integer$valueOf$int(i409);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i138 := 6 + i410;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r545, $exception := java.lang.Integer$valueOf$int($i138);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r546, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r544, $r545);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r546,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_272 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_272;
        return;
    }
    $r547 := $r546;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r547 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_273 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_273;
        return;
    }
    call i411, $exception := java.lang.Integer$intValue$($r547);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r548, $exception := java.lang.Integer$valueOf$int(i410);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i139 := 7 + i411;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r549, $exception := java.lang.Integer$valueOf$int($i139);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r550, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r548, $r549);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r550,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_274 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_274;
        return;
    }
    $r551 := $r550;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r551 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_275 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_275;
        return;
    }
    call i412, $exception := java.lang.Integer$intValue$($r551);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r552, $exception := java.lang.Integer$valueOf$int(i411);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i140 := 8 + i412;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r553, $exception := java.lang.Integer$valueOf$int($i140);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r554, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r552, $r553);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r554,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_276 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_276;
        return;
    }
    $r555 := $r554;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r555 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_277 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_277;
        return;
    }
    call i413, $exception := java.lang.Integer$intValue$($r555);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r556, $exception := java.lang.Integer$valueOf$int(i412);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i141 := 9 + i413;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r557, $exception := java.lang.Integer$valueOf$int($i141);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r558, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r556, $r557);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r558,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_278 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_278;
        return;
    }
    $r559 := $r558;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r559 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_279 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_279;
        return;
    }
    call i414, $exception := java.lang.Integer$intValue$($r559);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r560, $exception := java.lang.Integer$valueOf$int(i413);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i142 := 10 + i414;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r561, $exception := java.lang.Integer$valueOf$int($i142);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r562, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r560, $r561);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r562,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_280 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_280;
        return;
    }
    $r563 := $r562;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r563 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_281 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_281;
        return;
    }
    call i415, $exception := java.lang.Integer$intValue$($r563);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r564, $exception := java.lang.Integer$valueOf$int(i414);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i143 := 1 + i415;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r565, $exception := java.lang.Integer$valueOf$int($i143);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r566, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r564, $r565);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r566,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_282 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_282;
        return;
    }
    $r567 := $r566;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r567 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_283 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_283;
        return;
    }
    call i416, $exception := java.lang.Integer$intValue$($r567);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r568, $exception := java.lang.Integer$valueOf$int(i415);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i144 := 2 + i416;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r569, $exception := java.lang.Integer$valueOf$int($i144);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r570, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r568, $r569);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r570,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_284 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_284;
        return;
    }
    $r571 := $r570;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r571 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_285 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_285;
        return;
    }
    call i417, $exception := java.lang.Integer$intValue$($r571);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r572, $exception := java.lang.Integer$valueOf$int(i416);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i145 := 3 + i417;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r573, $exception := java.lang.Integer$valueOf$int($i145);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r574, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r572, $r573);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r574,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_286 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_286;
        return;
    }
    $r575 := $r574;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r575 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_287 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_287;
        return;
    }
    call i418, $exception := java.lang.Integer$intValue$($r575);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r576, $exception := java.lang.Integer$valueOf$int(i417);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i146 := 4 + i418;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r577, $exception := java.lang.Integer$valueOf$int($i146);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r578, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r576, $r577);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r578,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_288 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_288;
        return;
    }
    $r579 := $r578;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r579 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_289 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_289;
        return;
    }
    call i419, $exception := java.lang.Integer$intValue$($r579);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r580, $exception := java.lang.Integer$valueOf$int(i418);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i147 := 5 + i419;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r581, $exception := java.lang.Integer$valueOf$int($i147);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r582, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r580, $r581);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r582,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_290 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_290;
        return;
    }
    $r583 := $r582;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r583 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_291 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_291;
        return;
    }
    call i420, $exception := java.lang.Integer$intValue$($r583);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r584, $exception := java.lang.Integer$valueOf$int(i419);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i148 := 6 + i420;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r585, $exception := java.lang.Integer$valueOf$int($i148);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r586, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r584, $r585);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r586,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_292 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_292;
        return;
    }
    $r587 := $r586;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r587 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_293 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_293;
        return;
    }
    call i421, $exception := java.lang.Integer$intValue$($r587);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r588, $exception := java.lang.Integer$valueOf$int(i420);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i149 := 7 + i421;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r589, $exception := java.lang.Integer$valueOf$int($i149);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r590, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r588, $r589);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r590,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_294 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_294;
        return;
    }
    $r591 := $r590;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r591 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_295 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_295;
        return;
    }
    call i422, $exception := java.lang.Integer$intValue$($r591);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r592, $exception := java.lang.Integer$valueOf$int(i421);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i150 := 8 + i422;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r593, $exception := java.lang.Integer$valueOf$int($i150);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r594, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r592, $r593);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r594,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_296 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_296;
        return;
    }
    $r595 := $r594;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r595 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_297 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_297;
        return;
    }
    call i423, $exception := java.lang.Integer$intValue$($r595);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r596, $exception := java.lang.Integer$valueOf$int(i422);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i151 := 9 + i423;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r597, $exception := java.lang.Integer$valueOf$int($i151);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r598, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r596, $r597);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r598,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_298 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_298;
        return;
    }
    $r599 := $r598;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r599 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_299 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_299;
        return;
    }
    call i424, $exception := java.lang.Integer$intValue$($r599);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r600, $exception := java.lang.Integer$valueOf$int(i423);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    $i152 := 10 + i424;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r601, $exception := java.lang.Integer$valueOf$int($i152);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    call $r602, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r600, $r601);
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($heap[$r602,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_300 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_300;
        return;
    }
    $r603 := $r602;
    assert { :sourceloc "Sanity.java",27,-1,-1,-1 } true;
    if ($r603 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_301 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_301;
        return;
    }
    call i425, $exception := java.lang.Integer$intValue$($r603);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r604, $exception := java.lang.Integer$valueOf$int(i424);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i153 := 1 + i425;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r605, $exception := java.lang.Integer$valueOf$int($i153);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r606, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r604, $r605);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r606,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_302 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_302;
        return;
    }
    $r607 := $r606;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r607 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_303 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_303;
        return;
    }
    call i426, $exception := java.lang.Integer$intValue$($r607);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r608, $exception := java.lang.Integer$valueOf$int(i425);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i154 := 2 + i426;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r609, $exception := java.lang.Integer$valueOf$int($i154);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r610, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r608, $r609);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r610,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_304 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_304;
        return;
    }
    $r611 := $r610;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r611 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_305 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_305;
        return;
    }
    call i427, $exception := java.lang.Integer$intValue$($r611);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r612, $exception := java.lang.Integer$valueOf$int(i426);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i155 := 3 + i427;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r613, $exception := java.lang.Integer$valueOf$int($i155);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r614, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r612, $r613);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r614,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_306 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_306;
        return;
    }
    $r615 := $r614;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r615 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_307 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_307;
        return;
    }
    call i428, $exception := java.lang.Integer$intValue$($r615);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r616, $exception := java.lang.Integer$valueOf$int(i427);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i156 := 4 + i428;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r617, $exception := java.lang.Integer$valueOf$int($i156);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r618, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r616, $r617);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r618,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_308 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_308;
        return;
    }
    $r619 := $r618;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r619 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_309 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_309;
        return;
    }
    call i429, $exception := java.lang.Integer$intValue$($r619);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r620, $exception := java.lang.Integer$valueOf$int(i428);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i157 := 5 + i429;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r621, $exception := java.lang.Integer$valueOf$int($i157);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r622, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r620, $r621);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r622,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_310 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_310;
        return;
    }
    $r623 := $r622;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r623 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_311 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_311;
        return;
    }
    call i430, $exception := java.lang.Integer$intValue$($r623);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r624, $exception := java.lang.Integer$valueOf$int(i429);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i158 := 6 + i430;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r625, $exception := java.lang.Integer$valueOf$int($i158);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r626, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r624, $r625);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r626,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_312 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_312;
        return;
    }
    $r627 := $r626;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r627 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_313 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_313;
        return;
    }
    call i431, $exception := java.lang.Integer$intValue$($r627);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r628, $exception := java.lang.Integer$valueOf$int(i430);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i159 := 7 + i431;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r629, $exception := java.lang.Integer$valueOf$int($i159);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r630, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r628, $r629);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r630,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_314 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_314;
        return;
    }
    $r631 := $r630;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r631 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_315 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_315;
        return;
    }
    call i432, $exception := java.lang.Integer$intValue$($r631);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r632, $exception := java.lang.Integer$valueOf$int(i431);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i160 := 8 + i432;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r633, $exception := java.lang.Integer$valueOf$int($i160);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r634, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r632, $r633);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r634,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_316 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_316;
        return;
    }
    $r635 := $r634;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r635 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_317 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_317;
        return;
    }
    call i433, $exception := java.lang.Integer$intValue$($r635);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r636, $exception := java.lang.Integer$valueOf$int(i432);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i161 := 9 + i433;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r637, $exception := java.lang.Integer$valueOf$int($i161);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r638, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r636, $r637);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r638,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_318 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_318;
        return;
    }
    $r639 := $r638;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r639 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_319 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_319;
        return;
    }
    call i434, $exception := java.lang.Integer$intValue$($r639);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r640, $exception := java.lang.Integer$valueOf$int(i433);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i162 := 10 + i434;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r641, $exception := java.lang.Integer$valueOf$int($i162);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r642, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r640, $r641);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r642,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_320 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_320;
        return;
    }
    $r643 := $r642;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r643 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_321 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_321;
        return;
    }
    call i435, $exception := java.lang.Integer$intValue$($r643);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r644, $exception := java.lang.Integer$valueOf$int(i434);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i163 := 1 + i435;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r645, $exception := java.lang.Integer$valueOf$int($i163);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r646, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r644, $r645);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r646,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_322 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_322;
        return;
    }
    $r647 := $r646;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r647 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_323 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_323;
        return;
    }
    call i436, $exception := java.lang.Integer$intValue$($r647);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r648, $exception := java.lang.Integer$valueOf$int(i435);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i164 := 2 + i436;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r649, $exception := java.lang.Integer$valueOf$int($i164);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r650, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r648, $r649);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r650,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_324 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_324;
        return;
    }
    $r651 := $r650;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r651 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_325 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_325;
        return;
    }
    call i437, $exception := java.lang.Integer$intValue$($r651);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r652, $exception := java.lang.Integer$valueOf$int(i436);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i165 := 3 + i437;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r653, $exception := java.lang.Integer$valueOf$int($i165);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r654, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r652, $r653);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r654,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_326 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_326;
        return;
    }
    $r655 := $r654;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r655 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_327 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_327;
        return;
    }
    call i438, $exception := java.lang.Integer$intValue$($r655);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r656, $exception := java.lang.Integer$valueOf$int(i437);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i166 := 4 + i438;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r657, $exception := java.lang.Integer$valueOf$int($i166);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r658, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r656, $r657);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r658,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_328 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_328;
        return;
    }
    $r659 := $r658;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r659 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_329 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_329;
        return;
    }
    call i439, $exception := java.lang.Integer$intValue$($r659);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r660, $exception := java.lang.Integer$valueOf$int(i438);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i167 := 5 + i439;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r661, $exception := java.lang.Integer$valueOf$int($i167);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r662, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r660, $r661);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r662,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_330 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_330;
        return;
    }
    $r663 := $r662;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r663 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_331 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_331;
        return;
    }
    call i440, $exception := java.lang.Integer$intValue$($r663);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r664, $exception := java.lang.Integer$valueOf$int(i439);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i168 := 6 + i440;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r665, $exception := java.lang.Integer$valueOf$int($i168);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r666, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r664, $r665);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r666,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_332 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_332;
        return;
    }
    $r667 := $r666;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r667 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_333 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_333;
        return;
    }
    call i441, $exception := java.lang.Integer$intValue$($r667);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r668, $exception := java.lang.Integer$valueOf$int(i440);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i169 := 7 + i441;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r669, $exception := java.lang.Integer$valueOf$int($i169);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r670, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r668, $r669);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r670,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_334 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_334;
        return;
    }
    $r671 := $r670;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r671 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_335 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_335;
        return;
    }
    call i442, $exception := java.lang.Integer$intValue$($r671);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r672, $exception := java.lang.Integer$valueOf$int(i441);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i170 := 8 + i442;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r673, $exception := java.lang.Integer$valueOf$int($i170);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r674, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r672, $r673);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r674,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_336 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_336;
        return;
    }
    $r675 := $r674;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r675 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_337 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_337;
        return;
    }
    call i443, $exception := java.lang.Integer$intValue$($r675);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r676, $exception := java.lang.Integer$valueOf$int(i442);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i171 := 9 + i443;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r677, $exception := java.lang.Integer$valueOf$int($i171);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r678, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r676, $r677);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r678,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_338 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_338;
        return;
    }
    $r679 := $r678;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r679 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_339 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_339;
        return;
    }
    call i444, $exception := java.lang.Integer$intValue$($r679);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r680, $exception := java.lang.Integer$valueOf$int(i443);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i172 := 10 + i444;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r681, $exception := java.lang.Integer$valueOf$int($i172);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r682, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r680, $r681);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r682,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_340 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_340;
        return;
    }
    $r683 := $r682;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r683 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_341 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_341;
        return;
    }
    call i445, $exception := java.lang.Integer$intValue$($r683);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r684, $exception := java.lang.Integer$valueOf$int(i444);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i173 := 1 + i445;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r685, $exception := java.lang.Integer$valueOf$int($i173);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r686, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r684, $r685);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r686,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_342 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_342;
        return;
    }
    $r687 := $r686;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r687 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_343 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_343;
        return;
    }
    call i446, $exception := java.lang.Integer$intValue$($r687);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r688, $exception := java.lang.Integer$valueOf$int(i445);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i174 := 2 + i446;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r689, $exception := java.lang.Integer$valueOf$int($i174);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r690, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r688, $r689);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r690,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_344 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_344;
        return;
    }
    $r691 := $r690;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r691 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_345 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_345;
        return;
    }
    call i447, $exception := java.lang.Integer$intValue$($r691);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r692, $exception := java.lang.Integer$valueOf$int(i446);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i175 := 3 + i447;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r693, $exception := java.lang.Integer$valueOf$int($i175);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r694, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r692, $r693);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r694,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_346 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_346;
        return;
    }
    $r695 := $r694;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r695 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_347 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_347;
        return;
    }
    call i448, $exception := java.lang.Integer$intValue$($r695);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r696, $exception := java.lang.Integer$valueOf$int(i447);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i176 := 4 + i448;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r697, $exception := java.lang.Integer$valueOf$int($i176);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r698, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r696, $r697);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r698,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_348 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_348;
        return;
    }
    $r699 := $r698;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r699 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_349 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_349;
        return;
    }
    call i449, $exception := java.lang.Integer$intValue$($r699);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r700, $exception := java.lang.Integer$valueOf$int(i448);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i177 := 5 + i449;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r701, $exception := java.lang.Integer$valueOf$int($i177);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r702, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r700, $r701);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r702,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_350 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_350;
        return;
    }
    $r703 := $r702;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r703 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_351 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_351;
        return;
    }
    call i450, $exception := java.lang.Integer$intValue$($r703);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r704, $exception := java.lang.Integer$valueOf$int(i449);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i178 := 6 + i450;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r705, $exception := java.lang.Integer$valueOf$int($i178);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r706, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r704, $r705);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r706,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_352 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_352;
        return;
    }
    $r707 := $r706;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r707 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_353 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_353;
        return;
    }
    call i451, $exception := java.lang.Integer$intValue$($r707);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r708, $exception := java.lang.Integer$valueOf$int(i450);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i179 := 7 + i451;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r709, $exception := java.lang.Integer$valueOf$int($i179);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r710, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r708, $r709);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r710,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_354 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_354;
        return;
    }
    $r711 := $r710;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r711 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_355 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_355;
        return;
    }
    call i452, $exception := java.lang.Integer$intValue$($r711);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r712, $exception := java.lang.Integer$valueOf$int(i451);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i180 := 8 + i452;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r713, $exception := java.lang.Integer$valueOf$int($i180);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r714, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r712, $r713);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r714,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_356 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_356;
        return;
    }
    $r715 := $r714;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r715 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_357 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_357;
        return;
    }
    call i453, $exception := java.lang.Integer$intValue$($r715);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r716, $exception := java.lang.Integer$valueOf$int(i452);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i181 := 9 + i453;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r717, $exception := java.lang.Integer$valueOf$int($i181);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r718, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r716, $r717);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r718,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_358 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_358;
        return;
    }
    $r719 := $r718;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r719 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_359 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_359;
        return;
    }
    call i454, $exception := java.lang.Integer$intValue$($r719);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r720, $exception := java.lang.Integer$valueOf$int(i453);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    $i182 := 10 + i454;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r721, $exception := java.lang.Integer$valueOf$int($i182);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    call $r722, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r720, $r721);
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($heap[$r722,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_360 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_360;
        return;
    }
    $r723 := $r722;
    assert { :sourceloc "Sanity.java",28,-1,-1,-1 } true;
    if ($r723 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_361 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_361;
        return;
    }
    call i455, $exception := java.lang.Integer$intValue$($r723);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r724, $exception := java.lang.Integer$valueOf$int(i454);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i183 := 1 + i455;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r725, $exception := java.lang.Integer$valueOf$int($i183);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r726, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r724, $r725);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r726,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_362 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_362;
        return;
    }
    $r727 := $r726;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r727 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_363 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_363;
        return;
    }
    call i456, $exception := java.lang.Integer$intValue$($r727);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r728, $exception := java.lang.Integer$valueOf$int(i455);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i184 := 2 + i456;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r729, $exception := java.lang.Integer$valueOf$int($i184);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r730, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r728, $r729);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r730,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_364 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_364;
        return;
    }
    $r731 := $r730;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r731 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_365 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_365;
        return;
    }
    call i457, $exception := java.lang.Integer$intValue$($r731);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r732, $exception := java.lang.Integer$valueOf$int(i456);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i185 := 3 + i457;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r733, $exception := java.lang.Integer$valueOf$int($i185);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r734, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r732, $r733);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r734,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_366 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_366;
        return;
    }
    $r735 := $r734;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r735 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_367 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_367;
        return;
    }
    call i458, $exception := java.lang.Integer$intValue$($r735);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r736, $exception := java.lang.Integer$valueOf$int(i457);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i186 := 4 + i458;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r737, $exception := java.lang.Integer$valueOf$int($i186);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r738, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r736, $r737);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r738,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_368 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_368;
        return;
    }
    $r739 := $r738;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r739 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_369 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_369;
        return;
    }
    call i459, $exception := java.lang.Integer$intValue$($r739);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r740, $exception := java.lang.Integer$valueOf$int(i458);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i187 := 5 + i459;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r741, $exception := java.lang.Integer$valueOf$int($i187);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r742, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r740, $r741);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r742,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_370 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_370;
        return;
    }
    $r743 := $r742;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r743 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_371 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_371;
        return;
    }
    call i460, $exception := java.lang.Integer$intValue$($r743);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r744, $exception := java.lang.Integer$valueOf$int(i459);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i188 := 6 + i460;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r745, $exception := java.lang.Integer$valueOf$int($i188);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r746, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r744, $r745);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r746,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_372 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_372;
        return;
    }
    $r747 := $r746;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r747 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_373 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_373;
        return;
    }
    call i461, $exception := java.lang.Integer$intValue$($r747);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r748, $exception := java.lang.Integer$valueOf$int(i460);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i189 := 7 + i461;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r749, $exception := java.lang.Integer$valueOf$int($i189);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r750, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r748, $r749);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r750,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_374 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_374;
        return;
    }
    $r751 := $r750;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r751 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_375 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_375;
        return;
    }
    call i462, $exception := java.lang.Integer$intValue$($r751);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r752, $exception := java.lang.Integer$valueOf$int(i461);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i190 := 8 + i462;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r753, $exception := java.lang.Integer$valueOf$int($i190);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r754, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r752, $r753);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r754,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_376 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_376;
        return;
    }
    $r755 := $r754;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r755 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_377 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_377;
        return;
    }
    call i463, $exception := java.lang.Integer$intValue$($r755);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r756, $exception := java.lang.Integer$valueOf$int(i462);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i191 := 9 + i463;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r757, $exception := java.lang.Integer$valueOf$int($i191);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r758, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r756, $r757);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r758,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_378 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_378;
        return;
    }
    $r759 := $r758;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r759 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_379 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_379;
        return;
    }
    call i464, $exception := java.lang.Integer$intValue$($r759);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r760, $exception := java.lang.Integer$valueOf$int(i463);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i192 := 10 + i464;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r761, $exception := java.lang.Integer$valueOf$int($i192);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r762, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r760, $r761);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r762,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_380 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_380;
        return;
    }
    $r763 := $r762;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r763 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_381 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_381;
        return;
    }
    call i465, $exception := java.lang.Integer$intValue$($r763);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r764, $exception := java.lang.Integer$valueOf$int(i464);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i193 := 1 + i465;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r765, $exception := java.lang.Integer$valueOf$int($i193);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r766, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r764, $r765);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r766,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_382 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_382;
        return;
    }
    $r767 := $r766;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r767 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_383 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_383;
        return;
    }
    call i466, $exception := java.lang.Integer$intValue$($r767);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r768, $exception := java.lang.Integer$valueOf$int(i465);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i194 := 2 + i466;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r769, $exception := java.lang.Integer$valueOf$int($i194);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r770, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r768, $r769);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r770,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_384 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_384;
        return;
    }
    $r771 := $r770;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r771 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_385 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_385;
        return;
    }
    call i467, $exception := java.lang.Integer$intValue$($r771);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r772, $exception := java.lang.Integer$valueOf$int(i466);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i195 := 3 + i467;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r773, $exception := java.lang.Integer$valueOf$int($i195);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r774, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r772, $r773);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r774,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_386 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_386;
        return;
    }
    $r775 := $r774;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r775 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_387 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_387;
        return;
    }
    call i468, $exception := java.lang.Integer$intValue$($r775);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r776, $exception := java.lang.Integer$valueOf$int(i467);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i196 := 4 + i468;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r777, $exception := java.lang.Integer$valueOf$int($i196);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r778, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r776, $r777);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r778,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_388 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_388;
        return;
    }
    $r779 := $r778;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r779 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_389 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_389;
        return;
    }
    call i469, $exception := java.lang.Integer$intValue$($r779);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r780, $exception := java.lang.Integer$valueOf$int(i468);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i197 := 5 + i469;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r781, $exception := java.lang.Integer$valueOf$int($i197);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r782, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r780, $r781);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r782,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_390 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_390;
        return;
    }
    $r783 := $r782;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r783 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_391 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_391;
        return;
    }
    call i470, $exception := java.lang.Integer$intValue$($r783);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r784, $exception := java.lang.Integer$valueOf$int(i469);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i198 := 6 + i470;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r785, $exception := java.lang.Integer$valueOf$int($i198);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r786, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r784, $r785);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r786,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_392 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_392;
        return;
    }
    $r787 := $r786;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r787 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_393 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_393;
        return;
    }
    call i471, $exception := java.lang.Integer$intValue$($r787);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r788, $exception := java.lang.Integer$valueOf$int(i470);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i199 := 7 + i471;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r789, $exception := java.lang.Integer$valueOf$int($i199);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r790, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r788, $r789);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r790,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_394 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_394;
        return;
    }
    $r791 := $r790;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r791 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_395 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_395;
        return;
    }
    call i472, $exception := java.lang.Integer$intValue$($r791);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r792, $exception := java.lang.Integer$valueOf$int(i471);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i200 := 8 + i472;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r793, $exception := java.lang.Integer$valueOf$int($i200);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r794, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r792, $r793);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r794,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_396 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_396;
        return;
    }
    $r795 := $r794;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r795 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_397 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_397;
        return;
    }
    call i473, $exception := java.lang.Integer$intValue$($r795);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r796, $exception := java.lang.Integer$valueOf$int(i472);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i201 := 9 + i473;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r797, $exception := java.lang.Integer$valueOf$int($i201);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r798, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r796, $r797);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r798,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_398 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_398;
        return;
    }
    $r799 := $r798;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r799 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_399 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_399;
        return;
    }
    call i474, $exception := java.lang.Integer$intValue$($r799);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r800, $exception := java.lang.Integer$valueOf$int(i473);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i202 := 10 + i474;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r801, $exception := java.lang.Integer$valueOf$int($i202);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r802, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r800, $r801);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r802,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_400 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_400;
        return;
    }
    $r803 := $r802;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r803 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_401 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_401;
        return;
    }
    call i475, $exception := java.lang.Integer$intValue$($r803);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r804, $exception := java.lang.Integer$valueOf$int(i474);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i203 := 1 + i475;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r805, $exception := java.lang.Integer$valueOf$int($i203);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r806, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r804, $r805);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r806,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_402 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_402;
        return;
    }
    $r807 := $r806;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r807 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_403 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_403;
        return;
    }
    call i476, $exception := java.lang.Integer$intValue$($r807);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r808, $exception := java.lang.Integer$valueOf$int(i475);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i204 := 2 + i476;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r809, $exception := java.lang.Integer$valueOf$int($i204);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r810, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r808, $r809);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r810,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_404 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_404;
        return;
    }
    $r811 := $r810;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r811 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_405 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_405;
        return;
    }
    call i477, $exception := java.lang.Integer$intValue$($r811);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r812, $exception := java.lang.Integer$valueOf$int(i476);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i205 := 3 + i477;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r813, $exception := java.lang.Integer$valueOf$int($i205);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r814, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r812, $r813);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r814,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_406 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_406;
        return;
    }
    $r815 := $r814;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r815 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_407 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_407;
        return;
    }
    call i478, $exception := java.lang.Integer$intValue$($r815);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r816, $exception := java.lang.Integer$valueOf$int(i477);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i206 := 4 + i478;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r817, $exception := java.lang.Integer$valueOf$int($i206);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r818, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r816, $r817);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r818,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_408 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_408;
        return;
    }
    $r819 := $r818;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r819 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_409 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_409;
        return;
    }
    call i479, $exception := java.lang.Integer$intValue$($r819);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r820, $exception := java.lang.Integer$valueOf$int(i478);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i207 := 5 + i479;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r821, $exception := java.lang.Integer$valueOf$int($i207);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r822, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r820, $r821);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r822,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_410 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_410;
        return;
    }
    $r823 := $r822;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r823 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_411 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_411;
        return;
    }
    call i480, $exception := java.lang.Integer$intValue$($r823);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r824, $exception := java.lang.Integer$valueOf$int(i479);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i208 := 6 + i480;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r825, $exception := java.lang.Integer$valueOf$int($i208);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r826, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r824, $r825);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r826,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_412 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_412;
        return;
    }
    $r827 := $r826;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r827 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_413 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_413;
        return;
    }
    call i481, $exception := java.lang.Integer$intValue$($r827);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r828, $exception := java.lang.Integer$valueOf$int(i480);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i209 := 7 + i481;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r829, $exception := java.lang.Integer$valueOf$int($i209);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r830, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r828, $r829);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r830,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_414 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_414;
        return;
    }
    $r831 := $r830;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r831 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_415 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_415;
        return;
    }
    call i482, $exception := java.lang.Integer$intValue$($r831);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r832, $exception := java.lang.Integer$valueOf$int(i481);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i210 := 8 + i482;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r833, $exception := java.lang.Integer$valueOf$int($i210);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r834, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r832, $r833);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r834,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_416 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_416;
        return;
    }
    $r835 := $r834;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r835 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_417 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_417;
        return;
    }
    call i483, $exception := java.lang.Integer$intValue$($r835);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r836, $exception := java.lang.Integer$valueOf$int(i482);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i211 := 9 + i483;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r837, $exception := java.lang.Integer$valueOf$int($i211);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r838, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r836, $r837);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r838,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_418 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_418;
        return;
    }
    $r839 := $r838;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r839 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_419 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_419;
        return;
    }
    call i484, $exception := java.lang.Integer$intValue$($r839);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r840, $exception := java.lang.Integer$valueOf$int(i483);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    $i212 := 10 + i484;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r841, $exception := java.lang.Integer$valueOf$int($i212);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    call $r842, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r840, $r841);
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($heap[$r842,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_420 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_420;
        return;
    }
    $r843 := $r842;
    assert { :sourceloc "Sanity.java",29,-1,-1,-1 } true;
    if ($r843 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_421 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_421;
        return;
    }
    call i485, $exception := java.lang.Integer$intValue$($r843);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r844, $exception := java.lang.Integer$valueOf$int(i484);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i213 := 1 + i485;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r845, $exception := java.lang.Integer$valueOf$int($i213);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r846, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r844, $r845);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r846,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_422 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_422;
        return;
    }
    $r847 := $r846;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r847 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_423 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_423;
        return;
    }
    call i486, $exception := java.lang.Integer$intValue$($r847);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r848, $exception := java.lang.Integer$valueOf$int(i485);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i214 := 2 + i486;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r849, $exception := java.lang.Integer$valueOf$int($i214);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r850, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r848, $r849);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r850,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_424 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_424;
        return;
    }
    $r851 := $r850;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r851 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_425 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_425;
        return;
    }
    call i487, $exception := java.lang.Integer$intValue$($r851);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r852, $exception := java.lang.Integer$valueOf$int(i486);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i215 := 3 + i487;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r853, $exception := java.lang.Integer$valueOf$int($i215);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r854, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r852, $r853);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r854,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_426 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_426;
        return;
    }
    $r855 := $r854;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r855 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_427 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_427;
        return;
    }
    call i488, $exception := java.lang.Integer$intValue$($r855);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r856, $exception := java.lang.Integer$valueOf$int(i487);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i216 := 4 + i488;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r857, $exception := java.lang.Integer$valueOf$int($i216);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r858, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r856, $r857);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r858,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_428 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_428;
        return;
    }
    $r859 := $r858;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r859 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_429 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_429;
        return;
    }
    call i489, $exception := java.lang.Integer$intValue$($r859);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r860, $exception := java.lang.Integer$valueOf$int(i488);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i217 := 5 + i489;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r861, $exception := java.lang.Integer$valueOf$int($i217);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r862, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r860, $r861);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r862,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_430 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_430;
        return;
    }
    $r863 := $r862;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r863 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_431 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_431;
        return;
    }
    call i490, $exception := java.lang.Integer$intValue$($r863);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r864, $exception := java.lang.Integer$valueOf$int(i489);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i218 := 6 + i490;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r865, $exception := java.lang.Integer$valueOf$int($i218);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r866, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r864, $r865);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r866,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_432 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_432;
        return;
    }
    $r867 := $r866;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r867 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_433 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_433;
        return;
    }
    call i491, $exception := java.lang.Integer$intValue$($r867);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r868, $exception := java.lang.Integer$valueOf$int(i490);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i219 := 7 + i491;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r869, $exception := java.lang.Integer$valueOf$int($i219);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r870, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r868, $r869);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r870,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_434 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_434;
        return;
    }
    $r871 := $r870;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r871 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_435 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_435;
        return;
    }
    call i492, $exception := java.lang.Integer$intValue$($r871);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r872, $exception := java.lang.Integer$valueOf$int(i491);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i220 := 8 + i492;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r873, $exception := java.lang.Integer$valueOf$int($i220);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r874, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r872, $r873);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r874,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_436 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_436;
        return;
    }
    $r875 := $r874;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r875 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_437 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_437;
        return;
    }
    call i493, $exception := java.lang.Integer$intValue$($r875);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r876, $exception := java.lang.Integer$valueOf$int(i492);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i221 := 9 + i493;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r877, $exception := java.lang.Integer$valueOf$int($i221);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r878, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r876, $r877);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r878,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_438 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_438;
        return;
    }
    $r879 := $r878;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r879 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_439 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_439;
        return;
    }
    call i494, $exception := java.lang.Integer$intValue$($r879);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r880, $exception := java.lang.Integer$valueOf$int(i493);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i222 := 10 + i494;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r881, $exception := java.lang.Integer$valueOf$int($i222);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r882, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r880, $r881);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r882,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_440 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_440;
        return;
    }
    $r883 := $r882;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r883 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_441 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_441;
        return;
    }
    call i495, $exception := java.lang.Integer$intValue$($r883);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r884, $exception := java.lang.Integer$valueOf$int(i494);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i223 := 1 + i495;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r885, $exception := java.lang.Integer$valueOf$int($i223);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r886, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r884, $r885);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r886,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_442 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_442;
        return;
    }
    $r887 := $r886;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r887 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_443 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_443;
        return;
    }
    call i496, $exception := java.lang.Integer$intValue$($r887);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r888, $exception := java.lang.Integer$valueOf$int(i495);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i224 := 2 + i496;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r889, $exception := java.lang.Integer$valueOf$int($i224);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r890, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r888, $r889);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r890,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_444 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_444;
        return;
    }
    $r891 := $r890;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r891 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_445 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_445;
        return;
    }
    call i497, $exception := java.lang.Integer$intValue$($r891);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r892, $exception := java.lang.Integer$valueOf$int(i496);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i225 := 3 + i497;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r893, $exception := java.lang.Integer$valueOf$int($i225);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r894, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r892, $r893);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r894,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_446 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_446;
        return;
    }
    $r895 := $r894;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r895 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_447 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_447;
        return;
    }
    call i498, $exception := java.lang.Integer$intValue$($r895);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r896, $exception := java.lang.Integer$valueOf$int(i497);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i226 := 4 + i498;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r897, $exception := java.lang.Integer$valueOf$int($i226);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r898, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r896, $r897);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r898,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_448 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_448;
        return;
    }
    $r899 := $r898;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r899 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_449 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_449;
        return;
    }
    call i499, $exception := java.lang.Integer$intValue$($r899);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r900, $exception := java.lang.Integer$valueOf$int(i498);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i227 := 5 + i499;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r901, $exception := java.lang.Integer$valueOf$int($i227);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r902, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r900, $r901);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r902,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_450 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_450;
        return;
    }
    $r903 := $r902;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r903 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_451 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_451;
        return;
    }
    call i500, $exception := java.lang.Integer$intValue$($r903);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r904, $exception := java.lang.Integer$valueOf$int(i499);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i228 := 6 + i500;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r905, $exception := java.lang.Integer$valueOf$int($i228);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r906, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r904, $r905);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r906,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_452 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_452;
        return;
    }
    $r907 := $r906;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r907 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_453 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_453;
        return;
    }
    call i501, $exception := java.lang.Integer$intValue$($r907);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r908, $exception := java.lang.Integer$valueOf$int(i500);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i229 := 7 + i501;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r909, $exception := java.lang.Integer$valueOf$int($i229);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r910, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r908, $r909);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r910,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_454 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_454;
        return;
    }
    $r911 := $r910;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r911 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_455 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_455;
        return;
    }
    call i502, $exception := java.lang.Integer$intValue$($r911);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r912, $exception := java.lang.Integer$valueOf$int(i501);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i230 := 8 + i502;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r913, $exception := java.lang.Integer$valueOf$int($i230);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r914, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r912, $r913);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r914,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_456 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_456;
        return;
    }
    $r915 := $r914;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r915 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_457 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_457;
        return;
    }
    call i503, $exception := java.lang.Integer$intValue$($r915);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r916, $exception := java.lang.Integer$valueOf$int(i502);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i231 := 9 + i503;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r917, $exception := java.lang.Integer$valueOf$int($i231);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r918, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r916, $r917);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r918,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_458 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_458;
        return;
    }
    $r919 := $r918;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r919 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_459 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_459;
        return;
    }
    call i504, $exception := java.lang.Integer$intValue$($r919);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r920, $exception := java.lang.Integer$valueOf$int(i503);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i232 := 10 + i504;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r921, $exception := java.lang.Integer$valueOf$int($i232);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r922, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r920, $r921);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r922,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_460 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_460;
        return;
    }
    $r923 := $r922;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r923 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_461 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_461;
        return;
    }
    call i505, $exception := java.lang.Integer$intValue$($r923);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r924, $exception := java.lang.Integer$valueOf$int(i504);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i233 := 1 + i505;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r925, $exception := java.lang.Integer$valueOf$int($i233);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r926, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r924, $r925);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r926,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_462 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_462;
        return;
    }
    $r927 := $r926;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r927 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_463 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_463;
        return;
    }
    call i506, $exception := java.lang.Integer$intValue$($r927);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r928, $exception := java.lang.Integer$valueOf$int(i505);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i234 := 2 + i506;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r929, $exception := java.lang.Integer$valueOf$int($i234);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r930, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r928, $r929);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r930,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_464 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_464;
        return;
    }
    $r931 := $r930;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r931 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_465 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_465;
        return;
    }
    call i507, $exception := java.lang.Integer$intValue$($r931);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r932, $exception := java.lang.Integer$valueOf$int(i506);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i235 := 3 + i507;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r933, $exception := java.lang.Integer$valueOf$int($i235);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r934, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r932, $r933);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r934,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_466 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_466;
        return;
    }
    $r935 := $r934;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r935 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_467 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_467;
        return;
    }
    call i508, $exception := java.lang.Integer$intValue$($r935);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r936, $exception := java.lang.Integer$valueOf$int(i507);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i236 := 4 + i508;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r937, $exception := java.lang.Integer$valueOf$int($i236);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r938, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r936, $r937);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r938,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_468 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_468;
        return;
    }
    $r939 := $r938;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r939 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_469 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_469;
        return;
    }
    call i509, $exception := java.lang.Integer$intValue$($r939);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r940, $exception := java.lang.Integer$valueOf$int(i508);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i237 := 5 + i509;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r941, $exception := java.lang.Integer$valueOf$int($i237);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r942, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r940, $r941);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r942,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_470 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_470;
        return;
    }
    $r943 := $r942;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r943 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_471 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_471;
        return;
    }
    call i510, $exception := java.lang.Integer$intValue$($r943);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r944, $exception := java.lang.Integer$valueOf$int(i509);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i238 := 6 + i510;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r945, $exception := java.lang.Integer$valueOf$int($i238);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r946, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r944, $r945);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r946,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_472 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_472;
        return;
    }
    $r947 := $r946;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r947 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_473 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_473;
        return;
    }
    call i511, $exception := java.lang.Integer$intValue$($r947);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r948, $exception := java.lang.Integer$valueOf$int(i510);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i239 := 7 + i511;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r949, $exception := java.lang.Integer$valueOf$int($i239);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r950, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r948, $r949);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r950,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_474 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_474;
        return;
    }
    $r951 := $r950;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r951 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_475 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_475;
        return;
    }
    call i512, $exception := java.lang.Integer$intValue$($r951);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r952, $exception := java.lang.Integer$valueOf$int(i511);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i240 := 8 + i512;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r953, $exception := java.lang.Integer$valueOf$int($i240);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r954, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r952, $r953);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r954,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_476 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_476;
        return;
    }
    $r955 := $r954;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r955 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_477 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_477;
        return;
    }
    call i513, $exception := java.lang.Integer$intValue$($r955);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r956, $exception := java.lang.Integer$valueOf$int(i512);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i241 := 9 + i513;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r957, $exception := java.lang.Integer$valueOf$int($i241);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r958, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r956, $r957);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r958,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_478 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_478;
        return;
    }
    $r959 := $r958;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r959 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_479 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_479;
        return;
    }
    call i514, $exception := java.lang.Integer$intValue$($r959);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r960, $exception := java.lang.Integer$valueOf$int(i513);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    $i242 := 10 + i514;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r961, $exception := java.lang.Integer$valueOf$int($i242);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    call $r962, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r960, $r961);
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($heap[$r962,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_480 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_480;
        return;
    }
    $r963 := $r962;
    assert { :sourceloc "Sanity.java",30,-1,-1,-1 } true;
    if ($r963 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_481 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_481;
        return;
    }
    call i515, $exception := java.lang.Integer$intValue$($r963);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r964, $exception := java.lang.Integer$valueOf$int(i514);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i243 := 1 + i515;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r965, $exception := java.lang.Integer$valueOf$int($i243);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r966, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r964, $r965);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r966,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_482 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_482;
        return;
    }
    $r967 := $r966;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r967 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_483 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_483;
        return;
    }
    call i516, $exception := java.lang.Integer$intValue$($r967);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r968, $exception := java.lang.Integer$valueOf$int(i515);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i244 := 2 + i516;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r969, $exception := java.lang.Integer$valueOf$int($i244);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r970, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r968, $r969);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r970,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_484 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_484;
        return;
    }
    $r971 := $r970;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r971 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_485 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_485;
        return;
    }
    call i517, $exception := java.lang.Integer$intValue$($r971);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r972, $exception := java.lang.Integer$valueOf$int(i516);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i245 := 3 + i517;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r973, $exception := java.lang.Integer$valueOf$int($i245);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r974, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r972, $r973);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r974,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_486 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_486;
        return;
    }
    $r975 := $r974;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r975 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_487 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_487;
        return;
    }
    call i518, $exception := java.lang.Integer$intValue$($r975);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r976, $exception := java.lang.Integer$valueOf$int(i517);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i246 := 4 + i518;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r977, $exception := java.lang.Integer$valueOf$int($i246);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r978, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r976, $r977);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r978,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_488 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_488;
        return;
    }
    $r979 := $r978;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r979 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_489 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_489;
        return;
    }
    call i519, $exception := java.lang.Integer$intValue$($r979);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r980, $exception := java.lang.Integer$valueOf$int(i518);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i247 := 5 + i519;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r981, $exception := java.lang.Integer$valueOf$int($i247);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r982, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r980, $r981);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r982,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_490 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_490;
        return;
    }
    $r983 := $r982;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r983 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_491 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_491;
        return;
    }
    call i520, $exception := java.lang.Integer$intValue$($r983);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r984, $exception := java.lang.Integer$valueOf$int(i519);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i248 := 6 + i520;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r985, $exception := java.lang.Integer$valueOf$int($i248);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r986, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r984, $r985);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r986,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_492 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_492;
        return;
    }
    $r987 := $r986;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r987 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_493 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_493;
        return;
    }
    call i521, $exception := java.lang.Integer$intValue$($r987);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r988, $exception := java.lang.Integer$valueOf$int(i520);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i249 := 7 + i521;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r989, $exception := java.lang.Integer$valueOf$int($i249);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r990, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r988, $r989);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r990,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_494 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_494;
        return;
    }
    $r991 := $r990;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r991 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_495 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_495;
        return;
    }
    call i522, $exception := java.lang.Integer$intValue$($r991);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r992, $exception := java.lang.Integer$valueOf$int(i521);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i250 := 8 + i522;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r993, $exception := java.lang.Integer$valueOf$int($i250);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r994, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r992, $r993);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r994,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_496 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_496;
        return;
    }
    $r995 := $r994;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r995 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_497 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_497;
        return;
    }
    call i523, $exception := java.lang.Integer$intValue$($r995);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r996, $exception := java.lang.Integer$valueOf$int(i522);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i251 := 9 + i523;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r997, $exception := java.lang.Integer$valueOf$int($i251);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r998, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r996, $r997);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r998,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_498 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_498;
        return;
    }
    $r999 := $r998;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r999 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_499 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_499;
        return;
    }
    call i524, $exception := java.lang.Integer$intValue$($r999);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1000, $exception := java.lang.Integer$valueOf$int(i523);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i252 := 10 + i524;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1001, $exception := java.lang.Integer$valueOf$int($i252);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1002, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1000, $r1001);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1002,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_500 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_500;
        return;
    }
    $r1003 := $r1002;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1003 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_501 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_501;
        return;
    }
    call i525, $exception := java.lang.Integer$intValue$($r1003);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1004, $exception := java.lang.Integer$valueOf$int(i524);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i253 := 1 + i525;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1005, $exception := java.lang.Integer$valueOf$int($i253);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1006, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1004, $r1005);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1006,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_502 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_502;
        return;
    }
    $r1007 := $r1006;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1007 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_503 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_503;
        return;
    }
    call i526, $exception := java.lang.Integer$intValue$($r1007);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1008, $exception := java.lang.Integer$valueOf$int(i525);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i254 := 2 + i526;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1009, $exception := java.lang.Integer$valueOf$int($i254);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1010, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1008, $r1009);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1010,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_504 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_504;
        return;
    }
    $r1011 := $r1010;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1011 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_505 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_505;
        return;
    }
    call i527, $exception := java.lang.Integer$intValue$($r1011);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1012, $exception := java.lang.Integer$valueOf$int(i526);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i255 := 3 + i527;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1013, $exception := java.lang.Integer$valueOf$int($i255);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1014, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1012, $r1013);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1014,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_506 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_506;
        return;
    }
    $r1015 := $r1014;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1015 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_507 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_507;
        return;
    }
    call i528, $exception := java.lang.Integer$intValue$($r1015);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1016, $exception := java.lang.Integer$valueOf$int(i527);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i256 := 4 + i528;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1017, $exception := java.lang.Integer$valueOf$int($i256);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1018, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1016, $r1017);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1018,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_508 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_508;
        return;
    }
    $r1019 := $r1018;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1019 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_509 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_509;
        return;
    }
    call i529, $exception := java.lang.Integer$intValue$($r1019);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1020, $exception := java.lang.Integer$valueOf$int(i528);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i257 := 5 + i529;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1021, $exception := java.lang.Integer$valueOf$int($i257);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1022, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1020, $r1021);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1022,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_510 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_510;
        return;
    }
    $r1023 := $r1022;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1023 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_511 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_511;
        return;
    }
    call i530, $exception := java.lang.Integer$intValue$($r1023);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1024, $exception := java.lang.Integer$valueOf$int(i529);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i258 := 6 + i530;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1025, $exception := java.lang.Integer$valueOf$int($i258);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1026, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1024, $r1025);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1026,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_512 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_512;
        return;
    }
    $r1027 := $r1026;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1027 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_513 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_513;
        return;
    }
    call i531, $exception := java.lang.Integer$intValue$($r1027);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1028, $exception := java.lang.Integer$valueOf$int(i530);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i259 := 7 + i531;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1029, $exception := java.lang.Integer$valueOf$int($i259);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1030, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1028, $r1029);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1030,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_514 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_514;
        return;
    }
    $r1031 := $r1030;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1031 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_515 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_515;
        return;
    }
    call i532, $exception := java.lang.Integer$intValue$($r1031);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1032, $exception := java.lang.Integer$valueOf$int(i531);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i260 := 8 + i532;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1033, $exception := java.lang.Integer$valueOf$int($i260);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1034, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1032, $r1033);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1034,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_516 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_516;
        return;
    }
    $r1035 := $r1034;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1035 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_517 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_517;
        return;
    }
    call i533, $exception := java.lang.Integer$intValue$($r1035);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1036, $exception := java.lang.Integer$valueOf$int(i532);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i261 := 9 + i533;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1037, $exception := java.lang.Integer$valueOf$int($i261);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1038, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1036, $r1037);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1038,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_518 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_518;
        return;
    }
    $r1039 := $r1038;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1039 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_519 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_519;
        return;
    }
    call i534, $exception := java.lang.Integer$intValue$($r1039);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1040, $exception := java.lang.Integer$valueOf$int(i533);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i262 := 10 + i534;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1041, $exception := java.lang.Integer$valueOf$int($i262);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1042, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1040, $r1041);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1042,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_520 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_520;
        return;
    }
    $r1043 := $r1042;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1043 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_521 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_521;
        return;
    }
    call i535, $exception := java.lang.Integer$intValue$($r1043);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1044, $exception := java.lang.Integer$valueOf$int(i534);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i263 := 1 + i535;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1045, $exception := java.lang.Integer$valueOf$int($i263);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1046, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1044, $r1045);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1046,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_522 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_522;
        return;
    }
    $r1047 := $r1046;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1047 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_523 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_523;
        return;
    }
    call i536, $exception := java.lang.Integer$intValue$($r1047);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1048, $exception := java.lang.Integer$valueOf$int(i535);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i264 := 2 + i536;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1049, $exception := java.lang.Integer$valueOf$int($i264);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1050, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1048, $r1049);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1050,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_524 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_524;
        return;
    }
    $r1051 := $r1050;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1051 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_525 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_525;
        return;
    }
    call i537, $exception := java.lang.Integer$intValue$($r1051);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1052, $exception := java.lang.Integer$valueOf$int(i536);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i265 := 3 + i537;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1053, $exception := java.lang.Integer$valueOf$int($i265);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1054, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1052, $r1053);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1054,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_526 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_526;
        return;
    }
    $r1055 := $r1054;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1055 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_527 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_527;
        return;
    }
    call i538, $exception := java.lang.Integer$intValue$($r1055);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1056, $exception := java.lang.Integer$valueOf$int(i537);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i266 := 4 + i538;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1057, $exception := java.lang.Integer$valueOf$int($i266);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1058, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1056, $r1057);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1058,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_528 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_528;
        return;
    }
    $r1059 := $r1058;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1059 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_529 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_529;
        return;
    }
    call i539, $exception := java.lang.Integer$intValue$($r1059);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1060, $exception := java.lang.Integer$valueOf$int(i538);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i267 := 5 + i539;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1061, $exception := java.lang.Integer$valueOf$int($i267);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1062, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1060, $r1061);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1062,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_530 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_530;
        return;
    }
    $r1063 := $r1062;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1063 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_531 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_531;
        return;
    }
    call i540, $exception := java.lang.Integer$intValue$($r1063);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1064, $exception := java.lang.Integer$valueOf$int(i539);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i268 := 6 + i540;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1065, $exception := java.lang.Integer$valueOf$int($i268);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1066, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1064, $r1065);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1066,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_532 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_532;
        return;
    }
    $r1067 := $r1066;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1067 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_533 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_533;
        return;
    }
    call i541, $exception := java.lang.Integer$intValue$($r1067);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1068, $exception := java.lang.Integer$valueOf$int(i540);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i269 := 7 + i541;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1069, $exception := java.lang.Integer$valueOf$int($i269);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1070, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1068, $r1069);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1070,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_534 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_534;
        return;
    }
    $r1071 := $r1070;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1071 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_535 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_535;
        return;
    }
    call i542, $exception := java.lang.Integer$intValue$($r1071);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1072, $exception := java.lang.Integer$valueOf$int(i541);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i270 := 8 + i542;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1073, $exception := java.lang.Integer$valueOf$int($i270);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1074, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1072, $r1073);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1074,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_536 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_536;
        return;
    }
    $r1075 := $r1074;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1075 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_537 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_537;
        return;
    }
    call i543, $exception := java.lang.Integer$intValue$($r1075);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1076, $exception := java.lang.Integer$valueOf$int(i542);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i271 := 9 + i543;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1077, $exception := java.lang.Integer$valueOf$int($i271);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1078, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1076, $r1077);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1078,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_538 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_538;
        return;
    }
    $r1079 := $r1078;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1079 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_539 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_539;
        return;
    }
    call i544, $exception := java.lang.Integer$intValue$($r1079);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1080, $exception := java.lang.Integer$valueOf$int(i543);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    $i272 := 10 + i544;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1081, $exception := java.lang.Integer$valueOf$int($i272);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    call $r1082, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1080, $r1081);
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($heap[$r1082,$type] <: java.lang.Integer) {
        $exception := $exception;
    } else {
        call $fakelocal_540 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_540;
        return;
    }
    $r1083 := $r1082;
    assert { :sourceloc "Sanity.java",31,-1,-1,-1 } true;
    if ($r1083 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_541 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_541;
        return;
    }
    call $fakelocal_542, $exception := java.lang.Integer$intValue$($r1083);
    assert { :sourceloc "Sanity.java",33,-1,-1,-1 } true;
    $return := 0;
    goto block61;
  block61:
    return;
}


implementation Sanity$sanity_safe$int_int($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $r5 : ref;    
var $r0 : ref;    
var $fakelocal_1 : ref;    
var $fakelocal_0 : ref;    
var i3 : int;    
var $r3 : ref;    
var $fakelocal_2 : ref;    
var i0 : int;    
var $r1 : ref;    
var i1 : int;    
var $r6 : ref;    
var i2 : int;    
var $fakelocal_4 : ref;    
var $r2 : ref;    
var $r4 : ref;    
var $fakelocal_5 : ref;    
var $fakelocal_3 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Sanity.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__0;
    assert { :sourceloc "Sanity.java",-1,-1,-1,-1 } true;
    i1 := $in_parameter__1;
    assert { :sourceloc "Sanity.java",50,-1,-1,-1 } true;
    $r1 := java.io.PrintStream$java.lang.System$out260;
    assert { :sourceloc "Sanity.java",50,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r0 := $fakelocal_0;
    assert { :sourceloc "Sanity.java",50,-1,-1,-1 } true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r0);
    assert { :sourceloc "Sanity.java",50,-1,-1,-1 } true;
    call $r2, $exception := java.lang.StringBuilder$append$java.lang.String($r0, $StringConst0);
    assert { :sourceloc "Sanity.java",50,-1,-1,-1 } true;
    if ($r2 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_1;
        return;
    }
    call $r3, $exception := java.lang.StringBuilder$append$int($r2, i0);
    assert { :sourceloc "Sanity.java",50,-1,-1,-1 } true;
    if ($r3 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_2;
        return;
    }
    call $r4, $exception := java.lang.StringBuilder$append$java.lang.String($r3, $StringConst1);
    assert { :sourceloc "Sanity.java",50,-1,-1,-1 } true;
    if ($r4 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_3;
        return;
    }
    call $r5, $exception := java.lang.StringBuilder$append$int($r4, i1);
    assert { :sourceloc "Sanity.java",50,-1,-1,-1 } true;
    if ($r5 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_4;
        return;
    }
    call $r6, $exception := java.lang.StringBuilder$toString$($r5);
    assert { :sourceloc "Sanity.java",50,-1,-1,-1 } true;
    if ($r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_5;
        return;
    }
    call $exception := java.io.PrintStream$println$java.lang.String($r1, $r6);
    assert { :sourceloc "Sanity.java",51,-1,-1,-1 } true;
    i2 := i1;
    assert { :sourceloc "Sanity.java",52,-1,-1,-1 } true;
    i3 := i1;
    assert { :sourceloc "Sanity.java",53,-1,-1,-1 } true;
    if (i1 >= 0) {
        assert { :sourceloc "Sanity.java",53,-1,-1,-1 } { :comment "thenblock" } true;
        goto block62;
    } else {
        assert { :sourceloc "Sanity.java",53,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",56,-1,-1,-1 } true;
    $return := 0;
    goto block66;
  block62:
    assert { :sourceloc "Sanity.java",55,-1,-1,-1 } true;
    if (i0 <= 0) {
        assert { :sourceloc "Sanity.java",55,-1,-1,-1 } { :comment "thenblock" } true;
        goto block63;
    } else {
        assert { :sourceloc "Sanity.java",55,-1,-1,-1 } { :comment "elseblock" } true;
    }
  block64:
    assert { :sourceloc "Sanity.java",56,-1,-1,-1 } true;
    if (i2 <= 0) {
        assert { :sourceloc "Sanity.java",56,-1,-1,-1 } { :comment "thenblock" } true;
        goto block65;
    } else {
        assert { :sourceloc "Sanity.java",56,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",57,-1,-1,-1 } true;
    i2 := i2 + -1;
    assert { :sourceloc "Sanity.java",57,-1,-1,-1 } true;
    goto block64;
  block63:
    assert { :sourceloc "Sanity.java",60,-1,-1,-1 } true;
    if (i3 <= 0) {
        assert { :sourceloc "Sanity.java",60,-1,-1,-1 } { :comment "thenblock" } true;
        goto block65;
    } else {
        assert { :sourceloc "Sanity.java",60,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",61,-1,-1,-1 } true;
    i3 := i3 + -1;
    assert { :sourceloc "Sanity.java",61,-1,-1,-1 } true;
    goto block63;
  block65:
    assert { :sourceloc "Sanity.java",65,-1,-1,-1 } true;
    $return := 0;
    goto block66;
  block66:
    return;
}


implementation Sanity$sanity_unsafe$int_int($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var i3 : int;    
var i0 : int;    
var i1 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Sanity.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__0;
    assert { :sourceloc "Sanity.java",-1,-1,-1,-1 } true;
    i1 := $in_parameter__1;
    assert { :sourceloc "Sanity.java",69,-1,-1,-1 } true;
    i3 := i1;
    assert { :sourceloc "Sanity.java",71,-1,-1,-1 } true;
    if (i1 >= 0) {
        assert { :sourceloc "Sanity.java",71,-1,-1,-1 } { :comment "thenblock" } true;
        goto block67;
    } else {
        assert { :sourceloc "Sanity.java",71,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",74,-1,-1,-1 } true;
    $return := 0;
    goto block70;
  block67:
    assert { :sourceloc "Sanity.java",73,-1,-1,-1 } true;
    if (i0 >= 0) {
        assert { :sourceloc "Sanity.java",73,-1,-1,-1 } { :comment "thenblock" } true;
        goto block68;
    } else {
        assert { :sourceloc "Sanity.java",73,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",74,-1,-1,-1 } true;
    $return := 1;
    goto block70;
  block68:
    assert { :sourceloc "Sanity.java",76,-1,-1,-1 } true;
    if (i3 <= 0) {
        assert { :sourceloc "Sanity.java",76,-1,-1,-1 } { :comment "thenblock" } true;
        goto block69;
    } else {
        assert { :sourceloc "Sanity.java",76,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",77,-1,-1,-1 } true;
    i3 := i3 + -1;
    assert { :sourceloc "Sanity.java",77,-1,-1,-1 } true;
    goto block68;
  block69:
    assert { :sourceloc "Sanity.java",80,-1,-1,-1 } true;
    $return := 0;
    goto block70;
  block70:
    return;
}


implementation java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref){
    $exception := $null;
    return;
}


