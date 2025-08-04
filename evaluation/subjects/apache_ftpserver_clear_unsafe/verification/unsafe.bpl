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

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique java.lang.Object: javaType extends complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique org.apache.ftpserver.usermanager.PasswordEncryptor: javaType extends complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor: javaType extends unique java.lang.Object, org.apache.ftpserver.usermanager.PasswordEncryptor complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique java.io.Serializable: javaType extends complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique java.lang.Comparable: javaType extends complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique java.lang.CharSequence: javaType extends complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique java.lang.Throwable: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique java.lang.Exception: javaType extends unique java.lang.Throwable complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique java.lang.RuntimeException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique java.lang.NullPointerException: javaType extends unique java.lang.RuntimeException complete;

const unique $StringConst0: ref extends complete;

const unique $StringConst1: ref extends complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique java.lang.ClassCastException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique java.lang.IndexOutOfBoundsException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique java.lang.ArrayIndexOutOfBoundsException: javaType extends unique java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.String: javaType extends unique java.lang.Object complete;

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

var boolean$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$safeMode0: Field int;

var char$lp$$rp$$java.lang.String$chars300: Field ref;

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
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];
  ensures $objIndex == old($objIndex) + 1;
  ensures $obj != $null;
  ensures $obj == $intToRef(old($objIndex));
  ensures !old($heap[$obj, $alloc]);



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $heap[$other, $type] == $heap[$this, $type];
  ensures $heap[$other, $alloc] <==> true;
  ensures $other != $null;



procedure int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$$la$init$ra$$($this: ref) returns ($exception: ref);
  modifies $heap;



procedure java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies $heap;



procedure org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$encrypt$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$matches$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;
 free requires $in_parameter__0 != $null; free requires $in_parameter__1 != $null; free requires $stringSizeHeap[$in_parameter__0] == 16; free requires $stringSizeHeap[$in_parameter__1] == 16;


procedure java.lang.NullPointerException$$la$init$ra$$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.String$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.String$toCharArray$($this: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;



procedure java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies $heap;



procedure java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



implementation org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} $heap[$this, $type]
   <: org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor;
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 34, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 35, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$safeMode0 := 0];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 36, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var z0: int;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} $heap[$this, $type]
   <: org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor;
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 38, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 39, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$safeMode0 := z0];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 40, -1, -1, -1} true;
    goto block2;

  block2:
    return;
}



implementation org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$encrypt$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r0: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} $heap[$this, $type]
   <: org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor;
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    assume $heap[$return, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 46, -1, -1, -1} true;
    $return := r1;
    goto block3;

  block3:
    return;
}



implementation org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$matches$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $r4: ref;
  var $fakelocal_1: ref;
  var $fakelocal_0: ref;
  var r0: ref;
  var $z0: int;
  var r1: ref;
  var r2: ref;
  var $r3: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} $heap[$this, $type]
   <: org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor;
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    assume $heap[$in_parameter__1, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 53, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} r2 == $null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 53, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 54, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $r4 := $fakelocal_0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 54, -1, -1, -1} true;
    call $exception := java.lang.NullPointerException$$la$init$ra$$java.lang.String($r4, $StringConst0);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 54, -1, -1, -1} true;
    $exception := $r4;
    goto block6;

  block6:
    return;

  anon7_Then:
    assume {:partition} r2 != $null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 53, -1, -1, -1} {:comment "thenblock"} true;
    goto block4;

  block4:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 56, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r1 == $null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 57, -1, -1, -1} true;
    call $fakelocal_1 := $new(java.lang.NullPointerException);
    $r3 := $fakelocal_1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 57, -1, -1, -1} true;
    call $exception := java.lang.NullPointerException$$la$init$ra$$java.lang.String($r3, $StringConst1);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 57, -1, -1, -1} true;
    $exception := $r3;
    goto block6;

  anon8_Then:
    assume {:partition} r1 != $null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block5;

  block5:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 65, -1, -1, -1} true;
    call $z0, $exception := org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object(r0, r1, r2);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 65, -1, -1, -1} true;
    $return := $z0;
    goto block6;
}



