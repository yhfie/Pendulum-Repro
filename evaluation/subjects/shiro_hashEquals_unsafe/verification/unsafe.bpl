type ref;

type javaType;

type Field _;

type $heap_type = <$GenericType__0>[ref,Field $GenericType__0]$GenericType__0;

type boolArrHeap_type = [ref][int]bool;

type refArrHeap_type = [ref][int]ref;

type realArrHeap_type = [ref][int]int;

type intArrHeap_type = [ref][int]int;

const unique $type: Field javaType;

const unique $alloc: Field bool;

const unique $null: ref;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique java.lang.Object: javaType extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique org.apache.shiro.authc.credential.HashingPasswordService: javaType extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique org.apache.shiro.authc.credential.DefaultPasswordService: javaType extends unique java.lang.Object, org.apache.shiro.authc.credential.HashingPasswordService complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique org.apache.shiro.crypto.hash.DefaultHashService: javaType extends complete;

const unique $StringConst0: ref extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique java.io.Serializable: javaType extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique java.lang.Comparable: javaType extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique java.lang.CharSequence: javaType extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique org.apache.shiro.crypto.hash.format.Shiro1CryptFormat: javaType extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique org.apache.shiro.crypto.hash.format.DefaultHashFormatFactory: javaType extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique org.apache.shiro.crypto.hash.Hash: javaType extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique java.lang.Throwable: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique java.lang.Exception: javaType extends unique java.lang.Throwable complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique java.lang.RuntimeException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique org.apache.shiro.crypto.hash.format.HashFormat: javaType extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique org.apache.shiro.util.ByteSource: javaType extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique org.apache.shiro.crypto.hash.HashRequest: javaType extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique org.apache.shiro.crypto.hash.HashService: javaType extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique java.lang.ClassCastException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique org.apache.shiro.crypto.hash.format.ParsableHashFormat: javaType extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique org.slf4j.Logger: javaType extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique java.lang.Appendable: javaType extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique java.lang.AbstractStringBuilder: javaType extends unique java.lang.Object, java.lang.Appendable, java.lang.CharSequence complete;

const unique $StringConst1: ref extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique java.lang.reflect.AnnotatedElement: javaType extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique java.lang.reflect.GenericDeclaration: javaType extends java.lang.reflect.AnnotatedElement complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique java.lang.reflect.Type: javaType extends complete;

//const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique java.lang.Class: javaType extends unique java.lang.Object, java.io.Serializable, java.lang.reflect.GenericDeclaration, java.lang.reflect.Type, java.lang.reflect.AnnotatedElement complete;

const unique $StringConst2: ref extends complete;

const unique CC$org$_$apache$_$shiro$_$crypto$_$hash$_$format$_$ParsableHashFormat: ref extends complete;

const unique $StringConst3: ref extends complete;

const unique $StringConst4: ref extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique org.apache.shiro.crypto.hash.HashRequest$Builder: javaType extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique org.apache.shiro.util.ByteSource$Util: javaType extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique org.apache.shiro.crypto.hash.format.HashFormatFactory: javaType extends complete;

const unique CC$org$_$apache$_$shiro$_$authc$_$credential$_$DefaultPasswordService: ref extends complete;

const {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} unique org.slf4j.LoggerFactory: javaType extends complete;

const {:sourceloc "StringBuilder.java", -1, -1, -1, -1} unique java.lang.StringBuilder: javaType extends unique java.lang.Object complete;

const {:sourceloc "StringBuilder.java", -1, -1, -1, -1} unique java.lang.String: javaType extends unique java.lang.Object complete;

const {:sourceloc "StringBuilder.java", -1, -1, -1, -1} unique java.lang.NullPointerException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "StringBuilder.java", -1, -1, -1, -1} unique java.lang.IndexOutOfBoundsException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "StringBuilder.java", -1, -1, -1, -1} unique java.lang.ArrayIndexOutOfBoundsException: javaType extends unique java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique java.lang.Boolean: javaType extends unique java.lang.Object complete;

var $heap: $heap_type;

var $intArrayType: javaType;

var $charArrayType: javaType;

var $boolArrayType: javaType;

var $byteArrayType: javaType;

var $longArrayType: javaType;

var $arrSizeHeap: [ref]int;

var $stringSizeHeap: [ref]int;

var $boolArrHeap: boolArrHeap_type;

var $refArrHeap: refArrHeap_type;

var $realArrHeap: realArrHeap_type;

var $intArrHeap: intArrHeap_type;

var $objIndex: int;

var boolean$org.apache.shiro.authc.credential.DefaultPasswordService$hashFormatWarned0: Field int;

var org.apache.shiro.crypto.hash.HashService$org.apache.shiro.authc.credential.DefaultPasswordService$hashService261: Field ref;

var org.apache.shiro.crypto.hash.format.HashFormat$org.apache.shiro.authc.credential.DefaultPasswordService$hashFormat262: Field ref;

var org.apache.shiro.crypto.hash.format.HashFormatFactory$org.apache.shiro.authc.credential.DefaultPasswordService$hashFormatFactory263: Field ref;

var org.slf4j.Logger$org.apache.shiro.authc.credential.DefaultPasswordService$log260: ref;

var char$lp$$rp$$java.lang.StringBuilder$chars305: Field ref;

var char$lp$$rp$$java.lang.String$chars306: Field ref;

var boolean$java.lang.Boolean$value0: Field int;

function $arrayType(t: javaType) : javaType;

function $intToReal(x: int) : real;

function $intToBool(x: int) : bool;

axiom (forall x: int :: 
  { $intToBool(x): bool } 
  $intToBool(x): bool <==> (if x == 0 then false else true));

function $refToBool(x: ref) : bool;

axiom (forall x: ref :: 
  { $refToBool(x): bool } 
  $refToBool(x): bool <==> (if x == $null then false else true));

function $boolToInt(x: bool) : int;

axiom (forall x: bool :: 
  { $boolToInt(x): int } 
  $boolToInt(x): int == (if x <==> true then 1 else 0));

function $cmpBool(x: bool, y: bool) : int;

function $cmpRef(x: ref, y: ref) : int;

function $cmpReal(x: real, y: real) : int;

axiom (forall x: real, y: real :: 
  { $cmpReal(x, y): int } 
  $cmpReal(x, y): int == (if x > y then 1 else (if x < y then -1 else 0)));

function $cmpInt(x: int, y: int) : int;

axiom (forall x: int, y: int :: 
  { $cmpInt(x, y): int } 
  $cmpInt(x, y): int == (if x > y then 1 else (if x < y then -1 else 0)));

function $bitOr(x: int, y: int) : int;

function $bitAnd(x: int, y: int) : int;

function $xorInt(x: int, y: int) : int;

function $shlInt(x: int, y: int) : int;

function $ushrInt(x: int, y: int) : int;

function $shrInt(x: int, y: int) : int;

function $mulInt(x: int, y: int) : int;

function $divInt(x: int, y: int) : int;

function $modInt(x: int, y: int) : int;

function $intToRef(id: int) : ref;

axiom (forall index: int :: $intToRef(index) != $null);

axiom (forall i1: int, i2: int :: i1 == i2 <==> $intToRef(i1) == $intToRef(i2));

procedure $new(obj_type: javaType) returns ($obj: ref);
  modifies $objIndex, $heap;
  ensures $objIndex == old($objIndex) + 1;
  ensures $obj == $intToRef(old($objIndex));
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];
  ensures !old($heap[$obj, $alloc]);
  ensures $obj != $null;



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $heap[$other, $alloc] <==> true;
  ensures $heap[$other, $type] == $heap[$this, $type];
  ensures $other != $null;



procedure int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure org.apache.shiro.authc.credential.DefaultPasswordService$$la$init$ra$$($this: ref) returns ($exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure org.apache.shiro.crypto.hash.DefaultHashService$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure org.apache.shiro.crypto.hash.DefaultHashService$setHashAlgorithmName$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure org.apache.shiro.crypto.hash.DefaultHashService$setHashIterations$int($this: ref, $in_parameter__0: int) returns ($exception: ref);



procedure org.apache.shiro.crypto.hash.DefaultHashService$setGeneratePublicSalt$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);



procedure org.apache.shiro.crypto.hash.format.Shiro1CryptFormat$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure org.apache.shiro.crypto.hash.format.DefaultHashFormatFactory$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure org.apache.shiro.authc.credential.DefaultPasswordService$encryptPassword$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure org.apache.shiro.authc.credential.DefaultPasswordService$hashPassword$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure org.apache.shiro.authc.credential.DefaultPasswordService$checkHashFormatDurability$($this: ref) returns ($exception: ref);
  modifies $objIndex, $heap;



