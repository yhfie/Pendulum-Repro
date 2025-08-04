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

const {:sourceloc "Math.java", -1, -1, -1, -1} unique java.lang.Object: javaType extends complete;

const {:sourceloc "Math.java", -1, -1, -1, -1} unique java.lang.Math: javaType extends unique java.lang.Object complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.String: javaType extends unique java.lang.Object complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.io.Serializable: javaType extends complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.Throwable: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.Exception: javaType extends unique java.lang.Throwable complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.RuntimeException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.IndexOutOfBoundsException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique java.lang.ArrayIndexOutOfBoundsException: javaType extends unique java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique java.lang.Boolean: javaType extends unique java.lang.Object complete;

const {:sourceloc "User.java", -1, -1, -1, -1} unique User: javaType extends unique java.lang.Object complete;

const {:sourceloc "User.java", -1, -1, -1, -1} unique java.lang.Comparable: javaType extends complete;

const {:sourceloc "User.java", -1, -1, -1, -1} unique java.lang.CharSequence: javaType extends complete;

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
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];
  ensures $obj != $null;
  ensures !old($heap[$obj, $alloc]);
  ensures $objIndex == old($objIndex) + 1;
  ensures $obj == $intToRef(old($objIndex));



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $other != $null;
  ensures $heap[$other, $type] == $heap[$this, $type];
  ensures $heap[$other, $alloc] <==> true;



procedure int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure java.lang.Math$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.Math$min$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure java.lang.String$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies $heap;



procedure java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



procedure User$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure User$passwordsEqual_unsafe$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);



implementation java.lang.Math$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Math.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.Math;
    assume {:sourceloc "Math.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Math.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Math.java", 3, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "Math.java", 3, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation java.lang.Math$min$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $i2: int;
  var i0: int;
  var i1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Math.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Math.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__1;
    assert {:sourceloc "Math.java", 5, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} i1 > i0;
    assert {:sourceloc "Math.java", 5, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Math.java", 5, -1, -1, -1} true;
    $i2 := i0;
    assert {:sourceloc "Math.java", 5, -1, -1, -1} true;
    goto block3;

  block3:
    assert {:sourceloc "Math.java", 5, -1, -1, -1} true;
    $return := $i2;
    goto block4;

  block4:
    return;

  anon4_Then:
    assume {:partition} i0 >= i1;
    assert {:sourceloc "Math.java", 5, -1, -1, -1} {:comment "thenblock"} true;
    goto block2;

  block2:
    assert {:sourceloc "Math.java", 5, -1, -1, -1} true;
    $i2 := i1;
    goto block3;
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
    goto block5;

  block5:
    return;
}



implementation java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var i0: int;
  var $fakelocal_0: ref;
  var $r1: ref;
  var $c1: int;
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
    goto block6;

  block6:
    return;
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
    goto block7;

  block7:
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
    goto block8;

  block8:
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
    goto block9;

  block9:
    return;
}



implementation User$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "User.java", -1, -1, -1, -1} $heap[$this, $type] <: User;
    assume {:sourceloc "User.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "User.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "User.java", 1, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "User.java", 1, -1, -1, -1} true;
    goto block10;

  block10:
    return;
}



