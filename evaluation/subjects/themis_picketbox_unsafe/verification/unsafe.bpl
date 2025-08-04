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

const {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} unique UsernamePasswordLoginModule: javaType extends unique java.lang.Object complete;

const {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} unique java.lang.Comparable: javaType extends complete;

const {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} unique java.lang.CharSequence: javaType extends complete;

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
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];
  ensures $obj == $intToRef(old($objIndex));
  ensures $objIndex == old($objIndex) + 1;



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $heap[$other, $type] == $heap[$this, $type];
  ensures $heap[$other, $alloc] <==> true;
  ensures $other != $null;



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
  var $r1: ref;
  var $c1: int;
  var i0: int;
  var $fakelocal_0: ref;
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
  var $i1: int;
  var i3: int;
  var r1: ref;
  var $i0: int;
  var $fakelocal_0: ref;
  var $fakelocal_4: ref;
  var $c2: int;
  var $r3: ref;
  var $fakelocal_2: ref;
  var $r2: ref;
  var $r4: ref;
  var $fakelocal_1: ref;
  var r0: ref;
  var $fakelocal_3: ref;

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
    call $return, $exception, $i1, i3, $fakelocal_4, $c2, $r3, $fakelocal_2, $r4, $fakelocal_3 := java.lang.String$toCharArray$_loop_block3($return, $exception, $i1, i3, r1, $fakelocal_4, $c2, $r3, $fakelocal_2, $r4, r0, $fakelocal_3);
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
    goto block6;

  block6:
    return;
}



implementation java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $r0: ref;
  var $fakelocal_0: ref;
  var z0: int;

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
    assert {:sourceloc "UsernamePasswordLoginModule.java", 59, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 59, -1, -1, -1} true;
    goto block9;

  block9:
    return;
}



implementation UsernamePasswordLoginModule$validatePassword_unsafe$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var z1: int;
  var r1: ref;
  var r0: ref;

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
    assert {:sourceloc "UsernamePasswordLoginModule.java", 82, -1, -1, -1} true;
    goto anon6_Then, anon6_Else;

  anon6_Else:
    assume {:partition} r0 != $null;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 82, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 83, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} r1 == $null;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 83, -1, -1, -1} {:comment "elseblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 83, -1, -1, -1} true;
    $return := 0;
    goto block12;

  block12:
    return;

  anon7_Then:
    assume {:partition} r1 != $null;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 83, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  block11:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 89, -1, -1, -1} true;
    call z1, $exception := UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String(r0, r1);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 90, -1, -1, -1} true;
    $return := z1;
    goto block12;

  anon6_Then:
    assume {:partition} r0 == $null;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 82, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;
}



