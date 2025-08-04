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
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique TokenHandler : javaType extends  unique java.lang.Object complete;
const unique $StringConst0 : ref extends  complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.lang.Cloneable : javaType extends  complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique javax.crypto.Mac : javaType extends  unique java.lang.Object, java.lang.Cloneable complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Comparable, java.lang.CharSequence complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.security.GeneralSecurityException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.security.NoSuchAlgorithmException : javaType extends  unique java.security.GeneralSecurityException complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.security.spec.KeySpec : javaType extends  complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.security.Key : javaType extends  java.io.Serializable complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique javax.security.auth.Destroyable : javaType extends  complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique javax.crypto.SecretKey : javaType extends  java.security.Key, javax.security.auth.Destroyable complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique javax.crypto.spec.SecretKeySpec : javaType extends  unique java.lang.Object, java.security.spec.KeySpec, javax.crypto.SecretKey complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.security.KeyException : javaType extends  unique java.security.GeneralSecurityException complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.security.InvalidKeyException : javaType extends  unique java.security.KeyException complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.lang.IllegalStateException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.lang.Appendable : javaType extends  complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.lang.AbstractStringBuilder : javaType extends  unique java.lang.Object, java.lang.Appendable, java.lang.CharSequence complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.lang.StringBuilder : javaType extends  unique java.lang.AbstractStringBuilder, java.io.Serializable, java.lang.CharSequence complete;
const unique $StringConst1 : ref extends  complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique com.jdriven.stateless.security.User : javaType extends  complete;
const unique $StringConst2 : ref extends  complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.lang.NullPointerException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.lang.IndexOutOfBoundsException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.lang.ArrayIndexOutOfBoundsException : javaType extends  unique java.lang.IndexOutOfBoundsException complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.lang.IllegalArgumentException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.util.Date : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Cloneable, java.lang.Comparable complete;
const unique $StringConst3 : ref extends  complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique com.fasterxml.jackson.databind.ObjectMapper : javaType extends  complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique com.fasterxml.jackson.core.JsonProcessingException : javaType extends  complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique java.lang.ClassCastException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } unique javax.xml.bind.DatatypeConverter : javaType extends  unique java.lang.Object complete;
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
var javax.crypto.Mac$TokenHandler$hmac262 : Field ref;
var boolean$TokenHandler$safeMode0 : Field int;
var com.jdriven.stateless.security.User$TokenHandler$VALID_USER263 : ref;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures !old($heap[$obj,$alloc]);    ensures $objIndex == old($objIndex) + 1;    modifies $objIndex, $heap;    ensures $heap == old($heap)[$obj,$alloc := true][$obj,$type := obj_type];    ensures $obj != $null;    ensures $obj == $intToRef(old($objIndex));

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);        ensures $heap[$other,$type] == $heap[$this,$type];    ensures $heap[$other,$alloc] == true;    ensures $other != $null;

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

procedure TokenHandler$$la$init$ra$$byte$lp$$rp$_boolean($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref);    modifies $objIndex, $heap;