implementation User$passwordsEqual_unsafe$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var i5: int;
  var r0: ref;
  var $c3: int;
  var i0: int;
  var z0: int;
  var r1: ref;
  var i1: int;
  var i2: int;
  var $c4: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    assume $heap[$in_parameter__1, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "User.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "User.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "User.java", 27, -1, -1, -1} true;
    z0 := 1;
    assert {:sourceloc "User.java", 29, -1, -1, -1} true;
    i0 := $stringSizeHeap[r0];
    assert {:sourceloc "User.java", 30, -1, -1, -1} true;
    i1 := $stringSizeHeap[r1];
    assert {:sourceloc "User.java", 31, -1, -1, -1} true;
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} i0 != i1;
    assert {:sourceloc "User.java", 31, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "User.java", 32, -1, -1, -1} true;
    z0 := 0;
    goto block11;

  block11:
    assert {:sourceloc "User.java", 34, -1, -1, -1} true;
    call i2, $exception := java.lang.Math$min$int_int(i0, i1);
    assert {:sourceloc "User.java", 35, -1, -1, -1} true;
    i5 := 0;
    goto block12;

  block12:
    call $exception, i5, $c3, $c4 := User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block12($exception, i5, r0, $c3, r1, i2, $c4);
    goto block12_last;

  anon11_Else:
    assume {:partition} i2 > i5;
    assert {:sourceloc "User.java", 35, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "User.java", 36, -1, -1, -1} true;
    call $c3, $exception := java.lang.String$charAt$int(r0, i5);
    assert {:sourceloc "User.java", 36, -1, -1, -1} true;
    call $c4, $exception := java.lang.String$charAt$int(r1, i5);
    assert {:sourceloc "User.java", 36, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} $c3 != $c4;
    assert {:sourceloc "User.java", 36, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "User.java", 38, -1, -1, -1} true;
    $return := 0;
    goto block15;

  block15:
    return;

  anon12_Then:
    assume {:partition} $c3 == $c4;
    assert {:sourceloc "User.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "User.java", 35, -1, -1, -1} true;
    i5 := i5 + 1;
    assert {:sourceloc "User.java", 35, -1, -1, -1} true;
    goto block14_dummy;

  anon11_Then:
    assume {:partition} i5 >= i2;
    assert {:sourceloc "User.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  block13:
    assert {:sourceloc "User.java", 43, -1, -1, -1} true;
    $return := z0;
    goto block15;

  anon10_Then:
    assume {:partition} i0 == i1;
    assert {:sourceloc "User.java", 31, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  block14_dummy:
    assume false;
    return;

  block12_last:
    assert {:sourceloc "User.java", 35, -1, -1, -1} true;
    goto anon11_Then, anon11_Else;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block12(in_$exception: ref, 
    in_i5: int, 
    in_r0: ref, 
    in_$c3: int, 
    in_r1: ref, 
    in_i2: int, 
    in_$c4: int)
   returns (out_$exception: ref, out_i5: int, out_$c3: int, out_$c4: int)
{

  entry:
    out_$exception, out_i5, out_$c3, out_$c4 := in_$exception, in_i5, in_$c3, in_$c4;
    goto block12;

  block12:
    assert {:sourceloc "User.java", 35, -1, -1, -1} true;
    goto anon11_Then, anon11_Else;

  anon11_Then:
    assume {:partition} out_i5 >= in_i2;
    assert {:sourceloc "User.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    out_$exception, out_i5, out_$c3, out_$c4 := in_$exception, in_i5, in_$c3, in_$c4;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  block14:
    assert {:sourceloc "User.java", 35, -1, -1, -1} true;
    out_i5 := out_i5 + 1;
    assert {:sourceloc "User.java", 35, -1, -1, -1} true;
    goto block14_dummy;

  anon12_Then:
    assume {:partition} out_$c3 == out_$c4;
    assert {:sourceloc "User.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  anon6:
    assert {:sourceloc "User.java", 36, -1, -1, -1} true;
    call out_$c3, out_$exception := java.lang.String$charAt$int(in_r0, out_i5);
    assert {:sourceloc "User.java", 36, -1, -1, -1} true;
    call out_$c4, out_$exception := java.lang.String$charAt$int(in_r1, out_i5);
    assert {:sourceloc "User.java", 36, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} out_$c3 != out_$c4;
    assert {:sourceloc "User.java", 36, -1, -1, -1} {:comment "elseblock"} true;
    out_$exception, out_i5, out_$c3, out_$c4 := in_$exception, in_i5, in_$c3, in_$c4;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon11_Else:
    assume {:partition} in_i2 > out_i5;
    assert {:sourceloc "User.java", 35, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  block14_dummy:
    call {:si_unique_call 1} out_$exception, out_i5, out_$c3, out_$c4 := User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block12(out_$exception, out_i5, in_r0, out_$c3, in_r1, in_i2, out_$c4);
    return;

  exit:
    return;
}



procedure User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block12(in_$exception: ref, 
    in_i5: int, 
    in_r0: ref, 
    in_$c3: int, 
    in_r1: ref, 
    in_i2: int, 
    in_$c4: int)
   returns (out_$exception: ref, out_i5: int, out_$c3: int, out_$c4: int);
  modifies $objIndex, $heap;