procedure org.apache.shiro.crypto.hash.format.HashFormat$format$org.apache.shiro.crypto.hash.Hash($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure org.apache.shiro.authc.credential.DefaultPasswordService$createByteSource$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure org.apache.shiro.util.ByteSource$isEmpty$($this: ref) returns ($return: int, $exception: ref);



procedure org.apache.shiro.authc.credential.DefaultPasswordService$createHashRequest$org.apache.shiro.util.ByteSource($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure org.apache.shiro.crypto.hash.HashService$computeHash$org.apache.shiro.crypto.hash.HashRequest($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure org.apache.shiro.authc.credential.DefaultPasswordService$passwordsMatch$java.lang.Object_org.apache.shiro.crypto.hash.Hash($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);



procedure org.apache.shiro.authc.credential.DefaultPasswordService$passwordsMatch_unsafe$java.lang.Object_org.apache.shiro.crypto.hash.Hash($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure org.apache.shiro.crypto.hash.Hash$isEmpty$($this: ref) returns ($return: int, $exception: ref);



procedure org.apache.shiro.authc.credential.DefaultPasswordService$buildHashRequest$org.apache.shiro.util.ByteSource_org.apache.shiro.crypto.hash.Hash($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Object$toString$($this: ref) returns ($return: ref, $exception: ref);



procedure org.apache.shiro.authc.credential.DefaultPasswordService$jdkStringEquals$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure org.slf4j.Logger$isWarnEnabled$($this: ref) returns ($return: int, $exception: ref);



procedure java.lang.Object$getClass$($this: ref) returns ($return: ref, $exception: ref);



procedure java.lang.Class$getName$($this: ref) returns ($return: ref, $exception: ref);



procedure java.lang.Class$getSimpleName$($this: ref) returns ($return: ref, $exception: ref);



procedure org.slf4j.Logger$warn$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure org.apache.shiro.crypto.hash.HashRequest$Builder$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure org.apache.shiro.crypto.hash.HashRequest$Builder$setSource$org.apache.shiro.util.ByteSource($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure org.apache.shiro.crypto.hash.HashRequest$Builder$build$($this: ref) returns ($return: ref, $exception: ref);



procedure org.apache.shiro.util.ByteSource$Util$bytes$java.lang.Object($in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure org.apache.shiro.authc.credential.DefaultPasswordService$passwordsMatch$java.lang.Object_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure org.apache.shiro.crypto.hash.format.HashFormatFactory$getInstance$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure org.apache.shiro.crypto.hash.format.ParsableHashFormat$parse$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure org.apache.shiro.crypto.hash.Hash$getAlgorithmName$($this: ref) returns ($return: ref, $exception: ref);



procedure org.apache.shiro.crypto.hash.HashRequest$Builder$setAlgorithmName$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure org.apache.shiro.crypto.hash.Hash$getSalt$($this: ref) returns ($return: ref, $exception: ref);



procedure org.apache.shiro.crypto.hash.HashRequest$Builder$setSalt$org.apache.shiro.util.ByteSource($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure org.apache.shiro.crypto.hash.Hash$getIterations$($this: ref) returns ($return: int, $exception: ref);



procedure org.apache.shiro.crypto.hash.HashRequest$Builder$setIterations$int($this: ref, $in_parameter__0: int) returns ($return: ref, $exception: ref);



procedure org.apache.shiro.authc.credential.DefaultPasswordService$getHashService$($this: ref) returns ($return: ref, $exception: ref);



procedure org.apache.shiro.authc.credential.DefaultPasswordService$setHashService$org.apache.shiro.crypto.hash.HashService($this: ref, $in_parameter__0: ref) returns ($exception: ref);
  modifies $heap;



procedure org.apache.shiro.authc.credential.DefaultPasswordService$getHashFormat$($this: ref) returns ($return: ref, $exception: ref);



procedure org.apache.shiro.authc.credential.DefaultPasswordService$setHashFormat$org.apache.shiro.crypto.hash.format.HashFormat($this: ref, $in_parameter__0: ref) returns ($exception: ref);
  modifies $heap;



procedure org.apache.shiro.authc.credential.DefaultPasswordService$getHashFormatFactory$($this: ref) returns ($return: ref, $exception: ref);



procedure org.apache.shiro.authc.credential.DefaultPasswordService$setHashFormatFactory$org.apache.shiro.crypto.hash.format.HashFormatFactory($this: ref, $in_parameter__0: ref) returns ($exception: ref);
  modifies $heap;



procedure org.apache.shiro.authc.credential.DefaultPasswordService$$la$clinit$ra$$() returns ($exception: ref);
  modifies org.slf4j.Logger$org.apache.shiro.authc.credential.DefaultPasswordService$log260;



procedure org.slf4j.LoggerFactory$getLogger$java.lang.Class($in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure java.lang.StringBuilder$$la$init$ra$$($this: ref) returns ($exception: ref);
  modifies $objIndex, $arrSizeHeap, $heap;



procedure java.lang.StringBuilder$append$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;



procedure java.lang.StringBuilder$toString$($this: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.String$$la$init$ra$$char$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref);
  modifies $heap;



procedure java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.String$equals$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies $heap;



procedure java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



implementation org.apache.shiro.authc.credential.DefaultPasswordService$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var $r3: ref;
  var r0: ref;
  var $fakelocal_1: ref;
  var r1: ref;
  var $fakelocal_0: ref;
  var $r4: ref;
  var $r2: ref;
  var $fakelocal_2: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $heap[$this, $type] <: org.apache.shiro.authc.credential.DefaultPasswordService;
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "DefaultPasswordService.java", 55, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "DefaultPasswordService.java", 56, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.apache.shiro.authc.credential.DefaultPasswordService$hashFormatWarned0 := 0];
    assert {:sourceloc "DefaultPasswordService.java", 58, -1, -1, -1} true;
    call $fakelocal_0 := $new(org.apache.shiro.crypto.hash.DefaultHashService);
    $r2 := $fakelocal_0;
    assert {:sourceloc "DefaultPasswordService.java", 58, -1, -1, -1} true;
    call $exception := org.apache.shiro.crypto.hash.DefaultHashService$$la$init$ra$$($r2);
    assert {:sourceloc "DefaultPasswordService.java", 58, -1, -1, -1} true;
    r1 := $r2;
    assert {:sourceloc "DefaultPasswordService.java", 59, -1, -1, -1} true;
    call $exception := org.apache.shiro.crypto.hash.DefaultHashService$setHashAlgorithmName$java.lang.String(r1, $StringConst0);
    assert {:sourceloc "DefaultPasswordService.java", 60, -1, -1, -1} true;
    call $exception := org.apache.shiro.crypto.hash.DefaultHashService$setHashIterations$int(r1, 500);
    assert {:sourceloc "DefaultPasswordService.java", 61, -1, -1, -1} true;
    call $exception := org.apache.shiro.crypto.hash.DefaultHashService$setGeneratePublicSalt$boolean(r1, 1);
    assert {:sourceloc "DefaultPasswordService.java", 62, -1, -1, -1} true;
    $heap := $heap[r0, org.apache.shiro.crypto.hash.HashService$org.apache.shiro.authc.credential.DefaultPasswordService$hashService261 := r1];
    assert {:sourceloc "DefaultPasswordService.java", 64, -1, -1, -1} true;
    call $fakelocal_1 := $new(org.apache.shiro.crypto.hash.format.Shiro1CryptFormat);
    $r3 := $fakelocal_1;
    assert {:sourceloc "DefaultPasswordService.java", 64, -1, -1, -1} true;
    call $exception := org.apache.shiro.crypto.hash.format.Shiro1CryptFormat$$la$init$ra$$($r3);
    assert {:sourceloc "DefaultPasswordService.java", 64, -1, -1, -1} true;
    $heap := $heap[r0, org.apache.shiro.crypto.hash.format.HashFormat$org.apache.shiro.authc.credential.DefaultPasswordService$hashFormat262 := $r3];
    assert {:sourceloc "DefaultPasswordService.java", 65, -1, -1, -1} true;
    call $fakelocal_2 := $new(org.apache.shiro.crypto.hash.format.DefaultHashFormatFactory);
    $r4 := $fakelocal_2;
    assert {:sourceloc "DefaultPasswordService.java", 65, -1, -1, -1} true;
    call $exception := org.apache.shiro.crypto.hash.format.DefaultHashFormatFactory$$la$init$ra$$($r4);
    assert {:sourceloc "DefaultPasswordService.java", 65, -1, -1, -1} true;
    $heap := $heap[r0, org.apache.shiro.crypto.hash.format.HashFormatFactory$org.apache.shiro.authc.credential.DefaultPasswordService$hashFormatFactory263 := $r4];
    assert {:sourceloc "DefaultPasswordService.java", 66, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation org.apache.shiro.authc.credential.DefaultPasswordService$encryptPassword$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var r2: ref;
  var r0: ref;
  var r1: ref;
  var $r4: ref;
  var $r3: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $heap[$this, $type] <: org.apache.shiro.authc.credential.DefaultPasswordService;
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: java.lang.String;
    assume $heap[$in_parameter__0, $type] <: java.lang.Object;
    $exception := $null;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "DefaultPasswordService.java", 69, -1, -1, -1} true;
    call r2, $exception := org.apache.shiro.authc.credential.DefaultPasswordService$hashPassword$java.lang.Object(r0, r1);
    assert {:sourceloc "DefaultPasswordService.java", 70, -1, -1, -1} true;
    call $exception := org.apache.shiro.authc.credential.DefaultPasswordService$checkHashFormatDurability$(r0);
    assert {:sourceloc "DefaultPasswordService.java", 71, -1, -1, -1} true;
    $r3 := $heap[r0, org.apache.shiro.crypto.hash.format.HashFormat$org.apache.shiro.authc.credential.DefaultPasswordService$hashFormat262];
    assert {:sourceloc "DefaultPasswordService.java", 71, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} $r3 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon4_Then:
    assume {:partition} $r3 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $r4, $exception := org.apache.shiro.crypto.hash.format.HashFormat$format$org.apache.shiro.crypto.hash.Hash($r3, r2);
    assert {:sourceloc "DefaultPasswordService.java", 71, -1, -1, -1} true;
    $return := $r4;
    goto block2;

  block2:
    return;
}



implementation org.apache.shiro.authc.credential.DefaultPasswordService$hashPassword$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var $r5: ref;
  var r3: ref;
  var $fakelocal_0: ref;
  var r1: ref;
  var r0: ref;
  var $z0: int;
  var r2: ref;
  var $r4: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $heap[$this, $type] <: org.apache.shiro.authc.credential.DefaultPasswordService;
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: org.apache.shiro.crypto.hash.Hash;
    assume $heap[$in_parameter__0, $type] <: java.lang.Object;
    $exception := $null;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "DefaultPasswordService.java", 75, -1, -1, -1} true;
    call r2, $exception := org.apache.shiro.authc.credential.DefaultPasswordService$createByteSource$java.lang.Object(r0, r1);
    assert {:sourceloc "DefaultPasswordService.java", 76, -1, -1, -1} true;
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} r2 != $null;
    assert {:sourceloc "DefaultPasswordService.java", 76, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "DefaultPasswordService.java", 77, -1, -1, -1} true;
    call $z0, $exception := org.apache.shiro.util.ByteSource$isEmpty$(r2);
    assert {:sourceloc "DefaultPasswordService.java", 77, -1, -1, -1} true;
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "DefaultPasswordService.java", 77, -1, -1, -1} {:comment "elseblock"} true;
    goto block3;

  block3:
    assert {:sourceloc "DefaultPasswordService.java", 77, -1, -1, -1} true;
    $return := $null;
    goto block5;

  block5:
    return;

  anon10_Then:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "DefaultPasswordService.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block4;

  block4:
    assert {:sourceloc "DefaultPasswordService.java", 79, -1, -1, -1} true;
    call r3, $exception := org.apache.shiro.authc.credential.DefaultPasswordService$createHashRequest$org.apache.shiro.util.ByteSource(r0, r2);
    assert {:sourceloc "DefaultPasswordService.java", 80, -1, -1, -1} true;
    $r4 := $heap[r0, org.apache.shiro.crypto.hash.HashService$org.apache.shiro.authc.credential.DefaultPasswordService$hashService261];
    assert {:sourceloc "DefaultPasswordService.java", 80, -1, -1, -1} true;
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} $r4 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon11_Then:
    assume {:partition} $r4 != $null;
    $exception := $exception;
    goto anon8;

  anon8:
    call $r5, $exception := org.apache.shiro.crypto.hash.HashService$computeHash$org.apache.shiro.crypto.hash.HashRequest($r4, r3);
    assert {:sourceloc "DefaultPasswordService.java", 80, -1, -1, -1} true;
    $return := $r5;
    goto block5;

  anon9_Then:
    assume {:partition} r2 == $null;
    assert {:sourceloc "DefaultPasswordService.java", 76, -1, -1, -1} {:comment "thenblock"} true;
    goto block3;
}



implementation org.apache.shiro.authc.credential.DefaultPasswordService$passwordsMatch$java.lang.Object_org.apache.shiro.crypto.hash.Hash($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r2: ref;
  var r1: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $heap[$this, $type] <: org.apache.shiro.authc.credential.DefaultPasswordService;
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__1, $type] <: org.apache.shiro.crypto.hash.Hash;
    assume $heap[$in_parameter__0, $type] <: java.lang.Object;
    $exception := $null;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "DefaultPasswordService.java", 84, -1, -1, -1} true;
    $return := 0;
    goto block6;

  block6:
    return;
}



