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

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique sg.edu.nus.comp.tsunami.safe.Safe: javaType extends unique java.lang.Object complete;

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
  ensures !old($heap[$obj, $alloc]);
  ensures $obj == $intToRef(old($objIndex));
  ensures $objIndex == old($objIndex) + 1;
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];
  ensures $obj != $null;



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $heap[$other, $type] == $heap[$this, $type];
  ensures $other != $null;
  ensures $heap[$other, $alloc] <==> true;



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



procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);



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



procedure sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0: int) returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);



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
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 38, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 39, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$safeMode0 := 0];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 40, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var r0: ref;
  var z0: int;

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
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 42, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 43, -1, -1, -1} true;
    $heap := $heap[r0, boolean$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$safeMode0 := z0];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 44, -1, -1, -1} true;
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
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 50, -1, -1, -1} true;
    $return := r1;
    goto block3;

  block3:
    return;
}



implementation org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$matches$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r0: ref;
  var r1: ref;
  var $fakelocal_0: ref;
  var r2: ref;
  var $z0: int;
  var $r4: ref;
  var $r3: ref;
  var $fakelocal_1: ref;

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
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 57, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} r2 == $null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 58, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $r4 := $fakelocal_0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 58, -1, -1, -1} true;
    call $exception := java.lang.NullPointerException$$la$init$ra$$java.lang.String($r4, $StringConst0);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 58, -1, -1, -1} true;
    $exception := $r4;
    goto block6;

  block6:
    return;

  anon7_Then:
    assume {:partition} r2 != $null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto block4;

  block4:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 60, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r1 == $null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 60, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 61, -1, -1, -1} true;
    call $fakelocal_1 := $new(java.lang.NullPointerException);
    $r3 := $fakelocal_1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 61, -1, -1, -1} true;
    call $exception := java.lang.NullPointerException$$la$init$ra$$java.lang.String($r3, $StringConst1);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 61, -1, -1, -1} true;
    $exception := $r3;
    goto block6;

  anon8_Then:
    assume {:partition} r1 != $null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 60, -1, -1, -1} {:comment "thenblock"} true;
    goto block5;

  block5:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 69, -1, -1, -1} true;
    call $z0, $exception := org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object(r0, r1, r2);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 69, -1, -1, -1} true;
    $return := $z0;
    goto block6;
}