implementation org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var i4: int;
  var $i1: int;
  var i5: int;
  var r1: ref;
  var r5: ref;
  var $fakelocal_1: ref;
  var $c3: int;
  var $fakelocal_2: ref;
  var r4: ref;
  var r0: ref;
  var r2: ref;
  var $z0: int;
  var $c2: int;
  var $i0: int;
  var r3: ref;
  var $fakelocal_0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} $heap[$this, $type]
   <: org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor;
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
    $exception := $null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 72, -1, -1, -1} true;
    goto anon25_Then, anon25_Else;

  anon25_Else:
    assume {:partition} r1 == r2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 72, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 73, -1, -1, -1} true;
    $return := 1;
    goto block12;

  block12:
    return;

  anon25_Then:
    assume {:partition} r1 != r2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 72, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  block7:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 75, -1, -1, -1} true;
    $z0 := $boolToInt(r2 != $null && $heap[r2, $type] <: java.lang.String);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 75, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 75, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 76, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} !($heap[r2, $type] <: java.lang.String);
    call $fakelocal_0 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon27_Then:
    assume {:partition} $heap[r2, $type] <: java.lang.String;
    $exception := $exception;
    goto anon9;

  anon9:
    r3 := r2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 77, -1, -1, -1} true;
    i4 := $stringSizeHeap[r1];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 78, -1, -1, -1} true;
    $i0 := $stringSizeHeap[r3];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 78, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} i4 == $i0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 78, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 79, -1, -1, -1} true;
    call r4, $exception := java.lang.String$toCharArray$(r1);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 80, -1, -1, -1} true;
    call r5, $exception := java.lang.String$toCharArray$(r3);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 81, -1, -1, -1} true;
    i5 := 0;
    goto block9;

  block9:
    call $return, $exception, i4, $i1, i5, $fakelocal_1, $c3, $fakelocal_2, $c2 := org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9($return, $exception, i4, $i1, i5, r5, $fakelocal_1, $c3, $fakelocal_2, r4, $c2);
    goto block9_last;

  anon29_Else:
    assume {:partition} $i1 != 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(i5 < $arrSizeHeap[r4] && i5 >= 0);
    call $fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon30_Then:
    assume {:partition} i5 < $arrSizeHeap[r4] && i5 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $c3 := $intArrHeap[r4][i5];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(i5 < $arrSizeHeap[r5] && i5 >= 0);
    call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon31_Then:
    assume {:partition} i5 < $arrSizeHeap[r5] && i5 >= 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $c2 := $intArrHeap[r5][i5];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} $c3 != $c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} {:comment "elseblock"} true;
    goto anon24;

  anon24:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 84, -1, -1, -1} true;
    $return := 0;
    goto block12;

  anon32_Then:
    assume {:partition} $c3 == $c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  block11:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 85, -1, -1, -1} true;
    i5 := i5 + 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 85, -1, -1, -1} true;
    goto block11_dummy;

  anon29_Then:
    assume {:partition} $i1 == 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 87, -1, -1, -1} true;
    $return := 1;
    goto block12;

  anon28_Then:
    assume {:partition} i4 != $i0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 90, -1, -1, -1} true;
    $return := 0;
    goto block12;

  anon26_Then:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 75, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block11_dummy:
    assume false;
    return;

  block9_last:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    $i1 := i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    i4 := i4 + -1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;
}