implementation org.apache.shiro.authc.credential.DefaultPasswordService$passwordsMatch_unsafe$java.lang.Object_org.apache.shiro.crypto.hash.Hash($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $z4: int;
  var $z0: int;
  var $z2: int;
  var r2: ref;
  var $r8: ref;
  var r0: ref;
  var $z3: int;
  var $z1: int;
  var $fakelocal_0: ref;
  var r4: ref;
  var $r6: ref;
  var $fakelocal_1: ref;
  var r3: ref;
  var r5: ref;
  var $r7: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $heap[$this, $type] <: org.apache.shiro.authc.credential.DefaultPasswordService;
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__1, $type] <: org.apache.shiro.crypto.hash.Hash;
    assume $heap[$in_parameter__0, $type] <: java.lang.Object;
    $exception := $null;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "DefaultPasswordService.java", 103, -1, -1, -1} true;
    call r3, $exception := org.apache.shiro.authc.credential.DefaultPasswordService$createByteSource$java.lang.Object(r0, r1);
    assert {:sourceloc "DefaultPasswordService.java", 105, -1, -1, -1} true;
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} r2 != $null;
    assert {:sourceloc "DefaultPasswordService.java", 105, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "DefaultPasswordService.java", 106, -1, -1, -1} true;
    call $z1, $exception := org.apache.shiro.crypto.hash.Hash$isEmpty$(r2);
    assert {:sourceloc "DefaultPasswordService.java", 106, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;

  anon23_Else:
    assume {:partition} $z1 != 0;
    assert {:sourceloc "DefaultPasswordService.java", 106, -1, -1, -1} {:comment "elseblock"} true;
    goto block7;

  block7:
    assert {:sourceloc "DefaultPasswordService.java", 106, -1, -1, -1} true;
    goto anon24_Then, anon24_Else;

  anon24_Else:
    assume {:partition} r3 != $null;
    assert {:sourceloc "DefaultPasswordService.java", 106, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon8;

  anon8:
    assert {:sourceloc "DefaultPasswordService.java", 106, -1, -1, -1} true;
    call $z0, $exception := org.apache.shiro.util.ByteSource$isEmpty$(r3);
    assert {:sourceloc "DefaultPasswordService.java", 106, -1, -1, -1} true;
    goto anon25_Then, anon25_Else;

  anon25_Else:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "DefaultPasswordService.java", 106, -1, -1, -1} {:comment "elseblock"} true;
    goto block9;

  block9:
    assert {:sourceloc "DefaultPasswordService.java", 106, -1, -1, -1} true;
    $z4 := 1;
    assert {:sourceloc "DefaultPasswordService.java", 106, -1, -1, -1} true;
    goto block11;

  block11:
    assert {:sourceloc "DefaultPasswordService.java", 106, -1, -1, -1} true;
    $return := $z4;
    goto block14;

  block14:
    return;

  anon25_Then:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "DefaultPasswordService.java", 106, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "DefaultPasswordService.java", 106, -1, -1, -1} true;
    $z4 := 0;
    goto block11;

  anon24_Then:
    assume {:partition} r3 == $null;
    assert {:sourceloc "DefaultPasswordService.java", 106, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block9;

  anon23_Then:
    assume {:partition} $z1 == 0;
    assert {:sourceloc "DefaultPasswordService.java", 106, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "DefaultPasswordService.java", 108, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} r3 != $null;
    assert {:sourceloc "DefaultPasswordService.java", 108, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon13;

  anon13:
    assert {:sourceloc "DefaultPasswordService.java", 109, -1, -1, -1} true;
    call $z2, $exception := org.apache.shiro.util.ByteSource$isEmpty$(r3);
    assert {:sourceloc "DefaultPasswordService.java", 109, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} $z2 != 0;
    assert {:sourceloc "DefaultPasswordService.java", 109, -1, -1, -1} {:comment "elseblock"} true;
    goto block12;

  block12:
    assert {:sourceloc "DefaultPasswordService.java", 109, -1, -1, -1} true;
    $return := 0;
    goto block14;

  anon27_Then:
    assume {:partition} $z2 == 0;
    assert {:sourceloc "DefaultPasswordService.java", 109, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  block13:
    assert {:sourceloc "DefaultPasswordService.java", 113, -1, -1, -1} true;
    call r4, $exception := org.apache.shiro.authc.credential.DefaultPasswordService$buildHashRequest$org.apache.shiro.util.ByteSource_org.apache.shiro.crypto.hash.Hash(r0, r3, r2);
    assert {:sourceloc "DefaultPasswordService.java", 115, -1, -1, -1} true;
    $r6 := $heap[r0, org.apache.shiro.crypto.hash.HashService$org.apache.shiro.authc.credential.DefaultPasswordService$hashService261];
    assert {:sourceloc "DefaultPasswordService.java", 115, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} $r6 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon28_Then:
    assume {:partition} $r6 != $null;
    $exception := $exception;
    goto anon18;

  anon18:
    call r5, $exception := org.apache.shiro.crypto.hash.HashService$computeHash$org.apache.shiro.crypto.hash.HashRequest($r6, r4);
    assert {:sourceloc "DefaultPasswordService.java", 117, -1, -1, -1} true;
    call $r7, $exception := java.lang.Object$toString$(r2);
    assert {:sourceloc "DefaultPasswordService.java", 117, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} r5 == $null;
    call $fakelocal_1 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon29_Then:
    assume {:partition} r5 != $null;
    $exception := $exception;
    goto anon21;

  anon21:
    call $r8, $exception := java.lang.Object$toString$(r5);
    assert {:sourceloc "DefaultPasswordService.java", 117, -1, -1, -1} true;
    call $z3, $exception := org.apache.shiro.authc.credential.DefaultPasswordService$jdkStringEquals$java.lang.Object_java.lang.Object($r7, $r8);
    assert {:sourceloc "DefaultPasswordService.java", 117, -1, -1, -1} true;
    $return := $z3;
    goto block14;

  anon26_Then:
    assume {:partition} r3 == $null;
    assert {:sourceloc "DefaultPasswordService.java", 108, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block12;

  anon22_Then:
    assume {:partition} r2 == $null;
    assert {:sourceloc "DefaultPasswordService.java", 105, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;
}



implementation org.apache.shiro.authc.credential.DefaultPasswordService$jdkStringEquals$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $z0: int;
  var $i1: int;
  var $fakelocal_0: ref;
  var $fakelocal_1: ref;
  var $c3: int;
  var i5: int;
  var r1: ref;
  var $i0: int;
  var i4: int;
  var $c2: int;
  var r2: ref;
  var r3: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0, $type] <: java.lang.Object;
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
    $exception := $null;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "DefaultPasswordService.java", 140, -1, -1, -1} true;
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "DefaultPasswordService.java", 140, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "DefaultPasswordService.java", 141, -1, -1, -1} true;
    $return := 1;
    goto block20;

  block20:
    return;

  anon22_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "DefaultPasswordService.java", 140, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  block15:
    assert {:sourceloc "DefaultPasswordService.java", 143, -1, -1, -1} true;
    $z0 := $boolToInt(r1 != $null && $heap[r1, $type] <: java.lang.String);
    assert {:sourceloc "DefaultPasswordService.java", 143, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;

  anon23_Else:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "DefaultPasswordService.java", 143, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "DefaultPasswordService.java", 144, -1, -1, -1} true;
    goto anon24_Then, anon24_Else;

  anon24_Else:
    assume {:partition} !($heap[r0, $type] <: java.lang.String);
    call $fakelocal_0 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon24_Then:
    assume {:partition} $heap[r0, $type] <: java.lang.String;
    $exception := $exception;
    goto anon9;

  anon9:
    r2 := r0;
    assert {:sourceloc "DefaultPasswordService.java", 145, -1, -1, -1} true;
    goto anon25_Then, anon25_Else;

  anon25_Else:
    assume {:partition} !($heap[r1, $type] <: java.lang.String);
    call $fakelocal_1 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon25_Then:
    assume {:partition} $heap[r1, $type] <: java.lang.String;
    $exception := $exception;
    goto anon12;

  anon12:
    r3 := r1;
    assert {:sourceloc "DefaultPasswordService.java", 146, -1, -1, -1} true;
    i4 := $stringSizeHeap[r2];
    assert {:sourceloc "DefaultPasswordService.java", 147, -1, -1, -1} true;
    $i0 := $stringSizeHeap[r3];
    assert {:sourceloc "DefaultPasswordService.java", 147, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} i4 == $i0;
    assert {:sourceloc "DefaultPasswordService.java", 147, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "DefaultPasswordService.java", 148, -1, -1, -1} true;
    i5 := 0;
    goto block17;

  block17:
    call $exception, $i1, $c3, i5, i4, $c2 := org.apache.shiro.authc.credential.DefaultPasswordService$jdkStringEquals$java.lang.Object_java.lang.Object_loop_block17($exception, $i1, $c3, i5, i4, $c2, r2, r3);
    goto block17_last;

  anon27_Else:
    assume {:partition} $i1 != 0;
    assert {:sourceloc "DefaultPasswordService.java", 149, -1, -1, -1} {:comment "elseblock"} true;
    goto anon18;

  anon18:
    assert {:sourceloc "DefaultPasswordService.java", 150, -1, -1, -1} true;
    call $c2, $exception := java.lang.String$charAt$int(r2, i5);
    assert {:sourceloc "DefaultPasswordService.java", 150, -1, -1, -1} true;
    call $c3, $exception := java.lang.String$charAt$int(r3, i5);
    assert {:sourceloc "DefaultPasswordService.java", 150, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} $c2 != $c3;
    assert {:sourceloc "DefaultPasswordService.java", 150, -1, -1, -1} {:comment "elseblock"} true;
    goto anon21;

  anon21:
    assert {:sourceloc "DefaultPasswordService.java", 151, -1, -1, -1} true;
    $return := 0;
    goto block20;

  anon28_Then:
    assume {:partition} $c2 == $c3;
    assert {:sourceloc "DefaultPasswordService.java", 150, -1, -1, -1} {:comment "thenblock"} true;
    goto block19;

  block19:
    assert {:sourceloc "DefaultPasswordService.java", 152, -1, -1, -1} true;
    i5 := i5 + 1;
    assert {:sourceloc "DefaultPasswordService.java", 152, -1, -1, -1} true;
    goto block19_dummy;

  anon27_Then:
    assume {:partition} $i1 == 0;
    assert {:sourceloc "DefaultPasswordService.java", 149, -1, -1, -1} {:comment "thenblock"} true;
    goto block18;

  block18:
    assert {:sourceloc "DefaultPasswordService.java", 154, -1, -1, -1} true;
    $return := 1;
    goto block20;

  anon26_Then:
    assume {:partition} i4 != $i0;
    assert {:sourceloc "DefaultPasswordService.java", 147, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  block16:
    assert {:sourceloc "DefaultPasswordService.java", 157, -1, -1, -1} true;
    $return := 0;
    goto block20;

  anon23_Then:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "DefaultPasswordService.java", 143, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  block19_dummy:
    assume false;
    return;

  block17_last:
    assert {:sourceloc "DefaultPasswordService.java", 149, -1, -1, -1} true;
    $i1 := i4;
    assert {:sourceloc "DefaultPasswordService.java", 149, -1, -1, -1} true;
    i4 := i4 + -1;
    assert {:sourceloc "DefaultPasswordService.java", 149, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;
}



implementation org.apache.shiro.authc.credential.DefaultPasswordService$checkHashFormatDurability$($this: ref) returns ($exception: ref)
{
  var $r13: ref;
  var $r3: ref;
  var $z1: int;
  var $r12: ref;
  var $r16: ref;
  var $r6: ref;
  var $fakelocal_11: ref;
  var $r11: ref;
  var $r4: ref;
  var $fakelocal_0: ref;
  var $r9: ref;
  var $z0: int;
  var $fakelocal_1: ref;
  var $r18: ref;
  var $r15: ref;
  var $r8: ref;
  var $r7: ref;
  var $fakelocal_4: ref;
  var $fakelocal_3: ref;
  var r2: ref;
  var $fakelocal_5: ref;
  var $r10: ref;
  var $fakelocal_6: ref;
  var r1: ref;
  var $r5: ref;
  var $fakelocal_10: ref;
  var $r17: ref;
  var $z2: int;
  var r0: ref;
  var $fakelocal_2: ref;
  var $fakelocal_7: ref;
  var $fakelocal_8: ref;
  var $r14: ref;
  var $fakelocal_9: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $heap[$this, $type] <: org.apache.shiro.authc.credential.DefaultPasswordService;
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "DefaultPasswordService.java", 162, -1, -1, -1} true;
    $z0 := $heap[r0, boolean$org.apache.shiro.authc.credential.DefaultPasswordService$hashFormatWarned0];
    assert {:sourceloc "DefaultPasswordService.java", 162, -1, -1, -1} true;
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "DefaultPasswordService.java", 162, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "DefaultPasswordService.java", 164, -1, -1, -1} true;
    r1 := $heap[r0, org.apache.shiro.crypto.hash.format.HashFormat$org.apache.shiro.authc.credential.DefaultPasswordService$hashFormat262];
    assert {:sourceloc "DefaultPasswordService.java", 166, -1, -1, -1} true;
    $z1 := $boolToInt(r1 != $null
     && $heap[r1, $type] <: org.apache.shiro.crypto.hash.format.ParsableHashFormat);
    assert {:sourceloc "DefaultPasswordService.java", 166, -1, -1, -1} true;
    goto anon44_Then, anon44_Else;

  anon44_Else:
    assume {:partition} $z1 == 0;
    assert {:sourceloc "DefaultPasswordService.java", 166, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "DefaultPasswordService.java", 176, -1, -1, -1} true;
    $r3 := org.slf4j.Logger$org.apache.shiro.authc.credential.DefaultPasswordService$log260;
    assert {:sourceloc "DefaultPasswordService.java", 176, -1, -1, -1} true;
    goto anon45_Then, anon45_Else;

  anon45_Else:
    assume {:partition} $r3 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_0;
    return;

  anon45_Then:
    assume {:partition} $r3 != $null;
    $exception := $exception;
    goto anon9;

  anon9:
    call $z2, $exception := org.slf4j.Logger$isWarnEnabled$($r3);
    assert {:sourceloc "DefaultPasswordService.java", 176, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} $z2 != 0;
    assert {:sourceloc "DefaultPasswordService.java", 176, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "DefaultPasswordService.java", 167, -1, -1, -1} true;
    call $fakelocal_1 := $new(java.lang.StringBuilder);
    $r4 := $fakelocal_1;
    assert {:sourceloc "DefaultPasswordService.java", 167, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r4);
    assert {:sourceloc "DefaultPasswordService.java", 167, -1, -1, -1} true;
    call $r5, $exception := java.lang.StringBuilder$append$java.lang.String($r4, $StringConst1);
    assert {:sourceloc "DefaultPasswordService.java", 167, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_2;
    return;

  anon47_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon15;

  anon15:
    call $r6, $exception := java.lang.Object$getClass$(r1);
    assert {:sourceloc "DefaultPasswordService.java", 167, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} $r6 == $null;
    call $fakelocal_3 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_3;
    return;

  anon48_Then:
    assume {:partition} $r6 != $null;
    $exception := $exception;
    goto anon18;

  anon18:
    call $r7, $exception := java.lang.Class$getName$($r6);
    assert {:sourceloc "DefaultPasswordService.java", 167, -1, -1, -1} true;
    goto anon49_Then, anon49_Else;

  anon49_Else:
    assume {:partition} $r5 == $null;
    call $fakelocal_4 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_4;
    return;

  anon49_Then:
    assume {:partition} $r5 != $null;
    $exception := $exception;
    goto anon21;

  anon21:
    call $r8, $exception := java.lang.StringBuilder$append$java.lang.String($r5, $r7);
    assert {:sourceloc "DefaultPasswordService.java", 167, -1, -1, -1} true;
    goto anon50_Then, anon50_Else;

  anon50_Else:
    assume {:partition} $r8 == $null;
    call $fakelocal_5 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_5;
    return;

  anon50_Then:
    assume {:partition} $r8 != $null;
    $exception := $exception;
    goto anon24;

  anon24:
    call $r9, $exception := java.lang.StringBuilder$append$java.lang.String($r8, $StringConst2);
    assert {:sourceloc "DefaultPasswordService.java", 168, -1, -1, -1} true;
    $r10 := CC$org$_$apache$_$shiro$_$crypto$_$hash$_$format$_$ParsableHashFormat;
    assert {:sourceloc "DefaultPasswordService.java", 168, -1, -1, -1} true;
    call $r11, $exception := java.lang.Class$getName$($r10);
    assert {:sourceloc "DefaultPasswordService.java", 168, -1, -1, -1} true;
    goto anon51_Then, anon51_Else;

  anon51_Else:
    assume {:partition} $r9 == $null;
    call $fakelocal_6 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_6;
    return;

  anon51_Then:
    assume {:partition} $r9 != $null;
    $exception := $exception;
    goto anon27;

  anon27:
    call $r12, $exception := java.lang.StringBuilder$append$java.lang.String($r9, $r11);
    assert {:sourceloc "DefaultPasswordService.java", 168, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} $r12 == $null;
    call $fakelocal_7 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_7;
    return;

  anon52_Then:
    assume {:partition} $r12 != $null;
    $exception := $exception;
    goto anon30;

  anon30:
    call $r13, $exception := java.lang.StringBuilder$append$java.lang.String($r12, $StringConst3);
    assert {:sourceloc "DefaultPasswordService.java", 170, -1, -1, -1} true;
    $r14 := CC$org$_$apache$_$shiro$_$crypto$_$hash$_$format$_$ParsableHashFormat;
    assert {:sourceloc "DefaultPasswordService.java", 170, -1, -1, -1} true;
    call $r15, $exception := java.lang.Class$getSimpleName$($r14);
    assert {:sourceloc "DefaultPasswordService.java", 170, -1, -1, -1} true;
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} $r13 == $null;
    call $fakelocal_8 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_8;
    return;

  anon53_Then:
    assume {:partition} $r13 != $null;
    $exception := $exception;
    goto anon33;

  anon33:
    call $r16, $exception := java.lang.StringBuilder$append$java.lang.String($r13, $r15);
    assert {:sourceloc "DefaultPasswordService.java", 170, -1, -1, -1} true;
    goto anon54_Then, anon54_Else;

  anon54_Else:
    assume {:partition} $r16 == $null;
    call $fakelocal_9 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_9;
    return;

  anon54_Then:
    assume {:partition} $r16 != $null;
    $exception := $exception;
    goto anon36;

  anon36:
    call $r17, $exception := java.lang.StringBuilder$append$java.lang.String($r16, $StringConst4);
    assert {:sourceloc "DefaultPasswordService.java", 170, -1, -1, -1} true;
    goto anon55_Then, anon55_Else;

  anon55_Else:
    assume {:partition} $r17 == $null;
    call $fakelocal_10 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_10;
    return;

  anon55_Then:
    assume {:partition} $r17 != $null;
    $exception := $exception;
    goto anon39;

  anon39:
    call r2, $exception := java.lang.StringBuilder$toString$($r17);
    assert {:sourceloc "DefaultPasswordService.java", 172, -1, -1, -1} true;
    $r18 := org.slf4j.Logger$org.apache.shiro.authc.credential.DefaultPasswordService$log260;
    assert {:sourceloc "DefaultPasswordService.java", 172, -1, -1, -1} true;
    goto anon56_Then, anon56_Else;

  anon56_Else:
    assume {:partition} $r18 == $null;
    call $fakelocal_11 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_11;
    return;

  anon56_Then:
    assume {:partition} $r18 != $null;
    $exception := $exception;
    goto anon42;

  anon42:
    call $exception := org.slf4j.Logger$warn$java.lang.String($r18, r2);
    assert {:sourceloc "DefaultPasswordService.java", 173, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.apache.shiro.authc.credential.DefaultPasswordService$hashFormatWarned0 := 1];
    goto block21;

  block21:
    assert {:sourceloc "DefaultPasswordService.java", 176, -1, -1, -1} true;
    goto block22;

  block22:
    return;

  anon46_Then:
    assume {:partition} $z2 == 0;
    assert {:sourceloc "DefaultPasswordService.java", 176, -1, -1, -1} {:comment "thenblock"} true;
    goto block21;

  anon44_Then:
    assume {:partition} $z1 != 0;
    assert {:sourceloc "DefaultPasswordService.java", 166, -1, -1, -1} {:comment "thenblock"} true;
    goto block21;

  anon43_Then:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "DefaultPasswordService.java", 162, -1, -1, -1} {:comment "thenblock"} true;
    goto block21;
}