implementation org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $r6: ref;
  var $fakelocal_6: ref;
  var $r18: ref;
  var $r21: ref;
  var $r16: ref;
  var $r23: ref;
  var $c2: int;
  var r1: ref;
  var $i1: int;
  var z4: int;
  var $z2: int;
  var $r10: ref;
  var i6: int;
  var $fakelocal_0: ref;
  var $r15: ref;
  var r5: ref;
  var $r19: ref;
  var $r13: ref;
  var $r14: ref;
  var $fakelocal_8: ref;
  var $r22: ref;
  var z5: int;
  var $fakelocal_5: ref;
  var $r7: ref;
  var $r8: ref;
  var $l4: int;
  var $fakelocal_3: ref;
  var $fakelocal_9: ref;
  var $fakelocal_10: ref;
  var $z1: int;
  var $fakelocal_4: ref;
  var $fakelocal_1: ref;
  var r0: ref;
  var $r12: ref;
  var $i0: int;
  var i7: int;
  var $l5: int;
  var r4: ref;
  var r3: ref;
  var $r9: ref;
  var $r11: ref;
  var r2: ref;
  var $fakelocal_7: ref;
  var z0: int;
  var $c3: int;
  var $r17: ref;
  var $z3: int;
  var $r20: ref;
  var $fakelocal_2: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} $heap[$this, $type]
   <: org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor;
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 76, -1, -1, -1} true;
    z4 := 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 77, -1, -1, -1} true;
    z5 := 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 78, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} r1 == r2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 78, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 79, -1, -1, -1} true;
    $return := 1;
    goto block11;

  block11:
    return;

  anon46_Then:
    assume {:partition} r1 != r2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  block7:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 81, -1, -1, -1} true;
    $z1 := $boolToInt(r2 != $null && $heap[r2, $type] <: java.lang.String);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 81, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} $z1 != 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 81, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} !($heap[r2, $type] <: java.lang.String);
    call $fakelocal_0 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon48_Then:
    assume {:partition} $heap[r2, $type] <: java.lang.String;
    $exception := $exception;
    goto anon9;

  anon9:
    r3 := r2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    i6 := $stringSizeHeap[r1];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 84, -1, -1, -1} true;
    $i0 := $stringSizeHeap[r3];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 84, -1, -1, -1} true;
    goto anon49_Then, anon49_Else;

  anon49_Else:
    assume {:partition} i6 == $i0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 84, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 85, -1, -1, -1} true;
    call r4, $exception := java.lang.String$toCharArray$(r1);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 86, -1, -1, -1} true;
    call r5, $exception := java.lang.String$toCharArray$(r3);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 87, -1, -1, -1} true;
    i7 := 0;
    goto block9;

  block9:
    call $return, $exception, $fakelocal_6, $r18, $r21, $r16, $r23, $c2, $i1, z4, i6, $r15, $r19, $r14, $r22, z5, $fakelocal_5, $l4, $fakelocal_3, $fakelocal_4, $fakelocal_1, i7, $l5, z0, $c3, $r17, $r20, $fakelocal_2 := org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9($return, $exception, $fakelocal_6, $r18, $r21, $r16, $r23, $c2, $i1, z4, i6, $r15, r5, $r19, $r14, $r22, z5, $fakelocal_5, $l4, $fakelocal_3, $fakelocal_4, $fakelocal_1, i7, $l5, r4, z0, $c3, $r17, $r20, $fakelocal_2);
    goto block9_last;

  anon50_Else:
    assume {:partition} $i1 != 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 88, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 89, -1, -1, -1} true;
    goto anon51_Then, anon51_Else;

  anon51_Else:
    assume {:partition} !(i7 < $arrSizeHeap[r4] && i7 >= 0);
    call $fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon51_Then:
    assume {:partition} i7 < $arrSizeHeap[r4] && i7 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $c2 := $intArrHeap[r4][i7];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 89, -1, -1, -1} true;
    $l5 := $c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 89, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} !(i7 < $arrSizeHeap[r5] && i7 >= 0);
    call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon52_Then:
    assume {:partition} i7 < $arrSizeHeap[r5] && i7 >= 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $c3 := $intArrHeap[r5][i7];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 89, -1, -1, -1} true;
    $l4 := $c3;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 89, -1, -1, -1} true;
    call z0, $exception := sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($l5, $l4);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 90, -1, -1, -1} true;
    call $r14, $exception := java.lang.Boolean$valueOf$boolean(z4);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 90, -1, -1, -1} true;
    call $r15, $exception := java.lang.Boolean$valueOf$boolean(0);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 90, -1, -1, -1} true;
    call $r16, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z5, $r14, $r15);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 90, -1, -1, -1} true;
    call $r17, $exception := java.lang.Boolean$valueOf$boolean(z4);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 90, -1, -1, -1} true;
    call $r18, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r16, $r17);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 90, -1, -1, -1} true;
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} !($heap[$r18, $type] <: java.lang.Boolean);
    call $fakelocal_3 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon53_Then:
    assume {:partition} $heap[$r18, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon24;

  anon24:
    $r19 := $r18;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 90, -1, -1, -1} true;
    goto anon54_Then, anon54_Else;

  anon54_Else:
    assume {:partition} $r19 == $null;
    call $fakelocal_4 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon54_Then:
    assume {:partition} $r19 != $null;
    $exception := $exception;
    goto anon27;

  anon27:
    call z4, $exception := java.lang.Boolean$booleanValue$($r19);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 91, -1, -1, -1} true;
    call $r20, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 91, -1, -1, -1} true;
    call $r21, $exception := java.lang.Boolean$valueOf$boolean(z5);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 91, -1, -1, -1} true;
    call $r22, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r20, $r21);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 91, -1, -1, -1} true;
    goto anon55_Then, anon55_Else;

  anon55_Else:
    assume {:partition} !($heap[$r22, $type] <: java.lang.Boolean);
    call $fakelocal_5 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon55_Then:
    assume {:partition} $heap[$r22, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon30;

  anon30:
    $r23 := $r22;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 91, -1, -1, -1} true;
    goto anon56_Then, anon56_Else;

  anon56_Else:
    assume {:partition} $r23 == $null;
    call $fakelocal_6 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon56_Then:
    assume {:partition} $r23 != $null;
    $exception := $exception;
    goto anon33;

  anon33:
    call z5, $exception := java.lang.Boolean$booleanValue$($r23);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 93, -1, -1, -1} true;
    i7 := i7 + 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 94, -1, -1, -1} true;
    goto anon33_dummy;

  anon50_Then:
    assume {:partition} $i1 == 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 88, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 95, -1, -1, -1} true;
    call $r10, $exception := java.lang.Boolean$valueOf$boolean(z4);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 95, -1, -1, -1} true;
    call $r11, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 95, -1, -1, -1} true;
    call $r12, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z5, $r10, $r11);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 95, -1, -1, -1} true;
    goto anon57_Then, anon57_Else;

  anon57_Else:
    assume {:partition} !($heap[$r12, $type] <: java.lang.Boolean);
    call $fakelocal_7 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_7;
    return;

  anon57_Then:
    assume {:partition} $heap[$r12, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon36;

  anon36:
    $r13 := $r12;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 95, -1, -1, -1} true;
    goto anon58_Then, anon58_Else;

  anon58_Else:
    assume {:partition} $r13 == $null;
    call $fakelocal_8 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_8;
    return;

  anon58_Then:
    assume {:partition} $r13 != $null;
    $exception := $exception;
    goto anon39;

  anon39:
    call $z3, $exception := java.lang.Boolean$booleanValue$($r13);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 95, -1, -1, -1} true;
    $return := $z3;
    goto block11;

  anon49_Then:
    assume {:partition} i6 != $i0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 98, -1, -1, -1} true;
    call $r6, $exception := java.lang.Boolean$valueOf$boolean(z4);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 98, -1, -1, -1} true;
    call $r7, $exception := java.lang.Boolean$valueOf$boolean(0);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 98, -1, -1, -1} true;
    call $r8, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z5, $r6, $r7);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 98, -1, -1, -1} true;
    goto anon59_Then, anon59_Else;

  anon59_Else:
    assume {:partition} !($heap[$r8, $type] <: java.lang.Boolean);
    call $fakelocal_9 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_9;
    return;

  anon59_Then:
    assume {:partition} $heap[$r8, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon42;

  anon42:
    $r9 := $r8;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 98, -1, -1, -1} true;
    goto anon60_Then, anon60_Else;

  anon60_Else:
    assume {:partition} $r9 == $null;
    call $fakelocal_10 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_10;
    return;

  anon60_Then:
    assume {:partition} $r9 != $null;
    $exception := $exception;
    goto anon45;

  anon45:
    call $z2, $exception := java.lang.Boolean$booleanValue$($r9);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 98, -1, -1, -1} true;
    $return := $z2;
    goto block11;

  anon47_Then:
    assume {:partition} $z1 == 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 81, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  anon33_dummy:
    assume false;
    return;

  block9_last:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 88, -1, -1, -1} true;
    $i1 := i6;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 88, -1, -1, -1} true;
    i6 := i6 + -1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 88, -1, -1, -1} true;
    goto anon50_Then, anon50_Else;
}