procedure java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure javax.crypto.Mac$getInstance$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure javax.crypto.spec.SecretKeySpec$$la$init$ra$$byte$lp$$rp$_java.lang.String($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure javax.crypto.Mac$init$java.security.Key($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.StringBuilder$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure java.lang.StringBuilder$append$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Throwable$getMessage$($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.StringBuilder$toString$($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.IllegalStateException$$la$init$ra$$java.lang.String_java.lang.Throwable($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure TokenHandler$parseUserFromToken$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

procedure TokenHandler$parseUserFromToken_unsafe$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

procedure java.lang.String$split$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure TokenHandler$fromBase64$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure TokenHandler$createHmac$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

procedure TokenHandler$unsafe_isEqual$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

procedure TokenHandler$fromJSON$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.util.Date$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure java.util.Date$getTime$($this:ref) returns ($return:int, $exception:ref);    

procedure com.jdriven.stateless.security.User$getExpires$($this:ref) returns ($return:int, $exception:ref);    

procedure TokenHandler$createTokenForUser$com.jdriven.stateless.security.User($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

procedure TokenHandler$toJSON$com.jdriven.stateless.security.User($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

procedure java.lang.StringBuilder$$la$init$ra$$int($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure TokenHandler$toBase64$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure com.fasterxml.jackson.databind.ObjectMapper$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure com.fasterxml.jackson.databind.ObjectMapper$writeValueAsBytes$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.IllegalStateException$$la$init$ra$$java.lang.Throwable($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure javax.xml.bind.DatatypeConverter$printBase64Binary$byte$lp$$rp$($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure javax.xml.bind.DatatypeConverter$parseBase64Binary$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure javax.crypto.Mac$doFinal$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure TokenHandler$$la$clinit$ra$$() returns ($exception:ref);    modifies com.jdriven.stateless.security.User$TokenHandler$VALID_USER263, $objIndex, $heap;

procedure com.jdriven.stateless.security.User$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure com.jdriven.stateless.security.User$setExpires$long($this:ref, $in_parameter__0:int) returns ($exception:ref);    

implementation TokenHandler$$la$init$ra$$byte$lp$$rp$_boolean($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref){
    
var $fakelocal_1 : ref;    
var $r11 : ref;    
var $r10 : ref;    
var r1 : ref;    
var $fakelocal_3 : ref;    
var r0 : ref;    
var $r7 : ref;    
var $fakelocal_2 : ref;    
var z0 : int;    
var $r9 : ref;    
var $r3 : ref;    
var $fakelocal_4 : ref;    
var $r6 : ref;    
var $r4 : ref;    
var r2 : ref;    
var $r5 : ref;    
var $fakelocal_5 : ref;    
var $r8 : ref;    
var $fakelocal_0 : ref;    
var $r12 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } $heap[$this,$type] <: TokenHandler;
    assume { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    z0 := $in_parameter__1;
    assert { :sourceloc "TokenHandler.java",23,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
  block1:
    assert { :sourceloc "TokenHandler.java",25,-1,-1,-1 } true;
    call $r3, $exception := javax.crypto.Mac$getInstance$java.lang.String($StringConst0);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.NoSuchAlgorithmException) {
            goto block2;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "TokenHandler.java",25,-1,-1,-1 } true;
    $heap := $heap[r0,javax.crypto.Mac$TokenHandler$hmac262 := $r3];
    assert { :sourceloc "TokenHandler.java",26,-1,-1,-1 } true;
    $r5 := $heap[r0,javax.crypto.Mac$TokenHandler$hmac262];
    assert { :sourceloc "TokenHandler.java",26,-1,-1,-1 } true;
    call $fakelocal_0 := $new(javax.crypto.spec.SecretKeySpec);
    $r4 := $fakelocal_0;
    assert { :sourceloc "TokenHandler.java",26,-1,-1,-1 } true;
    call $exception := javax.crypto.spec.SecretKeySpec$$la$init$ra$$byte$lp$$rp$_java.lang.String($r4, r1, $StringConst0);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.NoSuchAlgorithmException) {
            assert { :clone } true;
            $r4 := $null;
            goto block2;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "TokenHandler.java",26,-1,-1,-1 } true;
    if ($r5 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_1;
        return;
    }
    call $exception := javax.crypto.Mac$init$java.security.Key($r5, $r4);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.InvalidKeyException) {
            goto block2;
        } else {
            assert { :clone } true;
        }
    }
  block3:
    assert { :sourceloc "TokenHandler.java",29,-1,-1,-1 } true;
    goto block4;
  block2:
    assert { :sourceloc "TokenHandler.java",31,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r6 := $exception;
    assert { :sourceloc "TokenHandler.java",27,-1,-1,-1 } true;
    r2 := $r6;
    assert { :sourceloc "TokenHandler.java",28,-1,-1,-1 } true;
    call $fakelocal_2 := $new(java.lang.IllegalStateException);
    $r7 := $fakelocal_2;
    assert { :sourceloc "TokenHandler.java",28,-1,-1,-1 } true;
    call $fakelocal_3 := $new(java.lang.StringBuilder);
    $r8 := $fakelocal_3;
    assert { :sourceloc "TokenHandler.java",28,-1,-1,-1 } true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r8);
    assert { :sourceloc "TokenHandler.java",28,-1,-1,-1 } true;
    call $r9, $exception := java.lang.StringBuilder$append$java.lang.String($r8, $StringConst1);
    assert { :sourceloc "TokenHandler.java",28,-1,-1,-1 } true;
    call $r10, $exception := java.lang.Throwable$getMessage$(r2);
    assert { :sourceloc "TokenHandler.java",28,-1,-1,-1 } true;
    if ($r9 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_4;
        return;
    }
    call $r11, $exception := java.lang.StringBuilder$append$java.lang.String($r9, $r10);
    assert { :sourceloc "TokenHandler.java",28,-1,-1,-1 } true;
    if ($r11 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_5;
        return;
    }
    call $r12, $exception := java.lang.StringBuilder$toString$($r11);
    assert { :sourceloc "TokenHandler.java",28,-1,-1,-1 } true;
    call $exception := java.lang.IllegalStateException$$la$init$ra$$java.lang.String_java.lang.Throwable($r7, $r12, r2);
    assert { :sourceloc "TokenHandler.java",28,-1,-1,-1 } true;
    $exception := $r7;
    goto block5;
  block4:
    assert { :sourceloc "TokenHandler.java",30,-1,-1,-1 } true;
    $heap := $heap[r0,boolean$TokenHandler$safeMode0 := z0];
    assert { :sourceloc "TokenHandler.java",31,-1,-1,-1 } true;
    goto block5;
  block5:
    return;
}


implementation TokenHandler$parseUserFromToken$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $r2 : ref;    
var r0 : ref;    
var r1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } $heap[$this,$type] <: TokenHandler;
    assume { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$return,$type] <: com.jdriven.stateless.security.User;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "TokenHandler.java",37,-1,-1,-1 } true;
    call $r2, $exception := TokenHandler$parseUserFromToken_unsafe$java.lang.String(r0, r1);
    assert { :sourceloc "TokenHandler.java",37,-1,-1,-1 } true;
    $return := $r2;
    goto block6;
  block6:
    return;
}


implementation TokenHandler$parseUserFromToken_unsafe$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r3 : ref;    
var $fakelocal_5 : ref;    
var $fakelocal_7 : ref;    
var $fakelocal_2 : ref;    
var r2 : ref;    
var $fakelocal_1 : ref;    
var $l3 : int;    
var $r6 : ref;    
var $r5 : ref;    
var $r7 : ref;    
var $b5 : int;    
var $r8 : ref;    
var $r11 : ref;    
var r0 : ref;    
var $r9 : ref;    
var r1 : ref;    
var $i1 : int;    
var $fakelocal_3 : ref;    
var $fakelocal_0 : ref;    
var r4 : ref;    
var $fakelocal_4 : ref;    
var $i0 : int;    
var $i2 : int;    
var r12 : ref;    
var $r10 : ref;    
var $l4 : int;    
var z0 : int;    
var $fakelocal_6 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } $heap[$this,$type] <: TokenHandler;
    assume { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$return,$type] <: com.jdriven.stateless.security.User;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "TokenHandler.java",65,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_0;
        return;
    }
    call r2, $exception := java.lang.String$split$java.lang.String(r1, $StringConst2);
    assert { :sourceloc "TokenHandler.java",66,-1,-1,-1 } true;
    if (r2 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.NullPointerException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
    $i0 := $arrSizeHeap[r2];
    assert { :sourceloc "TokenHandler.java",66,-1,-1,-1 } true;
    if ($i0 != 2) {
        assert { :sourceloc "TokenHandler.java",66,-1,-1,-1 } { :comment "thenblock" } true;
        goto block7;
    } else {
        assert { :sourceloc "TokenHandler.java",66,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "TokenHandler.java",85,-1,-1,-1 } true;
    if (0 < $arrSizeHeap[r2] && 0 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    $r5 := $refArrHeap[r2][0];
    assert { :sourceloc "TokenHandler.java",85,-1,-1,-1 } true;
    $i1 := $stringSizeHeap[$r5];
    assert { :sourceloc "TokenHandler.java",85,-1,-1,-1 } true;
    if ($i1 <= 0) {
        assert { :sourceloc "TokenHandler.java",85,-1,-1,-1 } { :comment "thenblock" } true;
        goto block7;
    } else {
        assert { :sourceloc "TokenHandler.java",85,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "TokenHandler.java",85,-1,-1,-1 } true;
    if (1 < $arrSizeHeap[r2] && 1 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_3;
        return;
    }
    $r6 := $refArrHeap[r2][1];
    assert { :sourceloc "TokenHandler.java",85,-1,-1,-1 } true;
    $i2 := $stringSizeHeap[$r6];
    assert { :sourceloc "TokenHandler.java",85,-1,-1,-1 } true;
    if ($i2 <= 0) {
        assert { :sourceloc "TokenHandler.java",85,-1,-1,-1 } { :comment "thenblock" } true;
        goto block7;
    } else {
        assert { :sourceloc "TokenHandler.java",85,-1,-1,-1 } { :comment "elseblock" } true;
    }
  block8:
    assert { :sourceloc "TokenHandler.java",68,-1,-1,-1 } true;
    if (0 < $arrSizeHeap[r2] && 0 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_4;
        return;
    }
    $r7 := $refArrHeap[r2][0];
    assert { :sourceloc "TokenHandler.java",68,-1,-1,-1 } true;
    call r12, $exception := TokenHandler$fromBase64$java.lang.String(r0, $r7);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.IllegalArgumentException) {
            assert { :clone } true;
            goto block9;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "TokenHandler.java",69,-1,-1,-1 } true;
    if (1 < $arrSizeHeap[r2] && 1 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_5;
        return;
    }
    $r8 := $refArrHeap[r2][1];
    assert { :sourceloc "TokenHandler.java",69,-1,-1,-1 } true;
    call r3, $exception := TokenHandler$fromBase64$java.lang.String(r0, $r8);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.IllegalArgumentException) {
            assert { :clone } true;
            goto block9;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "TokenHandler.java",73,-1,-1,-1 } true;
    call $r9, $exception := TokenHandler$createHmac$byte$lp$$rp$(r0, r12);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.IllegalArgumentException) {
            assert { :clone } true;
            goto block9;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "TokenHandler.java",73,-1,-1,-1 } true;
    call z0, $exception := TokenHandler$unsafe_isEqual$byte$lp$$rp$_byte$lp$$rp$($r9, r3);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.IllegalArgumentException) {
            assert { :clone } true;
            goto block9;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "TokenHandler.java",74,-1,-1,-1 } true;
    if (z0 == 0) {
        assert { :sourceloc "TokenHandler.java",74,-1,-1,-1 } { :comment "thenblock" } true;
        goto block10;
    } else {
        assert { :sourceloc "TokenHandler.java",74,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "TokenHandler.java",75,-1,-1,-1 } true;
    call r4, $exception := TokenHandler$fromJSON$byte$lp$$rp$(r0, r12);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.IllegalArgumentException) {
            assert { :clone } true;
            goto block9;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "TokenHandler.java",76,-1,-1,-1 } true;
    call $fakelocal_6 := $new(java.util.Date);
    $r10 := $fakelocal_6;
    assert { :sourceloc "TokenHandler.java",76,-1,-1,-1 } true;
    call $exception := java.util.Date$$la$init$ra$$($r10);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.IllegalArgumentException) {
            assert { :clone } true;
            $r10 := $null;
            goto block9;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "TokenHandler.java",76,-1,-1,-1 } true;
    call $l3, $exception := java.util.Date$getTime$($r10);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.IllegalArgumentException) {
            assert { :clone } true;
            goto block9;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "TokenHandler.java",76,-1,-1,-1 } true;
    if (r4 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_7 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_7;
        return;
    }
    call $l4, $exception := com.jdriven.stateless.security.User$getExpires$(r4);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.IllegalArgumentException) {
            assert { :clone } true;
            goto block9;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "TokenHandler.java",76,-1,-1,-1 } true;
    $b5 := $cmpInt($l3, $l4);
    assert { :sourceloc "TokenHandler.java",76,-1,-1,-1 } true;
    if ($b5 >= 0) {
        assert { :sourceloc "TokenHandler.java",76,-1,-1,-1 } { :comment "thenblock" } true;
        goto block11;
    } else {
        assert { :sourceloc "TokenHandler.java",76,-1,-1,-1 } { :comment "elseblock" } true;
    }
  block12:
    assert { :sourceloc "TokenHandler.java",77,-1,-1,-1 } true;
    $return := r4;
    goto block13;
  block11:
    assert { :sourceloc "TokenHandler.java",79,-1,-1,-1 } true;
    $return := r4;
    goto block13;
  block10:
    assert { :sourceloc "TokenHandler.java",83,-1,-1,-1 } true;
    goto block7;
  block9:
    assert { :sourceloc "TokenHandler.java",77,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r11 := $exception;
  block7:
    assert { :sourceloc "TokenHandler.java",85,-1,-1,-1 } true;
    $return := $null;
    goto block13;
  block13:
    return;
}