implementation UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $i0: int;
  var r3: ref;
  var i8: int;
  var $c5: int;
  var $i2: int;
  var r0: ref;
  var $fakelocal_0: ref;
  var r1: ref;
  var $c4: int;
  var $i1: int;
  var i6: int;
  var $fakelocal_1: ref;
  var i7: int;
  var r2: ref;
  var $i3: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    assume $heap[$in_parameter__1, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 117, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 117, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 126, -1, -1, -1} true;
    $return := 1;
    goto block17;

  block17:
    return;

  anon19_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 117, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  block13:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 118, -1, -1, -1} true;
    i6 := $stringSizeHeap[r0];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 119, -1, -1, -1} true;
    $i0 := $stringSizeHeap[r1];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 119, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} i6 == $i0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 119, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 120, -1, -1, -1} true;
    call r2, $exception := java.lang.String$toCharArray$(r0);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 121, -1, -1, -1} true;
    call r3, $exception := java.lang.String$toCharArray$(r1);
    assert {:sourceloc "UsernamePasswordLoginModule.java", 122, -1, -1, -1} true;
    i7 := 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 123, -1, -1, -1} true;
    i8 := 0;
    goto block15;

  block15:
    call $return, $exception, i8, $c5, $i2, $fakelocal_0, $c4, $i1, i6, $fakelocal_1, i7, $i3 := UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15($return, $exception, r3, i8, $c5, $i2, $fakelocal_0, $c4, $i1, i6, $fakelocal_1, i7, r2, $i3);
    goto block15_last;

  anon21_Else:
    assume {:partition} $i1 != 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    $i2 := i7;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    i7 := i7 + 1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} !($i2 < $arrSizeHeap[r2] && $i2 >= 0);
    call $fakelocal_0 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon22_Then:
    assume {:partition} $i2 < $arrSizeHeap[r2] && $i2 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    $c5 := $intArrHeap[r2][$i2];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    $i3 := i8;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    i8 := i8 + 1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;

  anon23_Else:
    assume {:partition} !($i3 < $arrSizeHeap[r3] && $i3 >= 0);
    call $fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon23_Then:
    assume {:partition} $i3 < $arrSizeHeap[r3] && $i3 >= 0;
    $exception := $exception;
    goto anon15;

  anon15:
    $c4 := $intArrHeap[r3][$i3];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto anon24_Then, anon24_Else;

  anon24_Else:
    assume {:partition} $c5 != $c4;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} {:comment "elseblock"} true;
    goto anon18;

  anon18:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 126, -1, -1, -1} true;
    $return := 0;
    goto block17;

  anon24_Then:
    assume {:partition} $c5 == $c4;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} {:comment "thenblock"} true;
    goto anon24_Then_dummy;

  anon21_Then:
    assume {:partition} $i1 == 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  block16:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 128, -1, -1, -1} true;
    $return := 1;
    goto block17;

  anon20_Then:
    assume {:partition} i6 != $i0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 119, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 130, -1, -1, -1} true;
    $return := 0;
    goto block17;

  anon24_Then_dummy:
    assume false;
    return;

  block15_last:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    $i1 := i6;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    i6 := i6 + -1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation java.lang.String$toCharArray$_loop_block3(in_$return: ref, 
    in_$exception: ref, 
    in_$i1: int, 
    in_i3: int, 
    in_r1: ref, 
    in_$fakelocal_4: ref, 
    in_$c2: int, 
    in_$r3: ref, 
    in_$fakelocal_2: ref, 
    in_$r4: ref, 
    in_r0: ref, 
    in_$fakelocal_3: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$i1: int, 
    out_i3: int, 
    out_$fakelocal_4: ref, 
    out_$c2: int, 
    out_$r3: ref, 
    out_$fakelocal_2: ref, 
    out_$r4: ref, 
    out_$fakelocal_3: ref)
{

  entry:
    out_$return, out_$exception, out_$i1, out_i3, out_$fakelocal_4, out_$c2, out_$r3, out_$fakelocal_2, out_$r4, out_$fakelocal_3 := in_$return, in_$exception, in_$i1, in_i3, in_$fakelocal_4, in_$c2, in_$r3, in_$fakelocal_2, in_$r4, in_$fakelocal_3;
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
    out_$return, out_$exception, out_$i1, out_i3, out_$fakelocal_4, out_$c2, out_$r3, out_$fakelocal_2, out_$r4, out_$fakelocal_3 := in_$return, in_$exception, in_$i1, in_i3, in_$fakelocal_4, in_$c2, in_$r3, in_$fakelocal_2, in_$r4, in_$fakelocal_3;
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
    out_$return, out_$exception, out_$i1, out_i3, out_$fakelocal_4, out_$c2, out_$r3, out_$fakelocal_2, out_$r4, out_$fakelocal_3 := in_$return, in_$exception, in_$i1, in_i3, in_$fakelocal_4, in_$c2, in_$r3, in_$fakelocal_2, in_$r4, in_$fakelocal_3;
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
    out_$return, out_$exception, out_$i1, out_i3, out_$fakelocal_4, out_$c2, out_$r3, out_$fakelocal_2, out_$r4, out_$fakelocal_3 := in_$return, in_$exception, in_$i1, in_i3, in_$fakelocal_4, in_$c2, in_$r3, in_$fakelocal_2, in_$r4, in_$fakelocal_3;
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
    out_$return, out_$exception, out_$i1, out_i3, out_$fakelocal_4, out_$c2, out_$r3, out_$fakelocal_2, out_$r4, out_$fakelocal_3 := in_$return, in_$exception, in_$i1, in_i3, in_$fakelocal_4, in_$c2, in_$r3, in_$fakelocal_2, in_$r4, in_$fakelocal_3;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon17_Then:
    assume {:partition} out_$r3 != $null;
    out_$exception := out_$exception;
    goto anon6;

  anon15_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$i1, out_i3, out_$fakelocal_4, out_$c2, out_$r3, out_$fakelocal_2, out_$r4, out_$fakelocal_3 := java.lang.String$toCharArray$_loop_block3(out_$return, out_$exception, out_$i1, out_i3, in_r1, out_$fakelocal_4, out_$c2, out_$r3, out_$fakelocal_2, out_$r4, in_r0, out_$fakelocal_3);
    return;

  exit:
    return;
}



procedure java.lang.String$toCharArray$_loop_block3(in_$return: ref, 
    in_$exception: ref, 
    in_$i1: int, 
    in_i3: int, 
    in_r1: ref, 
    in_$fakelocal_4: ref, 
    in_$c2: int, 
    in_$r3: ref, 
    in_$fakelocal_2: ref, 
    in_$r4: ref, 
    in_r0: ref, 
    in_$fakelocal_3: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$i1: int, 
    out_i3: int, 
    out_$fakelocal_4: ref, 
    out_$c2: int, 
    out_$r3: ref, 
    out_$fakelocal_2: ref, 
    out_$r4: ref, 
    out_$fakelocal_3: ref);
  modifies $intArrHeap, $objIndex, $heap;