implementation org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $fakelocal_0: ref;
  var $fakelocal_3: ref;
  var r1: ref;
  var r3: ref;
  var r0: ref;
  var $i0: int;
  var $c2: int;
  var $i1: int;
  var $fakelocal_2: ref;
  var i4: int;
  var $fakelocal_1: ref;
  var r4: ref;
  var z0: int;
  var $fakelocal_5: ref;
  var $c3: int;
  var $fakelocal_4: ref;
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
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 133, -1, -1, -1} true;
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
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 134, -1, -1, -1} true;
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
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 136, -1, -1, -1} true;
    z0 := 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 137, -1, -1, -1} true;
    i4 := 0;
    goto block12;

  block12:
    call $return, $exception, $fakelocal_3, $i0, $c2, $i1, $fakelocal_2, i4, z0, $fakelocal_5, $c3, $fakelocal_4 := org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block12($return, $exception, $fakelocal_3, r3, $i0, $c2, $i1, $fakelocal_2, i4, r4, z0, $fakelocal_5, $c3, $fakelocal_4);
    goto block12_last;

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
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 137, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} $i0 > i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 137, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 138, -1, -1, -1} true;
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
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 138, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} $i1 > i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 138, -1, -1, -1} {:comment "elseblock"} true;
    goto anon18;

  anon18:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 139, -1, -1, -1} true;
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
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 139, -1, -1, -1} true;
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
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 139, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} $c3 != $c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 139, -1, -1, -1} {:comment "elseblock"} true;
    goto anon27;

  anon27:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 140, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 140, -1, -1, -1} true;
    goto block14;

  block14:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 137, -1, -1, -1} true;
    i4 := i4 + 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 137, -1, -1, -1} true;
    goto block14_dummy;

  anon36_Then:
    assume {:partition} $c3 == $c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 139, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  block15:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 142, -1, -1, -1} true;
    goto block14;

  anon33_Then:
    assume {:partition} i4 >= $i1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 138, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  anon31_Then:
    assume {:partition} i4 >= $i0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 137, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  block13:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 149, -1, -1, -1} true;
    $return := z0;
    goto block16;

  block16:
    return;

  block14_dummy:
    assume false;
    return;

  block12_last:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 137, -1, -1, -1} true;
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
    goto block17;

  block17:
    return;
}



implementation java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var $fakelocal_0: ref;
  var $c1: int;
  var $r1: ref;
  var i0: int;
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
    goto block18;

  block18:
    return;
}



implementation java.lang.String$toCharArray$($this: ref) returns ($return: ref, $exception: ref)
{
  var i3: int;
  var $r2: ref;
  var r1: ref;
  var $i1: int;
  var $fakelocal_1: ref;
  var $r3: ref;
  var r0: ref;
  var $fakelocal_0: ref;
  var $c2: int;
  var $i0: int;
  var $fakelocal_3: ref;
  var $fakelocal_4: ref;
  var $fakelocal_2: ref;
  var $r4: ref;

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
    goto block19;

  block19:
    call $return, $exception, i3, $i1, $r3, $c2, $fakelocal_3, $fakelocal_4, $fakelocal_2, $r4 := java.lang.String$toCharArray$_loop_block19($return, $exception, i3, r1, $i1, $r3, r0, $c2, $fakelocal_3, $fakelocal_4, $fakelocal_2, $r4);
    goto block19_last;

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
    goto block20;

  block20:
    assert {:sourceloc "String.java", 15, -1, -1, -1} true;
    $return := r1;
    goto block21;

  block21:
    return;

  anon15_dummy:
    assume false;
    return;

  block19_last:
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
    goto block22;

  block22:
    return;
}