implementation TokenHandler$unsafe_isEqual$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var $b2 : int;    
var r0 : ref;    
var $b3 : int;    
var $fakelocal_3 : ref;    
var i4 : int;    
var $fakelocal_1 : ref;    
var r1 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_0 : ref;    
var i0 : int;    
var $i1 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "TokenHandler.java",101,-1,-1,-1 } true;
    if (r0 != r1) {
        assert { :sourceloc "TokenHandler.java",101,-1,-1,-1 } { :comment "thenblock" } true;
        goto block14;
    } else {
        assert { :sourceloc "TokenHandler.java",101,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "TokenHandler.java",102,-1,-1,-1 } true;
    $return := 1;
    goto block21;
  block14:
    assert { :sourceloc "TokenHandler.java",103,-1,-1,-1 } true;
    if (r0 == $null) {
        assert { :sourceloc "TokenHandler.java",103,-1,-1,-1 } { :comment "thenblock" } true;
        goto block15;
    } else {
        assert { :sourceloc "TokenHandler.java",103,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "TokenHandler.java",104,-1,-1,-1 } true;
    if (r1 != $null) {
        assert { :sourceloc "TokenHandler.java",104,-1,-1,-1 } { :comment "thenblock" } true;
        goto block16;
    } else {
        assert { :sourceloc "TokenHandler.java",104,-1,-1,-1 } { :comment "elseblock" } true;
    }
  block15:
    assert { :sourceloc "TokenHandler.java",104,-1,-1,-1 } true;
    $return := 0;
    goto block21;
  block16:
    assert { :sourceloc "TokenHandler.java",106,-1,-1,-1 } true;
    if (r0 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    i0 := $arrSizeHeap[r0];
    assert { :sourceloc "TokenHandler.java",107,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_1;
        return;
    }
    $i1 := $arrSizeHeap[r1];
    assert { :sourceloc "TokenHandler.java",107,-1,-1,-1 } true;
    if ($i1 == i0) {
        assert { :sourceloc "TokenHandler.java",107,-1,-1,-1 } { :comment "thenblock" } true;
        goto block17;
    } else {
        assert { :sourceloc "TokenHandler.java",107,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "TokenHandler.java",108,-1,-1,-1 } true;
    $return := 0;
    goto block21;
  block17:
    assert { :sourceloc "TokenHandler.java",110,-1,-1,-1 } true;
    i4 := 0;
  block18:
    assert { :sourceloc "TokenHandler.java",110,-1,-1,-1 } true;
    if (i4 >= i0) {
        assert { :sourceloc "TokenHandler.java",110,-1,-1,-1 } { :comment "thenblock" } true;
        goto block19;
    } else {
        assert { :sourceloc "TokenHandler.java",110,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "TokenHandler.java",111,-1,-1,-1 } true;
    if (i4 < $arrSizeHeap[r0] && i4 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_2;
        return;
    }
    $b3 := $intArrHeap[r0][i4];
    assert { :sourceloc "TokenHandler.java",111,-1,-1,-1 } true;
    if (i4 < $arrSizeHeap[r1] && i4 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_3;
        return;
    }
    $b2 := $intArrHeap[r1][i4];
    assert { :sourceloc "TokenHandler.java",111,-1,-1,-1 } true;
    if ($b3 == $b2) {
        assert { :sourceloc "TokenHandler.java",111,-1,-1,-1 } { :comment "thenblock" } true;
        goto block20;
    } else {
        assert { :sourceloc "TokenHandler.java",111,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "TokenHandler.java",112,-1,-1,-1 } true;
    $return := 0;
    goto block21;
  block20:
    assert { :sourceloc "TokenHandler.java",110,-1,-1,-1 } true;
    i4 := i4 + 1;
    assert { :sourceloc "TokenHandler.java",110,-1,-1,-1 } true;
    goto block18;
  block19:
    assert { :sourceloc "TokenHandler.java",114,-1,-1,-1 } true;
    $return := 1;
    goto block21;
  block21:
    return;
}


implementation TokenHandler$createTokenForUser$com.jdriven.stateless.security.User($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r2 : ref;    
var $r11 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_1 : ref;    
var r1 : ref;    
var $fakelocal_3 : ref;    
var $r6 : ref;    
var r4 : ref;    
var $fakelocal_0 : ref;    
var $r9 : ref;    
var r3 : ref;    
var $r5 : ref;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } $heap[$this,$type] <: TokenHandler;
    assume { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: com.jdriven.stateless.security.User;
    assume $heap[$return,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "TokenHandler.java",118,-1,-1,-1 } true;
    call r2, $exception := TokenHandler$toJSON$com.jdriven.stateless.security.User(r0, r1);
    assert { :sourceloc "TokenHandler.java",119,-1,-1,-1 } true;
    call r3, $exception := TokenHandler$createHmac$byte$lp$$rp$(r0, r2);
    assert { :sourceloc "TokenHandler.java",120,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r5 := $fakelocal_0;
    assert { :sourceloc "TokenHandler.java",120,-1,-1,-1 } true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$int($r5, 170);
    assert { :sourceloc "TokenHandler.java",120,-1,-1,-1 } true;
    r4 := $r5;
    assert { :sourceloc "TokenHandler.java",121,-1,-1,-1 } true;
    call $r6, $exception := TokenHandler$toBase64$byte$lp$$rp$(r0, r2);
    assert { :sourceloc "TokenHandler.java",121,-1,-1,-1 } true;
    call $fakelocal_1, $exception := java.lang.StringBuilder$append$java.lang.String(r4, $r6);
    assert { :sourceloc "TokenHandler.java",122,-1,-1,-1 } true;
    call $fakelocal_2, $exception := java.lang.StringBuilder$append$java.lang.String(r4, $StringConst3);
    assert { :sourceloc "TokenHandler.java",123,-1,-1,-1 } true;
    call $r9, $exception := TokenHandler$toBase64$byte$lp$$rp$(r0, r3);
    assert { :sourceloc "TokenHandler.java",123,-1,-1,-1 } true;
    call $fakelocal_3, $exception := java.lang.StringBuilder$append$java.lang.String(r4, $r9);
    assert { :sourceloc "TokenHandler.java",124,-1,-1,-1 } true;
    call $r11, $exception := java.lang.StringBuilder$toString$(r4);
    assert { :sourceloc "TokenHandler.java",124,-1,-1,-1 } true;
    $return := $r11;
    goto block22;
  block22:
    return;
}


implementation TokenHandler$fromJSON$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $r2 : ref;    
var r0 : ref;    
var r1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } $heap[$this,$type] <: TokenHandler;
    assume { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$return,$type] <: com.jdriven.stateless.security.User;
    $exception := $null;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "TokenHandler.java",138,-1,-1,-1 } true;
    $r2 := com.jdriven.stateless.security.User$TokenHandler$VALID_USER263;
    assert { :sourceloc "TokenHandler.java",138,-1,-1,-1 } true;
    $return := $r2;
    goto block23;
  block23:
    return;
}


implementation TokenHandler$toJSON$com.jdriven.stateless.security.User($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r8 : ref;    
var $r4 : ref;    
var $fakelocal_1 : ref;    
var $r5 : ref;    
var r9 : ref;    
var r2 : ref;    
var r0 : ref;    
var r7 : ref;    
var r1 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } $heap[$this,$type] <: TokenHandler;
    assume { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: com.jdriven.stateless.security.User;
    $exception := $null;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
  block24:
    assert { :sourceloc "TokenHandler.java",143,-1,-1,-1 } true;
    call $fakelocal_0 := $new(com.fasterxml.jackson.databind.ObjectMapper);
    r7 := $fakelocal_0;
    assert { :sourceloc "TokenHandler.java",143,-1,-1,-1 } true;
    call $exception := com.fasterxml.jackson.databind.ObjectMapper$$la$init$ra$$(r7);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: com.fasterxml.jackson.core.JsonProcessingException) {
            assert { :clone } true;
            r7 := $null;
            goto block25;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "TokenHandler.java",143,-1,-1,-1 } true;
    call $r4, $exception := com.fasterxml.jackson.databind.ObjectMapper$writeValueAsBytes$java.lang.Object(r7, r1);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: com.fasterxml.jackson.core.JsonProcessingException) {
            assert { :clone } true;
            goto block25;
        } else {
            assert { :clone } true;
        }
    }
  block26:
    assert { :sourceloc "TokenHandler.java",143,-1,-1,-1 } true;
    $return := $r4;
    goto block27;
  block25:
    assert { :sourceloc "TokenHandler.java",143,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r5 := $exception;
    assert { :sourceloc "TokenHandler.java",144,-1,-1,-1 } true;
    r2 := $r5;
    assert { :sourceloc "TokenHandler.java",145,-1,-1,-1 } true;
    call $fakelocal_1 := $new(java.lang.IllegalStateException);
    r8 := $fakelocal_1;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    if ($heap[r2,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    r9 := r2;
    assert { :sourceloc "TokenHandler.java",145,-1,-1,-1 } true;
    call $exception := java.lang.IllegalStateException$$la$init$ra$$java.lang.Throwable(r8, r9);
    assert { :sourceloc "TokenHandler.java",145,-1,-1,-1 } true;
    $exception := r8;
    goto block27;
  block27:
    return;
}


implementation TokenHandler$toBase64$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r1 : ref;    
var r0 : ref;    
var $r2 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } $heap[$this,$type] <: TokenHandler;
    assume { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$return,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "TokenHandler.java",150,-1,-1,-1 } true;
    call $r2, $exception := javax.xml.bind.DatatypeConverter$printBase64Binary$byte$lp$$rp$(r1);
    assert { :sourceloc "TokenHandler.java",150,-1,-1,-1 } true;
    $return := $r2;
    goto block28;
  block28:
    return;
}


implementation TokenHandler$fromBase64$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r0 : ref;    
var r1 : ref;    
var $r2 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } $heap[$this,$type] <: TokenHandler;
    assume { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "TokenHandler.java",154,-1,-1,-1 } true;
    call $r2, $exception := javax.xml.bind.DatatypeConverter$parseBase64Binary$java.lang.String(r1);
    assert { :sourceloc "TokenHandler.java",154,-1,-1,-1 } true;
    $return := $r2;
    goto block29;
  block29:
    return;
}