implementation UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15(in_$return: int, 
    in_$exception: ref, 
    in_r3: ref, 
    in_i8: int, 
    in_$c5: int, 
    in_$i2: int, 
    in_$fakelocal_0: ref, 
    in_$c4: int, 
    in_$i1: int, 
    in_i6: int, 
    in_$fakelocal_1: ref, 
    in_i7: int, 
    in_r2: ref, 
    in_$i3: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_i8: int, 
    out_$c5: int, 
    out_$i2: int, 
    out_$fakelocal_0: ref, 
    out_$c4: int, 
    out_$i1: int, 
    out_i6: int, 
    out_$fakelocal_1: ref, 
    out_i7: int, 
    out_$i3: int)
{

  entry:
    out_$return, out_$exception, out_i8, out_$c5, out_$i2, out_$fakelocal_0, out_$c4, out_$i1, out_i6, out_$fakelocal_1, out_i7, out_$i3 := in_$return, in_$exception, in_i8, in_$c5, in_$i2, in_$fakelocal_0, in_$c4, in_$i1, in_i6, in_$fakelocal_1, in_i7, in_$i3;
    goto block15;

  block15:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    out_$i1 := out_i6;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    out_i6 := out_i6 + -1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;

  anon21_Then:
    assume {:partition} out_$i1 == 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_i8, out_$c5, out_$i2, out_$fakelocal_0, out_$c4, out_$i1, out_i6, out_$fakelocal_1, out_i7, out_$i3 := in_$return, in_$exception, in_i8, in_$c5, in_$i2, in_$fakelocal_0, in_$c4, in_$i1, in_i6, in_$fakelocal_1, in_i7, in_$i3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon24_Then:
    assume {:partition} out_$c5 == out_$c4;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} {:comment "thenblock"} true;
    goto anon24_Then_dummy;

  anon15:
    out_$c4 := $intArrHeap[in_r3][out_$i3];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto anon24_Then, anon24_Else;

  anon24_Else:
    assume {:partition} out_$c5 != out_$c4;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} {:comment "elseblock"} true;
    out_$return, out_$exception, out_i8, out_$c5, out_$i2, out_$fakelocal_0, out_$c4, out_$i1, out_i6, out_$fakelocal_1, out_i7, out_$i3 := in_$return, in_$exception, in_i8, in_$c5, in_$i2, in_$fakelocal_0, in_$c4, in_$i1, in_i6, in_$fakelocal_1, in_i7, in_$i3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon23_Then:
    assume {:partition} out_$i3 < $arrSizeHeap[in_r3] && out_$i3 >= 0;
    out_$exception := out_$exception;
    goto anon15;

  anon12:
    out_$c5 := $intArrHeap[in_r2][out_$i2];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    out_$i3 := out_i8;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    out_i8 := out_i8 + 1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;

  anon23_Else:
    assume {:partition} !(out_$i3 < $arrSizeHeap[in_r3] && out_$i3 >= 0);
    call out_$fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_i8, out_$c5, out_$i2, out_$fakelocal_0, out_$c4, out_$i1, out_i6, out_$fakelocal_1, out_i7, out_$i3 := in_$return, in_$exception, in_i8, in_$c5, in_$i2, in_$fakelocal_0, in_$c4, in_$i1, in_i6, in_$fakelocal_1, in_i7, in_$i3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon22_Then:
    assume {:partition} out_$i2 < $arrSizeHeap[in_r2] && out_$i2 >= 0;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    out_$i2 := out_i7;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    out_i7 := out_i7 + 1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} !(out_$i2 < $arrSizeHeap[in_r2] && out_$i2 >= 0);
    call out_$fakelocal_0 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_0;
    out_$return, out_$exception, out_i8, out_$c5, out_$i2, out_$fakelocal_0, out_$c4, out_$i1, out_i6, out_$fakelocal_1, out_i7, out_$i3 := in_$return, in_$exception, in_i8, in_$c5, in_$i2, in_$fakelocal_0, in_$c4, in_$i1, in_i6, in_$fakelocal_1, in_i7, in_$i3;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon21_Else:
    assume {:partition} out_$i1 != 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon24_Then_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_i8, out_$c5, out_$i2, out_$fakelocal_0, out_$c4, out_$i1, out_i6, out_$fakelocal_1, out_i7, out_$i3 := UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15(out_$return, out_$exception, in_r3, out_i8, out_$c5, out_$i2, out_$fakelocal_0, out_$c4, out_$i1, out_i6, out_$fakelocal_1, out_i7, in_r2, out_$i3);
    return;

  exit:
    return;
}



procedure UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15(in_$return: int, 
    in_$exception: ref, 
    in_r3: ref, 
    in_i8: int, 
    in_$c5: int, 
    in_$i2: int, 
    in_$fakelocal_0: ref, 
    in_$c4: int, 
    in_$i1: int, 
    in_i6: int, 
    in_$fakelocal_1: ref, 
    in_i7: int, 
    in_r2: ref, 
    in_$i3: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_i8: int, 
    out_$c5: int, 
    out_$i2: int, 
    out_$fakelocal_0: ref, 
    out_$c4: int, 
    out_$i1: int, 
    out_i6: int, 
    out_$fakelocal_1: ref, 
    out_i7: int, 
    out_$i3: int);
  modifies $objIndex, $heap;