implementation java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var z0: int;
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
    goto block23;

  block23:
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
    goto block24;

  block24:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Safe.java", -1, -1, -1, -1} $heap[$this, $type] <: sg.edu.nus.comp.tsunami.safe.Safe;
    assume {:sourceloc "Safe.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Safe.java", 3, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "Safe.java", 3, -1, -1, -1} true;
    goto block25;

  block25:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var z0: int;
  var z1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", 5, -1, -1, -1} true;
    z1 := 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 0;
    goto block26;

  block26:
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 1;
    goto block27;

  block27:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    $return := z1;
    goto block28;

  block28:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block27;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block26;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z1: int;
  var $z2: int;
  var z0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 12, -1, -1, -1} true;
    $z2 := $bitAnd(z0, z1);
    assert {:sourceloc "Safe.java", 12, -1, -1, -1} true;
    $return := $z2;
    goto block29;

  block29:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $z2: int;
  var z0: int;
  var z1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 16, -1, -1, -1} true;
    $z2 := $bitOr(z0, z1);
    assert {:sourceloc "Safe.java", 16, -1, -1, -1} true;
    $return := $z2;
    goto block30;

  block30:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b3: int;
  var z0: int;
  var l0: int;
  var $b2: int;
  var l1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 20, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} true;
    $b2 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 < $b2;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    z0 := 1;
    goto block31;

  block31:
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} true;
    $b3 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 >= $b3;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    z0 := 0;
    goto block32;

  block32:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    $return := z0;
    goto block33;

  block33:
    return;

  anon8_Then:
    assume {:partition} $b3 > 0;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block32;

  anon7_Then:
    assume {:partition} $b2 <= 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    goto block31;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var l1: int;
  var z0: int;
  var $b3: int;
  var l0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 27, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} true;
    $b2 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 > $b2;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    z0 := 1;
    goto block34;

  block34:
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} true;
    $b3 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 <= $b3;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    z0 := 0;
    goto block35;

  block35:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    $return := z0;
    goto block36;

  block36:
    return;

  anon8_Then:
    assume {:partition} $b3 < 0;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block35;

  anon7_Then:
    assume {:partition} $b2 >= 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block34;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l0: int;
  var $b3: int;
  var z0: int;
  var $b2: int;
  var l1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 34, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} true;
    $b2 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 <= $b2;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    z0 := 1;
    goto block37;

  block37:
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} true;
    $b3 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 > $b3;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    z0 := 0;
    goto block38;

  block38:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    $return := z0;
    goto block39;

  block39:
    return;

  anon8_Then:
    assume {:partition} $b3 >= 0;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block38;

  anon7_Then:
    assume {:partition} $b2 < 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block37;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l0: int;
  var $b3: int;
  var $b2: int;
  var z0: int;
  var l1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 41, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} true;
    $b2 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 >= $b2;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    z0 := 1;
    goto block40;

  block40:
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} true;
    $b3 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 < $b3;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    z0 := 0;
    goto block41;

  block41:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    $return := z0;
    goto block42;

  block42:
    return;

  anon8_Then:
    assume {:partition} $b3 <= 0;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block41;

  anon7_Then:
    assume {:partition} $b2 > 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block40;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var $b3: int;
  var l0: int;
  var l1: int;
  var z0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 48, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    $b2 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    z0 := 1;
    goto block43;

  block43:
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    $b3 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    z0 := 0;
    goto block44;

  block44:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    $return := z0;
    goto block45;

  block45:
    return;

  anon8_Then:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block44;

  anon7_Then:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto block43;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b3: int;
  var l1: int;
  var z0: int;
  var $b2: int;
  var l0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 55, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    $b2 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    z0 := 1;
    goto block46;

  block46:
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    $b3 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    z0 := 0;
    goto block47;

  block47:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    $return := z0;
    goto block48;

  block48:
    return;

  anon8_Then:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto block47;

  anon7_Then:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block46;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var $b1: int;
  var z0: int;
  var d1: int;
  var $b0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 62, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} true;
    $b0 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 < $b0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    z0 := 1;
    goto block49;

  block49:
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} true;
    $b1 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 >= $b1;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    z0 := 0;
    goto block50;

  block50:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    $return := z0;
    goto block51;

  block51:
    return;

  anon8_Then:
    assume {:partition} $b1 > 0;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "thenblock"} true;
    goto block50;

  anon7_Then:
    assume {:partition} $b0 <= 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "thenblock"} true;
    goto block49;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d1: int;
  var z0: int;
  var $b0: int;
  var $b1: int;
  var d0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 69, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} true;
    $b0 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 > $b0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    z0 := 1;
    goto block52;

  block52:
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} true;
    $b1 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 <= $b1;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    z0 := 0;
    goto block53;

  block53:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    $return := z0;
    goto block54;

  block54:
    return;

  anon8_Then:
    assume {:partition} $b1 < 0;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block53;

  anon7_Then:
    assume {:partition} $b0 >= 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block52;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b1: int;
  var $b0: int;
  var d0: int;
  var d1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 76, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} true;
    $b0 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 <= $b0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    z0 := 1;
    goto block55;

  block55:
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} true;
    $b1 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 > $b1;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    z0 := 0;
    goto block56;

  block56:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    $return := z0;
    goto block57;

  block57:
    return;

  anon8_Then:
    assume {:partition} $b1 >= 0;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block56;

  anon7_Then:
    assume {:partition} $b0 < 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block55;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b1: int;
  var d1: int;
  var z0: int;
  var d0: int;
  var $b0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 83, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} true;
    $b0 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 >= $b0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    z0 := 1;
    goto block58;

  block58:
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} true;
    $b1 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 < $b1;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    z0 := 0;
    goto block59;

  block59:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    $return := z0;
    goto block60;

  block60:
    return;

  anon8_Then:
    assume {:partition} $b1 <= 0;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "thenblock"} true;
    goto block59;

  anon7_Then:
    assume {:partition} $b0 > 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block58;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var d1: int;
  var z0: int;
  var $b1: int;
  var $b0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 90, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} true;
    $b0 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    z0 := 1;
    goto block61;

  block61:
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} true;
    $b1 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    z0 := 0;
    goto block62;

  block62:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    $return := z0;
    goto block63;

  block63:
    return;

  anon8_Then:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "thenblock"} true;
    goto block62;

  anon7_Then:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "thenblock"} true;
    goto block61;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b0: int;
  var z0: int;
  var d0: int;
  var d1: int;
  var $b1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 97, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} true;
    $b0 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    z0 := 1;
    goto block64;

  block64:
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} true;
    $b1 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    z0 := 0;
    goto block65;

  block65:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    $return := z0;
    goto block66;

  block66:
    return;

  anon8_Then:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "thenblock"} true;
    goto block65;

  anon7_Then:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "thenblock"} true;
    goto block64;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var r1: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0, $type] <: java.lang.Object;
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 104, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 1;
    goto block67;

  block67:
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 0;
    goto block68;

  block68:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    $return := z0;
    goto block69;

  block69:
    return;

  anon8_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block68;

  anon7_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block67;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r0: ref;
  var z0: int;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
    assume $heap[$in_parameter__0, $type] <: java.lang.Object;
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 111, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 1;
    goto block70;

  block70:
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 0;
    goto block71;

  block71:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    $return := z0;
    goto block72;

  block72:
    return;

  anon8_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block71;

  anon7_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block70;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var r0: ref;
  var r1: ref;
  var r2: ref;
  var z0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
    assume $heap[$return, $type] <: java.lang.Object;
    assume $heap[$in_parameter__2, $type] <: java.lang.Object;
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    r2 := $null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r0;
    goto block73;

  block73:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r1;
    goto block74;

  block74:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    $return := r2;
    goto block75;

  block75:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block74;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block73;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_6: ref, 
    in_$r18: ref, 
    in_$r21: ref, 
    in_$r16: ref, 
    in_$r23: ref, 
    in_$c2: int, 
    in_$i1: int, 
    in_z4: int, 
    in_i6: int, 
    in_$r15: ref, 
    in_r5: ref, 
    in_$r19: ref, 
    in_$r14: ref, 
    in_$r22: ref, 
    in_z5: int, 
    in_$fakelocal_5: ref, 
    in_$l4: int, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_4: ref, 
    in_$fakelocal_1: ref, 
    in_i7: int, 
    in_$l5: int, 
    in_r4: ref, 
    in_z0: int, 
    in_$c3: int, 
    in_$r17: ref, 
    in_$r20: ref, 
    in_$fakelocal_2: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_6: ref, 
    out_$r18: ref, 
    out_$r21: ref, 
    out_$r16: ref, 
    out_$r23: ref, 
    out_$c2: int, 
    out_$i1: int, 
    out_z4: int, 
    out_i6: int, 
    out_$r15: ref, 
    out_$r19: ref, 
    out_$r14: ref, 
    out_$r22: ref, 
    out_z5: int, 
    out_$fakelocal_5: ref, 
    out_$l4: int, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_1: ref, 
    out_i7: int, 
    out_$l5: int, 
    out_z0: int, 
    out_$c3: int, 
    out_$r17: ref, 
    out_$r20: ref, 
    out_$fakelocal_2: ref)
{

  entry:
    out_$return, out_$exception, out_$fakelocal_6, out_$r18, out_$r21, out_$r16, out_$r23, out_$c2, out_$i1, out_z4, out_i6, out_$r15, out_$r19, out_$r14, out_$r22, out_z5, out_$fakelocal_5, out_$l4, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_1, out_i7, out_$l5, out_z0, out_$c3, out_$r17, out_$r20, out_$fakelocal_2 := in_$return, in_$exception, in_$fakelocal_6, in_$r18, in_$r21, in_$r16, in_$r23, in_$c2, in_$i1, in_z4, in_i6, in_$r15, in_$r19, in_$r14, in_$r22, in_z5, in_$fakelocal_5, in_$l4, in_$fakelocal_3, in_$fakelocal_4, in_$fakelocal_1, in_i7, in_$l5, in_z0, in_$c3, in_$r17, in_$r20, in_$fakelocal_2;
    goto block9;

  block9:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 88, -1, -1, -1} true;
    out_$i1 := out_i6;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 88, -1, -1, -1} true;
    out_i6 := out_i6 + -1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 88, -1, -1, -1} true;
    goto anon50_Then, anon50_Else;

  anon50_Then:
    assume {:partition} out_$i1 == 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 88, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_6, out_$r18, out_$r21, out_$r16, out_$r23, out_$c2, out_$i1, out_z4, out_i6, out_$r15, out_$r19, out_$r14, out_$r22, out_z5, out_$fakelocal_5, out_$l4, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_1, out_i7, out_$l5, out_z0, out_$c3, out_$r17, out_$r20, out_$fakelocal_2 := in_$return, in_$exception, in_$fakelocal_6, in_$r18, in_$r21, in_$r16, in_$r23, in_$c2, in_$i1, in_z4, in_i6, in_$r15, in_$r19, in_$r14, in_$r22, in_z5, in_$fakelocal_5, in_$l4, in_$fakelocal_3, in_$fakelocal_4, in_$fakelocal_1, in_i7, in_$l5, in_z0, in_$c3, in_$r17, in_$r20, in_$fakelocal_2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon33:
    call out_z5, out_$exception := java.lang.Boolean$booleanValue$(out_$r23);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 93, -1, -1, -1} true;
    out_i7 := out_i7 + 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 94, -1, -1, -1} true;
    goto anon33_dummy;

  anon56_Then:
    assume {:partition} out_$r23 != $null;
    out_$exception := out_$exception;
    goto anon33;

  anon30:
    out_$r23 := out_$r22;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 91, -1, -1, -1} true;
    goto anon56_Then, anon56_Else;

  anon56_Else:
    assume {:partition} out_$r23 == $null;
    call out_$fakelocal_6 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_6;
    out_$return, out_$exception, out_$fakelocal_6, out_$r18, out_$r21, out_$r16, out_$r23, out_$c2, out_$i1, out_z4, out_i6, out_$r15, out_$r19, out_$r14, out_$r22, out_z5, out_$fakelocal_5, out_$l4, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_1, out_i7, out_$l5, out_z0, out_$c3, out_$r17, out_$r20, out_$fakelocal_2 := in_$return, in_$exception, in_$fakelocal_6, in_$r18, in_$r21, in_$r16, in_$r23, in_$c2, in_$i1, in_z4, in_i6, in_$r15, in_$r19, in_$r14, in_$r22, in_z5, in_$fakelocal_5, in_$l4, in_$fakelocal_3, in_$fakelocal_4, in_$fakelocal_1, in_i7, in_$l5, in_z0, in_$c3, in_$r17, in_$r20, in_$fakelocal_2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon55_Then:
    assume {:partition} $heap[out_$r22, $type] <: java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon30;

  anon27:
    call out_z4, out_$exception := java.lang.Boolean$booleanValue$(out_$r19);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 91, -1, -1, -1} true;
    call out_$r20, out_$exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 91, -1, -1, -1} true;
    call out_$r21, out_$exception := java.lang.Boolean$valueOf$boolean(out_z5);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 91, -1, -1, -1} true;
    call out_$r22, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z0, out_$r20, out_$r21);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 91, -1, -1, -1} true;
    goto anon55_Then, anon55_Else;

  anon55_Else:
    assume {:partition} !($heap[out_$r22, $type] <: java.lang.Boolean);
    call out_$fakelocal_5 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$fakelocal_6, out_$r18, out_$r21, out_$r16, out_$r23, out_$c2, out_$i1, out_z4, out_i6, out_$r15, out_$r19, out_$r14, out_$r22, out_z5, out_$fakelocal_5, out_$l4, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_1, out_i7, out_$l5, out_z0, out_$c3, out_$r17, out_$r20, out_$fakelocal_2 := in_$return, in_$exception, in_$fakelocal_6, in_$r18, in_$r21, in_$r16, in_$r23, in_$c2, in_$i1, in_z4, in_i6, in_$r15, in_$r19, in_$r14, in_$r22, in_z5, in_$fakelocal_5, in_$l4, in_$fakelocal_3, in_$fakelocal_4, in_$fakelocal_1, in_i7, in_$l5, in_z0, in_$c3, in_$r17, in_$r20, in_$fakelocal_2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon54_Then:
    assume {:partition} out_$r19 != $null;
    out_$exception := out_$exception;
    goto anon27;

  anon24:
    out_$r19 := out_$r18;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 90, -1, -1, -1} true;
    goto anon54_Then, anon54_Else;

  anon54_Else:
    assume {:partition} out_$r19 == $null;
    call out_$fakelocal_4 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$fakelocal_6, out_$r18, out_$r21, out_$r16, out_$r23, out_$c2, out_$i1, out_z4, out_i6, out_$r15, out_$r19, out_$r14, out_$r22, out_z5, out_$fakelocal_5, out_$l4, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_1, out_i7, out_$l5, out_z0, out_$c3, out_$r17, out_$r20, out_$fakelocal_2 := in_$return, in_$exception, in_$fakelocal_6, in_$r18, in_$r21, in_$r16, in_$r23, in_$c2, in_$i1, in_z4, in_i6, in_$r15, in_$r19, in_$r14, in_$r22, in_z5, in_$fakelocal_5, in_$l4, in_$fakelocal_3, in_$fakelocal_4, in_$fakelocal_1, in_i7, in_$l5, in_z0, in_$c3, in_$r17, in_$r20, in_$fakelocal_2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon53_Then:
    assume {:partition} $heap[out_$r18, $type] <: java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon24;

  anon21:
    out_$c3 := $intArrHeap[in_r5][out_i7];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 89, -1, -1, -1} true;
    out_$l4 := out_$c3;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 89, -1, -1, -1} true;
    call out_z0, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long(out_$l5, out_$l4);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 90, -1, -1, -1} true;
    call out_$r14, out_$exception := java.lang.Boolean$valueOf$boolean(out_z4);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 90, -1, -1, -1} true;
    call out_$r15, out_$exception := java.lang.Boolean$valueOf$boolean(0);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 90, -1, -1, -1} true;
    call out_$r16, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z5, out_$r14, out_$r15);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 90, -1, -1, -1} true;
    call out_$r17, out_$exception := java.lang.Boolean$valueOf$boolean(out_z4);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 90, -1, -1, -1} true;
    call out_$r18, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z0, out_$r16, out_$r17);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 90, -1, -1, -1} true;
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} !($heap[out_$r18, $type] <: java.lang.Boolean);
    call out_$fakelocal_3 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$fakelocal_6, out_$r18, out_$r21, out_$r16, out_$r23, out_$c2, out_$i1, out_z4, out_i6, out_$r15, out_$r19, out_$r14, out_$r22, out_z5, out_$fakelocal_5, out_$l4, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_1, out_i7, out_$l5, out_z0, out_$c3, out_$r17, out_$r20, out_$fakelocal_2 := in_$return, in_$exception, in_$fakelocal_6, in_$r18, in_$r21, in_$r16, in_$r23, in_$c2, in_$i1, in_z4, in_i6, in_$r15, in_$r19, in_$r14, in_$r22, in_z5, in_$fakelocal_5, in_$l4, in_$fakelocal_3, in_$fakelocal_4, in_$fakelocal_1, in_i7, in_$l5, in_z0, in_$c3, in_$r17, in_$r20, in_$fakelocal_2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon52_Then:
    assume {:partition} out_i7 < $arrSizeHeap[in_r5] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    out_$c2 := $intArrHeap[in_r4][out_i7];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 89, -1, -1, -1} true;
    out_$l5 := out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 89, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} !(out_i7 < $arrSizeHeap[in_r5] && out_i7 >= 0);
    call out_$fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$fakelocal_6, out_$r18, out_$r21, out_$r16, out_$r23, out_$c2, out_$i1, out_z4, out_i6, out_$r15, out_$r19, out_$r14, out_$r22, out_z5, out_$fakelocal_5, out_$l4, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_1, out_i7, out_$l5, out_z0, out_$c3, out_$r17, out_$r20, out_$fakelocal_2 := in_$return, in_$exception, in_$fakelocal_6, in_$r18, in_$r21, in_$r16, in_$r23, in_$c2, in_$i1, in_z4, in_i6, in_$r15, in_$r19, in_$r14, in_$r22, in_z5, in_$fakelocal_5, in_$l4, in_$fakelocal_3, in_$fakelocal_4, in_$fakelocal_1, in_i7, in_$l5, in_z0, in_$c3, in_$r17, in_$r20, in_$fakelocal_2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon51_Then:
    assume {:partition} out_i7 < $arrSizeHeap[in_r4] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 89, -1, -1, -1} true;
    goto anon51_Then, anon51_Else;

  anon51_Else:
    assume {:partition} !(out_i7 < $arrSizeHeap[in_r4] && out_i7 >= 0);
    call out_$fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$fakelocal_6, out_$r18, out_$r21, out_$r16, out_$r23, out_$c2, out_$i1, out_z4, out_i6, out_$r15, out_$r19, out_$r14, out_$r22, out_z5, out_$fakelocal_5, out_$l4, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_1, out_i7, out_$l5, out_z0, out_$c3, out_$r17, out_$r20, out_$fakelocal_2 := in_$return, in_$exception, in_$fakelocal_6, in_$r18, in_$r21, in_$r16, in_$r23, in_$c2, in_$i1, in_z4, in_i6, in_$r15, in_$r19, in_$r14, in_$r22, in_z5, in_$fakelocal_5, in_$l4, in_$fakelocal_3, in_$fakelocal_4, in_$fakelocal_1, in_i7, in_$l5, in_z0, in_$c3, in_$r17, in_$r20, in_$fakelocal_2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon50_Else:
    assume {:partition} out_$i1 != 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 88, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon33_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$fakelocal_6, out_$r18, out_$r21, out_$r16, out_$r23, out_$c2, out_$i1, out_z4, out_i6, out_$r15, out_$r19, out_$r14, out_$r22, out_z5, out_$fakelocal_5, out_$l4, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_1, out_i7, out_$l5, out_z0, out_$c3, out_$r17, out_$r20, out_$fakelocal_2 := org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9(out_$return, out_$exception, out_$fakelocal_6, out_$r18, out_$r21, out_$r16, out_$r23, out_$c2, out_$i1, out_z4, out_i6, out_$r15, in_r5, out_$r19, out_$r14, out_$r22, out_z5, out_$fakelocal_5, out_$l4, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_1, out_i7, out_$l5, in_r4, out_z0, out_$c3, out_$r17, out_$r20, out_$fakelocal_2);
    return;

  exit:
    return;
}



