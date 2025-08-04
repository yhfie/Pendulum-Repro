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

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique java.lang.Object: javaType extends complete;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique java.lang.Boolean: javaType extends unique java.lang.Object complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.io.Serializable: javaType extends complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.lang.Comparable: javaType extends complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.lang.Integer: javaType extends unique java.lang.Object, java.io.Serializable, java.lang.Comparable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.lang.Throwable: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.lang.Exception: javaType extends unique java.lang.Throwable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.lang.RuntimeException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.lang.NullPointerException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique java.lang.ClassCastException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} unique AesEaxJce: javaType extends unique java.lang.Object complete;

const {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} unique java.lang.IndexOutOfBoundsException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} unique java.lang.ArrayIndexOutOfBoundsException: javaType extends unique java.lang.IndexOutOfBoundsException complete;

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

var boolean$java.lang.Boolean$value0: Field int;

var int$java.lang.Integer$value0: Field int;

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
  ensures $obj == $intToRef(old($objIndex));
  ensures !old($heap[$obj, $alloc]);
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];
  ensures $obj != $null;
  ensures $objIndex == old($objIndex) + 1;



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $heap[$other, $alloc] <==> true;
  ensures $heap[$other, $type] == $heap[$this, $type];
  ensures $other != $null;



procedure int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies $heap;



procedure java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



procedure java.lang.Integer$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies $heap;



procedure java.lang.Integer$valueOf$int($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Integer$intValue$($this: ref) returns ($return: int, $exception: ref);



procedure java.lang.Integer$compareTo$java.lang.Integer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Integer$compareTo$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure AesEaxJce$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$($in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;



procedure AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: ref, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;



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
    goto block1;

  block1:
    return;
}



implementation java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var $r0: ref;
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
    goto block2;

  block2:
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
    goto block3;

  block3:
    return;
}



implementation java.lang.Integer$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var i0: int;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 8, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "Integer.java", 9, -1, -1, -1} true;
    $heap := $heap[r0, int$java.lang.Integer$value0 := i0];
    assert {:sourceloc "Integer.java", 10, -1, -1, -1} true;
    goto block4;

  block4:
    return;
}



implementation java.lang.Integer$valueOf$int($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var $r0: ref;
  var i0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$return, $type] <: java.lang.Integer;
    $exception := $null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.Integer);
    $r0 := $fakelocal_0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    call $exception := java.lang.Integer$$la$init$ra$$int($r0, i0);
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    $return := $r0;
    goto block5;

  block5:
    return;
}



implementation java.lang.Integer$intValue$($this: ref) returns ($return: int, $exception: ref)
{
  var $i0: int;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    $i0 := $heap[r0, int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    $return := $i0;
    goto block6;

  block6:
    return;
}



implementation java.lang.Integer$compareTo$java.lang.Integer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var $i0: int;
  var $i1: int;
  var $i2: int;
  var $i3: int;
  var $fakelocal_0: ref;
  var r1: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.Integer;
    $exception := $null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    $i1 := $heap[r0, int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon10_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    $i0 := $heap[r1, int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} $i0 < $i1;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Integer.java", 23, -1, -1, -1} true;
    $return := 1;
    goto block9;

  block9:
    return;

  anon11_Then:
    assume {:partition} $i1 <= $i0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  block7:
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    $i3 := $heap[r0, int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    $i2 := $heap[r1, int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} $i2 > $i3;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "Integer.java", 25, -1, -1, -1} true;
    $return := -1;
    goto block9;

  anon12_Then:
    assume {:partition} $i3 >= $i2;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "Integer.java", 27, -1, -1, -1} true;
    $return := 0;
    goto block9;
}



implementation java.lang.Integer$compareTo$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var $i0: int;
  var r1: ref;
  var $fakelocal_0: ref;
  var r0: ref;
  var $r2: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.Object;
    $exception := $null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 5, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} !($heap[r1, $type] <: java.lang.Integer);
    call $fakelocal_0 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon4_Then:
    assume {:partition} $heap[r1, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon3;

  anon3:
    $r2 := r1;
    assert {:sourceloc "Integer.java", 5, -1, -1, -1} true;
    call $i0, $exception := java.lang.Integer$compareTo$java.lang.Integer(r0, $r2);
    assert {:sourceloc "Integer.java", 5, -1, -1, -1} true;
    $return := $i0;
    goto block10;

  block10:
    return;
}



