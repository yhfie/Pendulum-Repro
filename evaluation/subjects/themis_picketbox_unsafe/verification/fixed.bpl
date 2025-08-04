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

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.Object: javaType extends complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.String: javaType extends unique java.lang.Object complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.io.Serializable: javaType extends complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.Throwable: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.Exception: javaType extends unique java.lang.Throwable complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.RuntimeException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.IndexOutOfBoundsException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.ArrayIndexOutOfBoundsException: javaType extends unique java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.NullPointerException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique java.lang.Boolean: javaType extends unique java.lang.Object complete;

const {:sourceloc "Safe.java", -1, -1, -1, -1} unique sg.edu.nus.comp.tsunami.safe.Safe: javaType extends unique java.lang.Object complete;

const {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} unique UsernamePasswordLoginModule: javaType extends unique java.lang.Object complete;

const {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} unique java.lang.Comparable: javaType extends complete;

const {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} unique java.lang.CharSequence: javaType extends complete;

const {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} unique java.lang.ClassCastException: javaType extends unique java.lang.RuntimeException complete;

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

var char$lp$$rp$$java.lang.String$chars259: Field ref;

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
  ensures $obj != $null;
  ensures !old($heap[$obj, $alloc]);
  ensures $objIndex == old($objIndex) + 1;
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];
  ensures $obj == $intToRef(old($objIndex));



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $heap[$other, $alloc] <==> true;
  ensures $other != $null;
  ensures $heap[$other, $type] == $heap[$this, $type];



procedure int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure java.lang.String$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



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



procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
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



procedure sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);



procedure UsernamePasswordLoginModule$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure UsernamePasswordLoginModule$validatePassword_unsafe$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;
free requires $stringSizeHeap[$in_parameter__0] == 16;free requires $stringSizeHeap[$in_parameter__1] == 16;


procedure UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



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
    goto block1;

  block1:
    return;
}



implementation java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $c1: int;
  var $r1: ref;
  var i0: int;
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
    $r1 := $heap[r0, char$lp$$rp$$java.lang.String$chars259];
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
    goto block2;

  block2:
    return;
}