procedure org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_6: ref, 
    in_$r18: ref, 
    in_$r21: ref, 
    in_$r16: ref, 
    in_$r23: ref, 
    in_$c2: int, 
    in_$i1: int, 
    in_z4: int, 
    in_i6: int, 
    in_$r15: ref, 
    in_r5: ref, 
    in_$r19: ref, 
    in_$r14: ref, 
    in_$r22: ref, 
    in_z5: int, 
    in_$fakelocal_5: ref, 
    in_$l4: int, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_4: ref, 
    in_$fakelocal_1: ref, 
    in_i7: int, 
    in_$l5: int, 
    in_r4: ref, 
    in_z0: int, 
    in_$c3: int, 
    in_$r17: ref, 
    in_$r20: ref, 
    in_$fakelocal_2: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_6: ref, 
    out_$r18: ref, 
    out_$r21: ref, 
    out_$r16: ref, 
    out_$r23: ref, 
    out_$c2: int, 
    out_$i1: int, 
    out_z4: int, 
    out_i6: int, 
    out_$r15: ref, 
    out_$r19: ref, 
    out_$r14: ref, 
    out_$r22: ref, 
    out_z5: int, 
    out_$fakelocal_5: ref, 
    out_$l4: int, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_1: ref, 
    out_i7: int, 
    out_$l5: int, 
    out_z0: int, 
    out_$c3: int, 
    out_$r17: ref, 
    out_$r20: ref, 
    out_$fakelocal_2: ref);
  modifies $objIndex, $heap;