implementation AesEaxJce$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} $heap[$this, $type] <: AesEaxJce;
    assume {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "AesEaxJce.java", 2, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "AesEaxJce.java", 2, -1, -1, -1} true;
    goto block11;

  block11:
    return;
}



implementation AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$($in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var $fakelocal_3: ref;
  var $fakelocal_6: ref;
  var $fakelocal_2: ref;
  var $fakelocal_0: ref;
  var $s2: int;
  var $fakelocal_4: ref;
  var $b5: int;
  var $s9: int;
  var $b0: int;
  var $fakelocal_1: ref;
  var r1: ref;
  var $i4: int;
  var $i3: int;
  var $i11: int;
  var r0: ref;
  var $i12: int;
  var $s10: int;
  var $s16: int;
  var $i13: int;
  var $b1: int;
  var $b8: int;
  var $fakelocal_5: ref;
  var $b14: int;
  var $i7: int;
  var i15: int;
  var $b6: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "AesEaxJce.java", 7, -1, -1, -1} true;
    call $fakelocal_0 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_0 := 16];
    r1 := $fakelocal_0;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    i15 := 0;
    goto block12;

  block12:
    call $return, $exception, $fakelocal_3, $fakelocal_2, $s9, $fakelocal_1, $i11, $i12, $s10, $i13, $b8, $b14, $i7, i15, $b6 := AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12($return, $exception, $fakelocal_3, $fakelocal_2, $s9, $fakelocal_1, r1, $i11, r0, $i12, $s10, $i13, $b8, $b14, $i7, i15, $b6);
    goto block12_last;

  anon25_Else:
    assume {:partition} 15 > i15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} !(i15 < $arrSizeHeap[r0] && i15 >= 0);
    call $fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_1;
    return;

  anon26_Then:
    assume {:partition} i15 < $arrSizeHeap[r0] && i15 >= 0;
    $exception := $exception;
    goto anon6;

  anon6:
    $b6 := $intArrHeap[r0][i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $i11 := $shlInt($b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $i7 := i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} !($i7 < $arrSizeHeap[r0] && $i7 >= 0);
    call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon27_Then:
    assume {:partition} $i7 < $arrSizeHeap[r0] && $i7 >= 0;
    $exception := $exception;
    goto anon9;

  anon9:
    $b8 := $intArrHeap[r0][$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $s9 := $bitAnd($b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $s10 := $ushrInt($s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $i12 := $xorInt($i11, $s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $i13 := $bitAnd($i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $b14 := $i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} !(i15 < $arrSizeHeap[r1] && i15 >= 0);
    call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_3;
    return;

  anon28_Then:
    assume {:partition} i15 < $arrSizeHeap[r1] && i15 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    $intArrHeap := $intArrHeap[r1 := $intArrHeap[r1][i15 := $b14]];
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    i15 := i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto anon12_dummy;

  anon25_Then:
    assume {:partition} i15 >= 15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  block13:
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} !(15 < $arrSizeHeap[r0] && 15 >= 0);
    call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_4;
    return;

  anon29_Then:
    assume {:partition} 15 < $arrSizeHeap[r0] && 15 >= 0;
    $exception := $exception;
    goto anon15;

  anon15:
    $b0 := $intArrHeap[r0][15];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    $i3 := $shlInt($b0, 1);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(0 < $arrSizeHeap[r0] && 0 >= 0);
    call $fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_5;
    return;

  anon30_Then:
    assume {:partition} 0 < $arrSizeHeap[r0] && 0 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $b1 := $intArrHeap[r0][0];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    $s2 := $bitAnd($b1, 128);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} $s2 == 0;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto anon21;

  anon21:
    assert {:sourceloc "AesEaxJce.java", 14, -1, -1, -1} true;
    $s16 := 0;
    assert {:sourceloc "AesEaxJce.java", 14, -1, -1, -1} true;
    goto block15;

  block15:
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    $i4 := $xorInt($i3, $s16);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    $b5 := $i4;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !(15 < $arrSizeHeap[r1] && 15 >= 0);
    call $fakelocal_6 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_6;
    return;

  anon32_Then:
    assume {:partition} 15 < $arrSizeHeap[r1] && 15 >= 0;
    $exception := $exception;
    goto anon24;

  anon24:
    $intArrHeap := $intArrHeap[r1 := $intArrHeap[r1][15 := $b5]];
    assert {:sourceloc "AesEaxJce.java", 14, -1, -1, -1} true;
    $return := r1;
    goto block16;

  block16:
    return;

  anon31_Then:
    assume {:partition} $s2 != 0;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "AesEaxJce.java", 14, -1, -1, -1} true;
    $s16 := 135;
    goto block15;

  anon12_dummy:
    assume false;
    return;

  block12_last:
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto anon25_Then, anon25_Else;
}



implementation AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: ref, $exception: ref)
{
  var r0: ref;
  var i1: int;
  var i0: int;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__1;
    assert {:sourceloc "AesEaxJce.java", 30, -1, -1, -1} true;
    r1 := $null;
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} true;
    i1 := 0;
    goto block17;

  block17:
    call $exception, i1, r1 := AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17($exception, r0, i1, i0, r1);
    goto block17_last;

  anon4_Else:
    assume {:partition} i0 > i1;
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "AesEaxJce.java", 32, -1, -1, -1} true;
    call r1, $exception := AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$(r0);
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} true;
    i1 := i1 + 1;
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} true;
    goto anon3_dummy;

  anon4_Then:
    assume {:partition} i1 >= i0;
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} {:comment "thenblock"} true;
    goto block18;

  block18:
    assert {:sourceloc "AesEaxJce.java", 34, -1, -1, -1} true;
    $return := r1;
    goto block19;

  block19:
    return;

  anon3_dummy:
    assume false;
    return;

  block17_last:
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12(in_$return: ref, 
    in_$exception: ref, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_2: ref, 
    in_$s9: int, 
    in_$fakelocal_1: ref, 
    in_r1: ref, 
    in_$i11: int, 
    in_r0: ref, 
    in_$i12: int, 
    in_$s10: int, 
    in_$i13: int, 
    in_$b8: int, 
    in_$b14: int, 
    in_$i7: int, 
    in_i15: int, 
    in_$b6: int)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_2: ref, 
    out_$s9: int, 
    out_$fakelocal_1: ref, 
    out_$i11: int, 
    out_$i12: int, 
    out_$s10: int, 
    out_$i13: int, 
    out_$b8: int, 
    out_$b14: int, 
    out_$i7: int, 
    out_i15: int, 
    out_$b6: int)
{

  entry:
    out_$return, out_$exception, out_$fakelocal_3, out_$fakelocal_2, out_$s9, out_$fakelocal_1, out_$i11, out_$i12, out_$s10, out_$i13, out_$b8, out_$b14, out_$i7, out_i15, out_$b6 := in_$return, in_$exception, in_$fakelocal_3, in_$fakelocal_2, in_$s9, in_$fakelocal_1, in_$i11, in_$i12, in_$s10, in_$i13, in_$b8, in_$b14, in_$i7, in_i15, in_$b6;
    goto block12;

  block12:
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto anon25_Then, anon25_Else;

  anon25_Then:
    assume {:partition} out_i15 >= 15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_3, out_$fakelocal_2, out_$s9, out_$fakelocal_1, out_$i11, out_$i12, out_$s10, out_$i13, out_$b8, out_$b14, out_$i7, out_i15, out_$b6 := in_$return, in_$exception, in_$fakelocal_3, in_$fakelocal_2, in_$s9, in_$fakelocal_1, in_$i11, in_$i12, in_$s10, in_$i13, in_$b8, in_$b14, in_$i7, in_i15, in_$b6;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon12:
    $intArrHeap := $intArrHeap[in_r1 := $intArrHeap[in_r1][out_i15 := out_$b14]];
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    out_i15 := out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto anon12_dummy;

  anon28_Then:
    assume {:partition} out_i15 < $arrSizeHeap[in_r1] && out_i15 >= 0;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    out_$b8 := $intArrHeap[in_r0][out_$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$s9 := $bitAnd(out_$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$s10 := $ushrInt(out_$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$i12 := $xorInt(out_$i11, out_$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$i13 := $bitAnd(out_$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$b14 := out_$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} !(out_i15 < $arrSizeHeap[in_r1] && out_i15 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$fakelocal_3, out_$fakelocal_2, out_$s9, out_$fakelocal_1, out_$i11, out_$i12, out_$s10, out_$i13, out_$b8, out_$b14, out_$i7, out_i15, out_$b6 := in_$return, in_$exception, in_$fakelocal_3, in_$fakelocal_2, in_$s9, in_$fakelocal_1, in_$i11, in_$i12, in_$s10, in_$i13, in_$b8, in_$b14, in_$i7, in_i15, in_$b6;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon27_Then:
    assume {:partition} out_$i7 < $arrSizeHeap[in_r0] && out_$i7 >= 0;
    out_$exception := out_$exception;
    goto anon9;

  anon6:
    out_$b6 := $intArrHeap[in_r0][out_i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$i11 := $shlInt(out_$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$i7 := out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} !(out_$i7 < $arrSizeHeap[in_r0] && out_$i7 >= 0);
    call out_$fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$fakelocal_3, out_$fakelocal_2, out_$s9, out_$fakelocal_1, out_$i11, out_$i12, out_$s10, out_$i13, out_$b8, out_$b14, out_$i7, out_i15, out_$b6 := in_$return, in_$exception, in_$fakelocal_3, in_$fakelocal_2, in_$s9, in_$fakelocal_1, in_$i11, in_$i12, in_$s10, in_$i13, in_$b8, in_$b14, in_$i7, in_i15, in_$b6;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon26_Then:
    assume {:partition} out_i15 < $arrSizeHeap[in_r0] && out_i15 >= 0;
    out_$exception := out_$exception;
    goto anon6;

  anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} !(out_i15 < $arrSizeHeap[in_r0] && out_i15 >= 0);
    call out_$fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$fakelocal_3, out_$fakelocal_2, out_$s9, out_$fakelocal_1, out_$i11, out_$i12, out_$s10, out_$i13, out_$b8, out_$b14, out_$i7, out_i15, out_$b6 := in_$return, in_$exception, in_$fakelocal_3, in_$fakelocal_2, in_$s9, in_$fakelocal_1, in_$i11, in_$i12, in_$s10, in_$i13, in_$b8, in_$b14, in_$i7, in_i15, in_$b6;
    $intArrHeap, $objIndex, $heap := old($intArrHeap), old($objIndex), old($heap);
    return;

  anon25_Else:
    assume {:partition} 15 > out_i15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon12_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$fakelocal_3, out_$fakelocal_2, out_$s9, out_$fakelocal_1, out_$i11, out_$i12, out_$s10, out_$i13, out_$b8, out_$b14, out_$i7, out_i15, out_$b6 := AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12(out_$return, out_$exception, out_$fakelocal_3, out_$fakelocal_2, out_$s9, out_$fakelocal_1, in_r1, out_$i11, in_r0, out_$i12, out_$s10, out_$i13, out_$b8, out_$b14, out_$i7, out_i15, out_$b6);
    return;

  exit:
    return;
}



procedure AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12(in_$return: ref, 
    in_$exception: ref, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_2: ref, 
    in_$s9: int, 
    in_$fakelocal_1: ref, 
    in_r1: ref, 
    in_$i11: int, 
    in_r0: ref, 
    in_$i12: int, 
    in_$s10: int, 
    in_$i13: int, 
    in_$b8: int, 
    in_$b14: int, 
    in_$i7: int, 
    in_i15: int, 
    in_$b6: int)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_2: ref, 
    out_$s9: int, 
    out_$fakelocal_1: ref, 
    out_$i11: int, 
    out_$i12: int, 
    out_$s10: int, 
    out_$i13: int, 
    out_$b8: int, 
    out_$b14: int, 
    out_$i7: int, 
    out_i15: int, 
    out_$b6: int);
  modifies $intArrHeap, $objIndex, $heap;



implementation AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17(in_$exception: ref, in_r0: ref, in_i1: int, in_i0: int, in_r1: ref)
   returns (out_$exception: ref, out_i1: int, out_r1: ref)
{

  entry:
    out_$exception, out_i1, out_r1 := in_$exception, in_i1, in_r1;
    goto block17;

  block17:
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Then:
    assume {:partition} out_i1 >= in_i0;
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} {:comment "thenblock"} true;
    out_$exception, out_i1, out_r1 := in_$exception, in_i1, in_r1;
    $objIndex, $arrSizeHeap, $intArrHeap, $heap := old($objIndex), old($arrSizeHeap), old($intArrHeap), old($heap);
    return;

  anon3:
    assert {:sourceloc "AesEaxJce.java", 32, -1, -1, -1} true;
    call out_r1, out_$exception := AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$(in_r0);
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} true;
    out_i1 := out_i1 + 1;
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} true;
    goto anon3_dummy;

  anon4_Else:
    assume {:partition} in_i0 > out_i1;
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3_dummy:
    call {:si_unique_call 1} out_$exception, out_i1, out_r1 := AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17(out_$exception, in_r0, out_i1, in_i0, out_r1);
    return;

  exit:
    return;
}



procedure AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17(in_$exception: ref, in_r0: ref, in_i1: int, in_i0: int, in_r1: ref)
   returns (out_$exception: ref, out_i1: int, out_r1: ref);
  modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;