implementation java.lang.String$toCharArray$($this: ref) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var $r3: ref;
  var $i1: int;
  var i3: int;
  var $r4: ref;
  var $c2: int;
  var r0: ref;
  var $i0: int;
  var $fakelocal_3: ref;
  var $fakelocal_1: ref;
  var $r2: ref;
  var $fakelocal_4: ref;
  var r1: ref;
  var $fakelocal_2: ref;

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
    $r2 := $heap[r0, char$lp$$rp$$java.lang.String$chars259];
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
    goto block3;

  block3:
    call $return, $exception, $r3, $i1, i3, $r4, $c2, $fakelocal_3, $fakelocal_4, $fakelocal_2 := java.lang.String$toCharArray$_loop_block3($return, $exception, $r3, $i1, i3, $r4, $c2, r0, $fakelocal_3, $fakelocal_4, r1, $fakelocal_2);
    goto block3_last;

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
    $r4 := $heap[r0, char$lp$$rp$$java.lang.String$chars259];
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
    goto block4;

  block4:
    assert {:sourceloc "String.java", 15, -1, -1, -1} true;
    $return := r1;
    goto block5;

  block5:
    return;

  anon15_dummy:
    assume false;
    return;

  block3_last:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    $r3 := $heap[r0, char$lp$$rp$$java.lang.String$chars259];
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
    goto block6;

  block6:
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
    goto block7;

  block7:
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
    goto block8;

  block8:
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
    goto block9;

  block9:
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
    goto block10;

  block10:
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 1;
    goto block11;

  block11:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    $return := z1;
    goto block12;

  block12:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block11;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block10;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
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
    assert {:sourceloc "Safe.java", 12, -1, -1, -1} true;
    $z2 := $bitAnd(z0, z1);
    assert {:sourceloc "Safe.java", 12, -1, -1, -1} true;
    $return := $z2;
    goto block13;

  block13:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $z2: int;
  var z1: int;
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
    assert {:sourceloc "Safe.java", 16, -1, -1, -1} true;
    $z2 := $bitOr(z0, z1);
    assert {:sourceloc "Safe.java", 16, -1, -1, -1} true;
    $return := $z2;
    goto block14;

  block14:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var z0: int;
  var $b3: int;
  var l0: int;
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
    goto block15;

  block15:
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
    goto block16;

  block16:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    $return := z0;
    goto block17;

  block17:
    return;

  anon8_Then:
    assume {:partition} $b3 > 0;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  anon7_Then:
    assume {:partition} $b2 <= 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
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
    goto block18;

  block18:
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
    goto block19;

  block19:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    $return := z0;
    goto block20;

  block20:
    return;

  anon8_Then:
    assume {:partition} $b3 < 0;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block19;

  anon7_Then:
    assume {:partition} $b2 >= 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block18;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b3: int;
  var l0: int;
  var z0: int;
  var l1: int;
  var $b2: int;

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
    goto block21;

  block21:
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
    goto block22;

  block22:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    $return := z0;
    goto block23;

  block23:
    return;

  anon8_Then:
    assume {:partition} $b3 >= 0;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;

  anon7_Then:
    assume {:partition} $b2 < 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block21;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l0: int;
  var z0: int;
  var $b2: int;
  var l1: int;
  var $b3: int;

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
    goto block24;

  block24:
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
    goto block25;

  block25:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    $return := z0;
    goto block26;

  block26:
    return;

  anon8_Then:
    assume {:partition} $b3 <= 0;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block25;

  anon7_Then:
    assume {:partition} $b2 > 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block24;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l0: int;
  var $b3: int;
  var l1: int;
  var z0: int;
  var $b2: int;

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
    goto block27;

  block27:
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
    goto block28;

  block28:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    $return := z0;
    goto block29;

  block29:
    return;

  anon8_Then:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block28;

  anon7_Then:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto block27;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var l0: int;
  var z0: int;
  var l1: int;
  var $b3: int;

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
    goto block30;

  block30:
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
    goto block31;

  block31:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    $return := z0;
    goto block32;

  block32:
    return;

  anon8_Then:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto block31;

  anon7_Then:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block30;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b0: int;
  var $b1: int;
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
    goto block33;

  block33:
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
    goto block34;

  block34:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    $return := z0;
    goto block35;

  block35:
    return;

  anon8_Then:
    assume {:partition} $b1 > 0;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "thenblock"} true;
    goto block34;

  anon7_Then:
    assume {:partition} $b0 <= 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "thenblock"} true;
    goto block33;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b1: int;
  var d0: int;
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
    goto block36;

  block36:
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
    goto block37;

  block37:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    $return := z0;
    goto block38;

  block38:
    return;

  anon8_Then:
    assume {:partition} $b1 < 0;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block37;

  anon7_Then:
    assume {:partition} $b0 >= 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block36;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d1: int;
  var d0: int;
  var $b1: int;
  var $b0: int;
  var z0: int;

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
    goto block39;

  block39:
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
    goto block40;

  block40:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    $return := z0;
    goto block41;

  block41:
    return;

  anon8_Then:
    assume {:partition} $b1 >= 0;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block40;

  anon7_Then:
    assume {:partition} $b0 < 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block39;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var $b1: int;
  var z0: int;
  var $b0: int;
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
    goto block42;

  block42:
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
    goto block43;

  block43:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    $return := z0;
    goto block44;

  block44:
    return;

  anon8_Then:
    assume {:partition} $b1 <= 0;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "thenblock"} true;
    goto block43;

  anon7_Then:
    assume {:partition} $b0 > 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block42;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
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
    goto block45;

  block45:
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
    goto block46;

  block46:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    $return := z0;
    goto block47;

  block47:
    return;

  anon8_Then:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "thenblock"} true;
    goto block46;

  anon7_Then:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "thenblock"} true;
    goto block45;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d1: int;
  var $b1: int;
  var $b0: int;
  var d0: int;
  var z0: int;

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
    goto block48;

  block48:
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
    goto block49;

  block49:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    $return := z0;
    goto block50;

  block50:
    return;

  anon8_Then:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "thenblock"} true;
    goto block49;

  anon7_Then:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "thenblock"} true;
    goto block48;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r1: ref;
  var r0: ref;
  var z0: int;

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
    goto block51;

  block51:
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 0;
    goto block52;

  block52:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    $return := z0;
    goto block53;

  block53:
    return;

  anon8_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block52;

  anon7_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block51;
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
    assume $heap[$in_parameter__0, $type] <: java.lang.Object;
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
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
    goto block54;

  block54:
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 0;
    goto block55;

  block55:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    $return := z0;
    goto block56;

  block56:
    return;

  anon8_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block55;

  anon7_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block54;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var r1: ref;
  var z0: int;
  var r2: ref;
  var r0: ref;

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
    goto block57;

  block57:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r1;
    goto block58;

  block58:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    $return := r2;
    goto block59;

  block59:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block58;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block57;
}



implementation UsernamePasswordLoginModule$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} $heap[$this, $type] <: UsernamePasswordLoginModule;
    assume {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 63, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 63, -1, -1, -1} true;
    goto block60;

  block60:
    return;
}



implementation UsernamePasswordLoginModule$validatePassword_unsafe$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var z1: int;
  var r0: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1, $type] <: java.lang.String;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 86, -1, -1, -1} true;
    goto anon6_Then, anon6_Else;

  anon6_Else:
    assume {:partition} r0 != $null;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 86, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 87, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} r1 == $null;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 87, -1, -1, -1} {:comment "elseblock"} true;
    goto block61;

  block61:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 87, -1, -1, -1} true;
    $return := 0;
    goto block63;

  block63:
    return;

  anon7_Then:
    assume {:partition} r1 != $null;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 87, -1, -1, -1} {:comment "thenblock"} true;
    goto block62;

  block62:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 93, -1, -1, -1} true;
    call z1, $exception := UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String(r0, r1);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 94, -1, -1, -1} true;
    $return := z1;
    goto block63;

  anon6_Then:
    assume {:partition} r0 == $null;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 86, -1, -1, -1} {:comment "thenblock"} true;
    goto block61;
}