implementation org.apache.shiro.authc.credential.DefaultPasswordService$createHashRequest$org.apache.shiro.util.ByteSource($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r0: ref;
  var $r3: ref;
  var $fakelocal_0: ref;
  var $r2: ref;
  var $r4: ref;
  var $fakelocal_1: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $heap[$this, $type] <: org.apache.shiro.authc.credential.DefaultPasswordService;
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: org.apache.shiro.crypto.hash.HashRequest;
    assume $heap[$in_parameter__0, $type] <: org.apache.shiro.util.ByteSource;
    $exception := $null;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "DefaultPasswordService.java", 179, -1, -1, -1} true;
    call $fakelocal_0 := $new(org.apache.shiro.crypto.hash.HashRequest$Builder);
    $r2 := $fakelocal_0;
    assert {:sourceloc "DefaultPasswordService.java", 179, -1, -1, -1} true;
    call $exception := org.apache.shiro.crypto.hash.HashRequest$Builder$$la$init$ra$$($r2);
    assert {:sourceloc "DefaultPasswordService.java", 179, -1, -1, -1} true;
    call $r3, $exception := org.apache.shiro.crypto.hash.HashRequest$Builder$setSource$org.apache.shiro.util.ByteSource($r2, r1);
    assert {:sourceloc "DefaultPasswordService.java", 179, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} $r3 == $null;
    call $fakelocal_1 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_1;
    return;

  anon4_Then:
    assume {:partition} $r3 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $r4, $exception := org.apache.shiro.crypto.hash.HashRequest$Builder$build$($r3);
    assert {:sourceloc "DefaultPasswordService.java", 179, -1, -1, -1} true;
    $return := $r4;
    goto block23;

  block23:
    return;
}



implementation org.apache.shiro.authc.credential.DefaultPasswordService$createByteSource$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r1: ref;
  var $r2: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $heap[$this, $type] <: org.apache.shiro.authc.credential.DefaultPasswordService;
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: org.apache.shiro.util.ByteSource;
    assume $heap[$in_parameter__0, $type] <: java.lang.Object;
    $exception := $null;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "DefaultPasswordService.java", 183, -1, -1, -1} true;
    call $r2, $exception := org.apache.shiro.util.ByteSource$Util$bytes$java.lang.Object(r1);
    assert {:sourceloc "DefaultPasswordService.java", 183, -1, -1, -1} true;
    $return := $r2;
    goto block24;

  block24:
    return;
}



implementation org.apache.shiro.authc.credential.DefaultPasswordService$passwordsMatch$java.lang.Object_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r3: ref;
  var r1: ref;
  var $z4: int;
  var $z2: int;
  var r10: ref;
  var $r8: ref;
  var r12: ref;
  var $r7: ref;
  var $fakelocal_0: ref;
  var $fakelocal_3: ref;
  var $z3: int;
  var r0: ref;
  var r4: ref;
  var r9: ref;
  var $z0: int;
  var $r6: ref;
  var $i0: int;
  var r2: ref;
  var $z5: int;
  var r11: ref;
  var r5: ref;
  var $fakelocal_1: ref;
  var $z1: int;
  var $fakelocal_2: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $heap[$this, $type] <: org.apache.shiro.authc.credential.DefaultPasswordService;
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__1, $type] <: java.lang.String;
    assume $heap[$in_parameter__0, $type] <: java.lang.Object;
    $exception := $null;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "DefaultPasswordService.java", 187, -1, -1, -1} true;
    call r3, $exception := org.apache.shiro.authc.credential.DefaultPasswordService$createByteSource$java.lang.Object(r0, r1);
    assert {:sourceloc "DefaultPasswordService.java", 189, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} r2 != $null;
    assert {:sourceloc "DefaultPasswordService.java", 189, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "DefaultPasswordService.java", 190, -1, -1, -1} true;
    $i0 := $stringSizeHeap[r2];
    assert {:sourceloc "DefaultPasswordService.java", 190, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} $i0 == 0;
    assert {:sourceloc "DefaultPasswordService.java", 190, -1, -1, -1} {:comment "elseblock"} true;
    goto block25;

  block25:
    assert {:sourceloc "DefaultPasswordService.java", 190, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} r3 != $null;
    assert {:sourceloc "DefaultPasswordService.java", 190, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon8;

  anon8:
    assert {:sourceloc "DefaultPasswordService.java", 190, -1, -1, -1} true;
    call $z0, $exception := org.apache.shiro.util.ByteSource$isEmpty$(r3);
    assert {:sourceloc "DefaultPasswordService.java", 190, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon37_Else:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "DefaultPasswordService.java", 190, -1, -1, -1} {:comment "elseblock"} true;
    goto block27;

  block27:
    assert {:sourceloc "DefaultPasswordService.java", 190, -1, -1, -1} true;
    $z5 := 1;
    assert {:sourceloc "DefaultPasswordService.java", 190, -1, -1, -1} true;
    goto block29;

  block29:
    assert {:sourceloc "DefaultPasswordService.java", 190, -1, -1, -1} true;
    $return := $z5;
    goto block33;

  block33:
    return;

  anon37_Then:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "DefaultPasswordService.java", 190, -1, -1, -1} {:comment "thenblock"} true;
    goto block28;

  block28:
    assert {:sourceloc "DefaultPasswordService.java", 190, -1, -1, -1} true;
    $z5 := 0;
    goto block29;

  anon36_Then:
    assume {:partition} r3 == $null;
    assert {:sourceloc "DefaultPasswordService.java", 190, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block27;

  anon35_Then:
    assume {:partition} $i0 != 0;
    assert {:sourceloc "DefaultPasswordService.java", 190, -1, -1, -1} {:comment "thenblock"} true;
    goto block26;

  block26:
    assert {:sourceloc "DefaultPasswordService.java", 192, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} r3 != $null;
    assert {:sourceloc "DefaultPasswordService.java", 192, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon13;

  anon13:
    assert {:sourceloc "DefaultPasswordService.java", 193, -1, -1, -1} true;
    call $z1, $exception := org.apache.shiro.util.ByteSource$isEmpty$(r3);
    assert {:sourceloc "DefaultPasswordService.java", 193, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} $z1 != 0;
    assert {:sourceloc "DefaultPasswordService.java", 193, -1, -1, -1} {:comment "elseblock"} true;
    goto block30;

  block30:
    assert {:sourceloc "DefaultPasswordService.java", 193, -1, -1, -1} true;
    $return := 0;
    goto block33;

  anon39_Then:
    assume {:partition} $z1 == 0;
    assert {:sourceloc "DefaultPasswordService.java", 193, -1, -1, -1} {:comment "thenblock"} true;
    goto block31;

  block31:
    assert {:sourceloc "DefaultPasswordService.java", 202, -1, -1, -1} true;
    $r6 := $heap[r0, org.apache.shiro.crypto.hash.format.HashFormatFactory$org.apache.shiro.authc.credential.DefaultPasswordService$hashFormatFactory263];
    assert {:sourceloc "DefaultPasswordService.java", 202, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Else:
    assume {:partition} $r6 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon40_Then:
    assume {:partition} $r6 != $null;
    $exception := $exception;
    goto anon18;

  anon18:
    call r4, $exception := org.apache.shiro.crypto.hash.format.HashFormatFactory$getInstance$java.lang.String($r6, r2);
    assert {:sourceloc "DefaultPasswordService.java", 204, -1, -1, -1} true;
    goto anon41_Then, anon41_Else;

  anon41_Else:
    assume {:partition} r4 != $null;
    assert {:sourceloc "DefaultPasswordService.java", 204, -1, -1, -1} {:comment "elseblock"} true;
    goto anon21;

  anon21:
    assert {:sourceloc "DefaultPasswordService.java", 224, -1, -1, -1} true;
    $z3 := $boolToInt(r4 != $null
     && $heap[r4, $type] <: org.apache.shiro.crypto.hash.format.ParsableHashFormat);
    assert {:sourceloc "DefaultPasswordService.java", 224, -1, -1, -1} true;
    goto anon42_Then, anon42_Else;

  anon42_Else:
    assume {:partition} $z3 != 0;
    assert {:sourceloc "DefaultPasswordService.java", 224, -1, -1, -1} {:comment "elseblock"} true;
    goto anon24;

  anon24:
    assert {:sourceloc "DefaultPasswordService.java", 206, -1, -1, -1} true;
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} !($heap[r4, $type] <: org.apache.shiro.crypto.hash.format.ParsableHashFormat);
    call $fakelocal_1 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon43_Then:
    assume {:partition} $heap[r4, $type] <: org.apache.shiro.crypto.hash.format.ParsableHashFormat;
    $exception := $exception;
    goto anon27;

  anon27:
    r9 := r4;
    assert {:sourceloc "DefaultPasswordService.java", 207, -1, -1, -1} true;
    call r10, $exception := org.apache.shiro.crypto.hash.format.ParsableHashFormat$parse$java.lang.String(r9, r2);
    assert {:sourceloc "DefaultPasswordService.java", 209, -1, -1, -1} true;
    call $z4, $exception := org.apache.shiro.authc.credential.DefaultPasswordService$passwordsMatch$java.lang.Object_org.apache.shiro.crypto.hash.Hash(r0, r1, r10);
    assert {:sourceloc "DefaultPasswordService.java", 209, -1, -1, -1} true;
    $return := $z4;
    goto block33;

  anon42_Then:
    assume {:partition} $z3 == 0;
    assert {:sourceloc "DefaultPasswordService.java", 224, -1, -1, -1} {:comment "thenblock"} true;
    goto block32;

  block32:
    assert {:sourceloc "DefaultPasswordService.java", 220, -1, -1, -1} true;
    call r11, $exception := org.apache.shiro.authc.credential.DefaultPasswordService$createHashRequest$org.apache.shiro.util.ByteSource(r0, r3);
    assert {:sourceloc "DefaultPasswordService.java", 221, -1, -1, -1} true;
    $r7 := $heap[r0, org.apache.shiro.crypto.hash.HashService$org.apache.shiro.authc.credential.DefaultPasswordService$hashService261];
    assert {:sourceloc "DefaultPasswordService.java", 221, -1, -1, -1} true;
    goto anon44_Then, anon44_Else;

  anon44_Else:
    assume {:partition} $r7 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon44_Then:
    assume {:partition} $r7 != $null;
    $exception := $exception;
    goto anon30;

  anon30:
    call r12, $exception := org.apache.shiro.crypto.hash.HashService$computeHash$org.apache.shiro.crypto.hash.HashRequest($r7, r11);
    assert {:sourceloc "DefaultPasswordService.java", 222, -1, -1, -1} true;
    $r8 := $heap[r0, org.apache.shiro.crypto.hash.format.HashFormat$org.apache.shiro.authc.credential.DefaultPasswordService$hashFormat262];
    assert {:sourceloc "DefaultPasswordService.java", 222, -1, -1, -1} true;
    goto anon45_Then, anon45_Else;

  anon45_Else:
    assume {:partition} $r8 == $null;
    call $fakelocal_3 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon45_Then:
    assume {:partition} $r8 != $null;
    $exception := $exception;
    goto anon33;

  anon33:
    call r5, $exception := org.apache.shiro.crypto.hash.format.HashFormat$format$org.apache.shiro.crypto.hash.Hash($r8, r12);
    assert {:sourceloc "DefaultPasswordService.java", 224, -1, -1, -1} true;
    call $z2, $exception := java.lang.String$equals$java.lang.Object(r2, r5);
    assert {:sourceloc "DefaultPasswordService.java", 224, -1, -1, -1} true;
    $return := $z2;
    goto block33;

  anon41_Then:
    assume {:partition} r4 == $null;
    assert {:sourceloc "DefaultPasswordService.java", 204, -1, -1, -1} {:comment "thenblock"} true;
    goto block32;

  anon38_Then:
    assume {:partition} r3 == $null;
    assert {:sourceloc "DefaultPasswordService.java", 192, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block30;

  anon34_Then:
    assume {:partition} r2 == $null;
    assert {:sourceloc "DefaultPasswordService.java", 189, -1, -1, -1} {:comment "thenblock"} true;
    goto block25;
}



implementation org.apache.shiro.authc.credential.DefaultPasswordService$buildHashRequest$org.apache.shiro.util.ByteSource_org.apache.shiro.crypto.hash.Hash($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref)
{
  var $r7: ref;
  var $r5: ref;
  var $r3: ref;
  var $fakelocal_1: ref;
  var $fakelocal_3: ref;
  var $fakelocal_0: ref;
  var r1: ref;
  var $r6: ref;
  var $fakelocal_5: ref;
  var $fakelocal_4: ref;
  var r2: ref;
  var $r9: ref;
  var $r8: ref;
  var $fakelocal_2: ref;
  var $i0: int;
  var $r4: ref;
  var r0: ref;
  var $r10: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $heap[$this, $type] <: org.apache.shiro.authc.credential.DefaultPasswordService;
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__1, $type] <: org.apache.shiro.crypto.hash.Hash;
    assume $heap[$in_parameter__0, $type] <: org.apache.shiro.util.ByteSource;
    assume $heap[$return, $type] <: org.apache.shiro.crypto.hash.HashRequest;
    $exception := $null;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "DefaultPasswordService.java", 229, -1, -1, -1} true;
    call $fakelocal_0 := $new(org.apache.shiro.crypto.hash.HashRequest$Builder);
    $r3 := $fakelocal_0;
    assert {:sourceloc "DefaultPasswordService.java", 229, -1, -1, -1} true;
    call $exception := org.apache.shiro.crypto.hash.HashRequest$Builder$$la$init$ra$$($r3);
    assert {:sourceloc "DefaultPasswordService.java", 229, -1, -1, -1} true;
    call $r4, $exception := org.apache.shiro.crypto.hash.HashRequest$Builder$setSource$org.apache.shiro.util.ByteSource($r3, r1);
    assert {:sourceloc "DefaultPasswordService.java", 231, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} r2 == $null;
    call $fakelocal_1 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_1;
    return;

  anon16_Then:
    assume {:partition} r2 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $r5, $exception := org.apache.shiro.crypto.hash.Hash$getAlgorithmName$(r2);
    assert {:sourceloc "DefaultPasswordService.java", 231, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} $r4 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon17_Then:
    assume {:partition} $r4 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    call $r6, $exception := org.apache.shiro.crypto.hash.HashRequest$Builder$setAlgorithmName$java.lang.String($r4, $r5);
    assert {:sourceloc "DefaultPasswordService.java", 232, -1, -1, -1} true;
    call $r7, $exception := org.apache.shiro.crypto.hash.Hash$getSalt$(r2);
    assert {:sourceloc "DefaultPasswordService.java", 232, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} $r6 == $null;
    call $fakelocal_3 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_3;
    return;

  anon18_Then:
    assume {:partition} $r6 != $null;
    $exception := $exception;
    goto anon9;

  anon9:
    call $r8, $exception := org.apache.shiro.crypto.hash.HashRequest$Builder$setSalt$org.apache.shiro.util.ByteSource($r6, $r7);
    assert {:sourceloc "DefaultPasswordService.java", 233, -1, -1, -1} true;
    call $i0, $exception := org.apache.shiro.crypto.hash.Hash$getIterations$(r2);
    assert {:sourceloc "DefaultPasswordService.java", 233, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} $r8 == $null;
    call $fakelocal_4 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_4;
    return;

  anon19_Then:
    assume {:partition} $r8 != $null;
    $exception := $exception;
    goto anon12;

  anon12:
    call $r9, $exception := org.apache.shiro.crypto.hash.HashRequest$Builder$setIterations$int($r8, $i0);
    assert {:sourceloc "DefaultPasswordService.java", 234, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} $r9 == $null;
    call $fakelocal_5 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_5;
    return;

  anon20_Then:
    assume {:partition} $r9 != $null;
    $exception := $exception;
    goto anon15;

  anon15:
    call $r10, $exception := org.apache.shiro.crypto.hash.HashRequest$Builder$build$($r9);
    assert {:sourceloc "DefaultPasswordService.java", 229, -1, -1, -1} true;
    $return := $r10;
    goto block34;

  block34:
    return;
}



