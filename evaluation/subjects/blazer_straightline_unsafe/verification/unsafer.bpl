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
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique Sanity : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.IndexOutOfBoundsException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.ArrayIndexOutOfBoundsException : javaType extends  unique java.lang.IndexOutOfBoundsException complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.Appendable : javaType extends  complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.AbstractStringBuilder : javaType extends  unique java.lang.Object, java.lang.Appendable, java.lang.CharSequence complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.StringBuilder : javaType extends  unique java.lang.AbstractStringBuilder, java.io.Serializable, java.lang.CharSequence complete;
const unique $StringConst0 : ref extends  complete;
const { :sourceloc "Sanity.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  complete;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    modifies $objIndex, $heap;    ensures !old($heap[$obj,$alloc]);    ensures $heap == old($heap)[$obj,$alloc := true][$obj,$type := obj_type];    ensures $objIndex == old($objIndex) + 1;    ensures $obj != $null;    ensures $obj == $intToRef(old($objIndex));

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $other != $null;    ensures $heap[$other,$alloc] == true;    ensures $heap[$other,$type] == $heap[$this,$type];    

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

procedure Sanity$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure Sanity$notaint_unsafe$int$lp$$rp$_int($in_parameter__0:ref, $in_parameter__1:int) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

procedure Sanity$nosecret_safe$int$lp$$rp$_int($in_parameter__0:ref, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure Sanity$straightline_unsafe$int_int($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure Sanity$sanity_safe$int_int($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

procedure java.lang.StringBuilder$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure java.lang.StringBuilder$append$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.StringBuilder$append$int($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.StringBuilder$toString$($this:ref) returns ($return:ref, $exception:ref);    

procedure java.io.PrintStream$println$java.lang.String($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure Sanity$sanity_unsafe$int_int($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

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
    assert { :sourceloc "Sanity.java",2,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "Sanity.java",2,-1,-1,-1 } true;
    goto block1;
  block1:
    return;
}


implementation Sanity$notaint_unsafe$int$lp$$rp$_int($in_parameter__0:ref, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var r0 : ref;    
var $i1 : int;    
var $fakelocal_1 : ref;    
var i3 : int;    
var $fakelocal_0 : ref;    
var $i2 : int;    
var i0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Sanity.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Sanity.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__1;
    assert { :sourceloc "Sanity.java",5,-1,-1,-1 } true;
    if (0 < $arrSizeHeap[r0] && 0 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    $i1 := $intArrHeap[r0][0];
    assert { :sourceloc "Sanity.java",5,-1,-1,-1 } true;
    if ($i1 <= 0) {
        assert { :sourceloc "Sanity.java",5,-1,-1,-1 } { :comment "thenblock" } true;
        goto block2;
    } else {
        assert { :sourceloc "Sanity.java",5,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",6,-1,-1,-1 } true;
    i3 := 0;
  block3:
    assert { :sourceloc "Sanity.java",6,-1,-1,-1 } true;
    if (0 < $arrSizeHeap[r0] && 0 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_1;
        return;
    }
    $i2 := $intArrHeap[r0][0];
    assert { :sourceloc "Sanity.java",6,-1,-1,-1 } true;
    if (i3 >= $i2) {
        assert { :sourceloc "Sanity.java",6,-1,-1,-1 } { :comment "thenblock" } true;
        goto block2;
    } else {
        assert { :sourceloc "Sanity.java",6,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",8,-1,-1,-1 } true;
    i3 := i3 + 1;
    assert { :sourceloc "Sanity.java",8,-1,-1,-1 } true;
    goto block3;
  block2:
    assert { :sourceloc "Sanity.java",8,-1,-1,-1 } true;
    $return := 1;
    goto block4;
  block4:
    return;
}


implementation Sanity$nosecret_safe$int$lp$$rp$_int($in_parameter__0:ref, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var i1 : int;    
var r0 : ref;    
var i0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Sanity.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Sanity.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__1;
    assert { :sourceloc "Sanity.java",11,-1,-1,-1 } true;
    if (i0 <= 0) {
        assert { :sourceloc "Sanity.java",11,-1,-1,-1 } { :comment "thenblock" } true;
        goto block5;
    } else {
        assert { :sourceloc "Sanity.java",11,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",12,-1,-1,-1 } true;
    i1 := 0;
  block6:
    assert { :sourceloc "Sanity.java",12,-1,-1,-1 } true;
    if (i1 >= i0) {
        assert { :sourceloc "Sanity.java",12,-1,-1,-1 } { :comment "thenblock" } true;
        goto block5;
    } else {
        assert { :sourceloc "Sanity.java",12,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",14,-1,-1,-1 } true;
    i1 := i1 + 1;
    assert { :sourceloc "Sanity.java",14,-1,-1,-1 } true;
    goto block6;
  block5:
    assert { :sourceloc "Sanity.java",14,-1,-1,-1 } true;
    $return := 1;
    goto block7;
  block7:
    return;
}


implementation Sanity$straightline_unsafe$int_int($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
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
    assert { :sourceloc "Sanity.java",19,-1,-1,-1 } true;
    if (i0 <= 0) {
        assert { :sourceloc "Sanity.java",19,-1,-1,-1 } { :comment "thenblock" } true;
        goto block8;
    } else {
        assert { :sourceloc "Sanity.java",19,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",32,-1,-1,-1 } true;
    if (i1 <= 0) {
        assert { :sourceloc "Sanity.java",32,-1,-1,-1 } { :comment "thenblock" } true;
        goto block8;
    } else {
        assert { :sourceloc "Sanity.java",32,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",20,-1,-1,-1 } true;
    goto block8;
  block8:
    assert { :sourceloc "Sanity.java",32,-1,-1,-1 } true;
    $return := 0;
    goto block9;
  block9:
    return;
}


implementation Sanity$sanity_safe$int_int($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $r3 : ref;    
var $fakelocal_2 : ref;    
var $r1 : ref;    
var $r0 : ref;    
var $fakelocal_1 : ref;    
var $r4 : ref;    
var $r2 : ref;    
var i3 : int;    
var i1 : int;    
var i0 : int;    
var $fakelocal_0 : ref;    
var $fakelocal_4 : ref;    
var i2 : int;    
var $r5 : ref;    
var $r6 : ref;    
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
    assert { :sourceloc "Sanity.java",49,-1,-1,-1 } true;
    $r1 := java.io.PrintStream$java.lang.System$out260;
    assert { :sourceloc "Sanity.java",49,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r0 := $fakelocal_0;
    assert { :sourceloc "Sanity.java",49,-1,-1,-1 } true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r0);
    assert { :sourceloc "Sanity.java",49,-1,-1,-1 } true;
    call $r2, $exception := java.lang.StringBuilder$append$java.lang.String($r0, $StringConst0);
    assert { :sourceloc "Sanity.java",49,-1,-1,-1 } true;
    if ($r2 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_1;
        return;
    }
    call $r3, $exception := java.lang.StringBuilder$append$int($r2, i0);
    assert { :sourceloc "Sanity.java",49,-1,-1,-1 } true;
    if ($r3 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_2;
        return;
    }
    call $r4, $exception := java.lang.StringBuilder$append$java.lang.String($r3, $StringConst1);
    assert { :sourceloc "Sanity.java",49,-1,-1,-1 } true;
    if ($r4 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_3;
        return;
    }
    call $r5, $exception := java.lang.StringBuilder$append$int($r4, i1);
    assert { :sourceloc "Sanity.java",49,-1,-1,-1 } true;
    if ($r5 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_4;
        return;
    }
    call $r6, $exception := java.lang.StringBuilder$toString$($r5);
    assert { :sourceloc "Sanity.java",49,-1,-1,-1 } true;
    if ($r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.RuntimeException);
        $return := 0;
        $exception := $fakelocal_5;
        return;
    }
    call $exception := java.io.PrintStream$println$java.lang.String($r1, $r6);
    assert { :sourceloc "Sanity.java",50,-1,-1,-1 } true;
    i2 := i1;
    assert { :sourceloc "Sanity.java",51,-1,-1,-1 } true;
    i3 := i1;
    assert { :sourceloc "Sanity.java",52,-1,-1,-1 } true;
    if (i1 >= 0) {
        assert { :sourceloc "Sanity.java",52,-1,-1,-1 } { :comment "thenblock" } true;
        goto block10;
    } else {
        assert { :sourceloc "Sanity.java",52,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",55,-1,-1,-1 } true;
    $return := 0;
    goto block14;
  block10:
    assert { :sourceloc "Sanity.java",54,-1,-1,-1 } true;
    if (i0 <= 0) {
        assert { :sourceloc "Sanity.java",54,-1,-1,-1 } { :comment "thenblock" } true;
        goto block11;
    } else {
        assert { :sourceloc "Sanity.java",54,-1,-1,-1 } { :comment "elseblock" } true;
    }
  block12:
    assert { :sourceloc "Sanity.java",55,-1,-1,-1 } true;
    if (i2 <= 0) {
        assert { :sourceloc "Sanity.java",55,-1,-1,-1 } { :comment "thenblock" } true;
        goto block13;
    } else {
        assert { :sourceloc "Sanity.java",55,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",56,-1,-1,-1 } true;
    i2 := i2 + -1;
    assert { :sourceloc "Sanity.java",56,-1,-1,-1 } true;
    goto block12;
  block11:
    assert { :sourceloc "Sanity.java",59,-1,-1,-1 } true;
    if (i3 <= 0) {
        assert { :sourceloc "Sanity.java",59,-1,-1,-1 } { :comment "thenblock" } true;
        goto block13;
    } else {
        assert { :sourceloc "Sanity.java",59,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",60,-1,-1,-1 } true;
    i3 := i3 + -1;
    assert { :sourceloc "Sanity.java",60,-1,-1,-1 } true;
    goto block11;
  block13:
    assert { :sourceloc "Sanity.java",64,-1,-1,-1 } true;
    $return := 0;
    goto block14;
  block14:
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
    assert { :sourceloc "Sanity.java",68,-1,-1,-1 } true;
    i3 := i1;
    assert { :sourceloc "Sanity.java",70,-1,-1,-1 } true;
    if (i1 >= 0) {
        assert { :sourceloc "Sanity.java",70,-1,-1,-1 } { :comment "thenblock" } true;
        goto block15;
    } else {
        assert { :sourceloc "Sanity.java",70,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",73,-1,-1,-1 } true;
    $return := 0;
    goto block18;
  block15:
    assert { :sourceloc "Sanity.java",72,-1,-1,-1 } true;
    if (i0 >= 0) {
        assert { :sourceloc "Sanity.java",72,-1,-1,-1 } { :comment "thenblock" } true;
        goto block16;
    } else {
        assert { :sourceloc "Sanity.java",72,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",73,-1,-1,-1 } true;
    $return := 1;
    goto block18;
  block16:
    assert { :sourceloc "Sanity.java",75,-1,-1,-1 } true;
    if (i3 <= 0) {
        assert { :sourceloc "Sanity.java",75,-1,-1,-1 } { :comment "thenblock" } true;
        goto block17;
    } else {
        assert { :sourceloc "Sanity.java",75,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Sanity.java",76,-1,-1,-1 } true;
    i3 := i3 + -1;
    assert { :sourceloc "Sanity.java",76,-1,-1,-1 } true;
    goto block16;
  block17:
    assert { :sourceloc "Sanity.java",79,-1,-1,-1 } true;
    $return := 0;
    goto block18;
  block18:
    return;
}


implementation java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref){
    $exception := $null;
    return;
}