implementation UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $r5: ref;
  var $fakelocal_1: ref;
  var $r14: ref;
  var $r11: ref;
  var $r8: ref;
  var $r7: ref;
  var $r20: ref;
  var $fakelocal_8: ref;
  var r3: ref;
  var $fakelocal_5: ref;
  var $r16: ref;
  var $r19: ref;
  var $i4: int;
  var $r9: ref;
  var $fakelocal_7: ref;
  var $r12: ref;
  var $l7: int;
  var $fakelocal_3: ref;
  var z0: int;
  var $z1: int;
  var $i2: int;
  var z3: int;
  var $l6: int;
  var r2: ref;
  var r0: ref;
  var $fakelocal_4: ref;
  var $c3: int;
  var $r18: ref;
  var $r15: ref;
  var r1: ref;
  var $i1: int;
  var $r21: ref;
  var z4: int;
  var i10: int;
  var $r4: ref;
  var $fakelocal_9: ref;
  var $fakelocal_2: ref;
  var $fakelocal_6: ref;
  var i8: int;
  var $i0: int;
  var $r13: ref;
  var $z2: int;
  var $r10: ref;
  var $c5: int;
  var $fakelocal_0: ref;
  var $r6: ref;
  var $r17: ref;
  var i9: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1, $type] <: java.lang.String;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 121, -1, -1, -1} true;
    z3 := 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 122, -1, -1, -1} true;
    z4 := 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 123, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 123, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 130, -1, -1, -1} true;
    $return := 1;
    goto block68;

  block68:
    return;

  anon40_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 123, -1, -1, -1} {:comment "thenblock"} true;
    goto block64;

  block64:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    i8 := $stringSizeHeap[r0];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    $i0 := $stringSizeHeap[r1];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto anon41_Then, anon41_Else;

  anon41_Else:
    assume {:partition} i8 == $i0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 126, -1, -1, -1} true;
    call r2, $exception := java.lang.String$toCharArray$(r0);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 127, -1, -1, -1} true;
    call r3, $exception := java.lang.String$toCharArray$(r1);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 128, -1, -1, -1} true;
    i9 := 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 129, -1, -1, -1} true;
    i10 := 0;
    goto block66;

  block66:
    call $return, $exception, $fakelocal_1, $r14, $r20, $fakelocal_5, $r16, $r19, $i4, $r12, $l7, $fakelocal_3, z0, $i2, z3, $l6, $fakelocal_4, $c3, $r18, $r15, $i1, $r21, z4, i10, $fakelocal_2, i8, $r13, $c5, $fakelocal_0, $r17, i9 := UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block66($return, $exception, $fakelocal_1, $r14, $r20, r3, $fakelocal_5, $r16, $r19, $i4, $r12, $l7, $fakelocal_3, z0, $i2, z3, $l6, r2, $fakelocal_4, $c3, $r18, $r15, $i1, $r21, z4, i10, $fakelocal_2, i8, $r13, $c5, $fakelocal_0, $r17, i9);
    goto block66_last;

  anon42_Else:
    assume {:partition} $i1 != 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 130, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 133, -1, -1, -1} true;
    $i2 := i9;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 133, -1, -1, -1} true;
    i9 := i9 + 1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 133, -1, -1, -1} true;
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} !($i2 < $arrSizeHeap[r2] && $i2 >= 0);
    call $fakelocal_0 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon43_Then:
    assume {:partition} $i2 < $arrSizeHeap[r2] && $i2 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    $c3 := $intArrHeap[r2][$i2];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 133, -1, -1, -1} true;
    $l7 := $c3;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 133, -1, -1, -1} true;
    $i4 := i10;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 133, -1, -1, -1} true;
    i10 := i10 + 1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 133, -1, -1, -1} true;
    goto anon44_Then, anon44_Else;

  anon44_Else:
    assume {:partition} !($i4 < $arrSizeHeap[r3] && $i4 >= 0);
    call $fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon44_Then:
    assume {:partition} $i4 < $arrSizeHeap[r3] && $i4 >= 0;
    $exception := $exception;
    goto anon15;

  anon15:
    $c5 := $intArrHeap[r3][$i4];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 133, -1, -1, -1} true;
    $l6 := $c5;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 133, -1, -1, -1} true;
    call z0, $exception := sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($l7, $l6);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 134, -1, -1, -1} true;
    call $r12, $exception := java.lang.Boolean$valueOf$boolean(z3);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 134, -1, -1, -1} true;
    call $r13, $exception := java.lang.Boolean$valueOf$boolean(0);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 134, -1, -1, -1} true;
    call $r14, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z4, $r12, $r13);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 134, -1, -1, -1} true;
    call $r15, $exception := java.lang.Boolean$valueOf$boolean(z3);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 134, -1, -1, -1} true;
    call $r16, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r14, $r15);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 134, -1, -1, -1} true;
    goto anon45_Then, anon45_Else;

  anon45_Else:
    assume {:partition} !($heap[$r16, $type] <: java.lang.Boolean);
    call $fakelocal_2 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon45_Then:
    assume {:partition} $heap[$r16, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon18;

  anon18:
    $r17 := $r16;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 134, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} $r17 == $null;
    call $fakelocal_3 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon46_Then:
    assume {:partition} $r17 != $null;
    $exception := $exception;
    goto anon21;

  anon21:
    call z3, $exception := java.lang.Boolean$booleanValue$($r17);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 135, -1, -1, -1} true;
    call $r18, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 135, -1, -1, -1} true;
    call $r19, $exception := java.lang.Boolean$valueOf$boolean(z4);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 135, -1, -1, -1} true;
    call $r20, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r18, $r19);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 135, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} !($heap[$r20, $type] <: java.lang.Boolean);
    call $fakelocal_4 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon47_Then:
    assume {:partition} $heap[$r20, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon24;

  anon24:
    $r21 := $r20;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 135, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} $r21 == $null;
    call $fakelocal_5 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon48_Then:
    assume {:partition} $r21 != $null;
    $exception := $exception;
    goto anon27;

  anon27:
    call z4, $exception := java.lang.Boolean$booleanValue$($r21);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 137, -1, -1, -1} true;
    goto anon27_dummy;

  anon42_Then:
    assume {:partition} $i1 == 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 130, -1, -1, -1} {:comment "thenblock"} true;
    goto block67;

  block67:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 140, -1, -1, -1} true;
    call $r8, $exception := java.lang.Boolean$valueOf$boolean(z3);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 140, -1, -1, -1} true;
    call $r9, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 140, -1, -1, -1} true;
    call $r10, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z4, $r8, $r9);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 140, -1, -1, -1} true;
    goto anon49_Then, anon49_Else;

  anon49_Else:
    assume {:partition} !($heap[$r10, $type] <: java.lang.Boolean);
    call $fakelocal_6 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon49_Then:
    assume {:partition} $heap[$r10, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon30;

  anon30:
    $r11 := $r10;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 140, -1, -1, -1} true;
    goto anon50_Then, anon50_Else;

  anon50_Else:
    assume {:partition} $r11 == $null;
    call $fakelocal_7 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_7;
    return;

  anon50_Then:
    assume {:partition} $r11 != $null;
    $exception := $exception;
    goto anon33;

  anon33:
    call $z2, $exception := java.lang.Boolean$booleanValue$($r11);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 140, -1, -1, -1} true;
    $return := $z2;
    goto block68;

  anon41_Then:
    assume {:partition} i8 != $i0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} {:comment "thenblock"} true;
    goto block65;

  block65:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 142, -1, -1, -1} true;
    call $r4, $exception := java.lang.Boolean$valueOf$boolean(z3);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 142, -1, -1, -1} true;
    call $r5, $exception := java.lang.Boolean$valueOf$boolean(0);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 142, -1, -1, -1} true;
    call $r6, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z4, $r4, $r5);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 142, -1, -1, -1} true;
    goto anon51_Then, anon51_Else;

  anon51_Else:
    assume {:partition} !($heap[$r6, $type] <: java.lang.Boolean);
    call $fakelocal_8 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_8;
    return;

  anon51_Then:
    assume {:partition} $heap[$r6, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon36;

  anon36:
    $r7 := $r6;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 142, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} $r7 == $null;
    call $fakelocal_9 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_9;
    return;

  anon52_Then:
    assume {:partition} $r7 != $null;
    $exception := $exception;
    goto anon39;

  anon39:
    call $z1, $exception := java.lang.Boolean$booleanValue$($r7);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 142, -1, -1, -1} true;
    $return := $z1;
    goto block68;

  anon27_dummy:
    assume false;
    return;

  block66_last:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 130, -1, -1, -1} true;
    $i1 := i8;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 130, -1, -1, -1} true;
    i8 := i8 + -1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 130, -1, -1, -1} true;
    goto anon42_Then, anon42_Else;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation java.lang.String$toCharArray$_loop_block3(in_$return: ref, 
    in_$exception: ref, 
    in_$r3: ref, 
    in_$i1: int, 
    in_i3: int, 
    in_$r4: ref, 
    in_$c2: int, 
    in_r0: ref, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_4: ref, 
    in_r1: ref, 
    in_$fakelocal_2: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$r3: ref, 
    out_$i1: int, 
    out_i3: int, 
    out_$r4: ref, 
    out_$c2: int, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_2: ref)
{

  entry:
    out_$return, out_$exception, out_$r3, out_$i1, out_i3, out_$r4, out_$c2, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_2 := in_$return, in_$exception, in_$r3, in_$i1, in_i3, in_$r4, in_$c2, in_$fakelocal_3, in_$fakelocal_4, in_$fakelocal_2;
    goto block3;

  block3:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    out_$r3 := $heap[in_r0, char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} out_$r3 == $null;
    call out_$fakelocal_2 := $new(java.lang.NullPointerException);
    out_$return := $null;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$r3, out_$i1, out_i3, out_$r4, out_$c2, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_2 := in_$return, in_$exception, in_$r3, in_$i1, in_i3, in_$r4, in_$c2, in_$fakelocal_3, in_$fakelocal_4, in_$fakelocal_2;
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
    out_$return, out_$exception, out_$r3, out_$i1, out_i3, out_$r4, out_$c2, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_2 := in_$return, in_$exception, in_$r3, in_$i1, in_i3, in_$r4, in_$c2, in_$fakelocal_3, in_$fakelocal_4, in_$fakelocal_2;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon19_Then:
    assume {:partition} out_i3 < $arrSizeHeap[out_$r4] && out_i3 >= 0;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    out_$r4 := $heap[in_r0, char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(out_i3 < $arrSizeHeap[out_$r4] && out_i3 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$r3, out_$i1, out_i3, out_$r4, out_$c2, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_2 := in_$return, in_$exception, in_$r3, in_$i1, in_i3, in_$r4, in_$c2, in_$fakelocal_3, in_$fakelocal_4, in_$fakelocal_2;
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
    out_$return, out_$exception, out_$r3, out_$i1, out_i3, out_$r4, out_$c2, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_2 := in_$return, in_$exception, in_$r3, in_$i1, in_i3, in_$r4, in_$c2, in_$fakelocal_3, in_$fakelocal_4, in_$fakelocal_2;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon17_Then:
    assume {:partition} out_$r3 != $null;
    out_$exception := out_$exception;
    goto anon6;

  anon15_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$r3, out_$i1, out_i3, out_$r4, out_$c2, out_$fakelocal_3, out_$fakelocal_4, out_$fakelocal_2 := java.lang.String$toCharArray$_loop_block3(out_$return, out_$exception, out_$r3, out_$i1, out_i3, out_$r4, out_$c2, in_r0, out_$fakelocal_3, out_$fakelocal_4, in_r1, out_$fakelocal_2);
    return;

  exit:
    return;
}



procedure java.lang.String$toCharArray$_loop_block3(in_$return: ref, 
    in_$exception: ref, 
    in_$r3: ref, 
    in_$i1: int, 
    in_i3: int, 
    in_$r4: ref, 
    in_$c2: int, 
    in_r0: ref, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_4: ref, 
    in_r1: ref, 
    in_$fakelocal_2: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$r3: ref, 
    out_$i1: int, 
    out_i3: int, 
    out_$r4: ref, 
    out_$c2: int, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_2: ref);
  modifies $intArrHeap, $objIndex, $heap;



implementation UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block66(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_1: ref, 
    in_$r14: ref, 
    in_$r20: ref, 
    in_r3: ref, 
    in_$fakelocal_5: ref, 
    in_$r16: ref, 
    in_$r19: ref, 
    in_$i4: int, 
    in_$r12: ref, 
    in_$l7: int, 
    in_$fakelocal_3: ref, 
    in_z0: int, 
    in_$i2: int, 
    in_z3: int, 
    in_$l6: int, 
    in_r2: ref, 
    in_$fakelocal_4: ref, 
    in_$c3: int, 
    in_$r18: ref, 
    in_$r15: ref, 
    in_$i1: int, 
    in_$r21: ref, 
    in_z4: int, 
    in_i10: int, 
    in_$fakelocal_2: ref, 
    in_i8: int, 
    in_$r13: ref, 
    in_$c5: int, 
    in_$fakelocal_0: ref, 
    in_$r17: ref, 
    in_i9: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_1: ref, 
    out_$r14: ref, 
    out_$r20: ref, 
    out_$fakelocal_5: ref, 
    out_$r16: ref, 
    out_$r19: ref, 
    out_$i4: int, 
    out_$r12: ref, 
    out_$l7: int, 
    out_$fakelocal_3: ref, 
    out_z0: int, 
    out_$i2: int, 
    out_z3: int, 
    out_$l6: int, 
    out_$fakelocal_4: ref, 
    out_$c3: int, 
    out_$r18: ref, 
    out_$r15: ref, 
    out_$i1: int, 
    out_$r21: ref, 
    out_z4: int, 
    out_i10: int, 
    out_$fakelocal_2: ref, 
    out_i8: int, 
    out_$r13: ref, 
    out_$c5: int, 
    out_$fakelocal_0: ref, 
    out_$r17: ref, 
    out_i9: int)
{

  entry:
    out_$return, out_$exception, out_$fakelocal_1, out_$r14, out_$r20, out_$fakelocal_5, out_$r16, out_$r19, out_$i4, out_$r12, out_$l7, out_$fakelocal_3, out_z0, out_$i2, out_z3, out_$l6, out_$fakelocal_4, out_$c3, out_$r18, out_$r15, out_$i1, out_$r21, out_z4, out_i10, out_$fakelocal_2, out_i8, out_$r13, out_$c5, out_$fakelocal_0, out_$r17, out_i9 := in_$return, in_$exception, in_$fakelocal_1, in_$r14, in_$r20, in_$fakelocal_5, in_$r16, in_$r19, in_$i4, in_$r12, in_$l7, in_$fakelocal_3, in_z0, in_$i2, in_z3, in_$l6, in_$fakelocal_4, in_$c3, in_$r18, in_$r15, in_$i1, in_$r21, in_z4, in_i10, in_$fakelocal_2, in_i8, in_$r13, in_$c5, in_$fakelocal_0, in_$r17, in_i9;
    goto block66;

  block66:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 130, -1, -1, -1} true;
    out_$i1 := out_i8;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 130, -1, -1, -1} true;
    out_i8 := out_i8 + -1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 130, -1, -1, -1} true;
    goto anon42_Then, anon42_Else;

  anon42_Then:
    assume {:partition} out_$i1 == 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 130, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_1, out_$r14, out_$r20, out_$fakelocal_5, out_$r16, out_$r19, out_$i4, out_$r12, out_$l7, out_$fakelocal_3, out_z0, out_$i2, out_z3, out_$l6, out_$fakelocal_4, out_$c3, out_$r18, out_$r15, out_$i1, out_$r21, out_z4, out_i10, out_$fakelocal_2, out_i8, out_$r13, out_$c5, out_$fakelocal_0, out_$r17, out_i9 := in_$return, in_$exception, in_$fakelocal_1, in_$r14, in_$r20, in_$fakelocal_5, in_$r16, in_$r19, in_$i4, in_$r12, in_$l7, in_$fakelocal_3, in_z0, in_$i2, in_z3, in_$l6, in_$fakelocal_4, in_$c3, in_$r18, in_$r15, in_$i1, in_$r21, in_z4, in_i10, in_$fakelocal_2, in_i8, in_$r13, in_$c5, in_$fakelocal_0, in_$r17, in_i9;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon27:
    call out_z4, out_$exception := java.lang.Boolean$booleanValue$(out_$r21);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 137, -1, -1, -1} true;
    goto anon27_dummy;

  anon48_Then:
    assume {:partition} out_$r21 != $null;
    out_$exception := out_$exception;
    goto anon27;

  anon24:
    out_$r21 := out_$r20;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 135, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} out_$r21 == $null;
    call out_$fakelocal_5 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$fakelocal_1, out_$r14, out_$r20, out_$fakelocal_5, out_$r16, out_$r19, out_$i4, out_$r12, out_$l7, out_$fakelocal_3, out_z0, out_$i2, out_z3, out_$l6, out_$fakelocal_4, out_$c3, out_$r18, out_$r15, out_$i1, out_$r21, out_z4, out_i10, out_$fakelocal_2, out_i8, out_$r13, out_$c5, out_$fakelocal_0, out_$r17, out_i9 := in_$return, in_$exception, in_$fakelocal_1, in_$r14, in_$r20, in_$fakelocal_5, in_$r16, in_$r19, in_$i4, in_$r12, in_$l7, in_$fakelocal_3, in_z0, in_$i2, in_z3, in_$l6, in_$fakelocal_4, in_$c3, in_$r18, in_$r15, in_$i1, in_$r21, in_z4, in_i10, in_$fakelocal_2, in_i8, in_$r13, in_$c5, in_$fakelocal_0, in_$r17, in_i9;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon47_Then:
    assume {:partition} $heap[out_$r20, $type] <: java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon24;

  anon21:
    call out_z3, out_$exception := java.lang.Boolean$booleanValue$(out_$r17);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 135, -1, -1, -1} true;
    call out_$r18, out_$exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 135, -1, -1, -1} true;
    call out_$r19, out_$exception := java.lang.Boolean$valueOf$boolean(out_z4);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 135, -1, -1, -1} true;
    call out_$r20, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z0, out_$r18, out_$r19);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 135, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} !($heap[out_$r20, $type] <: java.lang.Boolean);
    call out_$fakelocal_4 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$fakelocal_1, out_$r14, out_$r20, out_$fakelocal_5, out_$r16, out_$r19, out_$i4, out_$r12, out_$l7, out_$fakelocal_3, out_z0, out_$i2, out_z3, out_$l6, out_$fakelocal_4, out_$c3, out_$r18, out_$r15, out_$i1, out_$r21, out_z4, out_i10, out_$fakelocal_2, out_i8, out_$r13, out_$c5, out_$fakelocal_0, out_$r17, out_i9 := in_$return, in_$exception, in_$fakelocal_1, in_$r14, in_$r20, in_$fakelocal_5, in_$r16, in_$r19, in_$i4, in_$r12, in_$l7, in_$fakelocal_3, in_z0, in_$i2, in_z3, in_$l6, in_$fakelocal_4, in_$c3, in_$r18, in_$r15, in_$i1, in_$r21, in_z4, in_i10, in_$fakelocal_2, in_i8, in_$r13, in_$c5, in_$fakelocal_0, in_$r17, in_i9;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon46_Then:
    assume {:partition} out_$r17 != $null;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    out_$r17 := out_$r16;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 134, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} out_$r17 == $null;
    call out_$fakelocal_3 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$fakelocal_1, out_$r14, out_$r20, out_$fakelocal_5, out_$r16, out_$r19, out_$i4, out_$r12, out_$l7, out_$fakelocal_3, out_z0, out_$i2, out_z3, out_$l6, out_$fakelocal_4, out_$c3, out_$r18, out_$r15, out_$i1, out_$r21, out_z4, out_i10, out_$fakelocal_2, out_i8, out_$r13, out_$c5, out_$fakelocal_0, out_$r17, out_i9 := in_$return, in_$exception, in_$fakelocal_1, in_$r14, in_$r20, in_$fakelocal_5, in_$r16, in_$r19, in_$i4, in_$r12, in_$l7, in_$fakelocal_3, in_z0, in_$i2, in_z3, in_$l6, in_$fakelocal_4, in_$c3, in_$r18, in_$r15, in_$i1, in_$r21, in_z4, in_i10, in_$fakelocal_2, in_i8, in_$r13, in_$c5, in_$fakelocal_0, in_$r17, in_i9;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon45_Then:
    assume {:partition} $heap[out_$r16, $type] <: java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    out_$c5 := $intArrHeap[in_r3][out_$i4];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 133, -1, -1, -1} true;
    out_$l6 := out_$c5;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 133, -1, -1, -1} true;
    call out_z0, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long(out_$l7, out_$l6);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 134, -1, -1, -1} true;
    call out_$r12, out_$exception := java.lang.Boolean$valueOf$boolean(out_z3);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 134, -1, -1, -1} true;
    call out_$r13, out_$exception := java.lang.Boolean$valueOf$boolean(0);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 134, -1, -1, -1} true;
    call out_$r14, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z4, out_$r12, out_$r13);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 134, -1, -1, -1} true;
    call out_$r15, out_$exception := java.lang.Boolean$valueOf$boolean(out_z3);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 134, -1, -1, -1} true;
    call out_$r16, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z0, out_$r14, out_$r15);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 134, -1, -1, -1} true;
    goto anon45_Then, anon45_Else;

  anon45_Else:
    assume {:partition} !($heap[out_$r16, $type] <: java.lang.Boolean);
    call out_$fakelocal_2 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$fakelocal_1, out_$r14, out_$r20, out_$fakelocal_5, out_$r16, out_$r19, out_$i4, out_$r12, out_$l7, out_$fakelocal_3, out_z0, out_$i2, out_z3, out_$l6, out_$fakelocal_4, out_$c3, out_$r18, out_$r15, out_$i1, out_$r21, out_z4, out_i10, out_$fakelocal_2, out_i8, out_$r13, out_$c5, out_$fakelocal_0, out_$r17, out_i9 := in_$return, in_$exception, in_$fakelocal_1, in_$r14, in_$r20, in_$fakelocal_5, in_$r16, in_$r19, in_$i4, in_$r12, in_$l7, in_$fakelocal_3, in_z0, in_$i2, in_z3, in_$l6, in_$fakelocal_4, in_$c3, in_$r18, in_$r15, in_$i1, in_$r21, in_z4, in_i10, in_$fakelocal_2, in_i8, in_$r13, in_$c5, in_$fakelocal_0, in_$r17, in_i9;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon44_Then:
    assume {:partition} out_$i4 < $arrSizeHeap[in_r3] && out_$i4 >= 0;
    out_$exception := out_$exception;
    goto anon15;

  anon12:
    out_$c3 := $intArrHeap[in_r2][out_$i2];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 133, -1, -1, -1} true;
    out_$l7 := out_$c3;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 133, -1, -1, -1} true;
    out_$i4 := out_i10;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 133, -1, -1, -1} true;
    out_i10 := out_i10 + 1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 133, -1, -1, -1} true;
    goto anon44_Then, anon44_Else;

  anon44_Else:
    assume {:partition} !(out_$i4 < $arrSizeHeap[in_r3] && out_$i4 >= 0);
    call out_$fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$fakelocal_1, out_$r14, out_$r20, out_$fakelocal_5, out_$r16, out_$r19, out_$i4, out_$r12, out_$l7, out_$fakelocal_3, out_z0, out_$i2, out_z3, out_$l6, out_$fakelocal_4, out_$c3, out_$r18, out_$r15, out_$i1, out_$r21, out_z4, out_i10, out_$fakelocal_2, out_i8, out_$r13, out_$c5, out_$fakelocal_0, out_$r17, out_i9 := in_$return, in_$exception, in_$fakelocal_1, in_$r14, in_$r20, in_$fakelocal_5, in_$r16, in_$r19, in_$i4, in_$r12, in_$l7, in_$fakelocal_3, in_z0, in_$i2, in_z3, in_$l6, in_$fakelocal_4, in_$c3, in_$r18, in_$r15, in_$i1, in_$r21, in_z4, in_i10, in_$fakelocal_2, in_i8, in_$r13, in_$c5, in_$fakelocal_0, in_$r17, in_i9;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon43_Then:
    assume {:partition} out_$i2 < $arrSizeHeap[in_r2] && out_$i2 >= 0;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 133, -1, -1, -1} true;
    out_$i2 := out_i9;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 133, -1, -1, -1} true;
    out_i9 := out_i9 + 1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 133, -1, -1, -1} true;
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} !(out_$i2 < $arrSizeHeap[in_r2] && out_$i2 >= 0);
    call out_$fakelocal_0 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_0;
    out_$return, out_$exception, out_$fakelocal_1, out_$r14, out_$r20, out_$fakelocal_5, out_$r16, out_$r19, out_$i4, out_$r12, out_$l7, out_$fakelocal_3, out_z0, out_$i2, out_z3, out_$l6, out_$fakelocal_4, out_$c3, out_$r18, out_$r15, out_$i1, out_$r21, out_z4, out_i10, out_$fakelocal_2, out_i8, out_$r13, out_$c5, out_$fakelocal_0, out_$r17, out_i9 := in_$return, in_$exception, in_$fakelocal_1, in_$r14, in_$r20, in_$fakelocal_5, in_$r16, in_$r19, in_$i4, in_$r12, in_$l7, in_$fakelocal_3, in_z0, in_$i2, in_z3, in_$l6, in_$fakelocal_4, in_$c3, in_$r18, in_$r15, in_$i1, in_$r21, in_z4, in_i10, in_$fakelocal_2, in_i8, in_$r13, in_$c5, in_$fakelocal_0, in_$r17, in_i9;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon42_Else:
    assume {:partition} out_$i1 != 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 130, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon27_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$fakelocal_1, out_$r14, out_$r20, out_$fakelocal_5, out_$r16, out_$r19, out_$i4, out_$r12, out_$l7, out_$fakelocal_3, out_z0, out_$i2, out_z3, out_$l6, out_$fakelocal_4, out_$c3, out_$r18, out_$r15, out_$i1, out_$r21, out_z4, out_i10, out_$fakelocal_2, out_i8, out_$r13, out_$c5, out_$fakelocal_0, out_$r17, out_i9 := UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block66(out_$return, out_$exception, out_$fakelocal_1, out_$r14, out_$r20, in_r3, out_$fakelocal_5, out_$r16, out_$r19, out_$i4, out_$r12, out_$l7, out_$fakelocal_3, out_z0, out_$i2, out_z3, out_$l6, in_r2, out_$fakelocal_4, out_$c3, out_$r18, out_$r15, out_$i1, out_$r21, out_z4, out_i10, out_$fakelocal_2, out_i8, out_$r13, out_$c5, out_$fakelocal_0, out_$r17, out_i9);
    return;

  exit:
    return;
}