implementation org.apache.shiro.authc.credential.DefaultPasswordService$getHashService$($this: ref) returns ($return: ref, $exception: ref)
{
  var $r1: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $heap[$this, $type] <: org.apache.shiro.authc.credential.DefaultPasswordService;
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: org.apache.shiro.crypto.hash.HashService;
    $exception := $null;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "DefaultPasswordService.java", 238, -1, -1, -1} true;
    $r1 := $heap[r0, org.apache.shiro.crypto.hash.HashService$org.apache.shiro.authc.credential.DefaultPasswordService$hashService261];
    assert {:sourceloc "DefaultPasswordService.java", 238, -1, -1, -1} true;
    $return := $r1;
    goto block35;

  block35:
    return;
}



implementation org.apache.shiro.authc.credential.DefaultPasswordService$setHashService$org.apache.shiro.crypto.hash.HashService($this: ref, $in_parameter__0: ref) returns ($exception: ref)
{
  var r0: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $heap[$this, $type] <: org.apache.shiro.authc.credential.DefaultPasswordService;
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: org.apache.shiro.crypto.hash.HashService;
    $exception := $null;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "DefaultPasswordService.java", 242, -1, -1, -1} true;
    $heap := $heap[r0, org.apache.shiro.crypto.hash.HashService$org.apache.shiro.authc.credential.DefaultPasswordService$hashService261 := r1];
    assert {:sourceloc "DefaultPasswordService.java", 243, -1, -1, -1} true;
    goto block36;

  block36:
    return;
}



implementation org.apache.shiro.authc.credential.DefaultPasswordService$getHashFormat$($this: ref) returns ($return: ref, $exception: ref)
{
  var $r1: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $heap[$this, $type] <: org.apache.shiro.authc.credential.DefaultPasswordService;
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: org.apache.shiro.crypto.hash.format.HashFormat;
    $exception := $null;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "DefaultPasswordService.java", 246, -1, -1, -1} true;
    $r1 := $heap[r0, org.apache.shiro.crypto.hash.format.HashFormat$org.apache.shiro.authc.credential.DefaultPasswordService$hashFormat262];
    assert {:sourceloc "DefaultPasswordService.java", 246, -1, -1, -1} true;
    $return := $r1;
    goto block37;

  block37:
    return;
}



implementation org.apache.shiro.authc.credential.DefaultPasswordService$setHashFormat$org.apache.shiro.crypto.hash.format.HashFormat($this: ref, $in_parameter__0: ref) returns ($exception: ref)
{
  var r0: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $heap[$this, $type] <: org.apache.shiro.authc.credential.DefaultPasswordService;
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: org.apache.shiro.crypto.hash.format.HashFormat;
    $exception := $null;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "DefaultPasswordService.java", 250, -1, -1, -1} true;
    $heap := $heap[r0, org.apache.shiro.crypto.hash.format.HashFormat$org.apache.shiro.authc.credential.DefaultPasswordService$hashFormat262 := r1];
    assert {:sourceloc "DefaultPasswordService.java", 251, -1, -1, -1} true;
    goto block38;

  block38:
    return;
}



implementation org.apache.shiro.authc.credential.DefaultPasswordService$getHashFormatFactory$($this: ref) returns ($return: ref, $exception: ref)
{
  var $r1: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $heap[$this, $type] <: org.apache.shiro.authc.credential.DefaultPasswordService;
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: org.apache.shiro.crypto.hash.format.HashFormatFactory;
    $exception := $null;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "DefaultPasswordService.java", 254, -1, -1, -1} true;
    $r1 := $heap[r0, org.apache.shiro.crypto.hash.format.HashFormatFactory$org.apache.shiro.authc.credential.DefaultPasswordService$hashFormatFactory263];
    assert {:sourceloc "DefaultPasswordService.java", 254, -1, -1, -1} true;
    $return := $r1;
    goto block39;

  block39:
    return;
}



implementation org.apache.shiro.authc.credential.DefaultPasswordService$setHashFormatFactory$org.apache.shiro.crypto.hash.format.HashFormatFactory($this: ref, $in_parameter__0: ref) returns ($exception: ref)
{
  var r1: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $heap[$this, $type] <: org.apache.shiro.authc.credential.DefaultPasswordService;
    assume {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type]
   <: org.apache.shiro.crypto.hash.format.HashFormatFactory;
    $exception := $null;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "DefaultPasswordService.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "DefaultPasswordService.java", 258, -1, -1, -1} true;
    $heap := $heap[r0, org.apache.shiro.crypto.hash.format.HashFormatFactory$org.apache.shiro.authc.credential.DefaultPasswordService$hashFormatFactory263 := r1];
    assert {:sourceloc "DefaultPasswordService.java", 259, -1, -1, -1} true;
    goto block40;

  block40:
    return;
}



implementation org.apache.shiro.authc.credential.DefaultPasswordService$$la$clinit$ra$$() returns ($exception: ref)
{
  var $r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "DefaultPasswordService.java", 47, -1, -1, -1} true;
    call $r0, $exception := org.slf4j.LoggerFactory$getLogger$java.lang.Class(CC$org$_$apache$_$shiro$_$authc$_$credential$_$DefaultPasswordService);
    assert {:sourceloc "DefaultPasswordService.java", 47, -1, -1, -1} true;
    org.slf4j.Logger$org.apache.shiro.authc.credential.DefaultPasswordService$log260 := $r0;
    assert {:sourceloc "DefaultPasswordService.java", 47, -1, -1, -1} true;
    goto block41;

  block41:
    return;
}



implementation java.lang.StringBuilder$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var $fakelocal_0: ref;
  var r0: ref;
  var $r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StringBuilder.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.StringBuilder;
    assume {:sourceloc "StringBuilder.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "StringBuilder.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StringBuilder.java", 3, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "StringBuilder.java", 4, -1, -1, -1} true;
    call $fakelocal_0 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_0 := 0];
    $r1 := $fakelocal_0;
    assert {:sourceloc "StringBuilder.java", 4, -1, -1, -1} true;
    $heap := $heap[r0, char$lp$$rp$$java.lang.StringBuilder$chars305 := $r1];
    assert {:sourceloc "StringBuilder.java", 4, -1, -1, -1} true;
    goto block42;

  block42:
    return;
}