implementation TokenHandler$createHmac$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $fakelocal_0 : ref;    
var $r2 : ref;    
var r1 : ref;    
var $r3 : ref;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } $heap[$this,$type] <: TokenHandler;
    assume { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "TokenHandler.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "TokenHandler.java",159,-1,-1,-1 } true;
    $r2 := $heap[r0,javax.crypto.Mac$TokenHandler$hmac262];
    assert { :sourceloc "TokenHandler.java",159,-1,-1,-1 } true;
    if ($r2 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_0;
        return;
    }
    call $r3, $exception := javax.crypto.Mac$doFinal$byte$lp$$rp$($r2, r1);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.IllegalStateException) {
            $return := $null;
            return;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "TokenHandler.java",159,-1,-1,-1 } true;
    $return := $r3;
    goto block30;
  block30:
    return;
}


implementation TokenHandler$$la$clinit$ra$$() returns ($exception:ref){
    
var $l1 : int;    
var $r1 : ref;    
var $r2 : ref;    
var $l0 : int;    
var $fakelocal_1 : ref;    
var $fakelocal_2 : ref;    
var $r0 : ref;    
var $fakelocal_0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "TokenHandler.java",128,-1,-1,-1 } true;
    call $fakelocal_0 := $new(com.jdriven.stateless.security.User);
    $r0 := $fakelocal_0;
    assert { :sourceloc "TokenHandler.java",128,-1,-1,-1 } true;
    call $exception := com.jdriven.stateless.security.User$$la$init$ra$$($r0);
    assert { :sourceloc "TokenHandler.java",128,-1,-1,-1 } true;
    com.jdriven.stateless.security.User$TokenHandler$VALID_USER263 := $r0;
    assert { :sourceloc "TokenHandler.java",130,-1,-1,-1 } true;
    $r2 := com.jdriven.stateless.security.User$TokenHandler$VALID_USER263;
    assert { :sourceloc "TokenHandler.java",130,-1,-1,-1 } true;
    call $fakelocal_1 := $new(java.util.Date);
    $r1 := $fakelocal_1;
    assert { :sourceloc "TokenHandler.java",130,-1,-1,-1 } true;
    call $exception := java.util.Date$$la$init$ra$$($r1);
    assert { :sourceloc "TokenHandler.java",130,-1,-1,-1 } true;
    call $l0, $exception := java.util.Date$getTime$($r1);
    assert { :sourceloc "TokenHandler.java",130,-1,-1,-1 } true;
    $l1 := $l0 + 100000;
    assert { :sourceloc "TokenHandler.java",130,-1,-1,-1 } true;
    if ($r2 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_2;
        return;
    }
    call $exception := com.jdriven.stateless.security.User$setExpires$long($r2, $l1);
    assert { :sourceloc "TokenHandler.java",131,-1,-1,-1 } true;
    goto block31;
  block31:
    return;
}


implementation java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref){
    $exception := $null;
    return;
}