implementation org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block12(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_3: ref, 
    in_r3: ref, 
    in_$i0: int, 
    in_$c2: int, 
    in_$i1: int, 
    in_$fakelocal_2: ref, 
    in_i4: int, 
    in_r4: ref, 
    in_z0: int, 
    in_$fakelocal_5: ref, 
    in_$c3: int, 
    in_$fakelocal_4: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_3: ref, 
    out_$i0: int, 
    out_$c2: int, 
    out_$i1: int, 
    out_$fakelocal_2: ref, 
    out_i4: int, 
    out_z0: int, 
    out_$fakelocal_5: ref, 
    out_$c3: int, 
    out_$fakelocal_4: ref)
{

  entry:
    out_$return, out_$exception, out_$fakelocal_3, out_$i0, out_$c2, out_$i1, out_$fakelocal_2, out_i4, out_z0, out_$fakelocal_5, out_$c3, out_$fakelocal_4 := in_$return, in_$exception, in_$fakelocal_3, in_$i0, in_$c2, in_$i1, in_$fakelocal_2, in_i4, in_z0, in_$fakelocal_5, in_$c3, in_$fakelocal_4;
    goto block12;

  block12:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 137, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} in_r3 == $null;
    call out_$fakelocal_2 := $new(java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$fakelocal_3, out_$i0, out_$c2, out_$i1, out_$fakelocal_2, out_i4, out_z0, out_$fakelocal_5, out_$c3, out_$fakelocal_4 := in_$return, in_$exception, in_$fakelocal_3, in_$i0, in_$c2, in_$i1, in_$fakelocal_2, in_i4, in_z0, in_$fakelocal_5, in_$c3, in_$fakelocal_4;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  block14:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 137, -1, -1, -1} true;
    out_i4 := out_i4 + 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 137, -1, -1, -1} true;
    goto block14_dummy;

  anon27:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 140, -1, -1, -1} true;
    out_z0 := 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 140, -1, -1, -1} true;
    goto block14;

  block15:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 142, -1, -1, -1} true;
    goto block14;

  anon33_Then:
    assume {:partition} out_i4 >= out_$i1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 138, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  anon15:
    out_$i1 := $arrSizeHeap[in_r4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 138, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon32_Then:
    assume {:partition} in_r4 != $null;
    out_$exception := out_$exception;
    goto anon15;

  anon12:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 138, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} in_r4 == $null;
    call out_$fakelocal_3 := $new(java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$fakelocal_3, out_$i0, out_$c2, out_$i1, out_$fakelocal_2, out_i4, out_z0, out_$fakelocal_5, out_$c3, out_$fakelocal_4 := in_$return, in_$exception, in_$fakelocal_3, in_$i0, in_$c2, in_$i1, in_$fakelocal_2, in_i4, in_z0, in_$fakelocal_5, in_$c3, in_$fakelocal_4;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon31_Else:
    assume {:partition} out_$i0 > out_i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 137, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon9:
    out_$i0 := $arrSizeHeap[in_r3];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 137, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Then:
    assume {:partition} out_i4 >= out_$i0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 137, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_3, out_$i0, out_$c2, out_$i1, out_$fakelocal_2, out_i4, out_z0, out_$fakelocal_5, out_$c3, out_$fakelocal_4 := in_$return, in_$exception, in_$fakelocal_3, in_$i0, in_$c2, in_$i1, in_$fakelocal_2, in_i4, in_z0, in_$fakelocal_5, in_$c3, in_$fakelocal_4;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon30_Then:
    assume {:partition} in_r3 != $null;
    out_$exception := out_$exception;
    goto anon9;

  anon36_Then:
    assume {:partition} out_$c3 == out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 139, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  anon24:
    out_$c2 := $intArrHeap[in_r4][out_i4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 139, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon35_Then:
    assume {:partition} out_i4 < $arrSizeHeap[in_r4] && out_i4 >= 0;
    out_$exception := out_$exception;
    goto anon24;

  anon21:
    out_$c3 := $intArrHeap[in_r3][out_i4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 139, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} !(out_i4 < $arrSizeHeap[in_r4] && out_i4 >= 0);
    call out_$fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$fakelocal_3, out_$i0, out_$c2, out_$i1, out_$fakelocal_2, out_i4, out_z0, out_$fakelocal_5, out_$c3, out_$fakelocal_4 := in_$return, in_$exception, in_$fakelocal_3, in_$i0, in_$c2, in_$i1, in_$fakelocal_2, in_i4, in_z0, in_$fakelocal_5, in_$c3, in_$fakelocal_4;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon34_Then:
    assume {:partition} out_i4 < $arrSizeHeap[in_r3] && out_i4 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 139, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} !(out_i4 < $arrSizeHeap[in_r3] && out_i4 >= 0);
    call out_$fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$fakelocal_3, out_$i0, out_$c2, out_$i1, out_$fakelocal_2, out_i4, out_z0, out_$fakelocal_5, out_$c3, out_$fakelocal_4 := in_$return, in_$exception, in_$fakelocal_3, in_$i0, in_$c2, in_$i1, in_$fakelocal_2, in_i4, in_z0, in_$fakelocal_5, in_$c3, in_$fakelocal_4;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon33_Else:
    assume {:partition} out_$i1 > out_i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 138, -1, -1, -1} {:comment "elseblock"} true;
    goto anon18;

  anon36_Else:
    assume {:partition} out_$c3 != out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 139, -1, -1, -1} {:comment "elseblock"} true;
    goto anon27;

  block14_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$fakelocal_3, out_$i0, out_$c2, out_$i1, out_$fakelocal_2, out_i4, out_z0, out_$fakelocal_5, out_$c3, out_$fakelocal_4 := org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block12(out_$return, out_$exception, out_$fakelocal_3, in_r3, out_$i0, out_$c2, out_$i1, out_$fakelocal_2, out_i4, in_r4, out_z0, out_$fakelocal_5, out_$c3, out_$fakelocal_4);
    return;

  exit:
    return;
}