procedure UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block66(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_1: ref, 
    in_$r14: ref, 
    in_$r20: ref, 
    in_r3: ref, 
    in_$fakelocal_5: ref, 
    in_$r16: ref, 
    in_$r19: ref, 
    in_$i4: int, 
    in_$r12: ref, 
    in_$l7: int, 
    in_$fakelocal_3: ref, 
    in_z0: int, 
    in_$i2: int, 
    in_z3: int, 
    in_$l6: int, 
    in_r2: ref, 
    in_$fakelocal_4: ref, 
    in_$c3: int, 
    in_$r18: ref, 
    in_$r15: ref, 
    in_$i1: int, 
    in_$r21: ref, 
    in_z4: int, 
    in_i10: int, 
    in_$fakelocal_2: ref, 
    in_i8: int, 
    in_$r13: ref, 
    in_$c5: int, 
    in_$fakelocal_0: ref, 
    in_$r17: ref, 
    in_i9: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_1: ref, 
    out_$r14: ref, 
    out_$r20: ref, 
    out_$fakelocal_5: ref, 
    out_$r16: ref, 
    out_$r19: ref, 
    out_$i4: int, 
    out_$r12: ref, 
    out_$l7: int, 
    out_$fakelocal_3: ref, 
    out_z0: int, 
    out_$i2: int, 
    out_z3: int, 
    out_$l6: int, 
    out_$fakelocal_4: ref, 
    out_$c3: int, 
    out_$r18: ref, 
    out_$r15: ref, 
    out_$i1: int, 
    out_$r21: ref, 
    out_z4: int, 
    out_i10: int, 
    out_$fakelocal_2: ref, 
    out_i8: int, 
    out_$r13: ref, 
    out_$c5: int, 
    out_$fakelocal_0: ref, 
    out_$r17: ref, 
    out_i9: int);
  modifies $objIndex, $heap;