implementation java.lang.StringBuilder$append$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r2: ref;
  var $c6: int;
  var $fakelocal_1: ref;
  var $fakelocal_8: ref;
  var $fakelocal_0: ref;
  var $r4: ref;
  var $r5: ref;
  var $i3: int;
  var $fakelocal_5: ref;
  var $fakelocal_4: ref;
  var $fakelocal_3: ref;
  var i7: int;
  var $r7: ref;
  var $i1: int;
  var $i0: int;
  var $fakelocal_2: ref;
  var $fakelocal_6: ref;
  var $i4: int;
  var $fakelocal_7: ref;
  var r0: ref;
  var $c5: int;
  var r1: ref;
  var $r8: ref;
  var $fakelocal_10: ref;
  var i8: int;
  var $r6: ref;
  var $fakelocal_9: ref;
  var $r3: ref;
  var $i2: int;
  var $r9: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StringBuilder.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.StringBuilder;
    assume {:sourceloc "StringBuilder.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    assume $heap[$return, $type] <: java.lang.StringBuilder;
    $exception := $null;
    assert {:sourceloc "StringBuilder.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StringBuilder.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "StringBuilder.java", 7, -1, -1, -1} true;
    $r3 := $heap[r0, char$lp$$rp$$java.lang.StringBuilder$chars305];
    assert {:sourceloc "StringBuilder.java", 7, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon37_Else:
    assume {:partition} $r3 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon37_Then:
    assume {:partition} $r3 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    $i1 := $arrSizeHeap[$r3];
    assert {:sourceloc "StringBuilder.java", 7, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_1 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_1;
    return;

  anon38_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    $r4 := $heap[r1, char$lp$$rp$$java.lang.String$chars306];
    assert {:sourceloc "StringBuilder.java", 7, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} $r4 == $null;
    call $fakelocal_2 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon39_Then:
    assume {:partition} $r4 != $null;
    $exception := $exception;
    goto anon9;

  anon9:
    $i0 := $arrSizeHeap[$r4];
    assert {:sourceloc "StringBuilder.java", 7, -1, -1, -1} true;
    $i2 := $i1 + $i0;
    assert {:sourceloc "StringBuilder.java", 7, -1, -1, -1} true;
    call $fakelocal_3 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_3 := $i2];
    r2 := $fakelocal_3;
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    i7 := 0;
    goto block43;

  block43:
    call $return, $exception, $c6, $r5, $i3, $fakelocal_5, $fakelocal_4, i7, $fakelocal_6, $r9 := java.lang.StringBuilder$append$java.lang.String_loop_block43($return, $exception, r2, $c6, $r5, $i3, $fakelocal_5, $fakelocal_4, i7, $fakelocal_6, r0, $r9);
    goto block43_last;

  anon40_Else:
    assume {:partition} $r5 == $null;
    call $fakelocal_4 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_4;
    return;

  anon40_Then:
    assume {:partition} $r5 != $null;
    $exception := $exception;
    goto anon12;

  anon12:
    $i3 := $arrSizeHeap[$r5];
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    goto anon41_Then, anon41_Else;

  anon41_Else:
    assume {:partition} $i3 > i7;
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "StringBuilder.java", 9, -1, -1, -1} true;
    $r9 := $heap[r0, char$lp$$rp$$java.lang.StringBuilder$chars305];
    assert {:sourceloc "StringBuilder.java", 9, -1, -1, -1} true;
    goto anon42_Then, anon42_Else;

  anon42_Else:
    assume {:partition} !(i7 < $arrSizeHeap[$r9] && i7 >= 0);
    call $fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_5;
    return;

  anon42_Then:
    assume {:partition} i7 < $arrSizeHeap[$r9] && i7 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $c6 := $intArrHeap[$r9][i7];
    assert {:sourceloc "StringBuilder.java", 9, -1, -1, -1} true;
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} !(i7 < $arrSizeHeap[r2] && i7 >= 0);
    call $fakelocal_6 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_6;
    return;

  anon43_Then:
    assume {:partition} i7 < $arrSizeHeap[r2] && i7 >= 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $intArrHeap := $intArrHeap[r2 := $intArrHeap[r2][i7 := $c6]];
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    i7 := i7 + 1;
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    goto anon21_dummy;

  anon41_Then:
    assume {:partition} i7 >= $i3;
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    goto block44;

  block44:
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    $r6 := $heap[r0, char$lp$$rp$$java.lang.StringBuilder$chars305];
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    goto anon44_Then, anon44_Else;

  anon44_Else:
    assume {:partition} $r6 == $null;
    call $fakelocal_7 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_7;
    return;

  anon44_Then:
    assume {:partition} $r6 != $null;
    $exception := $exception;
    goto anon24;

  anon24:
    i8 := $arrSizeHeap[$r6];
    goto block45;

  block45:
    call $return, $exception, $fakelocal_8, $r7, $i4, $c5, $r8, $fakelocal_10, i8, $fakelocal_9 := java.lang.StringBuilder$append$java.lang.String_loop_block45($return, $exception, r2, $fakelocal_8, $r7, $i4, $c5, r1, $r8, $fakelocal_10, i8, $fakelocal_9);
    goto block45_last;

  anon45_Else:
    assume {:partition} $r7 == $null;
    call $fakelocal_8 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_8;
    return;

  anon45_Then:
    assume {:partition} $r7 != $null;
    $exception := $exception;
    goto anon27;

  anon27:
    $i4 := $arrSizeHeap[$r7];
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} $i4 > i8;
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} {:comment "elseblock"} true;
    goto anon30;

  anon30:
    assert {:sourceloc "StringBuilder.java", 12, -1, -1, -1} true;
    $r8 := $heap[r1, char$lp$$rp$$java.lang.String$chars306];
    assert {:sourceloc "StringBuilder.java", 12, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} !(i8 < $arrSizeHeap[$r8] && i8 >= 0);
    call $fakelocal_9 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_9;
    return;

  anon47_Then:
    assume {:partition} i8 < $arrSizeHeap[$r8] && i8 >= 0;
    $exception := $exception;
    goto anon33;

  anon33:
    $c5 := $intArrHeap[$r8][i8];
    assert {:sourceloc "StringBuilder.java", 12, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} !(i8 < $arrSizeHeap[r2] && i8 >= 0);
    call $fakelocal_10 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_10;
    return;

  anon48_Then:
    assume {:partition} i8 < $arrSizeHeap[r2] && i8 >= 0;
    $exception := $exception;
    goto anon36;

  anon36:
    $intArrHeap := $intArrHeap[r2 := $intArrHeap[r2][i8 := $c5]];
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    i8 := i8 + 1;
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    goto anon36_dummy;

  anon46_Then:
    assume {:partition} i8 >= $i4;
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} {:comment "thenblock"} true;
    goto block46;

  block46:
    assert {:sourceloc "StringBuilder.java", 14, -1, -1, -1} true;
    $heap := $heap[r0, char$lp$$rp$$java.lang.StringBuilder$chars305 := r2];
    assert {:sourceloc "StringBuilder.java", 15, -1, -1, -1} true;
    $return := r0;
    goto block47;

  block47:
    return;

  anon36_dummy:
    assume false;
    return;

  block45_last:
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    $r7 := $heap[r1, char$lp$$rp$$java.lang.String$chars306];
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    goto anon45_Then, anon45_Else;

  anon21_dummy:
    assume false;
    return;

  block43_last:
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    $r5 := $heap[r0, char$lp$$rp$$java.lang.StringBuilder$chars305];
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;
}



implementation java.lang.StringBuilder$toString$($this: ref) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var $r1: ref;
  var r0: ref;
  var $r2: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "StringBuilder.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.StringBuilder;
    assume {:sourceloc "StringBuilder.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "StringBuilder.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "StringBuilder.java", 19, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.String);
    $r1 := $fakelocal_0;
    assert {:sourceloc "StringBuilder.java", 19, -1, -1, -1} true;
    $r2 := $heap[r0, char$lp$$rp$$java.lang.StringBuilder$chars305];
    assert {:sourceloc "StringBuilder.java", 19, -1, -1, -1} true;
    call $exception := java.lang.String$$la$init$ra$$char$lp$$rp$($r1, $r2);
    assert {:sourceloc "StringBuilder.java", 19, -1, -1, -1} true;
    $return := $r1;
    goto block48;

  block48:
    return;
}



implementation java.lang.String$$la$init$ra$$char$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref)
{
  var r0: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "String.java", 6, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    $heap := $heap[r0, char$lp$$rp$$java.lang.String$chars306 := r1];
    assert {:sourceloc "String.java", 8, -1, -1, -1} true;
    goto block49;

  block49:
    return;
}



implementation java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var i0: int;
  var r0: ref;
  var $c1: int;
  var $fakelocal_0: ref;
  var $r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    $r1 := $heap[r0, char$lp$$rp$$java.lang.String$chars306];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} !(i0 < $arrSizeHeap[$r1] && i0 >= 0);
    call $fakelocal_0 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon4_Then:
    assume {:partition} i0 < $arrSizeHeap[$r1] && i0 >= 0;
    $exception := $exception;
    goto anon3;

  anon3:
    $c1 := $intArrHeap[$r1][i0];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    $return := $c1;
    goto block50;

  block50:
    return;
}



implementation java.lang.String$equals$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var r2: ref;
  var r0: ref;
  var $fakelocal_3: ref;
  var $c4: int;
  var $fakelocal_1: ref;
  var $c3: int;
  var $r6: ref;
  var $r9: ref;
  var r1: ref;
  var $fakelocal_4: ref;
  var $i1: int;
  var $i0: int;
  var i5: int;
  var $i2: int;
  var $r8: ref;
  var $fakelocal_2: ref;
  var $r4: ref;
  var $r5: ref;
  var $r3: ref;
  var $fakelocal_5: ref;
  var $r7: ref;
  var $fakelocal_0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.Object;
    $exception := $null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "String.java", 16, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon37_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "String.java", 16, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "String.java", 17, -1, -1, -1} true;
    $return := 1;
    goto block58;

  block58:
    return;

  anon37_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "String.java", 16, -1, -1, -1} {:comment "thenblock"} true;
    goto block51;

  block51:
    assert {:sourceloc "String.java", 18, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} r1 == $null;
    assert {:sourceloc "String.java", 18, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "String.java", 19, -1, -1, -1} true;
    $return := 0;
    goto block58;

  anon38_Then:
    assume {:partition} r1 != $null;
    assert {:sourceloc "String.java", 18, -1, -1, -1} {:comment "thenblock"} true;
    goto block52;

  block52:
    assert {:sourceloc "String.java", 20, -1, -1, -1} true;
    call $r3, $exception := java.lang.Object$getClass$(r0);
    assert {:sourceloc "String.java", 20, -1, -1, -1} true;
    call $r4, $exception := java.lang.Object$getClass$(r1);
    assert {:sourceloc "String.java", 20, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} $r3 != $r4;
    assert {:sourceloc "String.java", 20, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "String.java", 21, -1, -1, -1} true;
    $return := 0;
    goto block58;

  anon39_Then:
    assume {:partition} $r3 == $r4;
    assert {:sourceloc "String.java", 20, -1, -1, -1} {:comment "thenblock"} true;
    goto block53;

  block53:
    assert {:sourceloc "String.java", 22, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Else:
    assume {:partition} !($heap[r1, $type] <: java.lang.String);
    call $fakelocal_0 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon40_Then:
    assume {:partition} $heap[r1, $type] <: java.lang.String;
    $exception := $exception;
    goto anon12;

  anon12:
    r2 := r1;
    assert {:sourceloc "String.java", 24, -1, -1, -1} true;
    $r5 := $heap[r0, char$lp$$rp$$java.lang.String$chars306];
    assert {:sourceloc "String.java", 24, -1, -1, -1} true;
    goto anon41_Then, anon41_Else;

  anon41_Else:
    assume {:partition} $r5 == $null;
    call $fakelocal_1 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon41_Then:
    assume {:partition} $r5 != $null;
    $exception := $exception;
    goto anon15;

  anon15:
    $i1 := $arrSizeHeap[$r5];
    assert {:sourceloc "String.java", 24, -1, -1, -1} true;
    $r6 := $heap[r2, char$lp$$rp$$java.lang.String$chars306];
    assert {:sourceloc "String.java", 24, -1, -1, -1} true;
    goto anon42_Then, anon42_Else;

  anon42_Else:
    assume {:partition} $r6 == $null;
    call $fakelocal_2 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon42_Then:
    assume {:partition} $r6 != $null;
    $exception := $exception;
    goto anon18;

  anon18:
    $i0 := $arrSizeHeap[$r6];
    assert {:sourceloc "String.java", 24, -1, -1, -1} true;
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} $i1 != $i0;
    assert {:sourceloc "String.java", 24, -1, -1, -1} {:comment "elseblock"} true;
    goto anon21;

  anon21:
    assert {:sourceloc "String.java", 25, -1, -1, -1} true;
    $return := 0;
    goto block58;

  anon43_Then:
    assume {:partition} $i1 == $i0;
    assert {:sourceloc "String.java", 24, -1, -1, -1} {:comment "thenblock"} true;
    goto block54;

  block54:
    assert {:sourceloc "String.java", 27, -1, -1, -1} true;
    i5 := 0;
    goto block55;

  block55:
    call $return, $exception, $fakelocal_3, $c4, $c3, $r9, $fakelocal_4, i5, $i2, $r8, $fakelocal_5, $r7 := java.lang.String$equals$java.lang.Object_loop_block55($return, $exception, r2, r0, $fakelocal_3, $c4, $c3, $r9, $fakelocal_4, i5, $i2, $r8, $fakelocal_5, $r7);
    goto block55_last;

  anon44_Else:
    assume {:partition} $r7 == $null;
    call $fakelocal_3 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon44_Then:
    assume {:partition} $r7 != $null;
    $exception := $exception;
    goto anon24;

  anon24:
    $i2 := $arrSizeHeap[$r7];
    assert {:sourceloc "String.java", 27, -1, -1, -1} true;
    goto anon45_Then, anon45_Else;

  anon45_Else:
    assume {:partition} $i2 > i5;
    assert {:sourceloc "String.java", 27, -1, -1, -1} {:comment "elseblock"} true;
    goto anon27;

  anon27:
    assert {:sourceloc "String.java", 28, -1, -1, -1} true;
    $r8 := $heap[r0, char$lp$$rp$$java.lang.String$chars306];
    assert {:sourceloc "String.java", 28, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} !(i5 < $arrSizeHeap[$r8] && i5 >= 0);
    call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon46_Then:
    assume {:partition} i5 < $arrSizeHeap[$r8] && i5 >= 0;
    $exception := $exception;
    goto anon30;

  anon30:
    $c4 := $intArrHeap[$r8][i5];
    assert {:sourceloc "String.java", 28, -1, -1, -1} true;
    $r9 := $heap[r2, char$lp$$rp$$java.lang.String$chars306];
    assert {:sourceloc "String.java", 28, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} !(i5 < $arrSizeHeap[$r9] && i5 >= 0);
    call $fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon47_Then:
    assume {:partition} i5 < $arrSizeHeap[$r9] && i5 >= 0;
    $exception := $exception;
    goto anon33;

  anon33:
    $c3 := $intArrHeap[$r9][i5];
    assert {:sourceloc "String.java", 28, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} $c4 != $c3;
    assert {:sourceloc "String.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    goto anon36;

  anon36:
    assert {:sourceloc "String.java", 29, -1, -1, -1} true;
    $return := 0;
    goto block58;

  anon48_Then:
    assume {:partition} $c4 == $c3;
    assert {:sourceloc "String.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block57;

  block57:
    assert {:sourceloc "String.java", 27, -1, -1, -1} true;
    i5 := i5 + 1;
    assert {:sourceloc "String.java", 27, -1, -1, -1} true;
    goto block57_dummy;

  anon45_Then:
    assume {:partition} i5 >= $i2;
    assert {:sourceloc "String.java", 27, -1, -1, -1} {:comment "thenblock"} true;
    goto block56;

  block56:
    assert {:sourceloc "String.java", 32, -1, -1, -1} true;
    $return := 1;
    goto block58;

  block57_dummy:
    assume false;
    return;

  block55_last:
    assert {:sourceloc "String.java", 27, -1, -1, -1} true;
    $r7 := $heap[r0, char$lp$$rp$$java.lang.String$chars306];
    assert {:sourceloc "String.java", 27, -1, -1, -1} true;
    goto anon44_Then, anon44_Else;
}



implementation java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var z0: int;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    $heap := $heap[r0, boolean$java.lang.Boolean$value0 := z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto block59;

  block59:
    return;
}



implementation java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var z0: int;
  var $r0: ref;
  var $fakelocal_0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$return, $type] <: java.lang.Boolean;
    $exception := $null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.Boolean);
    $r0 := $fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call $exception := java.lang.Boolean$$la$init$ra$$boolean($r0, z0);
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    $return := $r0;
    goto block60;

  block60:
    return;
}