implementation org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $c2: int;
  var z0: int;
  var r0: ref;
  var $fakelocal_1: ref;
  var $fakelocal_4: ref;
  var $fakelocal_0: ref;
  var i4: int;
  var $fakelocal_5: ref;
  var $fakelocal_3: ref;
  var $i0: int;
  var r4: ref;
  var $i1: int;
  var r1: ref;
  var r3: ref;
  var $c3: int;
  var $fakelocal_2: ref;
  var r2: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} $heap[$this, $type]
   <: org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor;
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__1, $type] <: java.lang.String;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 125, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon28_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call r3, $exception := java.lang.String$toCharArray$(r1);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 126, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} r2 == $null;
    call $fakelocal_1 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon29_Then:
    assume {:partition} r2 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    call r4, $exception := java.lang.String$toCharArray$(r2);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 128, -1, -1, -1} true;
    z0 := 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    i4 := 0;
    goto block13;

  block13:
    call $return, $exception, $c2, z0, $fakelocal_4, i4, $fakelocal_5, $fakelocal_3, $i0, $i1, $c3, $fakelocal_2 := org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13($return, $exception, $c2, z0, $fakelocal_4, i4, $fakelocal_5, $fakelocal_3, $i0, r4, $i1, r3, $c3, $fakelocal_2);
    goto block13_last;

  anon30_Else:
    assume {:partition} r3 == $null;
    call $fakelocal_2 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon30_Then:
    assume {:partition} r3 != $null;
    $exception := $exception;
    goto anon9;

  anon9:
    $i0 := $arrSizeHeap[r3];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} $i0 > i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} r4 == $null;
    call $fakelocal_3 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon32_Then:
    assume {:partition} r4 != $null;
    $exception := $exception;
    goto anon15;

  anon15:
    $i1 := $arrSizeHeap[r4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} $i1 > i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} {:comment "elseblock"} true;
    goto anon18;

  anon18:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} !(i4 < $arrSizeHeap[r3] && i4 >= 0);
    call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon34_Then:
    assume {:partition} i4 < $arrSizeHeap[r3] && i4 >= 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $c3 := $intArrHeap[r3][i4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} !(i4 < $arrSizeHeap[r4] && i4 >= 0);
    call $fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon35_Then:
    assume {:partition} i4 < $arrSizeHeap[r4] && i4 >= 0;
    $exception := $exception;
    goto anon24;

  anon24:
    $c2 := $intArrHeap[r4][i4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} $c3 != $c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} {:comment "elseblock"} true;
    goto anon27;

  anon27:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 132, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 132, -1, -1, -1} true;
    goto block15;

  block15:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    i4 := i4 + 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    goto block15_dummy;

  anon36_Then:
    assume {:partition} $c3 == $c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  block16:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 134, -1, -1, -1} true;
    goto block15;

  anon33_Then:
    assume {:partition} i4 >= $i1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  anon31_Then:
    assume {:partition} i4 >= $i0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 141, -1, -1, -1} true;
    $return := z0;
    goto block17;

  block17:
    return;

  block15_dummy:
    assume false;
    return;

  block13_last:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;
}



implementation java.lang.String$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "String.java", 3, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "String.java", 3, -1, -1, -1} true;
    goto block18;

  block18:
    return;
}



implementation java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var $r1: ref;
  var $c1: int;
  var i0: int;
  var r0: ref;
  var $fakelocal_0: ref;

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
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    $r1 := $heap[r0, char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
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
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    $return := $c1;
    goto block19;

  block19:
    return;
}