procedure org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block12(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_3: ref, 
    in_r3: ref, 
    in_$i0: int, 
    in_$c2: int, 
    in_$i1: int, 
    in_$fakelocal_2: ref, 
    in_i4: int, 
    in_r4: ref, 
    in_z0: int, 
    in_$fakelocal_5: ref, 
    in_$c3: int, 
    in_$fakelocal_4: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_3: ref, 
    out_$i0: int, 
    out_$c2: int, 
    out_$i1: int, 
    out_$fakelocal_2: ref, 
    out_i4: int, 
    out_z0: int, 
    out_$fakelocal_5: ref, 
    out_$c3: int, 
    out_$fakelocal_4: ref);
  modifies $objIndex, $heap;



implementation java.lang.String$toCharArray$_loop_block19(in_$return: ref, 
    in_$exception: ref, 
    in_i3: int, 
    in_r1: ref, 
    in_$i1: int, 
    in_$r3: ref, 
    in_r0: ref, 
    in_$c2: int, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_4: ref, 
    in_$fakelocal_2: ref, 
    in_$r4: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_i3: int, 
    out_$i1: int, 
    out_$r3: ref, 
    out_$c2: int, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_2: ref, 
    out_$r4: ref)
{

  entry:
    out_$return, out_$exception, out_i3, out_$i1, out_$r3, out_$c2, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_2, out_$r4 := in_$return, in_$exception, in_i3, in_$i1, in_$r3, in_$c2, in_$fakelocal_3, in_$fakelocal_4, in_$fakelocal_2, in_$r4;
    goto block19;

  block19:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    out_$r3 := $heap[in_r0, char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} out_$r3 == $null;
    call out_$fakelocal_2 := $new(java.lang.NullPointerException);
    out_$return := $null;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_i3, out_$i1, out_$r3, out_$c2, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_2, out_$r4 := in_$return, in_$exception, in_i3, in_$i1, in_$r3, in_$c2, in_$fakelocal_3, in_$fakelocal_4, in_$fakelocal_2, in_$r4;
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
    out_$return, out_$exception, out_i3, out_$i1, out_$r3, out_$c2, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_2, out_$r4 := in_$return, in_$exception, in_i3, in_$i1, in_$r3, in_$c2, in_$fakelocal_3, in_$fakelocal_4, in_$fakelocal_2, in_$r4;
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
    out_$return, out_$exception, out_i3, out_$i1, out_$r3, out_$c2, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_2, out_$r4 := in_$return, in_$exception, in_i3, in_$i1, in_$r3, in_$c2, in_$fakelocal_3, in_$fakelocal_4, in_$fakelocal_2, in_$r4;
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
    out_$return, out_$exception, out_i3, out_$i1, out_$r3, out_$c2, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_2, out_$r4 := in_$return, in_$exception, in_i3, in_$i1, in_$r3, in_$c2, in_$fakelocal_3, in_$fakelocal_4, in_$fakelocal_2, in_$r4;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon17_Then:
    assume {:partition} out_$r3 != $null;
    out_$exception := out_$exception;
    goto anon6;

  anon15_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_i3, out_$i1, out_$r3, out_$c2, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_2, out_$r4 := java.lang.String$toCharArray$_loop_block19(out_$return, out_$exception, out_i3, in_r1, out_$i1, out_$r3, in_r0, out_$c2, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_2, out_$r4);
    return;

  exit:
    return;
}



procedure java.lang.String$toCharArray$_loop_block19(in_$return: ref, 
    in_$exception: ref, 
    in_i3: int, 
    in_r1: ref, 
    in_$i1: int, 
    in_$r3: ref, 
    in_r0: ref, 
    in_$c2: int, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_4: ref, 
    in_$fakelocal_2: ref, 
    in_$r4: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_i3: int, 
    out_$i1: int, 
    out_$r3: ref, 
    out_$c2: int, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_2: ref, 
    out_$r4: ref);
  modifies $intArrHeap, $objIndex, $heap;