implementation java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref)
{
  var $z0: int;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    $z0 := $heap[r0, boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    $return := $z0;
    goto block61;

  block61:
    return;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation org.apache.shiro.authc.credential.DefaultPasswordService$jdkStringEquals$java.lang.Object_java.lang.Object_loop_block17(in_$exception: ref, 
    in_$i1: int, 
    in_$c3: int, 
    in_i5: int, 
    in_i4: int, 
    in_$c2: int, 
    in_r2: ref, 
    in_r3: ref)
   returns (out_$exception: ref, 
    out_$i1: int, 
    out_$c3: int, 
    out_i5: int, 
    out_i4: int, 
    out_$c2: int)
{

  entry:
    out_$exception, out_$i1, out_$c3, out_i5, out_i4, out_$c2 := in_$exception, in_$i1, in_$c3, in_i5, in_i4, in_$c2;
    goto block17;

  block17:
    assert {:sourceloc "DefaultPasswordService.java", 149, -1, -1, -1} true;
    out_$i1 := out_i4;
    assert {:sourceloc "DefaultPasswordService.java", 149, -1, -1, -1} true;
    out_i4 := out_i4 + -1;
    assert {:sourceloc "DefaultPasswordService.java", 149, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Then:
    assume {:partition} out_$i1 == 0;
    assert {:sourceloc "DefaultPasswordService.java", 149, -1, -1, -1} {:comment "thenblock"} true;
    out_$exception, out_$i1, out_$c3, out_i5, out_i4, out_$c2 := in_$exception, in_$i1, in_$c3, in_i5, in_i4, in_$c2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  block19:
    assert {:sourceloc "DefaultPasswordService.java", 152, -1, -1, -1} true;
    out_i5 := out_i5 + 1;
    assert {:sourceloc "DefaultPasswordService.java", 152, -1, -1, -1} true;
    goto block19_dummy;

  anon28_Then:
    assume {:partition} out_$c2 == out_$c3;
    assert {:sourceloc "DefaultPasswordService.java", 150, -1, -1, -1} {:comment "thenblock"} true;
    goto block19;

  anon18:
    assert {:sourceloc "DefaultPasswordService.java", 150, -1, -1, -1} true;
    call out_$c2, out_$exception := java.lang.String$charAt$int(in_r2, out_i5);
    assert {:sourceloc "DefaultPasswordService.java", 150, -1, -1, -1} true;
    call out_$c3, out_$exception := java.lang.String$charAt$int(in_r3, out_i5);
    assert {:sourceloc "DefaultPasswordService.java", 150, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} out_$c2 != out_$c3;
    assert {:sourceloc "DefaultPasswordService.java", 150, -1, -1, -1} {:comment "elseblock"} true;
    out_$exception, out_$i1, out_$c3, out_i5, out_i4, out_$c2 := in_$exception, in_$i1, in_$c3, in_i5, in_i4, in_$c2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon27_Else:
    assume {:partition} out_$i1 != 0;
    assert {:sourceloc "DefaultPasswordService.java", 149, -1, -1, -1} {:comment "elseblock"} true;
    goto anon18;

  block19_dummy:
    call {:si_unique_call 1} out_$exception, out_$i1, out_$c3, out_i5, out_i4, out_$c2 := org.apache.shiro.authc.credential.DefaultPasswordService$jdkStringEquals$java.lang.Object_java.lang.Object_loop_block17(out_$exception, out_$i1, out_$c3, out_i5, out_i4, out_$c2, in_r2, in_r3);
    return;

  exit:
    return;
}



procedure org.apache.shiro.authc.credential.DefaultPasswordService$jdkStringEquals$java.lang.Object_java.lang.Object_loop_block17(in_$exception: ref, 
    in_$i1: int, 
    in_$c3: int, 
    in_i5: int, 
    in_i4: int, 
    in_$c2: int, 
    in_r2: ref, 
    in_r3: ref)
   returns (out_$exception: ref, 
    out_$i1: int, 
    out_$c3: int, 
    out_i5: int, 
    out_i4: int, 
    out_$c2: int);
  modifies $objIndex, $heap;



implementation java.lang.StringBuilder$append$java.lang.String_loop_block45(in_$return: ref, 
    in_$exception: ref, 
    in_r2: ref, 
    in_$fakelocal_8: ref, 
    in_$r7: ref, 
    in_$i4: int, 
    in_$c5: int, 
    in_r1: ref, 
    in_$r8: ref, 
    in_$fakelocal_10: ref, 
    in_i8: int, 
    in_$fakelocal_9: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$fakelocal_8: ref, 
    out_$r7: ref, 
    out_$i4: int, 
    out_$c5: int, 
    out_$r8: ref, 
    out_$fakelocal_10: ref, 
    out_i8: int, 
    out_$fakelocal_9: ref)
{

  entry:
    out_$return, out_$exception, out_$fakelocal_8, out_$r7, out_$i4, out_$c5, out_$r8, out_$fakelocal_10, out_i8, out_$fakelocal_9 := in_$return, in_$exception, in_$fakelocal_8, in_$r7, in_$i4, in_$c5, in_$r8, in_$fakelocal_10, in_i8, in_$fakelocal_9;
    goto block45;

  block45:
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    out_$r7 := $heap[in_r1, char$lp$$rp$$java.lang.String$chars306];
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    goto anon45_Then, anon45_Else;

  anon45_Else:
    assume {:partition} out_$r7 == $null;
    call out_$fakelocal_8 := $new(java.lang.NullPointerException);
    out_$return := $null;
    out_$exception := out_$fakelocal_8;
    out_$return, out_$exception, out_$fakelocal_8, out_$r7, out_$i4, out_$c5, out_$r8, out_$fakelocal_10, out_i8, out_$fakelocal_9 := in_$return, in_$exception, in_$fakelocal_8, in_$r7, in_$i4, in_$c5, in_$r8, in_$fakelocal_10, in_i8, in_$fakelocal_9;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon36:
    $intArrHeap := $intArrHeap[in_r2 := $intArrHeap[in_r2][out_i8 := out_$c5]];
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    out_i8 := out_i8 + 1;
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    goto anon36_dummy;

  anon48_Then:
    assume {:partition} out_i8 < $arrSizeHeap[in_r2] && out_i8 >= 0;
    out_$exception := out_$exception;
    goto anon36;

  anon33:
    out_$c5 := $intArrHeap[out_$r8][out_i8];
    assert {:sourceloc "StringBuilder.java", 12, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} !(out_i8 < $arrSizeHeap[in_r2] && out_i8 >= 0);
    call out_$fakelocal_10 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_10;
    out_$return, out_$exception, out_$fakelocal_8, out_$r7, out_$i4, out_$c5, out_$r8, out_$fakelocal_10, out_i8, out_$fakelocal_9 := in_$return, in_$exception, in_$fakelocal_8, in_$r7, in_$i4, in_$c5, in_$r8, in_$fakelocal_10, in_i8, in_$fakelocal_9;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon47_Then:
    assume {:partition} out_i8 < $arrSizeHeap[out_$r8] && out_i8 >= 0;
    out_$exception := out_$exception;
    goto anon33;

  anon30:
    assert {:sourceloc "StringBuilder.java", 12, -1, -1, -1} true;
    out_$r8 := $heap[in_r1, char$lp$$rp$$java.lang.String$chars306];
    assert {:sourceloc "StringBuilder.java", 12, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} !(out_i8 < $arrSizeHeap[out_$r8] && out_i8 >= 0);
    call out_$fakelocal_9 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_9;
    out_$return, out_$exception, out_$fakelocal_8, out_$r7, out_$i4, out_$c5, out_$r8, out_$fakelocal_10, out_i8, out_$fakelocal_9 := in_$return, in_$exception, in_$fakelocal_8, in_$r7, in_$i4, in_$c5, in_$r8, in_$fakelocal_10, in_i8, in_$fakelocal_9;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon46_Else:
    assume {:partition} out_$i4 > out_i8;
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} {:comment "elseblock"} true;
    goto anon30;

  anon27:
    out_$i4 := $arrSizeHeap[out_$r7];
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Then:
    assume {:partition} out_i8 >= out_$i4;
    assert {:sourceloc "StringBuilder.java", 11, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_8, out_$r7, out_$i4, out_$c5, out_$r8, out_$fakelocal_10, out_i8, out_$fakelocal_9 := in_$return, in_$exception, in_$fakelocal_8, in_$r7, in_$i4, in_$c5, in_$r8, in_$fakelocal_10, in_i8, in_$fakelocal_9;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon45_Then:
    assume {:partition} out_$r7 != $null;
    out_$exception := out_$exception;
    goto anon27;

  anon36_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$fakelocal_8, out_$r7, out_$i4, out_$c5, out_$r8, out_$fakelocal_10, out_i8, out_$fakelocal_9 := java.lang.StringBuilder$append$java.lang.String_loop_block45(out_$return, out_$exception, in_r2, out_$fakelocal_8, out_$r7, out_$i4, out_$c5, in_r1, out_$r8, out_$fakelocal_10, out_i8, out_$fakelocal_9);
    return;

  exit:
    return;
}



procedure java.lang.StringBuilder$append$java.lang.String_loop_block45(in_$return: ref, 
    in_$exception: ref, 
    in_r2: ref, 
    in_$fakelocal_8: ref, 
    in_$r7: ref, 
    in_$i4: int, 
    in_$c5: int, 
    in_r1: ref, 
    in_$r8: ref, 
    in_$fakelocal_10: ref, 
    in_i8: int, 
    in_$fakelocal_9: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$fakelocal_8: ref, 
    out_$r7: ref, 
    out_$i4: int, 
    out_$c5: int, 
    out_$r8: ref, 
    out_$fakelocal_10: ref, 
    out_i8: int, 
    out_$fakelocal_9: ref);
  modifies $intArrHeap, $objIndex, $heap;



implementation java.lang.StringBuilder$append$java.lang.String_loop_block43(in_$return: ref, 
    in_$exception: ref, 
    in_r2: ref, 
    in_$c6: int, 
    in_$r5: ref, 
    in_$i3: int, 
    in_$fakelocal_5: ref, 
    in_$fakelocal_4: ref, 
    in_i7: int, 
    in_$fakelocal_6: ref, 
    in_r0: ref, 
    in_$r9: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$c6: int, 
    out_$r5: ref, 
    out_$i3: int, 
    out_$fakelocal_5: ref, 
    out_$fakelocal_4: ref, 
    out_i7: int, 
    out_$fakelocal_6: ref, 
    out_$r9: ref)
{

  entry:
    out_$return, out_$exception, out_$c6, out_$r5, out_$i3, out_$fakelocal_5, out_$fakelocal_4, out_i7, out_$fakelocal_6, out_$r9 := in_$return, in_$exception, in_$c6, in_$r5, in_$i3, in_$fakelocal_5, in_$fakelocal_4, in_i7, in_$fakelocal_6, in_$r9;
    goto block43;

  block43:
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    out_$r5 := $heap[in_r0, char$lp$$rp$$java.lang.StringBuilder$chars305];
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Else:
    assume {:partition} out_$r5 == $null;
    call out_$fakelocal_4 := $new(java.lang.NullPointerException);
    out_$return := $null;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$c6, out_$r5, out_$i3, out_$fakelocal_5, out_$fakelocal_4, out_i7, out_$fakelocal_6, out_$r9 := in_$return, in_$exception, in_$c6, in_$r5, in_$i3, in_$fakelocal_5, in_$fakelocal_4, in_i7, in_$fakelocal_6, in_$r9;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon21:
    $intArrHeap := $intArrHeap[in_r2 := $intArrHeap[in_r2][out_i7 := out_$c6]];
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    out_i7 := out_i7 + 1;
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    goto anon21_dummy;

  anon43_Then:
    assume {:partition} out_i7 < $arrSizeHeap[in_r2] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    out_$c6 := $intArrHeap[out_$r9][out_i7];
    assert {:sourceloc "StringBuilder.java", 9, -1, -1, -1} true;
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} !(out_i7 < $arrSizeHeap[in_r2] && out_i7 >= 0);
    call out_$fakelocal_6 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_6;
    out_$return, out_$exception, out_$c6, out_$r5, out_$i3, out_$fakelocal_5, out_$fakelocal_4, out_i7, out_$fakelocal_6, out_$r9 := in_$return, in_$exception, in_$c6, in_$r5, in_$i3, in_$fakelocal_5, in_$fakelocal_4, in_i7, in_$fakelocal_6, in_$r9;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon42_Then:
    assume {:partition} out_i7 < $arrSizeHeap[out_$r9] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    assert {:sourceloc "StringBuilder.java", 9, -1, -1, -1} true;
    out_$r9 := $heap[in_r0, char$lp$$rp$$java.lang.StringBuilder$chars305];
    assert {:sourceloc "StringBuilder.java", 9, -1, -1, -1} true;
    goto anon42_Then, anon42_Else;

  anon42_Else:
    assume {:partition} !(out_i7 < $arrSizeHeap[out_$r9] && out_i7 >= 0);
    call out_$fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$c6, out_$r5, out_$i3, out_$fakelocal_5, out_$fakelocal_4, out_i7, out_$fakelocal_6, out_$r9 := in_$return, in_$exception, in_$c6, in_$r5, in_$i3, in_$fakelocal_5, in_$fakelocal_4, in_i7, in_$fakelocal_6, in_$r9;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon41_Else:
    assume {:partition} out_$i3 > out_i7;
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon12:
    out_$i3 := $arrSizeHeap[out_$r5];
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} true;
    goto anon41_Then, anon41_Else;

  anon41_Then:
    assume {:partition} out_i7 >= out_$i3;
    assert {:sourceloc "StringBuilder.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$c6, out_$r5, out_$i3, out_$fakelocal_5, out_$fakelocal_4, out_i7, out_$fakelocal_6, out_$r9 := in_$return, in_$exception, in_$c6, in_$r5, in_$i3, in_$fakelocal_5, in_$fakelocal_4, in_i7, in_$fakelocal_6, in_$r9;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon40_Then:
    assume {:partition} out_$r5 != $null;
    out_$exception := out_$exception;
    goto anon12;

  anon21_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$c6, out_$r5, out_$i3, out_$fakelocal_5, out_$fakelocal_4, out_i7, out_$fakelocal_6, out_$r9 := java.lang.StringBuilder$append$java.lang.String_loop_block43(out_$return, out_$exception, in_r2, out_$c6, out_$r5, out_$i3, out_$fakelocal_5, out_$fakelocal_4, out_i7, out_$fakelocal_6, in_r0, out_$r9);
    return;

  exit:
    return;
}



procedure java.lang.StringBuilder$append$java.lang.String_loop_block43(in_$return: ref, 
    in_$exception: ref, 
    in_r2: ref, 
    in_$c6: int, 
    in_$r5: ref, 
    in_$i3: int, 
    in_$fakelocal_5: ref, 
    in_$fakelocal_4: ref, 
    in_i7: int, 
    in_$fakelocal_6: ref, 
    in_r0: ref, 
    in_$r9: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$c6: int, 
    out_$r5: ref, 
    out_$i3: int, 
    out_$fakelocal_5: ref, 
    out_$fakelocal_4: ref, 
    out_i7: int, 
    out_$fakelocal_6: ref, 
    out_$r9: ref);
  modifies $intArrHeap, $objIndex, $heap;



implementation java.lang.String$equals$java.lang.Object_loop_block55(in_$return: int, 
    in_$exception: ref, 
    in_r2: ref, 
    in_r0: ref, 
    in_$fakelocal_3: ref, 
    in_$c4: int, 
    in_$c3: int, 
    in_$r9: ref, 
    in_$fakelocal_4: ref, 
    in_i5: int, 
    in_$i2: int, 
    in_$r8: ref, 
    in_$fakelocal_5: ref, 
    in_$r7: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_3: ref, 
    out_$c4: int, 
    out_$c3: int, 
    out_$r9: ref, 
    out_$fakelocal_4: ref, 
    out_i5: int, 
    out_$i2: int, 
    out_$r8: ref, 
    out_$fakelocal_5: ref, 
    out_$r7: ref)
{

  entry:
    out_$return, out_$exception, out_$fakelocal_3, out_$c4, out_$c3, out_$r9, out_$fakelocal_4, out_i5, out_$i2, out_$r8, out_$fakelocal_5, out_$r7 := in_$return, in_$exception, in_$fakelocal_3, in_$c4, in_$c3, in_$r9, in_$fakelocal_4, in_i5, in_$i2, in_$r8, in_$fakelocal_5, in_$r7;
    goto block55;

  block55:
    assert {:sourceloc "String.java", 27, -1, -1, -1} true;
    out_$r7 := $heap[in_r0, char$lp$$rp$$java.lang.String$chars306];
    assert {:sourceloc "String.java", 27, -1, -1, -1} true;
    goto anon44_Then, anon44_Else;

  anon44_Else:
    assume {:partition} out_$r7 == $null;
    call out_$fakelocal_3 := $new(java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$fakelocal_3, out_$c4, out_$c3, out_$r9, out_$fakelocal_4, out_i5, out_$i2, out_$r8, out_$fakelocal_5, out_$r7 := in_$return, in_$exception, in_$fakelocal_3, in_$c4, in_$c3, in_$r9, in_$fakelocal_4, in_i5, in_$i2, in_$r8, in_$fakelocal_5, in_$r7;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  block57:
    assert {:sourceloc "String.java", 27, -1, -1, -1} true;
    out_i5 := out_i5 + 1;
    assert {:sourceloc "String.java", 27, -1, -1, -1} true;
    goto block57_dummy;

  anon48_Then:
    assume {:partition} out_$c4 == out_$c3;
    assert {:sourceloc "String.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block57;

  anon33:
    out_$c3 := $intArrHeap[out_$r9][out_i5];
    assert {:sourceloc "String.java", 28, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} out_$c4 != out_$c3;
    assert {:sourceloc "String.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    out_$return, out_$exception, out_$fakelocal_3, out_$c4, out_$c3, out_$r9, out_$fakelocal_4, out_i5, out_$i2, out_$r8, out_$fakelocal_5, out_$r7 := in_$return, in_$exception, in_$fakelocal_3, in_$c4, in_$c3, in_$r9, in_$fakelocal_4, in_i5, in_$i2, in_$r8, in_$fakelocal_5, in_$r7;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon47_Then:
    assume {:partition} out_i5 < $arrSizeHeap[out_$r9] && out_i5 >= 0;
    out_$exception := out_$exception;
    goto anon33;

  anon30:
    out_$c4 := $intArrHeap[out_$r8][out_i5];
    assert {:sourceloc "String.java", 28, -1, -1, -1} true;
    out_$r9 := $heap[in_r2, char$lp$$rp$$java.lang.String$chars306];
    assert {:sourceloc "String.java", 28, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} !(out_i5 < $arrSizeHeap[out_$r9] && out_i5 >= 0);
    call out_$fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$fakelocal_3, out_$c4, out_$c3, out_$r9, out_$fakelocal_4, out_i5, out_$i2, out_$r8, out_$fakelocal_5, out_$r7 := in_$return, in_$exception, in_$fakelocal_3, in_$c4, in_$c3, in_$r9, in_$fakelocal_4, in_i5, in_$i2, in_$r8, in_$fakelocal_5, in_$r7;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon46_Then:
    assume {:partition} out_i5 < $arrSizeHeap[out_$r8] && out_i5 >= 0;
    out_$exception := out_$exception;
    goto anon30;

  anon27:
    assert {:sourceloc "String.java", 28, -1, -1, -1} true;
    out_$r8 := $heap[in_r0, char$lp$$rp$$java.lang.String$chars306];
    assert {:sourceloc "String.java", 28, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} !(out_i5 < $arrSizeHeap[out_$r8] && out_i5 >= 0);
    call out_$fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$fakelocal_3, out_$c4, out_$c3, out_$r9, out_$fakelocal_4, out_i5, out_$i2, out_$r8, out_$fakelocal_5, out_$r7 := in_$return, in_$exception, in_$fakelocal_3, in_$c4, in_$c3, in_$r9, in_$fakelocal_4, in_i5, in_$i2, in_$r8, in_$fakelocal_5, in_$r7;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon45_Else:
    assume {:partition} out_$i2 > out_i5;
    assert {:sourceloc "String.java", 27, -1, -1, -1} {:comment "elseblock"} true;
    goto anon27;

  anon24:
    out_$i2 := $arrSizeHeap[out_$r7];
    assert {:sourceloc "String.java", 27, -1, -1, -1} true;
    goto anon45_Then, anon45_Else;

  anon45_Then:
    assume {:partition} out_i5 >= out_$i2;
    assert {:sourceloc "String.java", 27, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_3, out_$c4, out_$c3, out_$r9, out_$fakelocal_4, out_i5, out_$i2, out_$r8, out_$fakelocal_5, out_$r7 := in_$return, in_$exception, in_$fakelocal_3, in_$c4, in_$c3, in_$r9, in_$fakelocal_4, in_i5, in_$i2, in_$r8, in_$fakelocal_5, in_$r7;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon44_Then:
    assume {:partition} out_$r7 != $null;
    out_$exception := out_$exception;
    goto anon24;

  block57_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$fakelocal_3, out_$c4, out_$c3, out_$r9, out_$fakelocal_4, out_i5, out_$i2, out_$r8, out_$fakelocal_5, out_$r7 := java.lang.String$equals$java.lang.Object_loop_block55(out_$return, out_$exception, in_r2, in_r0, out_$fakelocal_3, out_$c4, out_$c3, out_$r9, out_$fakelocal_4, out_i5, out_$i2, out_$r8, out_$fakelocal_5, out_$r7);
    return;

  exit:
    return;
}



procedure java.lang.String$equals$java.lang.Object_loop_block55(in_$return: int, 
    in_$exception: ref, 
    in_r2: ref, 
    in_r0: ref, 
    in_$fakelocal_3: ref, 
    in_$c4: int, 
    in_$c3: int, 
    in_$r9: ref, 
    in_$fakelocal_4: ref, 
    in_i5: int, 
    in_$i2: int, 
    in_$r8: ref, 
    in_$fakelocal_5: ref, 
    in_$r7: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_3: ref, 
    out_$c4: int, 
    out_$c3: int, 
    out_$r9: ref, 
    out_$fakelocal_4: ref, 
    out_i5: int, 
    out_$i2: int, 
    out_$r8: ref, 
    out_$fakelocal_5: ref, 
    out_$r7: ref);
  modifies $objIndex, $heap;