implementation java.lang.String$toCharArray$($this: ref) returns ($return: ref, $exception: ref)
{
  var $r4: ref;
  var $c2: int;
  var r1: ref;
  var $fakelocal_4: ref;
  var $r2: ref;
  var $fakelocal_0: ref;
  var $r3: ref;
  var r0: ref;
  var $fakelocal_2: ref;
  var $i0: int;
  var $i1: int;
  var $fakelocal_3: ref;
  var i3: int;
  var $fakelocal_1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    $r2 := $heap[r0, char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} $r2 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon16_Then:
    assume {:partition} $r2 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    $i0 := $arrSizeHeap[$r2];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    call $fakelocal_1 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := $i0];
    r1 := $fakelocal_1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    i3 := 0;
    goto block20;

  block20:
    call $return, $exception, $r4, $c2, $fakelocal_4, $r3, $fakelocal_2, $i1, $fakelocal_3, i3 := java.lang.String$toCharArray$_loop_block20($return, $exception, $r4, $c2, r1, $fakelocal_4, $r3, r0, $fakelocal_2, $i1, $fakelocal_3, i3);
    goto block20_last;

  anon17_Else:
    assume {:partition} $r3 == $null;
    call $fakelocal_2 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon17_Then:
    assume {:partition} $r3 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i1 := $arrSizeHeap[$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} $i1 > i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    $r4 := $heap[r0, char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(i3 < $arrSizeHeap[$r4] && i3 >= 0);
    call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_3;
    return;

  anon19_Then:
    assume {:partition} i3 < $arrSizeHeap[$r4] && i3 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    $c2 := $intArrHeap[$r4][i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !(i3 < $arrSizeHeap[r1] && i3 >= 0);
    call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_4;
    return;

  anon20_Then:
    assume {:partition} i3 < $arrSizeHeap[r1] && i3 >= 0;
    $exception := $exception;
    goto anon15;

  anon15:
    $intArrHeap := $intArrHeap[r1 := $intArrHeap[r1][i3 := $c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    i3 := i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto anon15_dummy;

  anon18_Then:
    assume {:partition} i3 >= $i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    goto block21;

  block21:
    assert {:sourceloc "String.java", 15, -1, -1, -1} true;
    $return := r1;
    goto block22;

  block22:
    return;

  anon15_dummy:
    assume false;
    return;

  block20_last:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    $r3 := $heap[r0, char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;
}



implementation java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var r0: ref;
  var z0: int;

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
    goto block23;

  block23:
    return;
}



implementation java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var z0: int;
  var $fakelocal_0: ref;
  var $r0: ref;

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
    goto block24;

  block24:
    return;
}



implementation java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $z0: int;

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
    goto block25;

  block25:
    return;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9(in_$return: int, 
    in_$exception: ref, 
    in_i4: int, 
    in_$i1: int, 
    in_i5: int, 
    in_r5: ref, 
    in_$fakelocal_1: ref, 
    in_$c3: int, 
    in_$fakelocal_2: ref, 
    in_r4: ref, 
    in_$c2: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_i4: int, 
    out_$i1: int, 
    out_i5: int, 
    out_$fakelocal_1: ref, 
    out_$c3: int, 
    out_$fakelocal_2: ref, 
    out_$c2: int)
{

  entry:
    out_$return, out_$exception, out_i4, out_$i1, out_i5, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2 := in_$return, in_$exception, in_i4, in_$i1, in_i5, in_$fakelocal_1, in_$c3, in_$fakelocal_2, in_$c2;
    goto block9;

  block9:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    out_$i1 := out_i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    out_i4 := out_i4 + -1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Then:
    assume {:partition} out_$i1 == 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_i4, out_$i1, out_i5, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2 := in_$return, in_$exception, in_i4, in_$i1, in_i5, in_$fakelocal_1, in_$c3, in_$fakelocal_2, in_$c2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  block11:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 85, -1, -1, -1} true;
    out_i5 := out_i5 + 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 85, -1, -1, -1} true;
    goto block11_dummy;

  anon32_Then:
    assume {:partition} out_$c3 == out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  anon21:
    out_$c2 := $intArrHeap[in_r5][out_i5];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} out_$c3 != out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} {:comment "elseblock"} true;
    out_$return, out_$exception, out_i4, out_$i1, out_i5, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2 := in_$return, in_$exception, in_i4, in_$i1, in_i5, in_$fakelocal_1, in_$c3, in_$fakelocal_2, in_$c2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon31_Then:
    assume {:partition} out_i5 < $arrSizeHeap[in_r5] && out_i5 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    out_$c3 := $intArrHeap[in_r4][out_i5];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(out_i5 < $arrSizeHeap[in_r5] && out_i5 >= 0);
    call out_$fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_i4, out_$i1, out_i5, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2 := in_$return, in_$exception, in_i4, in_$i1, in_i5, in_$fakelocal_1, in_$c3, in_$fakelocal_2, in_$c2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon30_Then:
    assume {:partition} out_i5 < $arrSizeHeap[in_r4] && out_i5 >= 0;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(out_i5 < $arrSizeHeap[in_r4] && out_i5 >= 0);
    call out_$fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_i4, out_$i1, out_i5, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2 := in_$return, in_$exception, in_i4, in_$i1, in_i5, in_$fakelocal_1, in_$c3, in_$fakelocal_2, in_$c2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon29_Else:
    assume {:partition} out_$i1 != 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  block11_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_i4, out_$i1, out_i5, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2 := org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9(out_$return, out_$exception, out_i4, out_$i1, out_i5, in_r5, out_$fakelocal_1, out_$c3, out_$fakelocal_2, in_r4, out_$c2);
    return;

  exit:
    return;
}



procedure org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9(in_$return: int, 
    in_$exception: ref, 
    in_i4: int, 
    in_$i1: int, 
    in_i5: int, 
    in_r5: ref, 
    in_$fakelocal_1: ref, 
    in_$c3: int, 
    in_$fakelocal_2: ref, 
    in_r4: ref, 
    in_$c2: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_i4: int, 
    out_$i1: int, 
    out_i5: int, 
    out_$fakelocal_1: ref, 
    out_$c3: int, 
    out_$fakelocal_2: ref, 
    out_$c2: int);
  modifies $objIndex, $heap;



implementation org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13(in_$return: int, 
    in_$exception: ref, 
    in_$c2: int, 
    in_z0: int, 
    in_$fakelocal_4: ref, 
    in_i4: int, 
    in_$fakelocal_5: ref, 
    in_$fakelocal_3: ref, 
    in_$i0: int, 
    in_r4: ref, 
    in_$i1: int, 
    in_r3: ref, 
    in_$c3: int, 
    in_$fakelocal_2: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$c2: int, 
    out_z0: int, 
    out_$fakelocal_4: ref, 
    out_i4: int, 
    out_$fakelocal_5: ref, 
    out_$fakelocal_3: ref, 
    out_$i0: int, 
    out_$i1: int, 
    out_$c3: int, 
    out_$fakelocal_2: ref)
{

  entry:
    out_$return, out_$exception, out_$c2, out_z0, out_$fakelocal_4, out_i4, out_$fakelocal_5, out_$fakelocal_3, out_$i0, out_$i1, out_$c3, out_$fakelocal_2 := in_$return, in_$exception, in_$c2, in_z0, in_$fakelocal_4, in_i4, in_$fakelocal_5, in_$fakelocal_3, in_$i0, in_$i1, in_$c3, in_$fakelocal_2;
    goto block13;

  block13:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} in_r3 == $null;
    call out_$fakelocal_2 := $new(java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$c2, out_z0, out_$fakelocal_4, out_i4, out_$fakelocal_5, out_$fakelocal_3, out_$i0, out_$i1, out_$c3, out_$fakelocal_2 := in_$return, in_$exception, in_$c2, in_z0, in_$fakelocal_4, in_i4, in_$fakelocal_5, in_$fakelocal_3, in_$i0, in_$i1, in_$c3, in_$fakelocal_2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  block15:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    out_i4 := out_i4 + 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    goto block15_dummy;

  anon27:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 132, -1, -1, -1} true;
    out_z0 := 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 132, -1, -1, -1} true;
    goto block15;

  block16:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 134, -1, -1, -1} true;
    goto block15;

  anon33_Then:
    assume {:partition} out_i4 >= out_$i1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  anon15:
    out_$i1 := $arrSizeHeap[in_r4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon32_Then:
    assume {:partition} in_r4 != $null;
    out_$exception := out_$exception;
    goto anon15;

  anon12:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} in_r4 == $null;
    call out_$fakelocal_3 := $new(java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$c2, out_z0, out_$fakelocal_4, out_i4, out_$fakelocal_5, out_$fakelocal_3, out_$i0, out_$i1, out_$c3, out_$fakelocal_2 := in_$return, in_$exception, in_$c2, in_z0, in_$fakelocal_4, in_i4, in_$fakelocal_5, in_$fakelocal_3, in_$i0, in_$i1, in_$c3, in_$fakelocal_2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon31_Else:
    assume {:partition} out_$i0 > out_i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon9:
    out_$i0 := $arrSizeHeap[in_r3];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Then:
    assume {:partition} out_i4 >= out_$i0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$c2, out_z0, out_$fakelocal_4, out_i4, out_$fakelocal_5, out_$fakelocal_3, out_$i0, out_$i1, out_$c3, out_$fakelocal_2 := in_$return, in_$exception, in_$c2, in_z0, in_$fakelocal_4, in_i4, in_$fakelocal_5, in_$fakelocal_3, in_$i0, in_$i1, in_$c3, in_$fakelocal_2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon30_Then:
    assume {:partition} in_r3 != $null;
    out_$exception := out_$exception;
    goto anon9;

  anon36_Then:
    assume {:partition} out_$c3 == out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  anon24:
    out_$c2 := $intArrHeap[in_r4][out_i4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon35_Then:
    assume {:partition} out_i4 < $arrSizeHeap[in_r4] && out_i4 >= 0;
    out_$exception := out_$exception;
    goto anon24;

  anon21:
    out_$c3 := $intArrHeap[in_r3][out_i4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} !(out_i4 < $arrSizeHeap[in_r4] && out_i4 >= 0);
    call out_$fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$c2, out_z0, out_$fakelocal_4, out_i4, out_$fakelocal_5, out_$fakelocal_3, out_$i0, out_$i1, out_$c3, out_$fakelocal_2 := in_$return, in_$exception, in_$c2, in_z0, in_$fakelocal_4, in_i4, in_$fakelocal_5, in_$fakelocal_3, in_$i0, in_$i1, in_$c3, in_$fakelocal_2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon34_Then:
    assume {:partition} out_i4 < $arrSizeHeap[in_r3] && out_i4 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} !(out_i4 < $arrSizeHeap[in_r3] && out_i4 >= 0);
    call out_$fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$c2, out_z0, out_$fakelocal_4, out_i4, out_$fakelocal_5, out_$fakelocal_3, out_$i0, out_$i1, out_$c3, out_$fakelocal_2 := in_$return, in_$exception, in_$c2, in_z0, in_$fakelocal_4, in_i4, in_$fakelocal_5, in_$fakelocal_3, in_$i0, in_$i1, in_$c3, in_$fakelocal_2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon33_Else:
    assume {:partition} out_$i1 > out_i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} {:comment "elseblock"} true;
    goto anon18;

  anon36_Else:
    assume {:partition} out_$c3 != out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} {:comment "elseblock"} true;
    goto anon27;

  block15_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$c2, out_z0, out_$fakelocal_4, out_i4, out_$fakelocal_5, out_$fakelocal_3, out_$i0, out_$i1, out_$c3, out_$fakelocal_2 := org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13(out_$return, out_$exception, out_$c2, out_z0, out_$fakelocal_4, out_i4, out_$fakelocal_5, out_$fakelocal_3, out_$i0, in_r4, out_$i1, in_r3, out_$c3, out_$fakelocal_2);
    return;

  exit:
    return;
}



procedure org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13(in_$return: int, 
    in_$exception: ref, 
    in_$c2: int, 
    in_z0: int, 
    in_$fakelocal_4: ref, 
    in_i4: int, 
    in_$fakelocal_5: ref, 
    in_$fakelocal_3: ref, 
    in_$i0: int, 
    in_r4: ref, 
    in_$i1: int, 
    in_r3: ref, 
    in_$c3: int, 
    in_$fakelocal_2: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$c2: int, 
    out_z0: int, 
    out_$fakelocal_4: ref, 
    out_i4: int, 
    out_$fakelocal_5: ref, 
    out_$fakelocal_3: ref, 
    out_$i0: int, 
    out_$i1: int, 
    out_$c3: int, 
    out_$fakelocal_2: ref);
  modifies $objIndex, $heap;



implementation java.lang.String$toCharArray$_loop_block20(in_$return: ref, 
    in_$exception: ref, 
    in_$r4: ref, 
    in_$c2: int, 
    in_r1: ref, 
    in_$fakelocal_4: ref, 
    in_$r3: ref, 
    in_r0: ref, 
    in_$fakelocal_2: ref, 
    in_$i1: int, 
    in_$fakelocal_3: ref, 
    in_i3: int)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$r4: ref, 
    out_$c2: int, 
    out_$fakelocal_4: ref, 
    out_$r3: ref, 
    out_$fakelocal_2: ref, 
    out_$i1: int, 
    out_$fakelocal_3: ref, 
    out_i3: int)
{

  entry:
    out_$return, out_$exception, out_$r4, out_$c2, out_$fakelocal_4, out_$r3, out_$fakelocal_2, out_$i1, out_$fakelocal_3, out_i3 := in_$return, in_$exception, in_$r4, in_$c2, in_$fakelocal_4, in_$r3, in_$fakelocal_2, in_$i1, in_$fakelocal_3, in_i3;
    goto block20;

  block20:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    out_$r3 := $heap[in_r0, char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} out_$r3 == $null;
    call out_$fakelocal_2 := $new(java.lang.NullPointerException);
    out_$return := $null;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$r4, out_$c2, out_$fakelocal_4, out_$r3, out_$fakelocal_2, out_$i1, out_$fakelocal_3, out_i3 := in_$return, in_$exception, in_$r4, in_$c2, in_$fakelocal_4, in_$r3, in_$fakelocal_2, in_$i1, in_$fakelocal_3, in_i3;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon15:
    $intArrHeap := $intArrHeap[in_r1 := $intArrHeap[in_r1][out_i3 := out_$c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    out_i3 := out_i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto anon15_dummy;

  anon20_Then:
    assume {:partition} out_i3 < $arrSizeHeap[in_r1] && out_i3 >= 0;
    out_$exception := out_$exception;
    goto anon15;

  anon12:
    out_$c2 := $intArrHeap[out_$r4][out_i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !(out_i3 < $arrSizeHeap[in_r1] && out_i3 >= 0);
    call out_$fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$r4, out_$c2, out_$fakelocal_4, out_$r3, out_$fakelocal_2, out_$i1, out_$fakelocal_3, out_i3 := in_$return, in_$exception, in_$r4, in_$c2, in_$fakelocal_4, in_$r3, in_$fakelocal_2, in_$i1, in_$fakelocal_3, in_i3;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon19_Then:
    assume {:partition} out_i3 < $arrSizeHeap[out_$r4] && out_i3 >= 0;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    out_$r4 := $heap[in_r0, char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(out_i3 < $arrSizeHeap[out_$r4] && out_i3 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$r4, out_$c2, out_$fakelocal_4, out_$r3, out_$fakelocal_2, out_$i1, out_$fakelocal_3, out_i3 := in_$return, in_$exception, in_$r4, in_$c2, in_$fakelocal_4, in_$r3, in_$fakelocal_2, in_$i1, in_$fakelocal_3, in_i3;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon18_Else:
    assume {:partition} out_$i1 > out_i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon6:
    out_$i1 := $arrSizeHeap[out_$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Then:
    assume {:partition} out_i3 >= out_$i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$r4, out_$c2, out_$fakelocal_4, out_$r3, out_$fakelocal_2, out_$i1, out_$fakelocal_3, out_i3 := in_$return, in_$exception, in_$r4, in_$c2, in_$fakelocal_4, in_$r3, in_$fakelocal_2, in_$i1, in_$fakelocal_3, in_i3;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon17_Then:
    assume {:partition} out_$r3 != $null;
    out_$exception := out_$exception;
    goto anon6;

  anon15_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$r4, out_$c2, out_$fakelocal_4, out_$r3, out_$fakelocal_2, out_$i1, out_$fakelocal_3, out_i3 := java.lang.String$toCharArray$_loop_block20(out_$return, out_$exception, out_$r4, out_$c2, in_r1, out_$fakelocal_4, out_$r3, in_r0, out_$fakelocal_2, out_$i1, out_$fakelocal_3, out_i3);
    return;

  exit:
    return;
}



procedure java.lang.String$toCharArray$_loop_block20(in_$return: ref, 
    in_$exception: ref, 
    in_$r4: ref, 
    in_$c2: int, 
    in_r1: ref, 
    in_$fakelocal_4: ref, 
    in_$r3: ref, 
    in_r0: ref, 
    in_$fakelocal_2: ref, 
    in_$i1: int, 
    in_$fakelocal_3: ref, 
    in_i3: int)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$r4: ref, 
    out_$c2: int, 
    out_$fakelocal_4: ref, 
    out_$r3: ref, 
    out_$fakelocal_2: ref, 
    out_$i1: int, 
    out_$fakelocal_3: ref, 
    out_i3: int);
  modifies $intArrHeap, $objIndex, $heap;


