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

const {:sourceloc "Safe.java", -1, -1, -1, -1} unique java.lang.Object: javaType extends complete;

const {:sourceloc "Safe.java", -1, -1, -1, -1} unique sg.edu.nus.comp.tsunami.safe.Safe: javaType extends unique java.lang.Object complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique Sanity: javaType extends unique java.lang.Object complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.io.Serializable: javaType extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.Throwable: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.Exception: javaType extends unique java.lang.Throwable complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.RuntimeException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.IndexOutOfBoundsException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.ArrayIndexOutOfBoundsException: javaType extends unique java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.Number: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.Comparable: javaType extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.Integer: javaType extends unique java.lang.Number, java.lang.Comparable complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.ClassCastException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.Appendable: javaType extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.CharSequence: javaType extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.AbstractStringBuilder: javaType extends unique java.lang.Object, java.lang.Appendable, java.lang.CharSequence complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.StringBuilder: javaType extends unique java.lang.AbstractStringBuilder, java.io.Serializable, java.lang.CharSequence complete;

const unique $StringConst0: ref extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.String: javaType extends unique java.lang.Object, java.io.Serializable, java.lang.Comparable, java.lang.CharSequence complete;

const unique $StringConst1: ref extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.lang.AutoCloseable: javaType extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.io.Closeable: javaType extends java.lang.AutoCloseable complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.io.Flushable: javaType extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.io.OutputStream: javaType extends unique java.lang.Object, java.io.Closeable, java.io.Flushable complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.io.FilterOutputStream: javaType extends unique java.io.OutputStream complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique java.io.PrintStream: javaType extends unique java.io.FilterOutputStream, java.lang.Appendable, java.io.Closeable complete;

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

var java.io.PrintStream$java.lang.System$out260: ref;

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
  ensures $obj == $intToRef(old($objIndex));
  ensures !old($heap[$obj, $alloc]);
  ensures $objIndex == old($objIndex) + 1;
  ensures $obj != $null;



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $heap[$other, $alloc] <==> true;
  ensures $other != $null;
  ensures $heap[$other, $type] == $heap[$this, $type];



procedure int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



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



procedure Sanity$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure Sanity$notaint_unsafe$int$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure Sanity$nosecret_safe$int$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure Sanity$straightline_unsafe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Integer$valueOf$int($in_parameter__0: int) returns ($return: ref, $exception: ref);



procedure java.lang.Integer$intValue$($this: ref) returns ($return: int, $exception: ref);



procedure Sanity$sanity_safe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.StringBuilder$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.StringBuilder$append$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure java.lang.StringBuilder$append$int($this: ref, $in_parameter__0: int) returns ($return: ref, $exception: ref);



procedure java.lang.StringBuilder$toString$($this: ref) returns ($return: ref, $exception: ref);



procedure java.io.PrintStream$println$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure Sanity$sanity_unsafe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



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
    goto block1;

  block1:
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
    goto block2;

  block2:
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 1;
    goto block3;

  block3:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    $return := z1;
    goto block4;

  block4:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block3;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block2;
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
    goto block5;

  block5:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $z2: int;
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
    goto block6;

  block6:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b3: int;
  var $b2: int;
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
    goto block7;

  block7:
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
    goto block8;

  block8:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    $return := z0;
    goto block9;

  block9:
    return;

  anon8_Then:
    assume {:partition} $b3 > 0;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  anon7_Then:
    assume {:partition} $b2 <= 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var $b3: int;
  var z0: int;
  var l1: int;
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
    goto block10;

  block10:
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
    goto block11;

  block11:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    $return := z0;
    goto block12;

  block12:
    return;

  anon8_Then:
    assume {:partition} $b3 < 0;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  anon7_Then:
    assume {:partition} $b2 >= 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var l0: int;
  var $b3: int;
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
    goto block13;

  block13:
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
    goto block14;

  block14:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    $return := z0;
    goto block15;

  block15:
    return;

  anon8_Then:
    assume {:partition} $b3 >= 0;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  anon7_Then:
    assume {:partition} $b2 < 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b3: int;
  var l1: int;
  var z0: int;
  var l0: int;
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
    goto block16;

  block16:
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
    goto block17;

  block17:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    $return := z0;
    goto block18;

  block18:
    return;

  anon8_Then:
    assume {:partition} $b3 <= 0;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block17;

  anon7_Then:
    assume {:partition} $b2 > 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var l0: int;
  var $b3: int;
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
    goto block19;

  block19:
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
    goto block20;

  block20:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    $return := z0;
    goto block21;

  block21:
    return;

  anon8_Then:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block20;

  anon7_Then:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto block19;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var z0: int;
  var l0: int;
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
    goto block22;

  block22:
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
    goto block23;

  block23:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    $return := z0;
    goto block24;

  block24:
    return;

  anon8_Then:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto block23;

  anon7_Then:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
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
    goto block25;

  block25:
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
    goto block26;

  block26:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    $return := z0;
    goto block27;

  block27:
    return;

  anon8_Then:
    assume {:partition} $b1 > 0;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "thenblock"} true;
    goto block26;

  anon7_Then:
    assume {:partition} $b0 <= 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "thenblock"} true;
    goto block25;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var $b1: int;
  var d1: int;
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
    goto block28;

  block28:
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
    goto block29;

  block29:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    $return := z0;
    goto block30;

  block30:
    return;

  anon8_Then:
    assume {:partition} $b1 < 0;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block29;

  anon7_Then:
    assume {:partition} $b0 >= 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block28;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var $b1: int;
  var $b0: int;
  var d1: int;
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
    goto block31;

  block31:
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
    goto block32;

  block32:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    $return := z0;
    goto block33;

  block33:
    return;

  anon8_Then:
    assume {:partition} $b1 >= 0;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block32;

  anon7_Then:
    assume {:partition} $b0 < 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block31;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b0: int;
  var d1: int;
  var $b1: int;
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
    goto block34;

  block34:
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
    goto block35;

  block35:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    $return := z0;
    goto block36;

  block36:
    return;

  anon8_Then:
    assume {:partition} $b1 <= 0;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "thenblock"} true;
    goto block35;

  anon7_Then:
    assume {:partition} $b0 > 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block34;
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
    goto block37;

  block37:
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
    goto block38;

  block38:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    $return := z0;
    goto block39;

  block39:
    return;

  anon8_Then:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "thenblock"} true;
    goto block38;

  anon7_Then:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "thenblock"} true;
    goto block37;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d1: int;
  var d0: int;
  var $b0: int;
  var $b1: int;
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
    goto block40;

  block40:
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
    goto block41;

  block41:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    $return := z0;
    goto block42;

  block42:
    return;

  anon8_Then:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "thenblock"} true;
    goto block41;

  anon7_Then:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "thenblock"} true;
    goto block40;
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
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
    assume $heap[$in_parameter__0, $type] <: java.lang.Object;
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
    goto block43;

  block43:
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 0;
    goto block44;

  block44:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    $return := z0;
    goto block45;

  block45:
    return;

  anon8_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block44;

  anon7_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block43;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
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
    goto block46;

  block46:
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 0;
    goto block47;

  block47:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    $return := z0;
    goto block48;

  block48:
    return;

  anon8_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block47;

  anon7_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block46;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var r2: ref;
  var r1: ref;
  var r0: ref;
  var z0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$return, $type] <: java.lang.Object;
    assume $heap[$in_parameter__2, $type] <: java.lang.Object;
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
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
    goto block49;

  block49:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r1;
    goto block50;

  block50:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    $return := r2;
    goto block51;

  block51:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block50;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block49;
}



implementation Sanity$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Sanity.java", -1, -1, -1, -1} $heap[$this, $type] <: Sanity;
    assume {:sourceloc "Sanity.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Sanity.java", 4, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "Sanity.java", 4, -1, -1, -1} true;
    goto block52;

  block52:
    return;
}



implementation Sanity$notaint_unsafe$int$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $fakelocal_0: ref;
  var i3: int;
  var $i2: int;
  var $i1: int;
  var i0: int;
  var r0: ref;
  var $fakelocal_1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__1;
    assert {:sourceloc "Sanity.java", 7, -1, -1, -1} true;
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(0 < $arrSizeHeap[r0] && 0 >= 0);
    call $fakelocal_0 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon13_Then:
    assume {:partition} 0 < $arrSizeHeap[r0] && 0 >= 0;
    $exception := $exception;
    goto anon3;

  anon3:
    $i1 := $intArrHeap[r0][0];
    assert {:sourceloc "Sanity.java", 7, -1, -1, -1} true;
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} 0 < $i1;
    assert {:sourceloc "Sanity.java", 7, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} true;
    i3 := 0;
    goto block54;

  block54:
    call $return, $exception, i3, $i2, $fakelocal_1 := Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block54($return, $exception, i3, $i2, r0, $fakelocal_1);
    goto block54_last;

  anon15_Else:
    assume {:partition} !(0 < $arrSizeHeap[r0] && 0 >= 0);
    call $fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon15_Then:
    assume {:partition} 0 < $arrSizeHeap[r0] && 0 >= 0;
    $exception := $exception;
    goto anon9;

  anon9:
    $i2 := $intArrHeap[r0][0];
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} $i2 > i3;
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "Sanity.java", 10, -1, -1, -1} true;
    i3 := i3 + 1;
    assert {:sourceloc "Sanity.java", 10, -1, -1, -1} true;
    goto anon12_dummy;

  anon16_Then:
    assume {:partition} i3 >= $i2;
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    goto block53;

  block53:
    assert {:sourceloc "Sanity.java", 10, -1, -1, -1} true;
    $return := 1;
    goto block55;

  block55:
    return;

  anon14_Then:
    assume {:partition} $i1 <= 0;
    assert {:sourceloc "Sanity.java", 7, -1, -1, -1} {:comment "thenblock"} true;
    goto block53;

  anon12_dummy:
    assume false;
    return;

  block54_last:
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} true;
    goto anon15_Then, anon15_Else;
}



implementation Sanity$nosecret_safe$int$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var i0: int;
  var i1: int;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__1;
    assert {:sourceloc "Sanity.java", 13, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 < i0;
    assert {:sourceloc "Sanity.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} true;
    i1 := 0;
    goto block57;

  block57:
    call i1 := Sanity$nosecret_safe$int$lp$$rp$_int_loop_block57(i0, i1);
    goto block57_last;

  anon8_Else:
    assume {:partition} i0 > i1;
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Sanity.java", 16, -1, -1, -1} true;
    i1 := i1 + 1;
    assert {:sourceloc "Sanity.java", 16, -1, -1, -1} true;
    goto anon6_dummy;

  anon8_Then:
    assume {:partition} i1 >= i0;
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} {:comment "thenblock"} true;
    goto block56;

  block56:
    assert {:sourceloc "Sanity.java", 16, -1, -1, -1} true;
    $return := 1;
    goto block58;

  block58:
    return;

  anon7_Then:
    assume {:partition} i0 <= 0;
    assert {:sourceloc "Sanity.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    goto block56;

  anon6_dummy:
    assume false;
    return;

  block57_last:
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;
}



implementation Sanity$straightline_unsafe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $r310: ref;
  var $fakelocal_356: ref;
  var $i3: int;
  var $fakelocal_542: int;
  var $r140: ref;
  var $fakelocal_201: ref;
  var $r28: ref;
  var $r995: ref;
  var $r860: ref;
  var $r522: ref;
  var $r712: ref;
  var $r254: ref;
  var i381: int;
  var $r878: ref;
  var $fakelocal_515: ref;
  var $r618: ref;
  var $r745: ref;
  var $r409: ref;
  var $r405: ref;
  var $r234: ref;
  var $fakelocal_84: ref;
  var $fakelocal_7: ref;
  var $fakelocal_272: ref;
  var $fakelocal_511: ref;
  var $r877: ref;
  var $fakelocal_72: ref;
  var $r174: ref;
  var $i71: int;
  var $fakelocal_360: ref;
  var i412: int;
  var $fakelocal_254: ref;
  var $i154: int;
  var $i68: int;
  var $fakelocal_20: ref;
  var $r526: ref;
  var $fakelocal_456: ref;
  var $fakelocal_148: ref;
  var $r323: ref;
  var $r23: ref;
  var $fakelocal_37: ref;
  var $fakelocal_313: ref;
  var $r809: ref;
  var $fakelocal_233: ref;
  var i537: int;
  var $r430: ref;
  var $fakelocal_399: ref;
  var $r754: ref;
  var $r948: ref;
  var $fakelocal_125: ref;
  var $r486: ref;
  var $r275: ref;
  var $r940: ref;
  var $r156: ref;
  var $fakelocal_91: ref;
  var i420: int;
  var $i72: int;
  var $r903: ref;
  var $r384: ref;
  var $r88: ref;
  var i322: int;
  var $r803: ref;
  var $r650: ref;
  var i494: int;
  var $fakelocal_297: ref;
  var $r1002: ref;
  var i332: int;
  var $r52: ref;
  var i518: int;
  var $r372: ref;
  var $fakelocal_266: ref;
  var $r158: ref;
  var $r776: ref;
  var $i74: int;
  var $fakelocal_240: ref;
  var $fakelocal_429: ref;
  var $fakelocal_92: ref;
  var $i96: int;
  var $fakelocal_531: ref;
  var $fakelocal_341: ref;
  var $r534: ref;
  var $r950: ref;
  var $r849: ref;
  var $r1038: ref;
  var $fakelocal_107: ref;
  var i289: int;
  var i370: int;
  var i457: int;
  var $r544: ref;
  var $fakelocal_454: ref;
  var i277: int;
  var $r242: ref;
  var i362: int;
  var $fakelocal_489: ref;
  var i298: int;
  var i493: int;
  var $r229: ref;
  var $fakelocal_83: ref;
  var $r460: ref;
  var $fakelocal_357: ref;
  var $r353: ref;
  var $r839: ref;
  var i324: int;
  var $r542: ref;
  var $fakelocal_332: ref;
  var $i258: int;
  var $r721: ref;
  var $r4: ref;
  var $r1008: ref;
  var $r284: ref;
  var i317: int;
  var $i202: int;
  var i343: int;
  var i394: int;
  var $r624: ref;
  var $r1030: ref;
  var $i37: int;
  var $r871: ref;
  var $r967: ref;
  var $fakelocal_299: ref;
  var $i192: int;
  var $fakelocal_443: ref;
  var $r75: ref;
  var $r773: ref;
  var $r66: ref;
  var $r709: ref;
  var $r0: ref;
  var $fakelocal_111: ref;
  var $r123: ref;
  var $fakelocal_289: ref;
  var $r885: ref;
  var $r1032: ref;
  var $fakelocal_236: ref;
  var i487: int;
  var $r131: ref;
  var $r154: ref;
  var $r828: ref;
  var $r728: ref;
  var i352: int;
  var $r1066: ref;
  var $r402: ref;
  var $r533: ref;
  var $r128: ref;
  var $fakelocal_385: ref;
  var i403: int;
  var $i172: int;
  var $r157: ref;
  var $r765: ref;
  var $r33: ref;
  var $r1013: ref;
  var $r226: ref;
  var $r104: ref;
  var $i103: int;
  var $fakelocal_182: ref;
  var $r289: ref;
  var i399: int;
  var $r272: ref;
  var $r488: ref;
  var $r616: ref;
  var $i173: int;
  var $fakelocal_195: ref;
  var $fakelocal_517: ref;
  var $i244: int;
  var $i133: int;
  var $i59: int;
  var $fakelocal_513: ref;
  var $fakelocal_261: ref;
  var i290: int;
  var $r450: ref;
  var $fakelocal_243: ref;
  var $r899: ref;
  var $r348: ref;
  var $r520: ref;
  var i273: int;
  var $r983: ref;
  var $i230: int;
  var i383: int;
  var $r415: ref;
  var $r641: ref;
  var $fakelocal_140: ref;
  var $r51: ref;
  var $i21: int;
  var i380: int;
  var $r3: ref;
  var $r166: ref;
  var $r16: ref;
  var $i124: int;
  var $fakelocal_138: ref;
  var $fakelocal_163: ref;
  var $fakelocal_484: ref;
  var $r705: ref;
  var $r99: ref;
  var $r781: ref;
  var $fakelocal_221: ref;
  var $fakelocal_405: ref;
  var $fakelocal_253: ref;
  var $r547: ref;
  var $i107: int;
  var $fakelocal_160: ref;
  var $r802: ref;
  var $r1051: ref;
  var i331: int;
  var $r461: ref;
  var $r152: ref;
  var $r237: ref;
  var $fakelocal_198: ref;
  var $fakelocal_2: ref;
  var $r202: ref;
  var $i49: int;
  var $i129: int;
  var $r21: ref;
  var $r711: ref;
  var $fakelocal_225: ref;
  var $r827: ref;
  var i473: int;
  var $r599: ref;
  var $r674: ref;
  var $fakelocal_401: ref;
  var $r579: ref;
  var $fakelocal_404: ref;
  var $i248: int;
  var $r723: ref;
  var $r669: ref;
  var $i233: int;
  var i382: int;
  var $r423: ref;
  var $i110: int;
  var $r412: ref;
  var $fakelocal_431: ref;
  var $r207: ref;
  var $r49: ref;
  var $fakelocal_389: ref;
  var $fakelocal_492: ref;
  var $i95: int;
  var $r1065: ref;
  var $r988: ref;
  var $r615: ref;
  var i326: int;
  var i363: int;
  var $r945: ref;
  var $i239: int;
  var $fakelocal_60: ref;
  var $r35: ref;
  var $i24: int;
  var $i143: int;
  var $i23: int;
  var $r178: ref;
  var $r17: ref;
  var i306: int;
  var $r805: ref;
  var $r968: ref;
  var $r245: ref;
  var i357: int;
  var $r210: ref;
  var $z1: int;
  var $r642: ref;
  var $r570: ref;
  var $r469: ref;
  var $r868: ref;
  var $r478: ref;
  var $r317: ref;
  var i422: int;
  var $fakelocal_432: ref;
  var $r311: ref;
  var $r349: ref;
  var i437: int;
  var $r238: ref;
  var $r359: ref;
  var $r627: ref;
  var $r121: ref;
  var $fakelocal_318: ref;
  var $r592: ref;
  var $r498: ref;
  var $fakelocal_226: ref;
  var $r955: ref;
  var $r1021: ref;
  var $r856: ref;
  var $r529: ref;
  var $fakelocal_512: ref;
  var $fakelocal_114: ref;
  var $r1076: ref;
  var i359: int;
  var $r276: ref;
  var $fakelocal_74: ref;
  var $i222: int;
  var $r866: ref;
  var $r316: ref;
  var $fakelocal_407: ref;
  var i413: int;
  var $r182: ref;
  var $fakelocal_98: ref;
  var $fakelocal_175: ref;
  var $r133: ref;
  var $i111: int;
  var $i43: int;
  var $i99: int;
  var $r445: ref;
  var $r993: ref;
  var $r601: ref;
  var i365: int;
  var $fakelocal_437: ref;
  var $fakelocal_94: ref;
  var $r806: ref;
  var $r186: ref;
  var i316: int;
  var $r573: ref;
  var i318: int;
  var $r312: ref;
  var $r429: ref;
  var $i60: int;
  var i301: int;
  var $fakelocal_164: ref;
  var $r1056: ref;
  var $fakelocal_453: ref;
  var $fakelocal_68: ref;
  var i516: int;
  var i345: int;
  var $i263: int;
  var $r290: ref;
  var $r1045: ref;
  var $r1060: ref;
  var $r1059: ref;
  var $i256: int;
  var $i194: int;
  var $fakelocal_49: ref;
  var $r329: ref;
  var $r994: ref;
  var $r501: ref;
  var i364: int;
  var $fakelocal_505: ref;
  var $r428: ref;
  var i479: int;
  var $r575: ref;
  var $r957: ref;
  var $r94: ref;
  var $r485: ref;
  var $fakelocal_306: ref;
  var $r278: ref;
  var $i255: int;
  var $i48: int;
  var $r649: ref;
  var $r1061: ref;
  var $r292: ref;
  var $i122: int;
  var $i250: int;
  var i337: int;
  var $r377: ref;
  var $r648: ref;
  var $fakelocal_528: ref;
  var $fakelocal_282: ref;
  var $fakelocal_5: ref;
  var $r607: ref;
  var $r122: ref;
  var $r302: ref;
  var i525: int;
  var $r1069: ref;
  var i469: int;
  var $fakelocal_468: ref;
  var $i211: int;
  var $r555: ref;
  var $i132: int;
  var $r989: ref;
  var $r176: ref;
  var $r963: ref;
  var $r177: ref;
  var $fakelocal_255: ref;
  var $fakelocal_304: ref;
  var $r408: ref;
  var $r1033: ref;
  var $fakelocal_482: ref;
  var $i14: int;
  var $fakelocal_283: ref;
  var $r495: ref;
  var $r638: ref;
  var $r250: ref;
  var $i162: int;
  var $i171: int;
  var $i10: int;
  var $r467: ref;
  var $r414: ref;
  var $fakelocal_469: ref;
  var $r436: ref;
  var $fakelocal_490: ref;
  var i379: int;
  var $i22: int;
  var $r683: ref;
  var $i184: int;
  var i471: int;
  var $r385: ref;
  var $fakelocal_71: ref;
  var $fakelocal_442: ref;
  var $fakelocal_1: ref;
  var $r288: ref;
  var $i11: int;
  var i395: int;
  var $r882: ref;
  var $i102: int;
  var $r101: ref;
  var $fakelocal_406: ref;
  var $r195: ref;
  var $r314: ref;
  var $r619: ref;
  var $r550: ref;
  var i366: int;
  var $fakelocal_486: ref;
  var $r958: ref;
  var $r685: ref;
  var $r309: ref;
  var $fakelocal_96: ref;
  var $r201: ref;
  var $l2: int;
  var $fakelocal_258: ref;
  var $r55: ref;
  var $fakelocal_54: ref;
  var $i76: int;
  var $r677: ref;
  var $r374: ref;
  var $r459: ref;
  var $r530: ref;
  var $fakelocal_363: ref;
  var $fakelocal_455: ref;
  var i506: int;
  var $r151: ref;
  var $fakelocal_374: ref;
  var $fakelocal_80: ref;
  var $r792: ref;
  var $r1054: ref;
  var $fakelocal_510: ref;
  var $r192: ref;
  var $fakelocal_13: ref;
  var i288: int;
  var $fakelocal_403: ref;
  var $r1050: ref;
  var $i269: int;
  var $i67: int;
  var $r332: ref;
  var $r443: ref;
  var $i13: int;
  var $fakelocal_82: ref;
  var $i180: int;
  var $r453: ref;
  var $r1049: ref;
  var $r780: ref;
  var i534: int;
  var $r569: ref;
  var $r901: ref;
  var $r509: ref;
  var i532: int;
  var $r1019: ref;
  var $fakelocal_523: ref;
  var $fakelocal_317: ref;
  var $fakelocal_89: ref;
  var $fakelocal_120: ref;
  var $fakelocal_186: ref;
  var $fakelocal_235: ref;
  var $r264: ref;
  var i402: int;
  var i501: int;
  var $r700: ref;
  var $fakelocal_197: ref;
  var $r643: ref;
  var $i187: int;
  var i529: int;
  var $r364: ref;
  var $i87: int;
  var $i19: int;
  var $fakelocal_210: ref;
  var $r300: ref;
  var $r554: ref;
  var $fakelocal_85: ref;
  var $r25: ref;
  var $r449: ref;
  var $fakelocal_11: ref;
  var $fakelocal_187: ref;
  var $r76: ref;
  var $r253: ref;
  var $fakelocal_427: ref;
  var $r96: ref;
  var $r870: ref;
  var $r978: ref;
  var $fakelocal_421: ref;
  var i533: int;
  var $r671: ref;
  var $i36: int;
  var $fakelocal_97: ref;
  var $fakelocal_312: ref;
  var $r111: ref;
  var $fakelocal_537: ref;
  var $fakelocal_519: ref;
  var $r83: ref;
  var $fakelocal_142: ref;
  var $r523: ref;
  var $fakelocal_307: ref;
  var $fakelocal_530: ref;
  var $fakelocal_340: ref;
  var i498: int;
  var $fakelocal_105: ref;
  var $r431: ref;
  var i423: int;
  var $r68: ref;
  var $r218: ref;
  var $r887: ref;
  var $r696: ref;
  var $fakelocal_342: ref;
  var $i213: int;
  var $r714: ref;
  var $i205: int;
  var $r559: ref;
  var $fakelocal_497: ref;
  var $r563: ref;
  var $i241: int;
  var $r889: ref;
  var i472: int;
  var $fakelocal_457: ref;
  var $r594: ref;
  var $r511: ref;
  var $i115: int;
  var $r873: ref;
  var $r2: ref;
  var $r43: ref;
  var $r29: ref;
  var $fakelocal_328: ref;
  var $r48: ref;
  var $r568: ref;
  var $fakelocal_150: ref;
  var $r283: ref;
  var $r1073: ref;
  var $r58: ref;
  var $fakelocal_63: ref;
  var $r906: ref;
  var i459: int;
  var $i101: int;
  var $r837: ref;
  var $r930: ref;
  var $i90: int;
  var $i82: int;
  var $i63: int;
  var $i53: int;
  var $r379: ref;
  var $r1072: ref;
  var $fakelocal_128: ref;
  var i311: int;
  var $r678: ref;
  var $r421: ref;
  var $r22: ref;
  var $r992: ref;
  var $r1063: ref;
  var $fakelocal_28: ref;
  var $r386: ref;
  var $fakelocal_42: ref;
  var $fakelocal_525: ref;
  var $fakelocal_303: ref;
  var $r1020: ref;
  var $r695: ref;
  var $r794: ref;
  var $r171: ref;
  var $i128: int;
  var $fakelocal_231: ref;
  var $r295: ref;
  var i465: int;
  var $r205: ref;
  var $fakelocal_476: ref;
  var $r571: ref;
  var $fakelocal_541: ref;
  var $i259: int;
  var $fakelocal_214: ref;
  var $fakelocal_308: ref;
  var i478: int;
  var $r1015: ref;
  var $r134: ref;
  var $r580: ref;
  var $r286: ref;
  var $r661: ref;
  var i424: int;
  var $r221: ref;
  var $r227: ref;
  var $r1039: ref;
  var $r934: ref;
  var $r654: ref;
  var $fakelocal_156: ref;
  var $fakelocal_522: ref;
  var $fakelocal_424: ref;
  var $i272: int;
  var $r1003: ref;
  var $fakelocal_110: ref;
  var i489: int;
  var $fakelocal_333: ref;
  var $r838: ref;
  var i503: int;
  var $fakelocal_263: ref;
  var $fakelocal_479: ref;
  var $r668: ref;
  var $r798: ref;
  var $r89: ref;
  var $i189: int;
  var $r432: ref;
  var $i253: int;
  var $r710: ref;
  var $r830: ref;
  var $fakelocal_38: ref;
  var $fakelocal_75: ref;
  var $r251: ref;
  var $r426: ref;
  var $r189: ref;
  var $i262: int;
  var $r564: ref;
  var $r874: ref;
  var i356: int;
  var $r1006: ref;
  var $i29: int;
  var i283: int;
  var $fakelocal_252: ref;
  var $r506: ref;
  var $r173: ref;
  var $fakelocal_439: ref;
  var $r153: ref;
  var $fakelocal_154: ref;
  var $r872: ref;
  var $r549: ref;
  var $r722: ref;
  var $r973: ref;
  var $r923: ref;
  var $fakelocal_319: ref;
  var $i113: int;
  var $r625: ref;
  var $r883: ref;
  var $r336: ref;
  var $fakelocal_86: ref;
  var $i58: int;
  var $r1079: ref;
  var $r864: ref;
  var $r855: ref;
  var $r107: ref;
  var $r1067: ref;
  var $r401: ref;
  var $r211: ref;
  var $r783: ref;
  var $r185: ref;
  var $r620: ref;
  var i303: int;
  var $r324: ref;
  var i307: int;
  var $r630: ref;
  var i360: int;
  var $r532: ref;
  var $i112: int;
  var $r1075: ref;
  var $fakelocal_6: ref;
  var $r636: ref;
  var $fakelocal_190: ref;
  var $r1001: ref;
  var $r452: ref;
  var $r884: ref;
  var $fakelocal_136: ref;
  var $fakelocal_196: ref;
  var $r472: ref;
  var $fakelocal_52: ref;
  var i405: int;
  var $r731: ref;
  var $i183: int;
  var $fakelocal_345: ref;
  var $r357: ref;
  var $i86: int;
  var $r217: ref;
  var $r1053: ref;
  var $i16: int;
  var $r744: ref;
  var $r352: ref;
  var $fakelocal_388: ref;
  var $r320: ref;
  var $r779: ref;
  var $r933: ref;
  var $r545: ref;
  var $r1027: ref;
  var $fakelocal_305: ref;
  var $fakelocal_331: ref;
  var $r39: ref;
  var $i114: int;
  var $r886: ref;
  var $i186: int;
  var $fakelocal_470: ref;
  var $r125: ref;
  var $r527: ref;
  var $r212: ref;
  var $fakelocal_458: ref;
  var $r760: ref;
  var $r179: ref;
  var i514: int;
  var $r102: ref;
  var i544: int;
  var $fakelocal_415: ref;
  var i384: int;
  var $fakelocal_507: ref;
  var $i119: int;
  var $r410: ref;
  var $r720: ref;
  var $i54: int;
  var $fakelocal_90: ref;
  var $r321: ref;
  var $r56: ref;
  var $i268: int;
  var $r1042: ref;
  var i330: int;
  var $r632: ref;
  var $fakelocal_102: ref;
  var i414: int;
  var $fakelocal_534: ref;
  var $fakelocal_229: ref;
  var $r214: ref;
  var $r693: ref;
  var i287: int;
  var $r927: ref;
  var $r246: ref;
  var $r836: ref;
  var $fakelocal_219: ref;
  var i485: int;
  var $i179: int;
  var $r442: ref;
  var $i12: int;
  var $fakelocal_481: ref;
  var $r146: ref;
  var $r982: ref;
  var $r1057: ref;
  var $r206: ref;
  var i361: int;
  var $r746: ref;
  var $r26: ref;
  var $r491: ref;
  var $fakelocal_504: ref;
  var i536: int;
  var $r416: ref;
  var i280: int;
  var $r13: ref;
  var $r113: ref;
  var $fakelocal_362: ref;
  var i429: int;
  var $i254: int;
  var $fakelocal_286: ref;
  var i321: int;
  var $fakelocal_234: ref;
  var $i195: int;
  var $fakelocal_256: ref;
  var $r149: ref;
  var $r482: ref;
  var $r203: ref;
  var $r857: ref;
  var $i9: int;
  var $r751: ref;
  var i500: int;
  var $i176: int;
  var i449: int;
  var $fakelocal_250: ref;
  var $r306: ref;
  var $r987: ref;
  var i294: int;
  var $r861: ref;
  var $i203: int;
  var i377: int;
  var i349: int;
  var $r893: ref;
  var $i117: int;
  var $fakelocal_9: ref;
  var $fakelocal_358: ref;
  var $r738: ref;
  var $fakelocal_153: ref;
  var $fakelocal_382: ref;
  var $r1034: ref;
  var $r567: ref;
  var $i240: int;
  var $r819: ref;
  var $fakelocal_239: ref;
  var $fakelocal_532: ref;
  var $fakelocal_324: ref;
  var $r894: ref;
  var $r793: ref;
  var i275: int;
  var $fakelocal_448: ref;
  var $r239: ref;
  var $fakelocal_30: ref;
  var $fakelocal_193: ref;
  var $fakelocal_19: ref;
  var $fakelocal_32: ref;
  var $i34: int;
  var $fakelocal_412: ref;
  var $i123: int;
  var $r114: ref;
  var $r729: ref;
  var $r621: ref;
  var $r481: ref;
  var $r755: ref;
  var $r167: ref;
  var $r411: ref;
  var $r1044: ref;
  var $fakelocal_459: ref;
  var $r565: ref;
  var i512: int;
  var i281: int;
  var $r93: ref;
  var $r670: ref;
  var i367: int;
  var $fakelocal_472: ref;
  var $i231: int;
  var $r997: ref;
  var $fakelocal_441: ref;
  var $r655: ref;
  var $fakelocal_418: ref;
  var $fakelocal_179: ref;
  var $r916: ref;
  var $r747: ref;
  var i522: int;
  var $r333: ref;
  var $r420: ref;
  var $r103: ref;
  var $fakelocal_336: ref;
  var $r476: ref;
  var $r132: ref;
  var $i140: int;
  var $fakelocal_108: ref;
  var $fakelocal_506: ref;
  var $r69: ref;
  var i320: int;
  var $r1082: ref;
  var $r785: ref;
  var $r1055: ref;
  var $r774: ref;
  var $i251: int;
  var $r981: ref;
  var $i181: int;
  var $r1029: ref;
  var $fakelocal_22: ref;
  var $r1009: ref;
  var $fakelocal_265: ref;
  var $r396: ref;
  var $r155: ref;
  var $r505: ref;
  var $i226: int;
  var $fakelocal_109: ref;
  var $fakelocal_70: ref;
  var $fakelocal_460: ref;
  var i427: int;
  var $fakelocal_241: ref;
  var $fakelocal_327: ref;
  var i409: int;
  var $r1058: ref;
  var $r666: ref;
  var $r1062: ref;
  var $fakelocal_285: ref;
  var i323: int;
  var $r552: ref;
  var $r1048: ref;
  var i329: int;
  var $i66: int;
  var $r1041: ref;
  var $r810: ref;
  var $r1016: ref;
  var i535: int;
  var $fakelocal_73: ref;
  var $fakelocal_508: ref;
  var $r635: ref;
  var $i130: int;
  var $fakelocal_279: ref;
  var $r716: ref;
  var $r252: ref;
  var $r1083: ref;
  var $i18: int;
  var $r14: ref;
  var $r633: ref;
  var $r929: ref;
  var $fakelocal_56: ref;
  var z0: int;
  var $r36: ref;
  var $fakelocal_183: ref;
  var $fakelocal_172: ref;
  var $i260: int;
  var $r742: ref;
  var $fakelocal_491: ref;
  var i341: int;
  var i350: int;
  var $r787: ref;
  var $fakelocal_99: ref;
  var i488: int;
  var $fakelocal_417: ref;
  var $fakelocal_257: ref;
  var $r605: ref;
  var $fakelocal_326: ref;
  var $i136: int;
  var i492: int;
  var $i229: int;
  var $r197: ref;
  var $r110: ref;
  var i511: int;
  var $r150: ref;
  var $i42: int;
  var i313: int;
  var $r370: ref;
  var $i206: int;
  var $r613: ref;
  var $r274: ref;
  var $r84: ref;
  var $r761: ref;
  var i375: int;
  var $fakelocal_62: ref;
  var $r434: ref;
  var $r305: ref;
  var $i51: int;
  var $fakelocal_199: ref;
  var $fakelocal_494: ref;
  var $r419: ref;
  var $r92: ref;
  var $fakelocal_47: ref;
  var $fakelocal_51: ref;
  var i348: int;
  var $i108: int;
  var $fakelocal_139: ref;
  var $i165: int;
  var $r845: ref;
  var $r909: ref;
  var $r926: ref;
  var i346: int;
  var $r147: ref;
  var $r1010: ref;
  var $r938: ref;
  var $i52: int;
  var $r835: ref;
  var $r999: ref;
  var $i41: int;
  var $r475: ref;
  var $i150: int;
  var $r193: ref;
  var $i215: int;
  var $fakelocal_440: ref;
  var $fakelocal_189: ref;
  var $r216: ref;
  var $r181: ref;
  var $fakelocal_496: ref;
  var i296: int;
  var $i28: int;
  var $r991: ref;
  var $r752: ref;
  var $r652: ref;
  var $i40: int;
  var $fakelocal_222: ref;
  var i476: int;
  var $fakelocal_76: ref;
  var $fakelocal_133: ref;
  var $r724: ref;
  var $r956: ref;
  var $fakelocal_25: ref;
  var $i220: int;
  var $r376: ref;
  var $fakelocal_242: ref;
  var $r879: ref;
  var $fakelocal_533: ref;
  var $fakelocal_291: ref;
  var $fakelocal_348: ref;
  var $fakelocal_430: ref;
  var i436: int;
  var $r78: ref;
  var $r941: ref;
  var $r1031: ref;
  var $r653: ref;
  var i305: int;
  var $r905: ref;
  var $r707: ref;
  var $fakelocal_325: ref;
  var $r1074: ref;
  var $fakelocal_270: ref;
  var $r974: ref;
  var i486: int;
  var $r50: ref;
  var $fakelocal_371: ref;
  var $i249: int;
  var $i25: int;
  var $r119: ref;
  var $fakelocal_467: ref;
  var $r1011: ref;
  var $r161: ref;
  var $i157: int;
  var $r820: ref;
  var $r248: ref;
  var $r593: ref;
  var $fakelocal_444: ref;
  var $r557: ref;
  var $i245: int;
  var $r293: ref;
  var $r853: ref;
  var $r138: ref;
  var $i121: int;
  var $r679: ref;
  var $fakelocal_500: ref;
  var $fakelocal_18: ref;
  var $fakelocal_343: ref;
  var $fakelocal_8: ref;
  var $fakelocal_428: ref;
  var $fakelocal_278: ref;
  var $r464: ref;
  var $fakelocal_146: ref;
  var $i142: int;
  var $fakelocal_168: ref;
  var $fakelocal_65: ref;
  var $i159: int;
  var $r100: ref;
  var $r959: ref;
  var $r44: ref;
  var $r406: ref;
  var $r299: ref;
  var i312: int;
  var $fakelocal_409: ref;
  var $i47: int;
  var $r298: ref;
  var $r869: ref;
  var $r126: ref;
  var $fakelocal_0: ref;
  var $i84: int;
  var $r95: ref;
  var $fakelocal_247: ref;
  var $fakelocal_483: ref;
  var $r80: ref;
  var $fakelocal_354: ref;
  var $fakelocal_433: ref;
  var $i116: int;
  var $fakelocal_217: ref;
  var $i270: int;
  var $r667: ref;
  var $r536: ref;
  var $i207: int;
  var $r686: ref;
  var $r424: ref;
  var $i35: int;
  var $fakelocal_488: ref;
  var i401: int;
  var $fakelocal_59: ref;
  var i428: int;
  var $fakelocal_535: ref;
  var $r862: ref;
  var $r546: ref;
  var $fakelocal_64: ref;
  var $r1017: ref;
  var $r858: ref;
  var $r818: ref;
  var $r15: ref;
  var $r846: ref;
  var $r334: ref;
  var $fakelocal_413: ref;
  var $i185: int;
  var $r688: ref;
  var $r318: ref;
  var $fakelocal_228: ref;
  var i434: int;
  var $fakelocal_35: ref;
  var $fakelocal_206: ref;
  var $fakelocal_316: ref;
  var $r387: ref;
  var $r172: ref;
  var $r676: ref;
  var i319: int;
  var $i158: int;
  var $fakelocal_31: ref;
  var $r910: ref;
  var $r277: ref;
  var i419: int;
  var i452: int;
  var $i97: int;
  var $r813: ref;
  var $r1000: ref;
  var $i146: int;
  var $r32: ref;
  var $i152: int;
  var $r949: ref;
  var $r817: ref;
  var $fakelocal_446: ref;
  var i291: int;
  var $fakelocal_309: ref;
  var i474: int;
  var $i271: int;
  var $i210: int;
  var $i221: int;
  var $fakelocal_526: ref;
  var i450: int;
  var $r614: ref;
  var $r513: ref;
  var $r417: ref;
  var i464: int;
  var $fakelocal_338: ref;
  var $fakelocal_419: ref;
  var $i261: int;
  var i376: int;
  var $fakelocal_144: ref;
  var $i20: int;
  var $r455: ref;
  var $r34: ref;
  var $r255: ref;
  var $r966: ref;
  var $r281: ref;
  var $r479: ref;
  var $i75: int;
  var $r325: ref;
  var $r902: ref;
  var $r341: ref;
  var $r979: ref;
  var i509: int;
  var i439: int;
  var $z2: int;
  var $fakelocal_27: ref;
  var $r770: ref;
  var $fakelocal_237: ref;
  var $i198: int;
  var $r87: ref;
  var $r109: ref;
  var $r1068: ref;
  var $fakelocal_423: ref;
  var $r807: ref;
  var $fakelocal_113: ref;
  var $r1071: ref;
  var $fakelocal_397: ref;
  var $fakelocal_524: ref;
  var $fakelocal_314: ref;
  var $r915: ref;
  var $r865: ref;
  var i433: int;
  var i416: int;
  var $i218: int;
  var $r931: ref;
  var i410: int;
  var $r350: ref;
  var $r656: ref;
  var $fakelocal_162: ref;
  var $i81: int;
  var $r657: ref;
  var i393: int;
  var i354: int;
  var $r629: ref;
  var $r265: ref;
  var $r854: ref;
  var i528: int;
  var $fakelocal_322: ref;
  var $r413: ref;
  var $r844: ref;
  var $r106: ref;
  var $r10: ref;
  var $fakelocal_351: ref;
  var $fakelocal_499: ref;
  var $r399: ref;
  var $r365: ref;
  var i385: int;
  var $r517: ref;
  var $r1012: ref;
  var $r222: ref;
  var $r315: ref;
  var $r775: ref;
  var $r939: ref;
  var $r706: ref;
  var $r129: ref;
  var $fakelocal_145: ref;
  var $r1070: ref;
  var $r733: ref;
  var $fakelocal_245: ref;
  var $fakelocal_87: ref;
  var $fakelocal_202: ref;
  var $fakelocal_288: ref;
  var $r960: ref;
  var $r863: ref;
  var $r832: ref;
  var $i104: int;
  var i466: int;
  var $fakelocal_34: ref;
  var i541: int;
  var $r881: ref;
  var $r759: ref;
  var $r583: ref;
  var i523: int;
  var $i236: int;
  var $r596: ref;
  var $r85: ref;
  var $r1014: ref;
  var $r53: ref;
  var $r904: ref;
  var $r646: ref;
  var $i223: int;
  var $fakelocal_262: ref;
  var $fakelocal_475: ref;
  var $fakelocal_501: ref;
  var i309: int;
  var $r944: ref;
  var i295: int;
  var $r304: ref;
  var i491: int;
  var $r280: ref;
  var $r585: ref;
  var i502: int;
  var $fakelocal_211: ref;
  var $fakelocal_213: ref;
  var $r294: ref;
  var $r98: ref;
  var $r962: ref;
  var i304: int;
  var i355: int;
  var $r160: ref;
  var $r215: ref;
  var $fakelocal_230: ref;
  var $r483: ref;
  var $r322: ref;
  var $r244: ref;
  var $r356: ref;
  var $r480: ref;
  var $i156: int;
  var $r224: ref;
  var $r1037: ref;
  var $r777: ref;
  var $fakelocal_124: ref;
  var $r704: ref;
  var $r715: ref;
  var $r890: ref;
  var $r347: ref;
  var $fakelocal_166: ref;
  var $r11: ref;
  var $r831: ref;
  var $fakelocal_134: ref;
  var $i32: int;
  var $r647: ref;
  var $fakelocal_465: ref;
  var $fakelocal_167: ref;
  var $r766: ref;
  var $r758: ref;
  var $i208: int;
  var $fakelocal_48: ref;
  var $r524: ref;
  var $r393: ref;
  var i435: int;
  var $r757: ref;
  var $r628: ref;
  var $r514: ref;
  var $i100: int;
  var $r812: ref;
  var $r578: ref;
  var i438: int;
  var i453: int;
  var i443: int;
  var $r473: ref;
  var i425: int;
  var $r303: ref;
  var $fakelocal_194: ref;
  var $r833: ref;
  var $i212: int;
  var $r81: ref;
  var $r240: ref;
  var $r644: ref;
  var $r371: ref;
  var i462: int;
  var $r378: ref;
  var $r388: ref;
  var $r919: ref;
  var i542: int;
  var $r815: ref;
  var $fakelocal_521: ref;
  var $fakelocal_161: ref;
  var $fakelocal_88: ref;
  var $r762: ref;
  var $fakelocal_451: ref;
  var i335: int;
  var $r692: ref;
  var $r639: ref;
  var i513: int;
  var i0: int;
  var $r976: ref;
  var $fakelocal_101: ref;
  var $fakelocal_463: ref;
  var i372: int;
  var $r717: ref;
  var $r531: ref;
  var $r689: ref;
  var $fakelocal_293: ref;
  var $fakelocal_269: ref;
  var $fakelocal_260: ref;
  var $fakelocal_81: ref;
  var $fakelocal_180: ref;
  var $r617: ref;
  var $r63: ref;
  var $r825: ref;
  var $r398: ref;
  var i297: int;
  var $fakelocal_379: ref;
  var $fakelocal_112: ref;
  var $r18: ref;
  var $r734: ref;
  var $r588: ref;
  var $r112: ref;
  var $r235: ref;
  var $fakelocal_123: ref;
  var $i174: int;
  var $r228: ref;
  var $i252: int;
  var $r664: ref;
  var i483: int;
  var $fakelocal_58: ref;
  var $fakelocal_232: ref;
  var $r771: ref;
  var $i120: int;
  var $r470: ref;
  var $fakelocal_165: ref;
  var $fakelocal_473: ref;
  var $fakelocal_498: ref;
  var $r71: ref;
  var i339: int;
  var $i144: int;
  var i278: int;
  var $fakelocal_36: ref;
  var $fakelocal_376: ref;
  var $fakelocal_364: ref;
  var $r990: ref;
  var $i182: int;
  var i520: int;
  var $fakelocal_177: ref;
  var $r456: ref;
  var $i26: int;
  var $fakelocal_462: ref;
  var $r27: ref;
  var $r691: ref;
  var $i155: int;
  var $r913: ref;
  var i495: int;
  var $i15: int;
  var $r180: ref;
  var $r213: ref;
  var $i77: int;
  var $r843: ref;
  var $r975: ref;
  var $r850: ref;
  var $r198: ref;
  var $r541: ref;
  var $i38: int;
  var i392: int;
  var $fakelocal_540: ref;
  var i543: int;
  var $r852: ref;
  var $r961: ref;
  var $fakelocal_373: ref;
  var $r41: ref;
  var i373: int;
  var $i204: int;
  var $r503: ref;
  var $r390: ref;
  var i477: int;
  var $i46: int;
  var $r891: ref;
  var i284: int;
  var i340: int;
  var i389: int;
  var $r924: ref;
  var i445: int;
  var $fakelocal_141: ref;
  var $r61: ref;
  var $r597: ref;
  var $r645: ref;
  var $fakelocal_350: ref;
  var $r148: ref;
  var $r262: ref;
  var $fakelocal_310: ref;
  var i396: int;
  var $fakelocal_127: ref;
  var $r1081: ref;
  var $i8: int;
  var $fakelocal_396: ref;
  var $fakelocal_410: ref;
  var i1: int;
  var $r598: ref;
  var i481: int;
  var $r380: ref;
  var $fakelocal_251: ref;
  var $fakelocal_452: ref;
  var $fakelocal_200: ref;
  var $r708: ref;
  var $fakelocal_320: ref;
  var $fakelocal_435: ref;
  var i285: int;
  var $r258: ref;
  var $r600: ref;
  var $r535: ref;
  var $fakelocal_149: ref;
  var $fakelocal_300: ref;
  var $fakelocal_337: ref;
  var i431: int;
  var $fakelocal_207: ref;
  var $r168: ref;
  var $r772: ref;
  var i358: int;
  var $fakelocal_281: ref;
  var $fakelocal_330: ref;
  var $r736: ref;
  var $fakelocal_321: ref;
  var $fakelocal_40: ref;
  var $r952: ref;
  var $fakelocal_184: ref;
  var $r726: ref;
  var $r558: ref;
  var $r908: ref;
  var $r823: ref;
  var $r136: ref;
  var $r184: ref;
  var $r1047: ref;
  var $i153: int;
  var $r800: ref;
  var $r120: ref;
  var $fakelocal_158: ref;
  var $r1005: ref;
  var $fakelocal_339: ref;
  var $r946: ref;
  var $r732: ref;
  var $r437: ref;
  var $fakelocal_29: ref;
  var i338: int;
  var $fakelocal_155: ref;
  var $i79: int;
  var $i50: int;
  var $r118: ref;
  var $fakelocal_117: ref;
  var i458: int;
  var $r801: ref;
  var $r260: ref;
  var $r659: ref;
  var $r510: ref;
  var $fakelocal_464: ref;
  var $fakelocal_170: ref;
  var $r135: ref;
  var $fakelocal_509: ref;
  var $r439: ref;
  var i310: int;
  var $r986: ref;
  var $r73: ref;
  var i344: int;
  var i456: int;
  var $r433: ref;
  var $r79: ref;
  var i530: int;
  var $r169: ref;
  var i315: int;
  var $r268: ref;
  var $r500: ref;
  var $r1064: ref;
  var $r57: ref;
  var $fakelocal_33: ref;
  var $r912: ref;
  var $i224: int;
  var $fakelocal_275: ref;
  var $fakelocal_461: ref;
  var $r59: ref;
  var i482: int;
  var $r582: ref;
  var $i170: int;
  var i274: int;
  var i442: int;
  var $fakelocal_369: ref;
  var $r8: ref;
  var i369: int;
  var $fakelocal_129: ref;
  var i368: int;
  var $r236: ref;
  var $fakelocal_367: ref;
  var i454: int;
  var $fakelocal_426: ref;
  var $r577: ref;
  var $r743: ref;
  var $r296: ref;
  var $r196: ref;
  var $r603: ref;
  var i468: int;
  var $i17: int;
  var $r159: ref;
  var $r345: ref;
  var $i57: int;
  var $fakelocal_147: ref;
  var $fakelocal_131: ref;
  var $r848: ref;
  var $r769: ref;
  var $i85: int;
  var $r895: ref;
  var $r451: ref;
  var $r232: ref;
  var $fakelocal_244: ref;
  var $fakelocal_119: ref;
  var $fakelocal_181: ref;
  var $r143: ref;
  var $i197: int;
  var $r1023: ref;
  var $r985: ref;
  var $r343: ref;
  var i517: int;
  var $r425: ref;
  var $r394: ref;
  var $r499: ref;
  var i426: int;
  var $r225: ref;
  var $r608: ref;
  var $fakelocal_238: ref;
  var $r497: ref;
  var $r829: ref;
  var $i214: int;
  var $i216: int;
  var $i209: int;
  var $r1080: ref;
  var $fakelocal_218: ref;
  var $i134: int;
  var $r20: ref;
  var $r188: ref;
  var $r508: ref;
  var $r998: ref;
  var $r230: ref;
  var $fakelocal_273: ref;
  var $r834: ref;
  var $fakelocal_55: ref;
  var $r438: ref;
  var $r462: ref;
  var $r1035: ref;
  var $r142: ref;
  var $r859: ref;
  var $i125: int;
  var $i44: int;
  var $fakelocal_425: ref;
  var i347: int;
  var $fakelocal_152: ref;
  var $i78: int;
  var i417: int;
  var $r447: ref;
  var $r367: ref;
  var $r595: ref;
  var $r702: ref;
  var $i149: int;
  var $i177: int;
  var $fakelocal_16: ref;
  var $r972: ref;
  var $fakelocal_135: ref;
  var $r351: ref;
  var $fakelocal_311: ref;
  var $r403: ref;
  var $fakelocal_10: ref;
  var $r1018: ref;
  var i407: int;
  var $r474: ref;
  var $fakelocal_50: ref;
  var $r502: ref;
  var $r1007: ref;
  var $i246: int;
  var i521: int;
  var $r824: ref;
  var $fakelocal_208: ref;
  var i467: int;
  var $r623: ref;
  var $r984: ref;
  var $r270: ref;
  var $r796: ref;
  var $r900: ref;
  var $r263: ref;
  var $fakelocal_445: ref;
  var $r928: ref;
  var $r609: ref;
  var $r538: ref;
  var $r634: ref;
  var $r842: ref;
  var $fakelocal_370: ref;
  var $r342: ref;
  var $fakelocal_61: ref;
  var $r418: ref;
  var $i139: int;
  var i499: int;
  var i490: int;
  var $fakelocal_173: ref;
  var $r187: ref;
  var $r355: ref;
  var $i190: int;
  var $r335: ref;
  var $fakelocal_335: ref;
  var $i175: int;
  var $r663: ref;
  var $fakelocal_57: ref;
  var i391: int;
  var $r64: ref;
  var $r247: ref;
  var $r971: ref;
  var $r690: ref;
  var i430: int;
  var i299: int;
  var $fakelocal_205: ref;
  var i282: int;
  var $r687: ref;
  var $fakelocal_478: ref;
  var $r631: ref;
  var $fakelocal_264: ref;
  var $r718: ref;
  var $fakelocal_39: ref;
  var $fakelocal_514: ref;
  var $r468: ref;
  var i505: int;
  var $fakelocal_301: ref;
  var $fakelocal_402: ref;
  var $r921: ref;
  var i415: int;
  var $r338: ref;
  var $fakelocal_387: ref;
  var $i5: int;
  var $i163: int;
  var $r750: ref;
  var $fakelocal_372: ref;
  var i406: int;
  var $fakelocal_174: ref;
  var $i234: int;
  var $i178: int;
  var $r786: ref;
  var i451: int;
  var $r30: ref;
  var $r279: ref;
  var i327: int;
  var $fakelocal_277: ref;
  var $r381: ref;
  var $r562: ref;
  var $r219: ref;
  var $r741: ref;
  var $i135: int;
  var $r90: ref;
  var $i166: int;
  var $r368: ref;
  var $i94: int;
  var $r363: ref;
  var i397: int;
  var $r604: ref;
  var $r395: ref;
  var $i31: int;
  var $i88: int;
  var $r223: ref;
  var $r727: ref;
  var $r841: ref;
  var $r504: ref;
  var $fakelocal_209: ref;
  var $i168: int;
  var $r200: ref;
  var $r662: ref;
  var $r1025: ref;
  var $r954: ref;
  var i519: int;
  var i480: int;
  var $i45: int;
  var $r273: ref;
  var $r67: ref;
  var $fakelocal_17: ref;
  var $r489: ref;
  var $r658: ref;
  var $r880: ref;
  var i400: int;
  var $fakelocal_176: ref;
  var $fakelocal_271: ref;
  var $fakelocal_15: ref;
  var i371: int;
  var $r435: ref;
  var $r191: ref;
  var $i55: int;
  var $r1077: ref;
  var $r46: ref;
  var $fakelocal_46: ref;
  var $r537: ref;
  var i440: int;
  var $r301: ref;
  var i538: int;
  var $i39: int;
  var $fakelocal_216: ref;
  var $r358: ref;
  var $fakelocal_538: ref;
  var $r194: ref;
  var $r116: ref;
  var $r493: ref;
  var $r512: ref;
  var $r970: ref;
  var $r521: ref;
  var $r821: ref;
  var $r672: ref;
  var $i225: int;
  var $r584: ref;
  var i328: int;
  var $fakelocal_392: ref;
  var $fakelocal_349: ref;
  var i386: int;
  var $fakelocal_383: ref;
  var $i188: int;
  var $r233: ref;
  var $r297: ref;
  var $r1: ref;
  var $fakelocal_394: ref;
  var $r917: ref;
  var $fakelocal_518: ref;
  var $i235: int;
  var $i91: int;
  var $r790: ref;
  var i496: int;
  var $fakelocal_516: ref;
  var $r947: ref;
  var $r313: ref;
  var $r1078: ref;
  var $fakelocal_390: ref;
  var $r47: ref;
  var i353: int;
  var $r9: ref;
  var $r375: ref;
  var $r115: ref;
  var $fakelocal_302: ref;
  var $r220: ref;
  var $fakelocal_103: ref;
  var $r97: ref;
  var $fakelocal_203: ref;
  var $r680: ref;
  var $r576: ref;
  var $r271: ref;
  var $fakelocal_69: ref;
  var $r606: ref;
  var $fakelocal_290: ref;
  var $fakelocal_359: ref;
  var i378: int;
  var $r965: ref;
  var i441: int;
  var $fakelocal_408: ref;
  var $r876: ref;
  var $r822: ref;
  var $fakelocal_95: ref;
  var $fakelocal_477: ref;
  var $r699: ref;
  var $fakelocal_280: ref;
  var $r626: ref;
  var $i33: int;
  var $i267: int;
  var $i264: int;
  var $fakelocal_43: ref;
  var $i62: int;
  var $fakelocal_539: ref;
  var $i30: int;
  var i293: int;
  var $fakelocal_191: ref;
  var $r888: ref;
  var $r163: ref;
  var $fakelocal_493: ref;
  var $r1022: ref;
  var $i238: int;
  var i336: int;
  var $r137: ref;
  var $i73: int;
  var $r1026: ref;
  var $i92: int;
  var $r719: ref;
  var $fakelocal_118: ref;
  var $fakelocal_520: ref;
  var $r164: ref;
  var $r466: ref;
  var $r337: ref;
  var $r267: ref;
  var i286: int;
  var $r487: ref;
  var $fakelocal_495: ref;
  var $fakelocal_26: ref;
  var $r127: ref;
  var i390: int;
  var $fakelocal_355: ref;
  var $fakelocal_438: ref;
  var $r911: ref;
  var $i266: int;
  var $fakelocal_104: ref;
  var $r797: ref;
  var $r694: ref;
  var $r764: ref;
  var $i64: int;
  var $fakelocal_295: ref;
  var $fakelocal_44: ref;
  var $r572: ref;
  var $fakelocal_398: ref;
  var $r587: ref;
  var $r339: ref;
  var $r935: ref;
  var $r784: ref;
  var $fakelocal_436: ref;
  var $i169: int;
  var $r261: ref;
  var $fakelocal_79: ref;
  var $r391: ref;
  var $r920: ref;
  var $r713: ref;
  var i444: int;
  var $fakelocal_122: ref;
  var $r539: ref;
  var i374: int;
  var $r795: ref;
  var $r581: ref;
  var $r7: ref;
  var i421: int;
  var $fakelocal_334: ref;
  var $fakelocal_411: ref;
  var $r31: ref;
  var $r665: ref;
  var $fakelocal_215: ref;
  var $fakelocal_466: ref;
  var i515: int;
  var $r1024: ref;
  var $i167: int;
  var $r847: ref;
  var $fakelocal_185: ref;
  var i411: int;
  var $fakelocal_296: ref;
  var $fakelocal_384: ref;
  var $i137: int;
  var $r145: ref;
  var $r918: ref;
  var $r525: ref;
  var $fakelocal_223: ref;
  var $i70: int;
  var $i196: int;
  var $fakelocal_4: ref;
  var i300: int;
  var $r739: ref;
  var $r199: ref;
  var $fakelocal_474: ref;
  var $i191: int;
  var $r282: ref;
  var $r767: ref;
  var $fakelocal_375: ref;
  var i463: int;
  var $r490: ref;
  var $fakelocal_268: ref;
  var i527: int;
  var $fakelocal_67: ref;
  var $r782: ref;
  var $r12: ref;
  var $r703: ref;
  var i302: int;
  var $r892: ref;
  var $r789: ref;
  var $fakelocal_485: ref;
  var $fakelocal_130: ref;
  var $fakelocal_115: ref;
  var $i141: int;
  var $fakelocal_347: ref;
  var $fakelocal_157: ref;
  var i510: int;
  var $r344: ref;
  var $r259: ref;
  var i432: int;
  var $r740: ref;
  var i540: int;
  var $r936: ref;
  var $i6: int;
  var i447: int;
  var $r70: ref;
  var $r953: ref;
  var $i93: int;
  var $r440: ref;
  var i333: int;
  var $r6: ref;
  var $fakelocal_450: ref;
  var $r996: ref;
  var $r698: ref;
  var $i131: int;
  var $r737: ref;
  var $r256: ref;
  var $i151: int;
  var $fakelocal_378: ref;
  var $i126: int;
  var $i56: int;
  var $i69: int;
  var $fakelocal_132: ref;
  var $r45: ref;
  var $i199: int;
  var $fakelocal_365: ref;
  var $r942: ref;
  var $r1043: ref;
  var $r589: ref;
  var $fakelocal_249: ref;
  var $r477: ref;
  var $r360: ref;
  var i470: int;
  var $i193: int;
  var $r74: ref;
  var $r144: ref;
  var $r165: ref;
  var $fakelocal_259: ref;
  var i279: int;
  var $r484: ref;
  var $i105: int;
  var $fakelocal_116: ref;
  var i418: int;
  var i524: int;
  var i351: int;
  var $r458: ref;
  var $r1040: ref;
  var $fakelocal_298: ref;
  var $i242: int;
  var i325: int;
  var $i161: int;
  var $fakelocal_447: ref;
  var $r170: ref;
  var $r697: ref;
  var $r441: ref;
  var $r763: ref;
  var i504: int;
  var $fakelocal_224: ref;
  var $r640: ref;
  var $r382: ref;
  var $fakelocal_45: ref;
  var $r400: ref;
  var $fakelocal_400: ref;
  var $r108: ref;
  var $r124: ref;
  var $r319: ref;
  var $fakelocal_53: ref;
  var $fakelocal_267: ref;
  var $fakelocal_276: ref;
  var $r241: ref;
  var $i201: int;
  var $i27: int;
  var $fakelocal_361: ref;
  var $r566: ref;
  var $r392: ref;
  var $r54: ref;
  var $fakelocal_380: ref;
  var $r612: ref;
  var $r964: ref;
  var $r553: ref;
  var $r637: ref;
  var $r492: ref;
  var $fakelocal_3: ref;
  var $fakelocal_487: ref;
  var $i127: int;
  var $r19: ref;
  var i292: int;
  var $r471: ref;
  var $r105: ref;
  var $r799: ref;
  var i531: int;
  var $r130: ref;
  var $r5: ref;
  var $r269: ref;
  var i314: int;
  var $r651: ref;
  var i408: int;
  var $fakelocal_12: ref;
  var $r1036: ref;
  var $fakelocal_192: ref;
  var $r139: ref;
  var $r898: ref;
  var $i106: int;
  var $fakelocal_23: ref;
  var $r756: ref;
  var $fakelocal_287: ref;
  var $i257: int;
  var i539: int;
  var $r515: ref;
  var i484: int;
  var $fakelocal_106: ref;
  var i276: int;
  var $r808: ref;
  var i475: int;
  var $r422: ref;
  var $r141: ref;
  var $r285: ref;
  var $r369: ref;
  var $r330: ref;
  var $r897: ref;
  var $r943: ref;
  var $i147: int;
  var $r354: ref;
  var $r77: ref;
  var $r925: ref;
  var $r463: ref;
  var $fakelocal_381: ref;
  var $i65: int;
  var $r548: ref;
  var $fakelocal_274: ref;
  var $r701: ref;
  var $fakelocal_246: ref;
  var $r91: ref;
  var $r331: ref;
  var $fakelocal_169: ref;
  var $r753: ref;
  var $fakelocal_77: ref;
  var $fakelocal_126: ref;
  var i387: int;
  var $r291: ref;
  var $fakelocal_503: ref;
  var $r561: ref;
  var $r748: ref;
  var $r72: ref;
  var $fakelocal_204: ref;
  var $fakelocal_220: ref;
  var $r208: ref;
  var $r257: ref;
  var $r519: ref;
  var $r540: ref;
  var $fakelocal_366: ref;
  var $r287: ref;
  var $i4: int;
  var $r867: ref;
  var $fakelocal_502: ref;
  var $r457: ref;
  var $r735: ref;
  var $r826: ref;
  var $r266: ref;
  var $fakelocal_395: ref;
  var $r660: ref;
  var $r725: ref;
  var $i118: int;
  var $r507: ref;
  var i448: int;
  var $fakelocal_353: ref;
  var i342: int;
  var $fakelocal_527: ref;
  var $i228: int;
  var $r231: ref;
  var i508: int;
  var $r209: ref;
  var $fakelocal_284: ref;
  var $r977: ref;
  var $r896: ref;
  var $fakelocal_171: ref;
  var $i217: int;
  var $fakelocal_315: ref;
  var $r444: ref;
  var $fakelocal_24: ref;
  var $fakelocal_294: ref;
  var $r518: ref;
  var $fakelocal_21: ref;
  var $r465: ref;
  var $r308: ref;
  var $r427: ref;
  var $fakelocal_329: ref;
  var $fakelocal_420: ref;
  var $r326: ref;
  var $r190: ref;
  var $r204: ref;
  var $r162: ref;
  var $r366: ref;
  var $r611: ref;
  var $fakelocal_368: ref;
  var $r768: ref;
  var $r249: ref;
  var $fakelocal_422: ref;
  var $r516: ref;
  var $r496: ref;
  var $r586: ref;
  var $r730: ref;
  var $fakelocal_137: ref;
  var $fakelocal_41: ref;
  var $fakelocal_416: ref;
  var $r60: ref;
  var $r551: ref;
  var i507: int;
  var $i145: int;
  var $i243: int;
  var $r82: ref;
  var $i164: int;
  var $r448: ref;
  var $r560: ref;
  var $r804: ref;
  var i334: int;
  var $fakelocal_212: ref;
  var $r682: ref;
  var $i232: int;
  var i404: int;
  var $r117: ref;
  var $r932: ref;
  var $fakelocal_188: ref;
  var $r951: ref;
  var $r37: ref;
  var $i227: int;
  var $r673: ref;
  var $r327: ref;
  var $r307: ref;
  var $i148: int;
  var $i200: int;
  var $i61: int;
  var $fakelocal_414: ref;
  var i446: int;
  var $fakelocal_159: ref;
  var $fakelocal_14: ref;
  var $fakelocal_471: ref;
  var $r1046: ref;
  var $i160: int;
  var $r851: ref;
  var $r407: ref;
  var $r42: ref;
  var $fakelocal_352: ref;
  var $fakelocal_536: ref;
  var $r24: ref;
  var $fakelocal_346: ref;
  var $fakelocal_393: ref;
  var $i138: int;
  var $r346: ref;
  var $i89: int;
  var $fakelocal_377: ref;
  var $fakelocal_227: ref;
  var $fakelocal_449: ref;
  var $r937: ref;
  var $r86: ref;
  var $i7: int;
  var $fakelocal_386: ref;
  var $r446: ref;
  var $i237: int;
  var $r454: ref;
  var $r1028: ref;
  var $r907: ref;
  var $r38: ref;
  var $r397: ref;
  var $r675: ref;
  var $r788: ref;
  var $r175: ref;
  var $fakelocal_178: ref;
  var $r969: ref;
  var $r778: ref;
  var $fakelocal_434: ref;
  var $r749: ref;
  var $r404: ref;
  var $r556: ref;
  var i388: int;
  var i308: int;
  var $r362: ref;
  var $fakelocal_66: ref;
  var $fakelocal_292: ref;
  var $r590: ref;
  var i460: int;
  var $i80: int;
  var $i265: int;
  var $r816: ref;
  var $fakelocal_121: ref;
  var $r591: ref;
  var $i83: int;
  var $r922: ref;
  var $r389: ref;
  var $fakelocal_100: ref;
  var i497: int;
  var $r622: ref;
  var $r875: ref;
  var $r40: ref;
  var $r373: ref;
  var $r980: ref;
  var $r528: ref;
  var $r243: ref;
  var $r840: ref;
  var $i247: int;
  var $fakelocal_480: ref;
  var i455: int;
  var $i109: int;
  var $r814: ref;
  var $fakelocal_151: ref;
  var $r361: ref;
  var $r328: ref;
  var $i98: int;
  var $fakelocal_391: ref;
  var $fakelocal_323: ref;
  var $r543: ref;
  var $r383: ref;
  var $r1004: ref;
  var $r65: ref;
  var i398: int;
  var $r610: ref;
  var $r183: ref;
  var $fakelocal_143: ref;
  var $fakelocal_344: ref;
  var $fakelocal_93: ref;
  var $r62: ref;
  var $r494: ref;
  var i461: int;
  var $fakelocal_529: ref;
  var $r340: ref;
  var $fakelocal_78: ref;
  var $fakelocal_248: ref;
  var $r574: ref;
  var $r1052: ref;
  var $r681: ref;
  var $r914: ref;
  var $r602: ref;
  var $r811: ref;
  var $r791: ref;
  var $i219: int;
  var $r684: ref;
  var i526: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__1;
    assert {:sourceloc "Sanity.java", 20, -1, -1, -1} true;
    i273 := i0;
    assert {:sourceloc "Sanity.java", 20, -1, -1, -1} true;
    i274 := i1;
    assert {:sourceloc "Sanity.java", 21, -1, -1, -1} true;
    goto anon1630_Then, anon1630_Else;

  anon1630_Else:
    assume {:partition} 0 < i0;
    assert {:sourceloc "Sanity.java", 21, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Sanity.java", 33, -1, -1, -1} true;
    $z2 := 1;
    assert {:sourceloc "Sanity.java", 33, -1, -1, -1} true;
    goto block60;

  block60:
    assert {:sourceloc "Sanity.java", 21, -1, -1, -1} true;
    $l2 := i1;
    assert {:sourceloc "Sanity.java", 21, -1, -1, -1} true;
    call $z1, $exception := sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($l2, 0);
    assert {:sourceloc "Sanity.java", 21, -1, -1, -1} true;
    call z0, $exception := sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($z2, $z1);
    assert {:sourceloc "Sanity.java", 22, -1, -1, -1} true;
    call $r0, $exception := java.lang.Integer$valueOf$int(2);
    assert {:sourceloc "Sanity.java", 22, -1, -1, -1} true;
    call $r1, $exception := java.lang.Integer$valueOf$int(i273);
    assert {:sourceloc "Sanity.java", 22, -1, -1, -1} true;
    call $r2, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r0, $r1);
    assert {:sourceloc "Sanity.java", 22, -1, -1, -1} true;
    goto anon1631_Then, anon1631_Else;

  anon1631_Else:
    assume {:partition} !($heap[$r2, $type] <: java.lang.Integer);
    call $fakelocal_0 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon1631_Then:
    assume {:partition} $heap[$r2, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon6;

  anon6:
    $r3 := $r2;
    assert {:sourceloc "Sanity.java", 22, -1, -1, -1} true;
    goto anon1632_Then, anon1632_Else;

  anon1632_Else:
    assume {:partition} $r3 == $null;
    call $fakelocal_1 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon1632_Then:
    assume {:partition} $r3 != $null;
    $exception := $exception;
    goto anon9;

  anon9:
    call i275, $exception := java.lang.Integer$intValue$($r3);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r4, $exception := java.lang.Integer$valueOf$int(i275);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i3 := 1 + i274;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r5, $exception := java.lang.Integer$valueOf$int($i3);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r6, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r4, $r5);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1633_Then, anon1633_Else;

  anon1633_Else:
    assume {:partition} !($heap[$r6, $type] <: java.lang.Integer);
    call $fakelocal_2 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon1633_Then:
    assume {:partition} $heap[$r6, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon12;

  anon12:
    $r7 := $r6;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1634_Then, anon1634_Else;

  anon1634_Else:
    assume {:partition} $r7 == $null;
    call $fakelocal_3 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon1634_Then:
    assume {:partition} $r7 != $null;
    $exception := $exception;
    goto anon15;

  anon15:
    call i276, $exception := java.lang.Integer$intValue$($r7);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r8, $exception := java.lang.Integer$valueOf$int(i274);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i4 := 2 + i276;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r9, $exception := java.lang.Integer$valueOf$int($i4);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r10, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r8, $r9);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1635_Then, anon1635_Else;

  anon1635_Else:
    assume {:partition} !($heap[$r10, $type] <: java.lang.Integer);
    call $fakelocal_4 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon1635_Then:
    assume {:partition} $heap[$r10, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon18;

  anon18:
    $r11 := $r10;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1636_Then, anon1636_Else;

  anon1636_Else:
    assume {:partition} $r11 == $null;
    call $fakelocal_5 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon1636_Then:
    assume {:partition} $r11 != $null;
    $exception := $exception;
    goto anon21;

  anon21:
    call i277, $exception := java.lang.Integer$intValue$($r11);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r12, $exception := java.lang.Integer$valueOf$int(i276);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i5 := 3 + i277;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r13, $exception := java.lang.Integer$valueOf$int($i5);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r14, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r12, $r13);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1637_Then, anon1637_Else;

  anon1637_Else:
    assume {:partition} !($heap[$r14, $type] <: java.lang.Integer);
    call $fakelocal_6 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon1637_Then:
    assume {:partition} $heap[$r14, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon24;

  anon24:
    $r15 := $r14;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1638_Then, anon1638_Else;

  anon1638_Else:
    assume {:partition} $r15 == $null;
    call $fakelocal_7 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_7;
    return;

  anon1638_Then:
    assume {:partition} $r15 != $null;
    $exception := $exception;
    goto anon27;

  anon27:
    call i278, $exception := java.lang.Integer$intValue$($r15);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r16, $exception := java.lang.Integer$valueOf$int(i277);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i6 := 4 + i278;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r17, $exception := java.lang.Integer$valueOf$int($i6);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r18, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r16, $r17);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1639_Then, anon1639_Else;

  anon1639_Else:
    assume {:partition} !($heap[$r18, $type] <: java.lang.Integer);
    call $fakelocal_8 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_8;
    return;

  anon1639_Then:
    assume {:partition} $heap[$r18, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon30;

  anon30:
    $r19 := $r18;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1640_Then, anon1640_Else;

  anon1640_Else:
    assume {:partition} $r19 == $null;
    call $fakelocal_9 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_9;
    return;

  anon1640_Then:
    assume {:partition} $r19 != $null;
    $exception := $exception;
    goto anon33;

  anon33:
    call i279, $exception := java.lang.Integer$intValue$($r19);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r20, $exception := java.lang.Integer$valueOf$int(i278);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i7 := 5 + i279;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r21, $exception := java.lang.Integer$valueOf$int($i7);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r22, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r20, $r21);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1641_Then, anon1641_Else;

  anon1641_Else:
    assume {:partition} !($heap[$r22, $type] <: java.lang.Integer);
    call $fakelocal_10 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_10;
    return;

  anon1641_Then:
    assume {:partition} $heap[$r22, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon36;

  anon36:
    $r23 := $r22;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1642_Then, anon1642_Else;

  anon1642_Else:
    assume {:partition} $r23 == $null;
    call $fakelocal_11 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_11;
    return;

  anon1642_Then:
    assume {:partition} $r23 != $null;
    $exception := $exception;
    goto anon39;

  anon39:
    call i280, $exception := java.lang.Integer$intValue$($r23);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r24, $exception := java.lang.Integer$valueOf$int(i279);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i8 := 6 + i280;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r25, $exception := java.lang.Integer$valueOf$int($i8);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r26, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r24, $r25);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1643_Then, anon1643_Else;

  anon1643_Else:
    assume {:partition} !($heap[$r26, $type] <: java.lang.Integer);
    call $fakelocal_12 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_12;
    return;

  anon1643_Then:
    assume {:partition} $heap[$r26, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon42;

  anon42:
    $r27 := $r26;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1644_Then, anon1644_Else;

  anon1644_Else:
    assume {:partition} $r27 == $null;
    call $fakelocal_13 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_13;
    return;

  anon1644_Then:
    assume {:partition} $r27 != $null;
    $exception := $exception;
    goto anon45;

  anon45:
    call i281, $exception := java.lang.Integer$intValue$($r27);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r28, $exception := java.lang.Integer$valueOf$int(i280);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i9 := 7 + i281;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r29, $exception := java.lang.Integer$valueOf$int($i9);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r30, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r28, $r29);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1645_Then, anon1645_Else;

  anon1645_Else:
    assume {:partition} !($heap[$r30, $type] <: java.lang.Integer);
    call $fakelocal_14 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_14;
    return;

  anon1645_Then:
    assume {:partition} $heap[$r30, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon48;

  anon48:
    $r31 := $r30;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1646_Then, anon1646_Else;

  anon1646_Else:
    assume {:partition} $r31 == $null;
    call $fakelocal_15 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_15;
    return;

  anon1646_Then:
    assume {:partition} $r31 != $null;
    $exception := $exception;
    goto anon51;

  anon51:
    call i282, $exception := java.lang.Integer$intValue$($r31);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r32, $exception := java.lang.Integer$valueOf$int(i281);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i10 := 8 + i282;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r33, $exception := java.lang.Integer$valueOf$int($i10);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r34, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r32, $r33);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1647_Then, anon1647_Else;

  anon1647_Else:
    assume {:partition} !($heap[$r34, $type] <: java.lang.Integer);
    call $fakelocal_16 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_16;
    return;

  anon1647_Then:
    assume {:partition} $heap[$r34, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon54;

  anon54:
    $r35 := $r34;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1648_Then, anon1648_Else;

  anon1648_Else:
    assume {:partition} $r35 == $null;
    call $fakelocal_17 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_17;
    return;

  anon1648_Then:
    assume {:partition} $r35 != $null;
    $exception := $exception;
    goto anon57;

  anon57:
    call i283, $exception := java.lang.Integer$intValue$($r35);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r36, $exception := java.lang.Integer$valueOf$int(i282);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i11 := 9 + i283;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r37, $exception := java.lang.Integer$valueOf$int($i11);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r38, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r36, $r37);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1649_Then, anon1649_Else;

  anon1649_Else:
    assume {:partition} !($heap[$r38, $type] <: java.lang.Integer);
    call $fakelocal_18 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_18;
    return;

  anon1649_Then:
    assume {:partition} $heap[$r38, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon60;

  anon60:
    $r39 := $r38;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1650_Then, anon1650_Else;

  anon1650_Else:
    assume {:partition} $r39 == $null;
    call $fakelocal_19 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_19;
    return;

  anon1650_Then:
    assume {:partition} $r39 != $null;
    $exception := $exception;
    goto anon63;

  anon63:
    call i284, $exception := java.lang.Integer$intValue$($r39);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r40, $exception := java.lang.Integer$valueOf$int(i283);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i12 := 10 + i284;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r41, $exception := java.lang.Integer$valueOf$int($i12);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r42, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r40, $r41);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1651_Then, anon1651_Else;

  anon1651_Else:
    assume {:partition} !($heap[$r42, $type] <: java.lang.Integer);
    call $fakelocal_20 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_20;
    return;

  anon1651_Then:
    assume {:partition} $heap[$r42, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon66;

  anon66:
    $r43 := $r42;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1652_Then, anon1652_Else;

  anon1652_Else:
    assume {:partition} $r43 == $null;
    call $fakelocal_21 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_21;
    return;

  anon1652_Then:
    assume {:partition} $r43 != $null;
    $exception := $exception;
    goto anon69;

  anon69:
    call i285, $exception := java.lang.Integer$intValue$($r43);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r44, $exception := java.lang.Integer$valueOf$int(i284);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i13 := 1 + i285;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r45, $exception := java.lang.Integer$valueOf$int($i13);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r46, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r44, $r45);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1653_Then, anon1653_Else;

  anon1653_Else:
    assume {:partition} !($heap[$r46, $type] <: java.lang.Integer);
    call $fakelocal_22 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_22;
    return;

  anon1653_Then:
    assume {:partition} $heap[$r46, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon72;

  anon72:
    $r47 := $r46;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1654_Then, anon1654_Else;

  anon1654_Else:
    assume {:partition} $r47 == $null;
    call $fakelocal_23 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_23;
    return;

  anon1654_Then:
    assume {:partition} $r47 != $null;
    $exception := $exception;
    goto anon75;

  anon75:
    call i286, $exception := java.lang.Integer$intValue$($r47);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r48, $exception := java.lang.Integer$valueOf$int(i285);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i14 := 2 + i286;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r49, $exception := java.lang.Integer$valueOf$int($i14);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r50, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r48, $r49);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1655_Then, anon1655_Else;

  anon1655_Else:
    assume {:partition} !($heap[$r50, $type] <: java.lang.Integer);
    call $fakelocal_24 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_24;
    return;

  anon1655_Then:
    assume {:partition} $heap[$r50, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon78;

  anon78:
    $r51 := $r50;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1656_Then, anon1656_Else;

  anon1656_Else:
    assume {:partition} $r51 == $null;
    call $fakelocal_25 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_25;
    return;

  anon1656_Then:
    assume {:partition} $r51 != $null;
    $exception := $exception;
    goto anon81;

  anon81:
    call i287, $exception := java.lang.Integer$intValue$($r51);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r52, $exception := java.lang.Integer$valueOf$int(i286);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i15 := 3 + i287;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r53, $exception := java.lang.Integer$valueOf$int($i15);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r54, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r52, $r53);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1657_Then, anon1657_Else;

  anon1657_Else:
    assume {:partition} !($heap[$r54, $type] <: java.lang.Integer);
    call $fakelocal_26 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_26;
    return;

  anon1657_Then:
    assume {:partition} $heap[$r54, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon84;

  anon84:
    $r55 := $r54;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1658_Then, anon1658_Else;

  anon1658_Else:
    assume {:partition} $r55 == $null;
    call $fakelocal_27 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_27;
    return;

  anon1658_Then:
    assume {:partition} $r55 != $null;
    $exception := $exception;
    goto anon87;

  anon87:
    call i288, $exception := java.lang.Integer$intValue$($r55);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r56, $exception := java.lang.Integer$valueOf$int(i287);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i16 := 4 + i288;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r57, $exception := java.lang.Integer$valueOf$int($i16);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r58, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r56, $r57);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1659_Then, anon1659_Else;

  anon1659_Else:
    assume {:partition} !($heap[$r58, $type] <: java.lang.Integer);
    call $fakelocal_28 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_28;
    return;

  anon1659_Then:
    assume {:partition} $heap[$r58, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon90;

  anon90:
    $r59 := $r58;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1660_Then, anon1660_Else;

  anon1660_Else:
    assume {:partition} $r59 == $null;
    call $fakelocal_29 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_29;
    return;

  anon1660_Then:
    assume {:partition} $r59 != $null;
    $exception := $exception;
    goto anon93;

  anon93:
    call i289, $exception := java.lang.Integer$intValue$($r59);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r60, $exception := java.lang.Integer$valueOf$int(i288);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i17 := 5 + i289;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r61, $exception := java.lang.Integer$valueOf$int($i17);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r62, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r60, $r61);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1661_Then, anon1661_Else;

  anon1661_Else:
    assume {:partition} !($heap[$r62, $type] <: java.lang.Integer);
    call $fakelocal_30 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_30;
    return;

  anon1661_Then:
    assume {:partition} $heap[$r62, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon96;

  anon96:
    $r63 := $r62;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1662_Then, anon1662_Else;

  anon1662_Else:
    assume {:partition} $r63 == $null;
    call $fakelocal_31 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_31;
    return;

  anon1662_Then:
    assume {:partition} $r63 != $null;
    $exception := $exception;
    goto anon99;

  anon99:
    call i290, $exception := java.lang.Integer$intValue$($r63);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r64, $exception := java.lang.Integer$valueOf$int(i289);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i18 := 6 + i290;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r65, $exception := java.lang.Integer$valueOf$int($i18);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r66, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r64, $r65);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1663_Then, anon1663_Else;

  anon1663_Else:
    assume {:partition} !($heap[$r66, $type] <: java.lang.Integer);
    call $fakelocal_32 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_32;
    return;

  anon1663_Then:
    assume {:partition} $heap[$r66, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon102;

  anon102:
    $r67 := $r66;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1664_Then, anon1664_Else;

  anon1664_Else:
    assume {:partition} $r67 == $null;
    call $fakelocal_33 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_33;
    return;

  anon1664_Then:
    assume {:partition} $r67 != $null;
    $exception := $exception;
    goto anon105;

  anon105:
    call i291, $exception := java.lang.Integer$intValue$($r67);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r68, $exception := java.lang.Integer$valueOf$int(i290);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i19 := 7 + i291;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r69, $exception := java.lang.Integer$valueOf$int($i19);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r70, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r68, $r69);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1665_Then, anon1665_Else;

  anon1665_Else:
    assume {:partition} !($heap[$r70, $type] <: java.lang.Integer);
    call $fakelocal_34 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_34;
    return;

  anon1665_Then:
    assume {:partition} $heap[$r70, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon108;

  anon108:
    $r71 := $r70;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1666_Then, anon1666_Else;

  anon1666_Else:
    assume {:partition} $r71 == $null;
    call $fakelocal_35 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_35;
    return;

  anon1666_Then:
    assume {:partition} $r71 != $null;
    $exception := $exception;
    goto anon111;

  anon111:
    call i292, $exception := java.lang.Integer$intValue$($r71);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r72, $exception := java.lang.Integer$valueOf$int(i291);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i20 := 8 + i292;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r73, $exception := java.lang.Integer$valueOf$int($i20);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r74, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r72, $r73);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1667_Then, anon1667_Else;

  anon1667_Else:
    assume {:partition} !($heap[$r74, $type] <: java.lang.Integer);
    call $fakelocal_36 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_36;
    return;

  anon1667_Then:
    assume {:partition} $heap[$r74, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon114;

  anon114:
    $r75 := $r74;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1668_Then, anon1668_Else;

  anon1668_Else:
    assume {:partition} $r75 == $null;
    call $fakelocal_37 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_37;
    return;

  anon1668_Then:
    assume {:partition} $r75 != $null;
    $exception := $exception;
    goto anon117;

  anon117:
    call i293, $exception := java.lang.Integer$intValue$($r75);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r76, $exception := java.lang.Integer$valueOf$int(i292);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i21 := 9 + i293;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r77, $exception := java.lang.Integer$valueOf$int($i21);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r78, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r76, $r77);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1669_Then, anon1669_Else;

  anon1669_Else:
    assume {:partition} !($heap[$r78, $type] <: java.lang.Integer);
    call $fakelocal_38 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_38;
    return;

  anon1669_Then:
    assume {:partition} $heap[$r78, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon120;

  anon120:
    $r79 := $r78;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1670_Then, anon1670_Else;

  anon1670_Else:
    assume {:partition} $r79 == $null;
    call $fakelocal_39 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_39;
    return;

  anon1670_Then:
    assume {:partition} $r79 != $null;
    $exception := $exception;
    goto anon123;

  anon123:
    call i294, $exception := java.lang.Integer$intValue$($r79);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r80, $exception := java.lang.Integer$valueOf$int(i293);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i22 := 10 + i294;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r81, $exception := java.lang.Integer$valueOf$int($i22);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r82, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r80, $r81);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1671_Then, anon1671_Else;

  anon1671_Else:
    assume {:partition} !($heap[$r82, $type] <: java.lang.Integer);
    call $fakelocal_40 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_40;
    return;

  anon1671_Then:
    assume {:partition} $heap[$r82, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon126;

  anon126:
    $r83 := $r82;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1672_Then, anon1672_Else;

  anon1672_Else:
    assume {:partition} $r83 == $null;
    call $fakelocal_41 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_41;
    return;

  anon1672_Then:
    assume {:partition} $r83 != $null;
    $exception := $exception;
    goto anon129;

  anon129:
    call i295, $exception := java.lang.Integer$intValue$($r83);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r84, $exception := java.lang.Integer$valueOf$int(i294);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i23 := 1 + i295;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r85, $exception := java.lang.Integer$valueOf$int($i23);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r86, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r84, $r85);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1673_Then, anon1673_Else;

  anon1673_Else:
    assume {:partition} !($heap[$r86, $type] <: java.lang.Integer);
    call $fakelocal_42 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_42;
    return;

  anon1673_Then:
    assume {:partition} $heap[$r86, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon132;

  anon132:
    $r87 := $r86;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1674_Then, anon1674_Else;

  anon1674_Else:
    assume {:partition} $r87 == $null;
    call $fakelocal_43 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_43;
    return;

  anon1674_Then:
    assume {:partition} $r87 != $null;
    $exception := $exception;
    goto anon135;

  anon135:
    call i296, $exception := java.lang.Integer$intValue$($r87);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r88, $exception := java.lang.Integer$valueOf$int(i295);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i24 := 2 + i296;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r89, $exception := java.lang.Integer$valueOf$int($i24);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r90, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r88, $r89);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1675_Then, anon1675_Else;

  anon1675_Else:
    assume {:partition} !($heap[$r90, $type] <: java.lang.Integer);
    call $fakelocal_44 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_44;
    return;

  anon1675_Then:
    assume {:partition} $heap[$r90, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon138;

  anon138:
    $r91 := $r90;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1676_Then, anon1676_Else;

  anon1676_Else:
    assume {:partition} $r91 == $null;
    call $fakelocal_45 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_45;
    return;

  anon1676_Then:
    assume {:partition} $r91 != $null;
    $exception := $exception;
    goto anon141;

  anon141:
    call i297, $exception := java.lang.Integer$intValue$($r91);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r92, $exception := java.lang.Integer$valueOf$int(i296);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i25 := 3 + i297;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r93, $exception := java.lang.Integer$valueOf$int($i25);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r94, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r92, $r93);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1677_Then, anon1677_Else;

  anon1677_Else:
    assume {:partition} !($heap[$r94, $type] <: java.lang.Integer);
    call $fakelocal_46 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_46;
    return;

  anon1677_Then:
    assume {:partition} $heap[$r94, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon144;

  anon144:
    $r95 := $r94;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1678_Then, anon1678_Else;

  anon1678_Else:
    assume {:partition} $r95 == $null;
    call $fakelocal_47 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_47;
    return;

  anon1678_Then:
    assume {:partition} $r95 != $null;
    $exception := $exception;
    goto anon147;

  anon147:
    call i298, $exception := java.lang.Integer$intValue$($r95);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r96, $exception := java.lang.Integer$valueOf$int(i297);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i26 := 4 + i298;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r97, $exception := java.lang.Integer$valueOf$int($i26);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r98, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r96, $r97);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1679_Then, anon1679_Else;

  anon1679_Else:
    assume {:partition} !($heap[$r98, $type] <: java.lang.Integer);
    call $fakelocal_48 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_48;
    return;

  anon1679_Then:
    assume {:partition} $heap[$r98, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon150;

  anon150:
    $r99 := $r98;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1680_Then, anon1680_Else;

  anon1680_Else:
    assume {:partition} $r99 == $null;
    call $fakelocal_49 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_49;
    return;

  anon1680_Then:
    assume {:partition} $r99 != $null;
    $exception := $exception;
    goto anon153;

  anon153:
    call i299, $exception := java.lang.Integer$intValue$($r99);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r100, $exception := java.lang.Integer$valueOf$int(i298);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i27 := 5 + i299;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r101, $exception := java.lang.Integer$valueOf$int($i27);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r102, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r100, $r101);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1681_Then, anon1681_Else;

  anon1681_Else:
    assume {:partition} !($heap[$r102, $type] <: java.lang.Integer);
    call $fakelocal_50 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_50;
    return;

  anon1681_Then:
    assume {:partition} $heap[$r102, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon156;

  anon156:
    $r103 := $r102;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1682_Then, anon1682_Else;

  anon1682_Else:
    assume {:partition} $r103 == $null;
    call $fakelocal_51 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_51;
    return;

  anon1682_Then:
    assume {:partition} $r103 != $null;
    $exception := $exception;
    goto anon159;

  anon159:
    call i300, $exception := java.lang.Integer$intValue$($r103);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r104, $exception := java.lang.Integer$valueOf$int(i299);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i28 := 6 + i300;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r105, $exception := java.lang.Integer$valueOf$int($i28);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r106, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r104, $r105);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1683_Then, anon1683_Else;

  anon1683_Else:
    assume {:partition} !($heap[$r106, $type] <: java.lang.Integer);
    call $fakelocal_52 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_52;
    return;

  anon1683_Then:
    assume {:partition} $heap[$r106, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon162;

  anon162:
    $r107 := $r106;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1684_Then, anon1684_Else;

  anon1684_Else:
    assume {:partition} $r107 == $null;
    call $fakelocal_53 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_53;
    return;

  anon1684_Then:
    assume {:partition} $r107 != $null;
    $exception := $exception;
    goto anon165;

  anon165:
    call i301, $exception := java.lang.Integer$intValue$($r107);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r108, $exception := java.lang.Integer$valueOf$int(i300);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i29 := 7 + i301;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r109, $exception := java.lang.Integer$valueOf$int($i29);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r110, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r108, $r109);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1685_Then, anon1685_Else;

  anon1685_Else:
    assume {:partition} !($heap[$r110, $type] <: java.lang.Integer);
    call $fakelocal_54 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_54;
    return;

  anon1685_Then:
    assume {:partition} $heap[$r110, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon168;

  anon168:
    $r111 := $r110;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1686_Then, anon1686_Else;

  anon1686_Else:
    assume {:partition} $r111 == $null;
    call $fakelocal_55 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_55;
    return;

  anon1686_Then:
    assume {:partition} $r111 != $null;
    $exception := $exception;
    goto anon171;

  anon171:
    call i302, $exception := java.lang.Integer$intValue$($r111);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r112, $exception := java.lang.Integer$valueOf$int(i301);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i30 := 8 + i302;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r113, $exception := java.lang.Integer$valueOf$int($i30);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r114, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r112, $r113);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1687_Then, anon1687_Else;

  anon1687_Else:
    assume {:partition} !($heap[$r114, $type] <: java.lang.Integer);
    call $fakelocal_56 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_56;
    return;

  anon1687_Then:
    assume {:partition} $heap[$r114, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon174;

  anon174:
    $r115 := $r114;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1688_Then, anon1688_Else;

  anon1688_Else:
    assume {:partition} $r115 == $null;
    call $fakelocal_57 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_57;
    return;

  anon1688_Then:
    assume {:partition} $r115 != $null;
    $exception := $exception;
    goto anon177;

  anon177:
    call i303, $exception := java.lang.Integer$intValue$($r115);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r116, $exception := java.lang.Integer$valueOf$int(i302);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i31 := 9 + i303;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r117, $exception := java.lang.Integer$valueOf$int($i31);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r118, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r116, $r117);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1689_Then, anon1689_Else;

  anon1689_Else:
    assume {:partition} !($heap[$r118, $type] <: java.lang.Integer);
    call $fakelocal_58 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_58;
    return;

  anon1689_Then:
    assume {:partition} $heap[$r118, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon180;

  anon180:
    $r119 := $r118;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1690_Then, anon1690_Else;

  anon1690_Else:
    assume {:partition} $r119 == $null;
    call $fakelocal_59 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_59;
    return;

  anon1690_Then:
    assume {:partition} $r119 != $null;
    $exception := $exception;
    goto anon183;

  anon183:
    call i304, $exception := java.lang.Integer$intValue$($r119);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r120, $exception := java.lang.Integer$valueOf$int(i303);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    $i32 := 10 + i304;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r121, $exception := java.lang.Integer$valueOf$int($i32);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    call $r122, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r120, $r121);
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1691_Then, anon1691_Else;

  anon1691_Else:
    assume {:partition} !($heap[$r122, $type] <: java.lang.Integer);
    call $fakelocal_60 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_60;
    return;

  anon1691_Then:
    assume {:partition} $heap[$r122, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon186;

  anon186:
    $r123 := $r122;
    assert {:sourceloc "Sanity.java", 23, -1, -1, -1} true;
    goto anon1692_Then, anon1692_Else;

  anon1692_Else:
    assume {:partition} $r123 == $null;
    call $fakelocal_61 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_61;
    return;

  anon1692_Then:
    assume {:partition} $r123 != $null;
    $exception := $exception;
    goto anon189;

  anon189:
    call i305, $exception := java.lang.Integer$intValue$($r123);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r124, $exception := java.lang.Integer$valueOf$int(i304);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i33 := 1 + i305;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r125, $exception := java.lang.Integer$valueOf$int($i33);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r126, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r124, $r125);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1693_Then, anon1693_Else;

  anon1693_Else:
    assume {:partition} !($heap[$r126, $type] <: java.lang.Integer);
    call $fakelocal_62 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_62;
    return;

  anon1693_Then:
    assume {:partition} $heap[$r126, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon192;

  anon192:
    $r127 := $r126;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1694_Then, anon1694_Else;

  anon1694_Else:
    assume {:partition} $r127 == $null;
    call $fakelocal_63 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_63;
    return;

  anon1694_Then:
    assume {:partition} $r127 != $null;
    $exception := $exception;
    goto anon195;

  anon195:
    call i306, $exception := java.lang.Integer$intValue$($r127);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r128, $exception := java.lang.Integer$valueOf$int(i305);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i34 := 2 + i306;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r129, $exception := java.lang.Integer$valueOf$int($i34);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r130, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r128, $r129);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1695_Then, anon1695_Else;

  anon1695_Else:
    assume {:partition} !($heap[$r130, $type] <: java.lang.Integer);
    call $fakelocal_64 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_64;
    return;

  anon1695_Then:
    assume {:partition} $heap[$r130, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon198;

  anon198:
    $r131 := $r130;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1696_Then, anon1696_Else;

  anon1696_Else:
    assume {:partition} $r131 == $null;
    call $fakelocal_65 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_65;
    return;

  anon1696_Then:
    assume {:partition} $r131 != $null;
    $exception := $exception;
    goto anon201;

  anon201:
    call i307, $exception := java.lang.Integer$intValue$($r131);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r132, $exception := java.lang.Integer$valueOf$int(i306);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i35 := 3 + i307;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r133, $exception := java.lang.Integer$valueOf$int($i35);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r134, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r132, $r133);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1697_Then, anon1697_Else;

  anon1697_Else:
    assume {:partition} !($heap[$r134, $type] <: java.lang.Integer);
    call $fakelocal_66 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_66;
    return;

  anon1697_Then:
    assume {:partition} $heap[$r134, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon204;

  anon204:
    $r135 := $r134;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1698_Then, anon1698_Else;

  anon1698_Else:
    assume {:partition} $r135 == $null;
    call $fakelocal_67 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_67;
    return;

  anon1698_Then:
    assume {:partition} $r135 != $null;
    $exception := $exception;
    goto anon207;

  anon207:
    call i308, $exception := java.lang.Integer$intValue$($r135);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r136, $exception := java.lang.Integer$valueOf$int(i307);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i36 := 4 + i308;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r137, $exception := java.lang.Integer$valueOf$int($i36);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r138, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r136, $r137);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1699_Then, anon1699_Else;

  anon1699_Else:
    assume {:partition} !($heap[$r138, $type] <: java.lang.Integer);
    call $fakelocal_68 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_68;
    return;

  anon1699_Then:
    assume {:partition} $heap[$r138, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon210;

  anon210:
    $r139 := $r138;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1700_Then, anon1700_Else;

  anon1700_Else:
    assume {:partition} $r139 == $null;
    call $fakelocal_69 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_69;
    return;

  anon1700_Then:
    assume {:partition} $r139 != $null;
    $exception := $exception;
    goto anon213;

  anon213:
    call i309, $exception := java.lang.Integer$intValue$($r139);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r140, $exception := java.lang.Integer$valueOf$int(i308);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i37 := 5 + i309;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r141, $exception := java.lang.Integer$valueOf$int($i37);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r142, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r140, $r141);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1701_Then, anon1701_Else;

  anon1701_Else:
    assume {:partition} !($heap[$r142, $type] <: java.lang.Integer);
    call $fakelocal_70 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_70;
    return;

  anon1701_Then:
    assume {:partition} $heap[$r142, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon216;

  anon216:
    $r143 := $r142;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1702_Then, anon1702_Else;

  anon1702_Else:
    assume {:partition} $r143 == $null;
    call $fakelocal_71 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_71;
    return;

  anon1702_Then:
    assume {:partition} $r143 != $null;
    $exception := $exception;
    goto anon219;

  anon219:
    call i310, $exception := java.lang.Integer$intValue$($r143);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r144, $exception := java.lang.Integer$valueOf$int(i309);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i38 := 6 + i310;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r145, $exception := java.lang.Integer$valueOf$int($i38);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r146, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r144, $r145);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1703_Then, anon1703_Else;

  anon1703_Else:
    assume {:partition} !($heap[$r146, $type] <: java.lang.Integer);
    call $fakelocal_72 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_72;
    return;

  anon1703_Then:
    assume {:partition} $heap[$r146, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon222;

  anon222:
    $r147 := $r146;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1704_Then, anon1704_Else;

  anon1704_Else:
    assume {:partition} $r147 == $null;
    call $fakelocal_73 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_73;
    return;

  anon1704_Then:
    assume {:partition} $r147 != $null;
    $exception := $exception;
    goto anon225;

  anon225:
    call i311, $exception := java.lang.Integer$intValue$($r147);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r148, $exception := java.lang.Integer$valueOf$int(i310);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i39 := 7 + i311;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r149, $exception := java.lang.Integer$valueOf$int($i39);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r150, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r148, $r149);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1705_Then, anon1705_Else;

  anon1705_Else:
    assume {:partition} !($heap[$r150, $type] <: java.lang.Integer);
    call $fakelocal_74 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_74;
    return;

  anon1705_Then:
    assume {:partition} $heap[$r150, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon228;

  anon228:
    $r151 := $r150;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1706_Then, anon1706_Else;

  anon1706_Else:
    assume {:partition} $r151 == $null;
    call $fakelocal_75 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_75;
    return;

  anon1706_Then:
    assume {:partition} $r151 != $null;
    $exception := $exception;
    goto anon231;

  anon231:
    call i312, $exception := java.lang.Integer$intValue$($r151);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r152, $exception := java.lang.Integer$valueOf$int(i311);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i40 := 8 + i312;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r153, $exception := java.lang.Integer$valueOf$int($i40);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r154, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r152, $r153);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1707_Then, anon1707_Else;

  anon1707_Else:
    assume {:partition} !($heap[$r154, $type] <: java.lang.Integer);
    call $fakelocal_76 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_76;
    return;

  anon1707_Then:
    assume {:partition} $heap[$r154, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon234;

  anon234:
    $r155 := $r154;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1708_Then, anon1708_Else;

  anon1708_Else:
    assume {:partition} $r155 == $null;
    call $fakelocal_77 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_77;
    return;

  anon1708_Then:
    assume {:partition} $r155 != $null;
    $exception := $exception;
    goto anon237;

  anon237:
    call i313, $exception := java.lang.Integer$intValue$($r155);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r156, $exception := java.lang.Integer$valueOf$int(i312);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i41 := 9 + i313;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r157, $exception := java.lang.Integer$valueOf$int($i41);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r158, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r156, $r157);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1709_Then, anon1709_Else;

  anon1709_Else:
    assume {:partition} !($heap[$r158, $type] <: java.lang.Integer);
    call $fakelocal_78 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_78;
    return;

  anon1709_Then:
    assume {:partition} $heap[$r158, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon240;

  anon240:
    $r159 := $r158;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1710_Then, anon1710_Else;

  anon1710_Else:
    assume {:partition} $r159 == $null;
    call $fakelocal_79 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_79;
    return;

  anon1710_Then:
    assume {:partition} $r159 != $null;
    $exception := $exception;
    goto anon243;

  anon243:
    call i314, $exception := java.lang.Integer$intValue$($r159);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r160, $exception := java.lang.Integer$valueOf$int(i313);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i42 := 10 + i314;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r161, $exception := java.lang.Integer$valueOf$int($i42);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r162, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r160, $r161);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1711_Then, anon1711_Else;

  anon1711_Else:
    assume {:partition} !($heap[$r162, $type] <: java.lang.Integer);
    call $fakelocal_80 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_80;
    return;

  anon1711_Then:
    assume {:partition} $heap[$r162, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon246;

  anon246:
    $r163 := $r162;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1712_Then, anon1712_Else;

  anon1712_Else:
    assume {:partition} $r163 == $null;
    call $fakelocal_81 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_81;
    return;

  anon1712_Then:
    assume {:partition} $r163 != $null;
    $exception := $exception;
    goto anon249;

  anon249:
    call i315, $exception := java.lang.Integer$intValue$($r163);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r164, $exception := java.lang.Integer$valueOf$int(i314);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i43 := 1 + i315;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r165, $exception := java.lang.Integer$valueOf$int($i43);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r166, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r164, $r165);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1713_Then, anon1713_Else;

  anon1713_Else:
    assume {:partition} !($heap[$r166, $type] <: java.lang.Integer);
    call $fakelocal_82 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_82;
    return;

  anon1713_Then:
    assume {:partition} $heap[$r166, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon252;

  anon252:
    $r167 := $r166;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1714_Then, anon1714_Else;

  anon1714_Else:
    assume {:partition} $r167 == $null;
    call $fakelocal_83 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_83;
    return;

  anon1714_Then:
    assume {:partition} $r167 != $null;
    $exception := $exception;
    goto anon255;

  anon255:
    call i316, $exception := java.lang.Integer$intValue$($r167);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r168, $exception := java.lang.Integer$valueOf$int(i315);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i44 := 2 + i316;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r169, $exception := java.lang.Integer$valueOf$int($i44);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r170, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r168, $r169);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1715_Then, anon1715_Else;

  anon1715_Else:
    assume {:partition} !($heap[$r170, $type] <: java.lang.Integer);
    call $fakelocal_84 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_84;
    return;

  anon1715_Then:
    assume {:partition} $heap[$r170, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon258;

  anon258:
    $r171 := $r170;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1716_Then, anon1716_Else;

  anon1716_Else:
    assume {:partition} $r171 == $null;
    call $fakelocal_85 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_85;
    return;

  anon1716_Then:
    assume {:partition} $r171 != $null;
    $exception := $exception;
    goto anon261;

  anon261:
    call i317, $exception := java.lang.Integer$intValue$($r171);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r172, $exception := java.lang.Integer$valueOf$int(i316);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i45 := 3 + i317;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r173, $exception := java.lang.Integer$valueOf$int($i45);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r174, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r172, $r173);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1717_Then, anon1717_Else;

  anon1717_Else:
    assume {:partition} !($heap[$r174, $type] <: java.lang.Integer);
    call $fakelocal_86 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_86;
    return;

  anon1717_Then:
    assume {:partition} $heap[$r174, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon264;

  anon264:
    $r175 := $r174;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1718_Then, anon1718_Else;

  anon1718_Else:
    assume {:partition} $r175 == $null;
    call $fakelocal_87 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_87;
    return;

  anon1718_Then:
    assume {:partition} $r175 != $null;
    $exception := $exception;
    goto anon267;

  anon267:
    call i318, $exception := java.lang.Integer$intValue$($r175);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r176, $exception := java.lang.Integer$valueOf$int(i317);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i46 := 4 + i318;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r177, $exception := java.lang.Integer$valueOf$int($i46);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r178, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r176, $r177);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1719_Then, anon1719_Else;

  anon1719_Else:
    assume {:partition} !($heap[$r178, $type] <: java.lang.Integer);
    call $fakelocal_88 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_88;
    return;

  anon1719_Then:
    assume {:partition} $heap[$r178, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon270;

  anon270:
    $r179 := $r178;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1720_Then, anon1720_Else;

  anon1720_Else:
    assume {:partition} $r179 == $null;
    call $fakelocal_89 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_89;
    return;

  anon1720_Then:
    assume {:partition} $r179 != $null;
    $exception := $exception;
    goto anon273;

  anon273:
    call i319, $exception := java.lang.Integer$intValue$($r179);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r180, $exception := java.lang.Integer$valueOf$int(i318);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i47 := 5 + i319;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r181, $exception := java.lang.Integer$valueOf$int($i47);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r182, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r180, $r181);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1721_Then, anon1721_Else;

  anon1721_Else:
    assume {:partition} !($heap[$r182, $type] <: java.lang.Integer);
    call $fakelocal_90 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_90;
    return;

  anon1721_Then:
    assume {:partition} $heap[$r182, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon276;

  anon276:
    $r183 := $r182;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1722_Then, anon1722_Else;

  anon1722_Else:
    assume {:partition} $r183 == $null;
    call $fakelocal_91 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_91;
    return;

  anon1722_Then:
    assume {:partition} $r183 != $null;
    $exception := $exception;
    goto anon279;

  anon279:
    call i320, $exception := java.lang.Integer$intValue$($r183);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r184, $exception := java.lang.Integer$valueOf$int(i319);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i48 := 6 + i320;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r185, $exception := java.lang.Integer$valueOf$int($i48);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r186, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r184, $r185);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1723_Then, anon1723_Else;

  anon1723_Else:
    assume {:partition} !($heap[$r186, $type] <: java.lang.Integer);
    call $fakelocal_92 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_92;
    return;

  anon1723_Then:
    assume {:partition} $heap[$r186, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon282;

  anon282:
    $r187 := $r186;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1724_Then, anon1724_Else;

  anon1724_Else:
    assume {:partition} $r187 == $null;
    call $fakelocal_93 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_93;
    return;

  anon1724_Then:
    assume {:partition} $r187 != $null;
    $exception := $exception;
    goto anon285;

  anon285:
    call i321, $exception := java.lang.Integer$intValue$($r187);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r188, $exception := java.lang.Integer$valueOf$int(i320);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i49 := 7 + i321;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r189, $exception := java.lang.Integer$valueOf$int($i49);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r190, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r188, $r189);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1725_Then, anon1725_Else;

  anon1725_Else:
    assume {:partition} !($heap[$r190, $type] <: java.lang.Integer);
    call $fakelocal_94 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_94;
    return;

  anon1725_Then:
    assume {:partition} $heap[$r190, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon288;

  anon288:
    $r191 := $r190;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1726_Then, anon1726_Else;

  anon1726_Else:
    assume {:partition} $r191 == $null;
    call $fakelocal_95 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_95;
    return;

  anon1726_Then:
    assume {:partition} $r191 != $null;
    $exception := $exception;
    goto anon291;

  anon291:
    call i322, $exception := java.lang.Integer$intValue$($r191);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r192, $exception := java.lang.Integer$valueOf$int(i321);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i50 := 8 + i322;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r193, $exception := java.lang.Integer$valueOf$int($i50);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r194, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r192, $r193);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1727_Then, anon1727_Else;

  anon1727_Else:
    assume {:partition} !($heap[$r194, $type] <: java.lang.Integer);
    call $fakelocal_96 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_96;
    return;

  anon1727_Then:
    assume {:partition} $heap[$r194, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon294;

  anon294:
    $r195 := $r194;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1728_Then, anon1728_Else;

  anon1728_Else:
    assume {:partition} $r195 == $null;
    call $fakelocal_97 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_97;
    return;

  anon1728_Then:
    assume {:partition} $r195 != $null;
    $exception := $exception;
    goto anon297;

  anon297:
    call i323, $exception := java.lang.Integer$intValue$($r195);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r196, $exception := java.lang.Integer$valueOf$int(i322);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i51 := 9 + i323;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r197, $exception := java.lang.Integer$valueOf$int($i51);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r198, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r196, $r197);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1729_Then, anon1729_Else;

  anon1729_Else:
    assume {:partition} !($heap[$r198, $type] <: java.lang.Integer);
    call $fakelocal_98 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_98;
    return;

  anon1729_Then:
    assume {:partition} $heap[$r198, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon300;

  anon300:
    $r199 := $r198;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1730_Then, anon1730_Else;

  anon1730_Else:
    assume {:partition} $r199 == $null;
    call $fakelocal_99 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_99;
    return;

  anon1730_Then:
    assume {:partition} $r199 != $null;
    $exception := $exception;
    goto anon303;

  anon303:
    call i324, $exception := java.lang.Integer$intValue$($r199);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r200, $exception := java.lang.Integer$valueOf$int(i323);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i52 := 10 + i324;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r201, $exception := java.lang.Integer$valueOf$int($i52);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r202, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r200, $r201);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1731_Then, anon1731_Else;

  anon1731_Else:
    assume {:partition} !($heap[$r202, $type] <: java.lang.Integer);
    call $fakelocal_100 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_100;
    return;

  anon1731_Then:
    assume {:partition} $heap[$r202, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon306;

  anon306:
    $r203 := $r202;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1732_Then, anon1732_Else;

  anon1732_Else:
    assume {:partition} $r203 == $null;
    call $fakelocal_101 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_101;
    return;

  anon1732_Then:
    assume {:partition} $r203 != $null;
    $exception := $exception;
    goto anon309;

  anon309:
    call i325, $exception := java.lang.Integer$intValue$($r203);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r204, $exception := java.lang.Integer$valueOf$int(i324);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i53 := 1 + i325;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r205, $exception := java.lang.Integer$valueOf$int($i53);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r206, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r204, $r205);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1733_Then, anon1733_Else;

  anon1733_Else:
    assume {:partition} !($heap[$r206, $type] <: java.lang.Integer);
    call $fakelocal_102 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_102;
    return;

  anon1733_Then:
    assume {:partition} $heap[$r206, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon312;

  anon312:
    $r207 := $r206;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1734_Then, anon1734_Else;

  anon1734_Else:
    assume {:partition} $r207 == $null;
    call $fakelocal_103 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_103;
    return;

  anon1734_Then:
    assume {:partition} $r207 != $null;
    $exception := $exception;
    goto anon315;

  anon315:
    call i326, $exception := java.lang.Integer$intValue$($r207);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r208, $exception := java.lang.Integer$valueOf$int(i325);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i54 := 2 + i326;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r209, $exception := java.lang.Integer$valueOf$int($i54);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r210, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r208, $r209);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1735_Then, anon1735_Else;

  anon1735_Else:
    assume {:partition} !($heap[$r210, $type] <: java.lang.Integer);
    call $fakelocal_104 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_104;
    return;

  anon1735_Then:
    assume {:partition} $heap[$r210, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon318;

  anon318:
    $r211 := $r210;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1736_Then, anon1736_Else;

  anon1736_Else:
    assume {:partition} $r211 == $null;
    call $fakelocal_105 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_105;
    return;

  anon1736_Then:
    assume {:partition} $r211 != $null;
    $exception := $exception;
    goto anon321;

  anon321:
    call i327, $exception := java.lang.Integer$intValue$($r211);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r212, $exception := java.lang.Integer$valueOf$int(i326);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i55 := 3 + i327;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r213, $exception := java.lang.Integer$valueOf$int($i55);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r214, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r212, $r213);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1737_Then, anon1737_Else;

  anon1737_Else:
    assume {:partition} !($heap[$r214, $type] <: java.lang.Integer);
    call $fakelocal_106 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_106;
    return;

  anon1737_Then:
    assume {:partition} $heap[$r214, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon324;

  anon324:
    $r215 := $r214;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1738_Then, anon1738_Else;

  anon1738_Else:
    assume {:partition} $r215 == $null;
    call $fakelocal_107 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_107;
    return;

  anon1738_Then:
    assume {:partition} $r215 != $null;
    $exception := $exception;
    goto anon327;

  anon327:
    call i328, $exception := java.lang.Integer$intValue$($r215);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r216, $exception := java.lang.Integer$valueOf$int(i327);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i56 := 4 + i328;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r217, $exception := java.lang.Integer$valueOf$int($i56);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r218, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r216, $r217);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1739_Then, anon1739_Else;

  anon1739_Else:
    assume {:partition} !($heap[$r218, $type] <: java.lang.Integer);
    call $fakelocal_108 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_108;
    return;

  anon1739_Then:
    assume {:partition} $heap[$r218, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon330;

  anon330:
    $r219 := $r218;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1740_Then, anon1740_Else;

  anon1740_Else:
    assume {:partition} $r219 == $null;
    call $fakelocal_109 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_109;
    return;

  anon1740_Then:
    assume {:partition} $r219 != $null;
    $exception := $exception;
    goto anon333;

  anon333:
    call i329, $exception := java.lang.Integer$intValue$($r219);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r220, $exception := java.lang.Integer$valueOf$int(i328);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i57 := 5 + i329;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r221, $exception := java.lang.Integer$valueOf$int($i57);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r222, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r220, $r221);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1741_Then, anon1741_Else;

  anon1741_Else:
    assume {:partition} !($heap[$r222, $type] <: java.lang.Integer);
    call $fakelocal_110 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_110;
    return;

  anon1741_Then:
    assume {:partition} $heap[$r222, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon336;

  anon336:
    $r223 := $r222;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1742_Then, anon1742_Else;

  anon1742_Else:
    assume {:partition} $r223 == $null;
    call $fakelocal_111 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_111;
    return;

  anon1742_Then:
    assume {:partition} $r223 != $null;
    $exception := $exception;
    goto anon339;

  anon339:
    call i330, $exception := java.lang.Integer$intValue$($r223);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r224, $exception := java.lang.Integer$valueOf$int(i329);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i58 := 6 + i330;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r225, $exception := java.lang.Integer$valueOf$int($i58);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r226, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r224, $r225);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1743_Then, anon1743_Else;

  anon1743_Else:
    assume {:partition} !($heap[$r226, $type] <: java.lang.Integer);
    call $fakelocal_112 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_112;
    return;

  anon1743_Then:
    assume {:partition} $heap[$r226, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon342;

  anon342:
    $r227 := $r226;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1744_Then, anon1744_Else;

  anon1744_Else:
    assume {:partition} $r227 == $null;
    call $fakelocal_113 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_113;
    return;

  anon1744_Then:
    assume {:partition} $r227 != $null;
    $exception := $exception;
    goto anon345;

  anon345:
    call i331, $exception := java.lang.Integer$intValue$($r227);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r228, $exception := java.lang.Integer$valueOf$int(i330);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i59 := 7 + i331;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r229, $exception := java.lang.Integer$valueOf$int($i59);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r230, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r228, $r229);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1745_Then, anon1745_Else;

  anon1745_Else:
    assume {:partition} !($heap[$r230, $type] <: java.lang.Integer);
    call $fakelocal_114 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_114;
    return;

  anon1745_Then:
    assume {:partition} $heap[$r230, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon348;

  anon348:
    $r231 := $r230;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1746_Then, anon1746_Else;

  anon1746_Else:
    assume {:partition} $r231 == $null;
    call $fakelocal_115 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_115;
    return;

  anon1746_Then:
    assume {:partition} $r231 != $null;
    $exception := $exception;
    goto anon351;

  anon351:
    call i332, $exception := java.lang.Integer$intValue$($r231);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r232, $exception := java.lang.Integer$valueOf$int(i331);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i60 := 8 + i332;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r233, $exception := java.lang.Integer$valueOf$int($i60);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r234, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r232, $r233);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1747_Then, anon1747_Else;

  anon1747_Else:
    assume {:partition} !($heap[$r234, $type] <: java.lang.Integer);
    call $fakelocal_116 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_116;
    return;

  anon1747_Then:
    assume {:partition} $heap[$r234, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon354;

  anon354:
    $r235 := $r234;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1748_Then, anon1748_Else;

  anon1748_Else:
    assume {:partition} $r235 == $null;
    call $fakelocal_117 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_117;
    return;

  anon1748_Then:
    assume {:partition} $r235 != $null;
    $exception := $exception;
    goto anon357;

  anon357:
    call i333, $exception := java.lang.Integer$intValue$($r235);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r236, $exception := java.lang.Integer$valueOf$int(i332);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i61 := 9 + i333;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r237, $exception := java.lang.Integer$valueOf$int($i61);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r238, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r236, $r237);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1749_Then, anon1749_Else;

  anon1749_Else:
    assume {:partition} !($heap[$r238, $type] <: java.lang.Integer);
    call $fakelocal_118 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_118;
    return;

  anon1749_Then:
    assume {:partition} $heap[$r238, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon360;

  anon360:
    $r239 := $r238;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1750_Then, anon1750_Else;

  anon1750_Else:
    assume {:partition} $r239 == $null;
    call $fakelocal_119 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_119;
    return;

  anon1750_Then:
    assume {:partition} $r239 != $null;
    $exception := $exception;
    goto anon363;

  anon363:
    call i334, $exception := java.lang.Integer$intValue$($r239);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r240, $exception := java.lang.Integer$valueOf$int(i333);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    $i62 := 10 + i334;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r241, $exception := java.lang.Integer$valueOf$int($i62);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    call $r242, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r240, $r241);
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1751_Then, anon1751_Else;

  anon1751_Else:
    assume {:partition} !($heap[$r242, $type] <: java.lang.Integer);
    call $fakelocal_120 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_120;
    return;

  anon1751_Then:
    assume {:partition} $heap[$r242, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon366;

  anon366:
    $r243 := $r242;
    assert {:sourceloc "Sanity.java", 24, -1, -1, -1} true;
    goto anon1752_Then, anon1752_Else;

  anon1752_Else:
    assume {:partition} $r243 == $null;
    call $fakelocal_121 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_121;
    return;

  anon1752_Then:
    assume {:partition} $r243 != $null;
    $exception := $exception;
    goto anon369;

  anon369:
    call i335, $exception := java.lang.Integer$intValue$($r243);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r244, $exception := java.lang.Integer$valueOf$int(i334);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i63 := 1 + i335;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r245, $exception := java.lang.Integer$valueOf$int($i63);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r246, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r244, $r245);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1753_Then, anon1753_Else;

  anon1753_Else:
    assume {:partition} !($heap[$r246, $type] <: java.lang.Integer);
    call $fakelocal_122 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_122;
    return;

  anon1753_Then:
    assume {:partition} $heap[$r246, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon372;

  anon372:
    $r247 := $r246;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1754_Then, anon1754_Else;

  anon1754_Else:
    assume {:partition} $r247 == $null;
    call $fakelocal_123 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_123;
    return;

  anon1754_Then:
    assume {:partition} $r247 != $null;
    $exception := $exception;
    goto anon375;

  anon375:
    call i336, $exception := java.lang.Integer$intValue$($r247);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r248, $exception := java.lang.Integer$valueOf$int(i335);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i64 := 2 + i336;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r249, $exception := java.lang.Integer$valueOf$int($i64);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r250, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r248, $r249);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1755_Then, anon1755_Else;

  anon1755_Else:
    assume {:partition} !($heap[$r250, $type] <: java.lang.Integer);
    call $fakelocal_124 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_124;
    return;

  anon1755_Then:
    assume {:partition} $heap[$r250, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon378;

  anon378:
    $r251 := $r250;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1756_Then, anon1756_Else;

  anon1756_Else:
    assume {:partition} $r251 == $null;
    call $fakelocal_125 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_125;
    return;

  anon1756_Then:
    assume {:partition} $r251 != $null;
    $exception := $exception;
    goto anon381;

  anon381:
    call i337, $exception := java.lang.Integer$intValue$($r251);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r252, $exception := java.lang.Integer$valueOf$int(i336);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i65 := 3 + i337;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r253, $exception := java.lang.Integer$valueOf$int($i65);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r254, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r252, $r253);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1757_Then, anon1757_Else;

  anon1757_Else:
    assume {:partition} !($heap[$r254, $type] <: java.lang.Integer);
    call $fakelocal_126 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_126;
    return;

  anon1757_Then:
    assume {:partition} $heap[$r254, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon384;

  anon384:
    $r255 := $r254;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1758_Then, anon1758_Else;

  anon1758_Else:
    assume {:partition} $r255 == $null;
    call $fakelocal_127 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_127;
    return;

  anon1758_Then:
    assume {:partition} $r255 != $null;
    $exception := $exception;
    goto anon387;

  anon387:
    call i338, $exception := java.lang.Integer$intValue$($r255);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r256, $exception := java.lang.Integer$valueOf$int(i337);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i66 := 4 + i338;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r257, $exception := java.lang.Integer$valueOf$int($i66);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r258, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r256, $r257);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1759_Then, anon1759_Else;

  anon1759_Else:
    assume {:partition} !($heap[$r258, $type] <: java.lang.Integer);
    call $fakelocal_128 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_128;
    return;

  anon1759_Then:
    assume {:partition} $heap[$r258, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon390;

  anon390:
    $r259 := $r258;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1760_Then, anon1760_Else;

  anon1760_Else:
    assume {:partition} $r259 == $null;
    call $fakelocal_129 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_129;
    return;

  anon1760_Then:
    assume {:partition} $r259 != $null;
    $exception := $exception;
    goto anon393;

  anon393:
    call i339, $exception := java.lang.Integer$intValue$($r259);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r260, $exception := java.lang.Integer$valueOf$int(i338);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i67 := 5 + i339;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r261, $exception := java.lang.Integer$valueOf$int($i67);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r262, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r260, $r261);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1761_Then, anon1761_Else;

  anon1761_Else:
    assume {:partition} !($heap[$r262, $type] <: java.lang.Integer);
    call $fakelocal_130 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_130;
    return;

  anon1761_Then:
    assume {:partition} $heap[$r262, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon396;

  anon396:
    $r263 := $r262;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1762_Then, anon1762_Else;

  anon1762_Else:
    assume {:partition} $r263 == $null;
    call $fakelocal_131 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_131;
    return;

  anon1762_Then:
    assume {:partition} $r263 != $null;
    $exception := $exception;
    goto anon399;

  anon399:
    call i340, $exception := java.lang.Integer$intValue$($r263);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r264, $exception := java.lang.Integer$valueOf$int(i339);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i68 := 6 + i340;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r265, $exception := java.lang.Integer$valueOf$int($i68);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r266, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r264, $r265);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1763_Then, anon1763_Else;

  anon1763_Else:
    assume {:partition} !($heap[$r266, $type] <: java.lang.Integer);
    call $fakelocal_132 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_132;
    return;

  anon1763_Then:
    assume {:partition} $heap[$r266, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon402;

  anon402:
    $r267 := $r266;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1764_Then, anon1764_Else;

  anon1764_Else:
    assume {:partition} $r267 == $null;
    call $fakelocal_133 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_133;
    return;

  anon1764_Then:
    assume {:partition} $r267 != $null;
    $exception := $exception;
    goto anon405;

  anon405:
    call i341, $exception := java.lang.Integer$intValue$($r267);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r268, $exception := java.lang.Integer$valueOf$int(i340);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i69 := 7 + i341;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r269, $exception := java.lang.Integer$valueOf$int($i69);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r270, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r268, $r269);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1765_Then, anon1765_Else;

  anon1765_Else:
    assume {:partition} !($heap[$r270, $type] <: java.lang.Integer);
    call $fakelocal_134 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_134;
    return;

  anon1765_Then:
    assume {:partition} $heap[$r270, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon408;

  anon408:
    $r271 := $r270;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1766_Then, anon1766_Else;

  anon1766_Else:
    assume {:partition} $r271 == $null;
    call $fakelocal_135 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_135;
    return;

  anon1766_Then:
    assume {:partition} $r271 != $null;
    $exception := $exception;
    goto anon411;

  anon411:
    call i342, $exception := java.lang.Integer$intValue$($r271);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r272, $exception := java.lang.Integer$valueOf$int(i341);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i70 := 8 + i342;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r273, $exception := java.lang.Integer$valueOf$int($i70);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r274, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r272, $r273);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1767_Then, anon1767_Else;

  anon1767_Else:
    assume {:partition} !($heap[$r274, $type] <: java.lang.Integer);
    call $fakelocal_136 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_136;
    return;

  anon1767_Then:
    assume {:partition} $heap[$r274, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon414;

  anon414:
    $r275 := $r274;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1768_Then, anon1768_Else;

  anon1768_Else:
    assume {:partition} $r275 == $null;
    call $fakelocal_137 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_137;
    return;

  anon1768_Then:
    assume {:partition} $r275 != $null;
    $exception := $exception;
    goto anon417;

  anon417:
    call i343, $exception := java.lang.Integer$intValue$($r275);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r276, $exception := java.lang.Integer$valueOf$int(i342);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i71 := 9 + i343;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r277, $exception := java.lang.Integer$valueOf$int($i71);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r278, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r276, $r277);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1769_Then, anon1769_Else;

  anon1769_Else:
    assume {:partition} !($heap[$r278, $type] <: java.lang.Integer);
    call $fakelocal_138 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_138;
    return;

  anon1769_Then:
    assume {:partition} $heap[$r278, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon420;

  anon420:
    $r279 := $r278;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1770_Then, anon1770_Else;

  anon1770_Else:
    assume {:partition} $r279 == $null;
    call $fakelocal_139 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_139;
    return;

  anon1770_Then:
    assume {:partition} $r279 != $null;
    $exception := $exception;
    goto anon423;

  anon423:
    call i344, $exception := java.lang.Integer$intValue$($r279);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r280, $exception := java.lang.Integer$valueOf$int(i343);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i72 := 10 + i344;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r281, $exception := java.lang.Integer$valueOf$int($i72);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r282, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r280, $r281);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1771_Then, anon1771_Else;

  anon1771_Else:
    assume {:partition} !($heap[$r282, $type] <: java.lang.Integer);
    call $fakelocal_140 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_140;
    return;

  anon1771_Then:
    assume {:partition} $heap[$r282, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon426;

  anon426:
    $r283 := $r282;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1772_Then, anon1772_Else;

  anon1772_Else:
    assume {:partition} $r283 == $null;
    call $fakelocal_141 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_141;
    return;

  anon1772_Then:
    assume {:partition} $r283 != $null;
    $exception := $exception;
    goto anon429;

  anon429:
    call i345, $exception := java.lang.Integer$intValue$($r283);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r284, $exception := java.lang.Integer$valueOf$int(i344);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i73 := 1 + i345;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r285, $exception := java.lang.Integer$valueOf$int($i73);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r286, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r284, $r285);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1773_Then, anon1773_Else;

  anon1773_Else:
    assume {:partition} !($heap[$r286, $type] <: java.lang.Integer);
    call $fakelocal_142 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_142;
    return;

  anon1773_Then:
    assume {:partition} $heap[$r286, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon432;

  anon432:
    $r287 := $r286;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1774_Then, anon1774_Else;

  anon1774_Else:
    assume {:partition} $r287 == $null;
    call $fakelocal_143 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_143;
    return;

  anon1774_Then:
    assume {:partition} $r287 != $null;
    $exception := $exception;
    goto anon435;

  anon435:
    call i346, $exception := java.lang.Integer$intValue$($r287);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r288, $exception := java.lang.Integer$valueOf$int(i345);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i74 := 2 + i346;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r289, $exception := java.lang.Integer$valueOf$int($i74);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r290, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r288, $r289);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1775_Then, anon1775_Else;

  anon1775_Else:
    assume {:partition} !($heap[$r290, $type] <: java.lang.Integer);
    call $fakelocal_144 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_144;
    return;

  anon1775_Then:
    assume {:partition} $heap[$r290, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon438;

  anon438:
    $r291 := $r290;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1776_Then, anon1776_Else;

  anon1776_Else:
    assume {:partition} $r291 == $null;
    call $fakelocal_145 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_145;
    return;

  anon1776_Then:
    assume {:partition} $r291 != $null;
    $exception := $exception;
    goto anon441;

  anon441:
    call i347, $exception := java.lang.Integer$intValue$($r291);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r292, $exception := java.lang.Integer$valueOf$int(i346);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i75 := 3 + i347;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r293, $exception := java.lang.Integer$valueOf$int($i75);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r294, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r292, $r293);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1777_Then, anon1777_Else;

  anon1777_Else:
    assume {:partition} !($heap[$r294, $type] <: java.lang.Integer);
    call $fakelocal_146 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_146;
    return;

  anon1777_Then:
    assume {:partition} $heap[$r294, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon444;

  anon444:
    $r295 := $r294;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1778_Then, anon1778_Else;

  anon1778_Else:
    assume {:partition} $r295 == $null;
    call $fakelocal_147 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_147;
    return;

  anon1778_Then:
    assume {:partition} $r295 != $null;
    $exception := $exception;
    goto anon447;

  anon447:
    call i348, $exception := java.lang.Integer$intValue$($r295);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r296, $exception := java.lang.Integer$valueOf$int(i347);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i76 := 4 + i348;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r297, $exception := java.lang.Integer$valueOf$int($i76);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r298, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r296, $r297);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1779_Then, anon1779_Else;

  anon1779_Else:
    assume {:partition} !($heap[$r298, $type] <: java.lang.Integer);
    call $fakelocal_148 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_148;
    return;

  anon1779_Then:
    assume {:partition} $heap[$r298, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon450;

  anon450:
    $r299 := $r298;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1780_Then, anon1780_Else;

  anon1780_Else:
    assume {:partition} $r299 == $null;
    call $fakelocal_149 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_149;
    return;

  anon1780_Then:
    assume {:partition} $r299 != $null;
    $exception := $exception;
    goto anon453;

  anon453:
    call i349, $exception := java.lang.Integer$intValue$($r299);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r300, $exception := java.lang.Integer$valueOf$int(i348);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i77 := 5 + i349;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r301, $exception := java.lang.Integer$valueOf$int($i77);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r302, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r300, $r301);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1781_Then, anon1781_Else;

  anon1781_Else:
    assume {:partition} !($heap[$r302, $type] <: java.lang.Integer);
    call $fakelocal_150 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_150;
    return;

  anon1781_Then:
    assume {:partition} $heap[$r302, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon456;

  anon456:
    $r303 := $r302;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1782_Then, anon1782_Else;

  anon1782_Else:
    assume {:partition} $r303 == $null;
    call $fakelocal_151 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_151;
    return;

  anon1782_Then:
    assume {:partition} $r303 != $null;
    $exception := $exception;
    goto anon459;

  anon459:
    call i350, $exception := java.lang.Integer$intValue$($r303);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r304, $exception := java.lang.Integer$valueOf$int(i349);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i78 := 6 + i350;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r305, $exception := java.lang.Integer$valueOf$int($i78);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r306, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r304, $r305);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1783_Then, anon1783_Else;

  anon1783_Else:
    assume {:partition} !($heap[$r306, $type] <: java.lang.Integer);
    call $fakelocal_152 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_152;
    return;

  anon1783_Then:
    assume {:partition} $heap[$r306, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon462;

  anon462:
    $r307 := $r306;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1784_Then, anon1784_Else;

  anon1784_Else:
    assume {:partition} $r307 == $null;
    call $fakelocal_153 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_153;
    return;

  anon1784_Then:
    assume {:partition} $r307 != $null;
    $exception := $exception;
    goto anon465;

  anon465:
    call i351, $exception := java.lang.Integer$intValue$($r307);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r308, $exception := java.lang.Integer$valueOf$int(i350);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i79 := 7 + i351;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r309, $exception := java.lang.Integer$valueOf$int($i79);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r310, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r308, $r309);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1785_Then, anon1785_Else;

  anon1785_Else:
    assume {:partition} !($heap[$r310, $type] <: java.lang.Integer);
    call $fakelocal_154 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_154;
    return;

  anon1785_Then:
    assume {:partition} $heap[$r310, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon468;

  anon468:
    $r311 := $r310;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1786_Then, anon1786_Else;

  anon1786_Else:
    assume {:partition} $r311 == $null;
    call $fakelocal_155 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_155;
    return;

  anon1786_Then:
    assume {:partition} $r311 != $null;
    $exception := $exception;
    goto anon471;

  anon471:
    call i352, $exception := java.lang.Integer$intValue$($r311);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r312, $exception := java.lang.Integer$valueOf$int(i351);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i80 := 8 + i352;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r313, $exception := java.lang.Integer$valueOf$int($i80);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r314, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r312, $r313);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1787_Then, anon1787_Else;

  anon1787_Else:
    assume {:partition} !($heap[$r314, $type] <: java.lang.Integer);
    call $fakelocal_156 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_156;
    return;

  anon1787_Then:
    assume {:partition} $heap[$r314, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon474;

  anon474:
    $r315 := $r314;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1788_Then, anon1788_Else;

  anon1788_Else:
    assume {:partition} $r315 == $null;
    call $fakelocal_157 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_157;
    return;

  anon1788_Then:
    assume {:partition} $r315 != $null;
    $exception := $exception;
    goto anon477;

  anon477:
    call i353, $exception := java.lang.Integer$intValue$($r315);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r316, $exception := java.lang.Integer$valueOf$int(i352);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i81 := 9 + i353;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r317, $exception := java.lang.Integer$valueOf$int($i81);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r318, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r316, $r317);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1789_Then, anon1789_Else;

  anon1789_Else:
    assume {:partition} !($heap[$r318, $type] <: java.lang.Integer);
    call $fakelocal_158 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_158;
    return;

  anon1789_Then:
    assume {:partition} $heap[$r318, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon480;

  anon480:
    $r319 := $r318;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1790_Then, anon1790_Else;

  anon1790_Else:
    assume {:partition} $r319 == $null;
    call $fakelocal_159 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_159;
    return;

  anon1790_Then:
    assume {:partition} $r319 != $null;
    $exception := $exception;
    goto anon483;

  anon483:
    call i354, $exception := java.lang.Integer$intValue$($r319);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r320, $exception := java.lang.Integer$valueOf$int(i353);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i82 := 10 + i354;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r321, $exception := java.lang.Integer$valueOf$int($i82);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r322, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r320, $r321);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1791_Then, anon1791_Else;

  anon1791_Else:
    assume {:partition} !($heap[$r322, $type] <: java.lang.Integer);
    call $fakelocal_160 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_160;
    return;

  anon1791_Then:
    assume {:partition} $heap[$r322, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon486;

  anon486:
    $r323 := $r322;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1792_Then, anon1792_Else;

  anon1792_Else:
    assume {:partition} $r323 == $null;
    call $fakelocal_161 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_161;
    return;

  anon1792_Then:
    assume {:partition} $r323 != $null;
    $exception := $exception;
    goto anon489;

  anon489:
    call i355, $exception := java.lang.Integer$intValue$($r323);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r324, $exception := java.lang.Integer$valueOf$int(i354);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i83 := 1 + i355;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r325, $exception := java.lang.Integer$valueOf$int($i83);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r326, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r324, $r325);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1793_Then, anon1793_Else;

  anon1793_Else:
    assume {:partition} !($heap[$r326, $type] <: java.lang.Integer);
    call $fakelocal_162 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_162;
    return;

  anon1793_Then:
    assume {:partition} $heap[$r326, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon492;

  anon492:
    $r327 := $r326;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1794_Then, anon1794_Else;

  anon1794_Else:
    assume {:partition} $r327 == $null;
    call $fakelocal_163 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_163;
    return;

  anon1794_Then:
    assume {:partition} $r327 != $null;
    $exception := $exception;
    goto anon495;

  anon495:
    call i356, $exception := java.lang.Integer$intValue$($r327);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r328, $exception := java.lang.Integer$valueOf$int(i355);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i84 := 2 + i356;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r329, $exception := java.lang.Integer$valueOf$int($i84);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r330, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r328, $r329);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1795_Then, anon1795_Else;

  anon1795_Else:
    assume {:partition} !($heap[$r330, $type] <: java.lang.Integer);
    call $fakelocal_164 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_164;
    return;

  anon1795_Then:
    assume {:partition} $heap[$r330, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon498;

  anon498:
    $r331 := $r330;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1796_Then, anon1796_Else;

  anon1796_Else:
    assume {:partition} $r331 == $null;
    call $fakelocal_165 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_165;
    return;

  anon1796_Then:
    assume {:partition} $r331 != $null;
    $exception := $exception;
    goto anon501;

  anon501:
    call i357, $exception := java.lang.Integer$intValue$($r331);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r332, $exception := java.lang.Integer$valueOf$int(i356);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i85 := 3 + i357;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r333, $exception := java.lang.Integer$valueOf$int($i85);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r334, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r332, $r333);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1797_Then, anon1797_Else;

  anon1797_Else:
    assume {:partition} !($heap[$r334, $type] <: java.lang.Integer);
    call $fakelocal_166 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_166;
    return;

  anon1797_Then:
    assume {:partition} $heap[$r334, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon504;

  anon504:
    $r335 := $r334;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1798_Then, anon1798_Else;

  anon1798_Else:
    assume {:partition} $r335 == $null;
    call $fakelocal_167 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_167;
    return;

  anon1798_Then:
    assume {:partition} $r335 != $null;
    $exception := $exception;
    goto anon507;

  anon507:
    call i358, $exception := java.lang.Integer$intValue$($r335);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r336, $exception := java.lang.Integer$valueOf$int(i357);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i86 := 4 + i358;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r337, $exception := java.lang.Integer$valueOf$int($i86);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r338, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r336, $r337);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1799_Then, anon1799_Else;

  anon1799_Else:
    assume {:partition} !($heap[$r338, $type] <: java.lang.Integer);
    call $fakelocal_168 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_168;
    return;

  anon1799_Then:
    assume {:partition} $heap[$r338, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon510;

  anon510:
    $r339 := $r338;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1800_Then, anon1800_Else;

  anon1800_Else:
    assume {:partition} $r339 == $null;
    call $fakelocal_169 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_169;
    return;

  anon1800_Then:
    assume {:partition} $r339 != $null;
    $exception := $exception;
    goto anon513;

  anon513:
    call i359, $exception := java.lang.Integer$intValue$($r339);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r340, $exception := java.lang.Integer$valueOf$int(i358);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i87 := 5 + i359;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r341, $exception := java.lang.Integer$valueOf$int($i87);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r342, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r340, $r341);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1801_Then, anon1801_Else;

  anon1801_Else:
    assume {:partition} !($heap[$r342, $type] <: java.lang.Integer);
    call $fakelocal_170 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_170;
    return;

  anon1801_Then:
    assume {:partition} $heap[$r342, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon516;

  anon516:
    $r343 := $r342;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1802_Then, anon1802_Else;

  anon1802_Else:
    assume {:partition} $r343 == $null;
    call $fakelocal_171 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_171;
    return;

  anon1802_Then:
    assume {:partition} $r343 != $null;
    $exception := $exception;
    goto anon519;

  anon519:
    call i360, $exception := java.lang.Integer$intValue$($r343);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r344, $exception := java.lang.Integer$valueOf$int(i359);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i88 := 6 + i360;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r345, $exception := java.lang.Integer$valueOf$int($i88);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r346, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r344, $r345);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1803_Then, anon1803_Else;

  anon1803_Else:
    assume {:partition} !($heap[$r346, $type] <: java.lang.Integer);
    call $fakelocal_172 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_172;
    return;

  anon1803_Then:
    assume {:partition} $heap[$r346, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon522;

  anon522:
    $r347 := $r346;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1804_Then, anon1804_Else;

  anon1804_Else:
    assume {:partition} $r347 == $null;
    call $fakelocal_173 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_173;
    return;

  anon1804_Then:
    assume {:partition} $r347 != $null;
    $exception := $exception;
    goto anon525;

  anon525:
    call i361, $exception := java.lang.Integer$intValue$($r347);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r348, $exception := java.lang.Integer$valueOf$int(i360);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i89 := 7 + i361;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r349, $exception := java.lang.Integer$valueOf$int($i89);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r350, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r348, $r349);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1805_Then, anon1805_Else;

  anon1805_Else:
    assume {:partition} !($heap[$r350, $type] <: java.lang.Integer);
    call $fakelocal_174 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_174;
    return;

  anon1805_Then:
    assume {:partition} $heap[$r350, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon528;

  anon528:
    $r351 := $r350;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1806_Then, anon1806_Else;

  anon1806_Else:
    assume {:partition} $r351 == $null;
    call $fakelocal_175 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_175;
    return;

  anon1806_Then:
    assume {:partition} $r351 != $null;
    $exception := $exception;
    goto anon531;

  anon531:
    call i362, $exception := java.lang.Integer$intValue$($r351);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r352, $exception := java.lang.Integer$valueOf$int(i361);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i90 := 8 + i362;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r353, $exception := java.lang.Integer$valueOf$int($i90);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r354, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r352, $r353);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1807_Then, anon1807_Else;

  anon1807_Else:
    assume {:partition} !($heap[$r354, $type] <: java.lang.Integer);
    call $fakelocal_176 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_176;
    return;

  anon1807_Then:
    assume {:partition} $heap[$r354, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon534;

  anon534:
    $r355 := $r354;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1808_Then, anon1808_Else;

  anon1808_Else:
    assume {:partition} $r355 == $null;
    call $fakelocal_177 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_177;
    return;

  anon1808_Then:
    assume {:partition} $r355 != $null;
    $exception := $exception;
    goto anon537;

  anon537:
    call i363, $exception := java.lang.Integer$intValue$($r355);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r356, $exception := java.lang.Integer$valueOf$int(i362);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i91 := 9 + i363;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r357, $exception := java.lang.Integer$valueOf$int($i91);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r358, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r356, $r357);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1809_Then, anon1809_Else;

  anon1809_Else:
    assume {:partition} !($heap[$r358, $type] <: java.lang.Integer);
    call $fakelocal_178 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_178;
    return;

  anon1809_Then:
    assume {:partition} $heap[$r358, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon540;

  anon540:
    $r359 := $r358;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1810_Then, anon1810_Else;

  anon1810_Else:
    assume {:partition} $r359 == $null;
    call $fakelocal_179 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_179;
    return;

  anon1810_Then:
    assume {:partition} $r359 != $null;
    $exception := $exception;
    goto anon543;

  anon543:
    call i364, $exception := java.lang.Integer$intValue$($r359);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r360, $exception := java.lang.Integer$valueOf$int(i363);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    $i92 := 10 + i364;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r361, $exception := java.lang.Integer$valueOf$int($i92);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    call $r362, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r360, $r361);
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1811_Then, anon1811_Else;

  anon1811_Else:
    assume {:partition} !($heap[$r362, $type] <: java.lang.Integer);
    call $fakelocal_180 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_180;
    return;

  anon1811_Then:
    assume {:partition} $heap[$r362, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon546;

  anon546:
    $r363 := $r362;
    assert {:sourceloc "Sanity.java", 25, -1, -1, -1} true;
    goto anon1812_Then, anon1812_Else;

  anon1812_Else:
    assume {:partition} $r363 == $null;
    call $fakelocal_181 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_181;
    return;

  anon1812_Then:
    assume {:partition} $r363 != $null;
    $exception := $exception;
    goto anon549;

  anon549:
    call i365, $exception := java.lang.Integer$intValue$($r363);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r364, $exception := java.lang.Integer$valueOf$int(i364);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i93 := 1 + i365;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r365, $exception := java.lang.Integer$valueOf$int($i93);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r366, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r364, $r365);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1813_Then, anon1813_Else;

  anon1813_Else:
    assume {:partition} !($heap[$r366, $type] <: java.lang.Integer);
    call $fakelocal_182 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_182;
    return;

  anon1813_Then:
    assume {:partition} $heap[$r366, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon552;

  anon552:
    $r367 := $r366;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1814_Then, anon1814_Else;

  anon1814_Else:
    assume {:partition} $r367 == $null;
    call $fakelocal_183 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_183;
    return;

  anon1814_Then:
    assume {:partition} $r367 != $null;
    $exception := $exception;
    goto anon555;

  anon555:
    call i366, $exception := java.lang.Integer$intValue$($r367);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r368, $exception := java.lang.Integer$valueOf$int(i365);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i94 := 2 + i366;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r369, $exception := java.lang.Integer$valueOf$int($i94);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r370, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r368, $r369);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1815_Then, anon1815_Else;

  anon1815_Else:
    assume {:partition} !($heap[$r370, $type] <: java.lang.Integer);
    call $fakelocal_184 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_184;
    return;

  anon1815_Then:
    assume {:partition} $heap[$r370, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon558;

  anon558:
    $r371 := $r370;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1816_Then, anon1816_Else;

  anon1816_Else:
    assume {:partition} $r371 == $null;
    call $fakelocal_185 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_185;
    return;

  anon1816_Then:
    assume {:partition} $r371 != $null;
    $exception := $exception;
    goto anon561;

  anon561:
    call i367, $exception := java.lang.Integer$intValue$($r371);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r372, $exception := java.lang.Integer$valueOf$int(i366);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i95 := 3 + i367;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r373, $exception := java.lang.Integer$valueOf$int($i95);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r374, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r372, $r373);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1817_Then, anon1817_Else;

  anon1817_Else:
    assume {:partition} !($heap[$r374, $type] <: java.lang.Integer);
    call $fakelocal_186 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_186;
    return;

  anon1817_Then:
    assume {:partition} $heap[$r374, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon564;

  anon564:
    $r375 := $r374;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1818_Then, anon1818_Else;

  anon1818_Else:
    assume {:partition} $r375 == $null;
    call $fakelocal_187 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_187;
    return;

  anon1818_Then:
    assume {:partition} $r375 != $null;
    $exception := $exception;
    goto anon567;

  anon567:
    call i368, $exception := java.lang.Integer$intValue$($r375);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r376, $exception := java.lang.Integer$valueOf$int(i367);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i96 := 4 + i368;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r377, $exception := java.lang.Integer$valueOf$int($i96);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r378, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r376, $r377);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1819_Then, anon1819_Else;

  anon1819_Else:
    assume {:partition} !($heap[$r378, $type] <: java.lang.Integer);
    call $fakelocal_188 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_188;
    return;

  anon1819_Then:
    assume {:partition} $heap[$r378, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon570;

  anon570:
    $r379 := $r378;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1820_Then, anon1820_Else;

  anon1820_Else:
    assume {:partition} $r379 == $null;
    call $fakelocal_189 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_189;
    return;

  anon1820_Then:
    assume {:partition} $r379 != $null;
    $exception := $exception;
    goto anon573;

  anon573:
    call i369, $exception := java.lang.Integer$intValue$($r379);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r380, $exception := java.lang.Integer$valueOf$int(i368);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i97 := 5 + i369;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r381, $exception := java.lang.Integer$valueOf$int($i97);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r382, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r380, $r381);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1821_Then, anon1821_Else;

  anon1821_Else:
    assume {:partition} !($heap[$r382, $type] <: java.lang.Integer);
    call $fakelocal_190 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_190;
    return;

  anon1821_Then:
    assume {:partition} $heap[$r382, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon576;

  anon576:
    $r383 := $r382;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1822_Then, anon1822_Else;

  anon1822_Else:
    assume {:partition} $r383 == $null;
    call $fakelocal_191 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_191;
    return;

  anon1822_Then:
    assume {:partition} $r383 != $null;
    $exception := $exception;
    goto anon579;

  anon579:
    call i370, $exception := java.lang.Integer$intValue$($r383);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r384, $exception := java.lang.Integer$valueOf$int(i369);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i98 := 6 + i370;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r385, $exception := java.lang.Integer$valueOf$int($i98);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r386, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r384, $r385);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1823_Then, anon1823_Else;

  anon1823_Else:
    assume {:partition} !($heap[$r386, $type] <: java.lang.Integer);
    call $fakelocal_192 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_192;
    return;

  anon1823_Then:
    assume {:partition} $heap[$r386, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon582;

  anon582:
    $r387 := $r386;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1824_Then, anon1824_Else;

  anon1824_Else:
    assume {:partition} $r387 == $null;
    call $fakelocal_193 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_193;
    return;

  anon1824_Then:
    assume {:partition} $r387 != $null;
    $exception := $exception;
    goto anon585;

  anon585:
    call i371, $exception := java.lang.Integer$intValue$($r387);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r388, $exception := java.lang.Integer$valueOf$int(i370);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i99 := 7 + i371;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r389, $exception := java.lang.Integer$valueOf$int($i99);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r390, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r388, $r389);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1825_Then, anon1825_Else;

  anon1825_Else:
    assume {:partition} !($heap[$r390, $type] <: java.lang.Integer);
    call $fakelocal_194 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_194;
    return;

  anon1825_Then:
    assume {:partition} $heap[$r390, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon588;

  anon588:
    $r391 := $r390;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1826_Then, anon1826_Else;

  anon1826_Else:
    assume {:partition} $r391 == $null;
    call $fakelocal_195 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_195;
    return;

  anon1826_Then:
    assume {:partition} $r391 != $null;
    $exception := $exception;
    goto anon591;

  anon591:
    call i372, $exception := java.lang.Integer$intValue$($r391);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r392, $exception := java.lang.Integer$valueOf$int(i371);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i100 := 8 + i372;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r393, $exception := java.lang.Integer$valueOf$int($i100);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r394, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r392, $r393);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1827_Then, anon1827_Else;

  anon1827_Else:
    assume {:partition} !($heap[$r394, $type] <: java.lang.Integer);
    call $fakelocal_196 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_196;
    return;

  anon1827_Then:
    assume {:partition} $heap[$r394, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon594;

  anon594:
    $r395 := $r394;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1828_Then, anon1828_Else;

  anon1828_Else:
    assume {:partition} $r395 == $null;
    call $fakelocal_197 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_197;
    return;

  anon1828_Then:
    assume {:partition} $r395 != $null;
    $exception := $exception;
    goto anon597;

  anon597:
    call i373, $exception := java.lang.Integer$intValue$($r395);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r396, $exception := java.lang.Integer$valueOf$int(i372);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i101 := 9 + i373;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r397, $exception := java.lang.Integer$valueOf$int($i101);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r398, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r396, $r397);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1829_Then, anon1829_Else;

  anon1829_Else:
    assume {:partition} !($heap[$r398, $type] <: java.lang.Integer);
    call $fakelocal_198 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_198;
    return;

  anon1829_Then:
    assume {:partition} $heap[$r398, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon600;

  anon600:
    $r399 := $r398;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1830_Then, anon1830_Else;

  anon1830_Else:
    assume {:partition} $r399 == $null;
    call $fakelocal_199 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_199;
    return;

  anon1830_Then:
    assume {:partition} $r399 != $null;
    $exception := $exception;
    goto anon603;

  anon603:
    call i374, $exception := java.lang.Integer$intValue$($r399);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r400, $exception := java.lang.Integer$valueOf$int(i373);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i102 := 10 + i374;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r401, $exception := java.lang.Integer$valueOf$int($i102);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r402, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r400, $r401);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1831_Then, anon1831_Else;

  anon1831_Else:
    assume {:partition} !($heap[$r402, $type] <: java.lang.Integer);
    call $fakelocal_200 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_200;
    return;

  anon1831_Then:
    assume {:partition} $heap[$r402, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon606;

  anon606:
    $r403 := $r402;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1832_Then, anon1832_Else;

  anon1832_Else:
    assume {:partition} $r403 == $null;
    call $fakelocal_201 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_201;
    return;

  anon1832_Then:
    assume {:partition} $r403 != $null;
    $exception := $exception;
    goto anon609;

  anon609:
    call i375, $exception := java.lang.Integer$intValue$($r403);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r404, $exception := java.lang.Integer$valueOf$int(i374);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i103 := 1 + i375;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r405, $exception := java.lang.Integer$valueOf$int($i103);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r406, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r404, $r405);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1833_Then, anon1833_Else;

  anon1833_Else:
    assume {:partition} !($heap[$r406, $type] <: java.lang.Integer);
    call $fakelocal_202 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_202;
    return;

  anon1833_Then:
    assume {:partition} $heap[$r406, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon612;

  anon612:
    $r407 := $r406;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1834_Then, anon1834_Else;

  anon1834_Else:
    assume {:partition} $r407 == $null;
    call $fakelocal_203 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_203;
    return;

  anon1834_Then:
    assume {:partition} $r407 != $null;
    $exception := $exception;
    goto anon615;

  anon615:
    call i376, $exception := java.lang.Integer$intValue$($r407);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r408, $exception := java.lang.Integer$valueOf$int(i375);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i104 := 2 + i376;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r409, $exception := java.lang.Integer$valueOf$int($i104);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r410, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r408, $r409);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1835_Then, anon1835_Else;

  anon1835_Else:
    assume {:partition} !($heap[$r410, $type] <: java.lang.Integer);
    call $fakelocal_204 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_204;
    return;

  anon1835_Then:
    assume {:partition} $heap[$r410, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon618;

  anon618:
    $r411 := $r410;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1836_Then, anon1836_Else;

  anon1836_Else:
    assume {:partition} $r411 == $null;
    call $fakelocal_205 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_205;
    return;

  anon1836_Then:
    assume {:partition} $r411 != $null;
    $exception := $exception;
    goto anon621;

  anon621:
    call i377, $exception := java.lang.Integer$intValue$($r411);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r412, $exception := java.lang.Integer$valueOf$int(i376);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i105 := 3 + i377;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r413, $exception := java.lang.Integer$valueOf$int($i105);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r414, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r412, $r413);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1837_Then, anon1837_Else;

  anon1837_Else:
    assume {:partition} !($heap[$r414, $type] <: java.lang.Integer);
    call $fakelocal_206 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_206;
    return;

  anon1837_Then:
    assume {:partition} $heap[$r414, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon624;

  anon624:
    $r415 := $r414;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1838_Then, anon1838_Else;

  anon1838_Else:
    assume {:partition} $r415 == $null;
    call $fakelocal_207 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_207;
    return;

  anon1838_Then:
    assume {:partition} $r415 != $null;
    $exception := $exception;
    goto anon627;

  anon627:
    call i378, $exception := java.lang.Integer$intValue$($r415);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r416, $exception := java.lang.Integer$valueOf$int(i377);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i106 := 4 + i378;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r417, $exception := java.lang.Integer$valueOf$int($i106);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r418, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r416, $r417);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1839_Then, anon1839_Else;

  anon1839_Else:
    assume {:partition} !($heap[$r418, $type] <: java.lang.Integer);
    call $fakelocal_208 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_208;
    return;

  anon1839_Then:
    assume {:partition} $heap[$r418, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon630;

  anon630:
    $r419 := $r418;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1840_Then, anon1840_Else;

  anon1840_Else:
    assume {:partition} $r419 == $null;
    call $fakelocal_209 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_209;
    return;

  anon1840_Then:
    assume {:partition} $r419 != $null;
    $exception := $exception;
    goto anon633;

  anon633:
    call i379, $exception := java.lang.Integer$intValue$($r419);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r420, $exception := java.lang.Integer$valueOf$int(i378);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i107 := 5 + i379;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r421, $exception := java.lang.Integer$valueOf$int($i107);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r422, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r420, $r421);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1841_Then, anon1841_Else;

  anon1841_Else:
    assume {:partition} !($heap[$r422, $type] <: java.lang.Integer);
    call $fakelocal_210 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_210;
    return;

  anon1841_Then:
    assume {:partition} $heap[$r422, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon636;

  anon636:
    $r423 := $r422;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1842_Then, anon1842_Else;

  anon1842_Else:
    assume {:partition} $r423 == $null;
    call $fakelocal_211 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_211;
    return;

  anon1842_Then:
    assume {:partition} $r423 != $null;
    $exception := $exception;
    goto anon639;

  anon639:
    call i380, $exception := java.lang.Integer$intValue$($r423);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r424, $exception := java.lang.Integer$valueOf$int(i379);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i108 := 6 + i380;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r425, $exception := java.lang.Integer$valueOf$int($i108);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r426, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r424, $r425);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1843_Then, anon1843_Else;

  anon1843_Else:
    assume {:partition} !($heap[$r426, $type] <: java.lang.Integer);
    call $fakelocal_212 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_212;
    return;

  anon1843_Then:
    assume {:partition} $heap[$r426, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon642;

  anon642:
    $r427 := $r426;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1844_Then, anon1844_Else;

  anon1844_Else:
    assume {:partition} $r427 == $null;
    call $fakelocal_213 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_213;
    return;

  anon1844_Then:
    assume {:partition} $r427 != $null;
    $exception := $exception;
    goto anon645;

  anon645:
    call i381, $exception := java.lang.Integer$intValue$($r427);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r428, $exception := java.lang.Integer$valueOf$int(i380);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i109 := 7 + i381;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r429, $exception := java.lang.Integer$valueOf$int($i109);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r430, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r428, $r429);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1845_Then, anon1845_Else;

  anon1845_Else:
    assume {:partition} !($heap[$r430, $type] <: java.lang.Integer);
    call $fakelocal_214 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_214;
    return;

  anon1845_Then:
    assume {:partition} $heap[$r430, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon648;

  anon648:
    $r431 := $r430;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1846_Then, anon1846_Else;

  anon1846_Else:
    assume {:partition} $r431 == $null;
    call $fakelocal_215 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_215;
    return;

  anon1846_Then:
    assume {:partition} $r431 != $null;
    $exception := $exception;
    goto anon651;

  anon651:
    call i382, $exception := java.lang.Integer$intValue$($r431);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r432, $exception := java.lang.Integer$valueOf$int(i381);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i110 := 8 + i382;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r433, $exception := java.lang.Integer$valueOf$int($i110);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r434, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r432, $r433);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1847_Then, anon1847_Else;

  anon1847_Else:
    assume {:partition} !($heap[$r434, $type] <: java.lang.Integer);
    call $fakelocal_216 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_216;
    return;

  anon1847_Then:
    assume {:partition} $heap[$r434, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon654;

  anon654:
    $r435 := $r434;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1848_Then, anon1848_Else;

  anon1848_Else:
    assume {:partition} $r435 == $null;
    call $fakelocal_217 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_217;
    return;

  anon1848_Then:
    assume {:partition} $r435 != $null;
    $exception := $exception;
    goto anon657;

  anon657:
    call i383, $exception := java.lang.Integer$intValue$($r435);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r436, $exception := java.lang.Integer$valueOf$int(i382);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i111 := 9 + i383;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r437, $exception := java.lang.Integer$valueOf$int($i111);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r438, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r436, $r437);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1849_Then, anon1849_Else;

  anon1849_Else:
    assume {:partition} !($heap[$r438, $type] <: java.lang.Integer);
    call $fakelocal_218 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_218;
    return;

  anon1849_Then:
    assume {:partition} $heap[$r438, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon660;

  anon660:
    $r439 := $r438;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1850_Then, anon1850_Else;

  anon1850_Else:
    assume {:partition} $r439 == $null;
    call $fakelocal_219 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_219;
    return;

  anon1850_Then:
    assume {:partition} $r439 != $null;
    $exception := $exception;
    goto anon663;

  anon663:
    call i384, $exception := java.lang.Integer$intValue$($r439);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r440, $exception := java.lang.Integer$valueOf$int(i383);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i112 := 10 + i384;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r441, $exception := java.lang.Integer$valueOf$int($i112);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r442, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r440, $r441);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1851_Then, anon1851_Else;

  anon1851_Else:
    assume {:partition} !($heap[$r442, $type] <: java.lang.Integer);
    call $fakelocal_220 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_220;
    return;

  anon1851_Then:
    assume {:partition} $heap[$r442, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon666;

  anon666:
    $r443 := $r442;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1852_Then, anon1852_Else;

  anon1852_Else:
    assume {:partition} $r443 == $null;
    call $fakelocal_221 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_221;
    return;

  anon1852_Then:
    assume {:partition} $r443 != $null;
    $exception := $exception;
    goto anon669;

  anon669:
    call i385, $exception := java.lang.Integer$intValue$($r443);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r444, $exception := java.lang.Integer$valueOf$int(i384);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i113 := 1 + i385;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r445, $exception := java.lang.Integer$valueOf$int($i113);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r446, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r444, $r445);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1853_Then, anon1853_Else;

  anon1853_Else:
    assume {:partition} !($heap[$r446, $type] <: java.lang.Integer);
    call $fakelocal_222 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_222;
    return;

  anon1853_Then:
    assume {:partition} $heap[$r446, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon672;

  anon672:
    $r447 := $r446;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1854_Then, anon1854_Else;

  anon1854_Else:
    assume {:partition} $r447 == $null;
    call $fakelocal_223 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_223;
    return;

  anon1854_Then:
    assume {:partition} $r447 != $null;
    $exception := $exception;
    goto anon675;

  anon675:
    call i386, $exception := java.lang.Integer$intValue$($r447);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r448, $exception := java.lang.Integer$valueOf$int(i385);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i114 := 2 + i386;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r449, $exception := java.lang.Integer$valueOf$int($i114);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r450, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r448, $r449);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1855_Then, anon1855_Else;

  anon1855_Else:
    assume {:partition} !($heap[$r450, $type] <: java.lang.Integer);
    call $fakelocal_224 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_224;
    return;

  anon1855_Then:
    assume {:partition} $heap[$r450, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon678;

  anon678:
    $r451 := $r450;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1856_Then, anon1856_Else;

  anon1856_Else:
    assume {:partition} $r451 == $null;
    call $fakelocal_225 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_225;
    return;

  anon1856_Then:
    assume {:partition} $r451 != $null;
    $exception := $exception;
    goto anon681;

  anon681:
    call i387, $exception := java.lang.Integer$intValue$($r451);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r452, $exception := java.lang.Integer$valueOf$int(i386);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i115 := 3 + i387;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r453, $exception := java.lang.Integer$valueOf$int($i115);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r454, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r452, $r453);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1857_Then, anon1857_Else;

  anon1857_Else:
    assume {:partition} !($heap[$r454, $type] <: java.lang.Integer);
    call $fakelocal_226 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_226;
    return;

  anon1857_Then:
    assume {:partition} $heap[$r454, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon684;

  anon684:
    $r455 := $r454;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1858_Then, anon1858_Else;

  anon1858_Else:
    assume {:partition} $r455 == $null;
    call $fakelocal_227 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_227;
    return;

  anon1858_Then:
    assume {:partition} $r455 != $null;
    $exception := $exception;
    goto anon687;

  anon687:
    call i388, $exception := java.lang.Integer$intValue$($r455);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r456, $exception := java.lang.Integer$valueOf$int(i387);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i116 := 4 + i388;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r457, $exception := java.lang.Integer$valueOf$int($i116);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r458, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r456, $r457);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1859_Then, anon1859_Else;

  anon1859_Else:
    assume {:partition} !($heap[$r458, $type] <: java.lang.Integer);
    call $fakelocal_228 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_228;
    return;

  anon1859_Then:
    assume {:partition} $heap[$r458, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon690;

  anon690:
    $r459 := $r458;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1860_Then, anon1860_Else;

  anon1860_Else:
    assume {:partition} $r459 == $null;
    call $fakelocal_229 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_229;
    return;

  anon1860_Then:
    assume {:partition} $r459 != $null;
    $exception := $exception;
    goto anon693;

  anon693:
    call i389, $exception := java.lang.Integer$intValue$($r459);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r460, $exception := java.lang.Integer$valueOf$int(i388);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i117 := 5 + i389;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r461, $exception := java.lang.Integer$valueOf$int($i117);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r462, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r460, $r461);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1861_Then, anon1861_Else;

  anon1861_Else:
    assume {:partition} !($heap[$r462, $type] <: java.lang.Integer);
    call $fakelocal_230 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_230;
    return;

  anon1861_Then:
    assume {:partition} $heap[$r462, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon696;

  anon696:
    $r463 := $r462;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1862_Then, anon1862_Else;

  anon1862_Else:
    assume {:partition} $r463 == $null;
    call $fakelocal_231 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_231;
    return;

  anon1862_Then:
    assume {:partition} $r463 != $null;
    $exception := $exception;
    goto anon699;

  anon699:
    call i390, $exception := java.lang.Integer$intValue$($r463);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r464, $exception := java.lang.Integer$valueOf$int(i389);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i118 := 6 + i390;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r465, $exception := java.lang.Integer$valueOf$int($i118);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r466, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r464, $r465);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1863_Then, anon1863_Else;

  anon1863_Else:
    assume {:partition} !($heap[$r466, $type] <: java.lang.Integer);
    call $fakelocal_232 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_232;
    return;

  anon1863_Then:
    assume {:partition} $heap[$r466, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon702;

  anon702:
    $r467 := $r466;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1864_Then, anon1864_Else;

  anon1864_Else:
    assume {:partition} $r467 == $null;
    call $fakelocal_233 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_233;
    return;

  anon1864_Then:
    assume {:partition} $r467 != $null;
    $exception := $exception;
    goto anon705;

  anon705:
    call i391, $exception := java.lang.Integer$intValue$($r467);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r468, $exception := java.lang.Integer$valueOf$int(i390);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i119 := 7 + i391;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r469, $exception := java.lang.Integer$valueOf$int($i119);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r470, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r468, $r469);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1865_Then, anon1865_Else;

  anon1865_Else:
    assume {:partition} !($heap[$r470, $type] <: java.lang.Integer);
    call $fakelocal_234 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_234;
    return;

  anon1865_Then:
    assume {:partition} $heap[$r470, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon708;

  anon708:
    $r471 := $r470;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1866_Then, anon1866_Else;

  anon1866_Else:
    assume {:partition} $r471 == $null;
    call $fakelocal_235 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_235;
    return;

  anon1866_Then:
    assume {:partition} $r471 != $null;
    $exception := $exception;
    goto anon711;

  anon711:
    call i392, $exception := java.lang.Integer$intValue$($r471);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r472, $exception := java.lang.Integer$valueOf$int(i391);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i120 := 8 + i392;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r473, $exception := java.lang.Integer$valueOf$int($i120);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r474, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r472, $r473);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1867_Then, anon1867_Else;

  anon1867_Else:
    assume {:partition} !($heap[$r474, $type] <: java.lang.Integer);
    call $fakelocal_236 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_236;
    return;

  anon1867_Then:
    assume {:partition} $heap[$r474, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon714;

  anon714:
    $r475 := $r474;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1868_Then, anon1868_Else;

  anon1868_Else:
    assume {:partition} $r475 == $null;
    call $fakelocal_237 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_237;
    return;

  anon1868_Then:
    assume {:partition} $r475 != $null;
    $exception := $exception;
    goto anon717;

  anon717:
    call i393, $exception := java.lang.Integer$intValue$($r475);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r476, $exception := java.lang.Integer$valueOf$int(i392);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i121 := 9 + i393;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r477, $exception := java.lang.Integer$valueOf$int($i121);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r478, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r476, $r477);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1869_Then, anon1869_Else;

  anon1869_Else:
    assume {:partition} !($heap[$r478, $type] <: java.lang.Integer);
    call $fakelocal_238 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_238;
    return;

  anon1869_Then:
    assume {:partition} $heap[$r478, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon720;

  anon720:
    $r479 := $r478;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1870_Then, anon1870_Else;

  anon1870_Else:
    assume {:partition} $r479 == $null;
    call $fakelocal_239 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_239;
    return;

  anon1870_Then:
    assume {:partition} $r479 != $null;
    $exception := $exception;
    goto anon723;

  anon723:
    call i394, $exception := java.lang.Integer$intValue$($r479);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r480, $exception := java.lang.Integer$valueOf$int(i393);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    $i122 := 10 + i394;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r481, $exception := java.lang.Integer$valueOf$int($i122);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    call $r482, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r480, $r481);
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1871_Then, anon1871_Else;

  anon1871_Else:
    assume {:partition} !($heap[$r482, $type] <: java.lang.Integer);
    call $fakelocal_240 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_240;
    return;

  anon1871_Then:
    assume {:partition} $heap[$r482, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon726;

  anon726:
    $r483 := $r482;
    assert {:sourceloc "Sanity.java", 26, -1, -1, -1} true;
    goto anon1872_Then, anon1872_Else;

  anon1872_Else:
    assume {:partition} $r483 == $null;
    call $fakelocal_241 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_241;
    return;

  anon1872_Then:
    assume {:partition} $r483 != $null;
    $exception := $exception;
    goto anon729;

  anon729:
    call i395, $exception := java.lang.Integer$intValue$($r483);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r484, $exception := java.lang.Integer$valueOf$int(i394);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i123 := 1 + i395;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r485, $exception := java.lang.Integer$valueOf$int($i123);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r486, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r484, $r485);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1873_Then, anon1873_Else;

  anon1873_Else:
    assume {:partition} !($heap[$r486, $type] <: java.lang.Integer);
    call $fakelocal_242 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_242;
    return;

  anon1873_Then:
    assume {:partition} $heap[$r486, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon732;

  anon732:
    $r487 := $r486;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1874_Then, anon1874_Else;

  anon1874_Else:
    assume {:partition} $r487 == $null;
    call $fakelocal_243 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_243;
    return;

  anon1874_Then:
    assume {:partition} $r487 != $null;
    $exception := $exception;
    goto anon735;

  anon735:
    call i396, $exception := java.lang.Integer$intValue$($r487);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r488, $exception := java.lang.Integer$valueOf$int(i395);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i124 := 2 + i396;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r489, $exception := java.lang.Integer$valueOf$int($i124);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r490, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r488, $r489);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1875_Then, anon1875_Else;

  anon1875_Else:
    assume {:partition} !($heap[$r490, $type] <: java.lang.Integer);
    call $fakelocal_244 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_244;
    return;

  anon1875_Then:
    assume {:partition} $heap[$r490, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon738;

  anon738:
    $r491 := $r490;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1876_Then, anon1876_Else;

  anon1876_Else:
    assume {:partition} $r491 == $null;
    call $fakelocal_245 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_245;
    return;

  anon1876_Then:
    assume {:partition} $r491 != $null;
    $exception := $exception;
    goto anon741;

  anon741:
    call i397, $exception := java.lang.Integer$intValue$($r491);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r492, $exception := java.lang.Integer$valueOf$int(i396);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i125 := 3 + i397;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r493, $exception := java.lang.Integer$valueOf$int($i125);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r494, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r492, $r493);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1877_Then, anon1877_Else;

  anon1877_Else:
    assume {:partition} !($heap[$r494, $type] <: java.lang.Integer);
    call $fakelocal_246 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_246;
    return;

  anon1877_Then:
    assume {:partition} $heap[$r494, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon744;

  anon744:
    $r495 := $r494;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1878_Then, anon1878_Else;

  anon1878_Else:
    assume {:partition} $r495 == $null;
    call $fakelocal_247 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_247;
    return;

  anon1878_Then:
    assume {:partition} $r495 != $null;
    $exception := $exception;
    goto anon747;

  anon747:
    call i398, $exception := java.lang.Integer$intValue$($r495);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r496, $exception := java.lang.Integer$valueOf$int(i397);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i126 := 4 + i398;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r497, $exception := java.lang.Integer$valueOf$int($i126);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r498, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r496, $r497);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1879_Then, anon1879_Else;

  anon1879_Else:
    assume {:partition} !($heap[$r498, $type] <: java.lang.Integer);
    call $fakelocal_248 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_248;
    return;

  anon1879_Then:
    assume {:partition} $heap[$r498, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon750;

  anon750:
    $r499 := $r498;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1880_Then, anon1880_Else;

  anon1880_Else:
    assume {:partition} $r499 == $null;
    call $fakelocal_249 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_249;
    return;

  anon1880_Then:
    assume {:partition} $r499 != $null;
    $exception := $exception;
    goto anon753;

  anon753:
    call i399, $exception := java.lang.Integer$intValue$($r499);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r500, $exception := java.lang.Integer$valueOf$int(i398);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i127 := 5 + i399;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r501, $exception := java.lang.Integer$valueOf$int($i127);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r502, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r500, $r501);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1881_Then, anon1881_Else;

  anon1881_Else:
    assume {:partition} !($heap[$r502, $type] <: java.lang.Integer);
    call $fakelocal_250 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_250;
    return;

  anon1881_Then:
    assume {:partition} $heap[$r502, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon756;

  anon756:
    $r503 := $r502;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1882_Then, anon1882_Else;

  anon1882_Else:
    assume {:partition} $r503 == $null;
    call $fakelocal_251 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_251;
    return;

  anon1882_Then:
    assume {:partition} $r503 != $null;
    $exception := $exception;
    goto anon759;

  anon759:
    call i400, $exception := java.lang.Integer$intValue$($r503);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r504, $exception := java.lang.Integer$valueOf$int(i399);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i128 := 6 + i400;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r505, $exception := java.lang.Integer$valueOf$int($i128);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r506, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r504, $r505);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1883_Then, anon1883_Else;

  anon1883_Else:
    assume {:partition} !($heap[$r506, $type] <: java.lang.Integer);
    call $fakelocal_252 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_252;
    return;

  anon1883_Then:
    assume {:partition} $heap[$r506, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon762;

  anon762:
    $r507 := $r506;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1884_Then, anon1884_Else;

  anon1884_Else:
    assume {:partition} $r507 == $null;
    call $fakelocal_253 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_253;
    return;

  anon1884_Then:
    assume {:partition} $r507 != $null;
    $exception := $exception;
    goto anon765;

  anon765:
    call i401, $exception := java.lang.Integer$intValue$($r507);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r508, $exception := java.lang.Integer$valueOf$int(i400);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i129 := 7 + i401;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r509, $exception := java.lang.Integer$valueOf$int($i129);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r510, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r508, $r509);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1885_Then, anon1885_Else;

  anon1885_Else:
    assume {:partition} !($heap[$r510, $type] <: java.lang.Integer);
    call $fakelocal_254 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_254;
    return;

  anon1885_Then:
    assume {:partition} $heap[$r510, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon768;

  anon768:
    $r511 := $r510;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1886_Then, anon1886_Else;

  anon1886_Else:
    assume {:partition} $r511 == $null;
    call $fakelocal_255 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_255;
    return;

  anon1886_Then:
    assume {:partition} $r511 != $null;
    $exception := $exception;
    goto anon771;

  anon771:
    call i402, $exception := java.lang.Integer$intValue$($r511);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r512, $exception := java.lang.Integer$valueOf$int(i401);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i130 := 8 + i402;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r513, $exception := java.lang.Integer$valueOf$int($i130);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r514, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r512, $r513);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1887_Then, anon1887_Else;

  anon1887_Else:
    assume {:partition} !($heap[$r514, $type] <: java.lang.Integer);
    call $fakelocal_256 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_256;
    return;

  anon1887_Then:
    assume {:partition} $heap[$r514, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon774;

  anon774:
    $r515 := $r514;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1888_Then, anon1888_Else;

  anon1888_Else:
    assume {:partition} $r515 == $null;
    call $fakelocal_257 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_257;
    return;

  anon1888_Then:
    assume {:partition} $r515 != $null;
    $exception := $exception;
    goto anon777;

  anon777:
    call i403, $exception := java.lang.Integer$intValue$($r515);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r516, $exception := java.lang.Integer$valueOf$int(i402);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i131 := 9 + i403;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r517, $exception := java.lang.Integer$valueOf$int($i131);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r518, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r516, $r517);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1889_Then, anon1889_Else;

  anon1889_Else:
    assume {:partition} !($heap[$r518, $type] <: java.lang.Integer);
    call $fakelocal_258 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_258;
    return;

  anon1889_Then:
    assume {:partition} $heap[$r518, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon780;

  anon780:
    $r519 := $r518;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1890_Then, anon1890_Else;

  anon1890_Else:
    assume {:partition} $r519 == $null;
    call $fakelocal_259 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_259;
    return;

  anon1890_Then:
    assume {:partition} $r519 != $null;
    $exception := $exception;
    goto anon783;

  anon783:
    call i404, $exception := java.lang.Integer$intValue$($r519);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r520, $exception := java.lang.Integer$valueOf$int(i403);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i132 := 10 + i404;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r521, $exception := java.lang.Integer$valueOf$int($i132);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r522, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r520, $r521);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1891_Then, anon1891_Else;

  anon1891_Else:
    assume {:partition} !($heap[$r522, $type] <: java.lang.Integer);
    call $fakelocal_260 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_260;
    return;

  anon1891_Then:
    assume {:partition} $heap[$r522, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon786;

  anon786:
    $r523 := $r522;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1892_Then, anon1892_Else;

  anon1892_Else:
    assume {:partition} $r523 == $null;
    call $fakelocal_261 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_261;
    return;

  anon1892_Then:
    assume {:partition} $r523 != $null;
    $exception := $exception;
    goto anon789;

  anon789:
    call i405, $exception := java.lang.Integer$intValue$($r523);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r524, $exception := java.lang.Integer$valueOf$int(i404);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i133 := 1 + i405;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r525, $exception := java.lang.Integer$valueOf$int($i133);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r526, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r524, $r525);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1893_Then, anon1893_Else;

  anon1893_Else:
    assume {:partition} !($heap[$r526, $type] <: java.lang.Integer);
    call $fakelocal_262 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_262;
    return;

  anon1893_Then:
    assume {:partition} $heap[$r526, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon792;

  anon792:
    $r527 := $r526;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1894_Then, anon1894_Else;

  anon1894_Else:
    assume {:partition} $r527 == $null;
    call $fakelocal_263 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_263;
    return;

  anon1894_Then:
    assume {:partition} $r527 != $null;
    $exception := $exception;
    goto anon795;

  anon795:
    call i406, $exception := java.lang.Integer$intValue$($r527);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r528, $exception := java.lang.Integer$valueOf$int(i405);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i134 := 2 + i406;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r529, $exception := java.lang.Integer$valueOf$int($i134);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r530, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r528, $r529);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1895_Then, anon1895_Else;

  anon1895_Else:
    assume {:partition} !($heap[$r530, $type] <: java.lang.Integer);
    call $fakelocal_264 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_264;
    return;

  anon1895_Then:
    assume {:partition} $heap[$r530, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon798;

  anon798:
    $r531 := $r530;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1896_Then, anon1896_Else;

  anon1896_Else:
    assume {:partition} $r531 == $null;
    call $fakelocal_265 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_265;
    return;

  anon1896_Then:
    assume {:partition} $r531 != $null;
    $exception := $exception;
    goto anon801;

  anon801:
    call i407, $exception := java.lang.Integer$intValue$($r531);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r532, $exception := java.lang.Integer$valueOf$int(i406);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i135 := 3 + i407;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r533, $exception := java.lang.Integer$valueOf$int($i135);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r534, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r532, $r533);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1897_Then, anon1897_Else;

  anon1897_Else:
    assume {:partition} !($heap[$r534, $type] <: java.lang.Integer);
    call $fakelocal_266 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_266;
    return;

  anon1897_Then:
    assume {:partition} $heap[$r534, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon804;

  anon804:
    $r535 := $r534;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1898_Then, anon1898_Else;

  anon1898_Else:
    assume {:partition} $r535 == $null;
    call $fakelocal_267 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_267;
    return;

  anon1898_Then:
    assume {:partition} $r535 != $null;
    $exception := $exception;
    goto anon807;

  anon807:
    call i408, $exception := java.lang.Integer$intValue$($r535);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r536, $exception := java.lang.Integer$valueOf$int(i407);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i136 := 4 + i408;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r537, $exception := java.lang.Integer$valueOf$int($i136);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r538, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r536, $r537);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1899_Then, anon1899_Else;

  anon1899_Else:
    assume {:partition} !($heap[$r538, $type] <: java.lang.Integer);
    call $fakelocal_268 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_268;
    return;

  anon1899_Then:
    assume {:partition} $heap[$r538, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon810;

  anon810:
    $r539 := $r538;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1900_Then, anon1900_Else;

  anon1900_Else:
    assume {:partition} $r539 == $null;
    call $fakelocal_269 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_269;
    return;

  anon1900_Then:
    assume {:partition} $r539 != $null;
    $exception := $exception;
    goto anon813;

  anon813:
    call i409, $exception := java.lang.Integer$intValue$($r539);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r540, $exception := java.lang.Integer$valueOf$int(i408);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i137 := 5 + i409;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r541, $exception := java.lang.Integer$valueOf$int($i137);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r542, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r540, $r541);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1901_Then, anon1901_Else;

  anon1901_Else:
    assume {:partition} !($heap[$r542, $type] <: java.lang.Integer);
    call $fakelocal_270 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_270;
    return;

  anon1901_Then:
    assume {:partition} $heap[$r542, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon816;

  anon816:
    $r543 := $r542;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1902_Then, anon1902_Else;

  anon1902_Else:
    assume {:partition} $r543 == $null;
    call $fakelocal_271 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_271;
    return;

  anon1902_Then:
    assume {:partition} $r543 != $null;
    $exception := $exception;
    goto anon819;

  anon819:
    call i410, $exception := java.lang.Integer$intValue$($r543);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r544, $exception := java.lang.Integer$valueOf$int(i409);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i138 := 6 + i410;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r545, $exception := java.lang.Integer$valueOf$int($i138);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r546, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r544, $r545);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1903_Then, anon1903_Else;

  anon1903_Else:
    assume {:partition} !($heap[$r546, $type] <: java.lang.Integer);
    call $fakelocal_272 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_272;
    return;

  anon1903_Then:
    assume {:partition} $heap[$r546, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon822;

  anon822:
    $r547 := $r546;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1904_Then, anon1904_Else;

  anon1904_Else:
    assume {:partition} $r547 == $null;
    call $fakelocal_273 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_273;
    return;

  anon1904_Then:
    assume {:partition} $r547 != $null;
    $exception := $exception;
    goto anon825;

  anon825:
    call i411, $exception := java.lang.Integer$intValue$($r547);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r548, $exception := java.lang.Integer$valueOf$int(i410);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i139 := 7 + i411;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r549, $exception := java.lang.Integer$valueOf$int($i139);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r550, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r548, $r549);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1905_Then, anon1905_Else;

  anon1905_Else:
    assume {:partition} !($heap[$r550, $type] <: java.lang.Integer);
    call $fakelocal_274 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_274;
    return;

  anon1905_Then:
    assume {:partition} $heap[$r550, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon828;

  anon828:
    $r551 := $r550;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1906_Then, anon1906_Else;

  anon1906_Else:
    assume {:partition} $r551 == $null;
    call $fakelocal_275 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_275;
    return;

  anon1906_Then:
    assume {:partition} $r551 != $null;
    $exception := $exception;
    goto anon831;

  anon831:
    call i412, $exception := java.lang.Integer$intValue$($r551);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r552, $exception := java.lang.Integer$valueOf$int(i411);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i140 := 8 + i412;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r553, $exception := java.lang.Integer$valueOf$int($i140);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r554, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r552, $r553);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1907_Then, anon1907_Else;

  anon1907_Else:
    assume {:partition} !($heap[$r554, $type] <: java.lang.Integer);
    call $fakelocal_276 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_276;
    return;

  anon1907_Then:
    assume {:partition} $heap[$r554, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon834;

  anon834:
    $r555 := $r554;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1908_Then, anon1908_Else;

  anon1908_Else:
    assume {:partition} $r555 == $null;
    call $fakelocal_277 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_277;
    return;

  anon1908_Then:
    assume {:partition} $r555 != $null;
    $exception := $exception;
    goto anon837;

  anon837:
    call i413, $exception := java.lang.Integer$intValue$($r555);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r556, $exception := java.lang.Integer$valueOf$int(i412);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i141 := 9 + i413;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r557, $exception := java.lang.Integer$valueOf$int($i141);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r558, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r556, $r557);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1909_Then, anon1909_Else;

  anon1909_Else:
    assume {:partition} !($heap[$r558, $type] <: java.lang.Integer);
    call $fakelocal_278 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_278;
    return;

  anon1909_Then:
    assume {:partition} $heap[$r558, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon840;

  anon840:
    $r559 := $r558;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1910_Then, anon1910_Else;

  anon1910_Else:
    assume {:partition} $r559 == $null;
    call $fakelocal_279 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_279;
    return;

  anon1910_Then:
    assume {:partition} $r559 != $null;
    $exception := $exception;
    goto anon843;

  anon843:
    call i414, $exception := java.lang.Integer$intValue$($r559);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r560, $exception := java.lang.Integer$valueOf$int(i413);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i142 := 10 + i414;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r561, $exception := java.lang.Integer$valueOf$int($i142);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r562, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r560, $r561);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1911_Then, anon1911_Else;

  anon1911_Else:
    assume {:partition} !($heap[$r562, $type] <: java.lang.Integer);
    call $fakelocal_280 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_280;
    return;

  anon1911_Then:
    assume {:partition} $heap[$r562, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon846;

  anon846:
    $r563 := $r562;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1912_Then, anon1912_Else;

  anon1912_Else:
    assume {:partition} $r563 == $null;
    call $fakelocal_281 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_281;
    return;

  anon1912_Then:
    assume {:partition} $r563 != $null;
    $exception := $exception;
    goto anon849;

  anon849:
    call i415, $exception := java.lang.Integer$intValue$($r563);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r564, $exception := java.lang.Integer$valueOf$int(i414);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i143 := 1 + i415;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r565, $exception := java.lang.Integer$valueOf$int($i143);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r566, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r564, $r565);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1913_Then, anon1913_Else;

  anon1913_Else:
    assume {:partition} !($heap[$r566, $type] <: java.lang.Integer);
    call $fakelocal_282 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_282;
    return;

  anon1913_Then:
    assume {:partition} $heap[$r566, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon852;

  anon852:
    $r567 := $r566;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1914_Then, anon1914_Else;

  anon1914_Else:
    assume {:partition} $r567 == $null;
    call $fakelocal_283 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_283;
    return;

  anon1914_Then:
    assume {:partition} $r567 != $null;
    $exception := $exception;
    goto anon855;

  anon855:
    call i416, $exception := java.lang.Integer$intValue$($r567);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r568, $exception := java.lang.Integer$valueOf$int(i415);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i144 := 2 + i416;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r569, $exception := java.lang.Integer$valueOf$int($i144);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r570, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r568, $r569);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1915_Then, anon1915_Else;

  anon1915_Else:
    assume {:partition} !($heap[$r570, $type] <: java.lang.Integer);
    call $fakelocal_284 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_284;
    return;

  anon1915_Then:
    assume {:partition} $heap[$r570, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon858;

  anon858:
    $r571 := $r570;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1916_Then, anon1916_Else;

  anon1916_Else:
    assume {:partition} $r571 == $null;
    call $fakelocal_285 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_285;
    return;

  anon1916_Then:
    assume {:partition} $r571 != $null;
    $exception := $exception;
    goto anon861;

  anon861:
    call i417, $exception := java.lang.Integer$intValue$($r571);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r572, $exception := java.lang.Integer$valueOf$int(i416);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i145 := 3 + i417;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r573, $exception := java.lang.Integer$valueOf$int($i145);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r574, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r572, $r573);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1917_Then, anon1917_Else;

  anon1917_Else:
    assume {:partition} !($heap[$r574, $type] <: java.lang.Integer);
    call $fakelocal_286 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_286;
    return;

  anon1917_Then:
    assume {:partition} $heap[$r574, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon864;

  anon864:
    $r575 := $r574;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1918_Then, anon1918_Else;

  anon1918_Else:
    assume {:partition} $r575 == $null;
    call $fakelocal_287 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_287;
    return;

  anon1918_Then:
    assume {:partition} $r575 != $null;
    $exception := $exception;
    goto anon867;

  anon867:
    call i418, $exception := java.lang.Integer$intValue$($r575);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r576, $exception := java.lang.Integer$valueOf$int(i417);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i146 := 4 + i418;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r577, $exception := java.lang.Integer$valueOf$int($i146);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r578, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r576, $r577);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1919_Then, anon1919_Else;

  anon1919_Else:
    assume {:partition} !($heap[$r578, $type] <: java.lang.Integer);
    call $fakelocal_288 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_288;
    return;

  anon1919_Then:
    assume {:partition} $heap[$r578, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon870;

  anon870:
    $r579 := $r578;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1920_Then, anon1920_Else;

  anon1920_Else:
    assume {:partition} $r579 == $null;
    call $fakelocal_289 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_289;
    return;

  anon1920_Then:
    assume {:partition} $r579 != $null;
    $exception := $exception;
    goto anon873;

  anon873:
    call i419, $exception := java.lang.Integer$intValue$($r579);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r580, $exception := java.lang.Integer$valueOf$int(i418);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i147 := 5 + i419;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r581, $exception := java.lang.Integer$valueOf$int($i147);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r582, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r580, $r581);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1921_Then, anon1921_Else;

  anon1921_Else:
    assume {:partition} !($heap[$r582, $type] <: java.lang.Integer);
    call $fakelocal_290 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_290;
    return;

  anon1921_Then:
    assume {:partition} $heap[$r582, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon876;

  anon876:
    $r583 := $r582;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1922_Then, anon1922_Else;

  anon1922_Else:
    assume {:partition} $r583 == $null;
    call $fakelocal_291 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_291;
    return;

  anon1922_Then:
    assume {:partition} $r583 != $null;
    $exception := $exception;
    goto anon879;

  anon879:
    call i420, $exception := java.lang.Integer$intValue$($r583);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r584, $exception := java.lang.Integer$valueOf$int(i419);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i148 := 6 + i420;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r585, $exception := java.lang.Integer$valueOf$int($i148);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r586, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r584, $r585);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1923_Then, anon1923_Else;

  anon1923_Else:
    assume {:partition} !($heap[$r586, $type] <: java.lang.Integer);
    call $fakelocal_292 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_292;
    return;

  anon1923_Then:
    assume {:partition} $heap[$r586, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon882;

  anon882:
    $r587 := $r586;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1924_Then, anon1924_Else;

  anon1924_Else:
    assume {:partition} $r587 == $null;
    call $fakelocal_293 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_293;
    return;

  anon1924_Then:
    assume {:partition} $r587 != $null;
    $exception := $exception;
    goto anon885;

  anon885:
    call i421, $exception := java.lang.Integer$intValue$($r587);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r588, $exception := java.lang.Integer$valueOf$int(i420);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i149 := 7 + i421;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r589, $exception := java.lang.Integer$valueOf$int($i149);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r590, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r588, $r589);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1925_Then, anon1925_Else;

  anon1925_Else:
    assume {:partition} !($heap[$r590, $type] <: java.lang.Integer);
    call $fakelocal_294 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_294;
    return;

  anon1925_Then:
    assume {:partition} $heap[$r590, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon888;

  anon888:
    $r591 := $r590;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1926_Then, anon1926_Else;

  anon1926_Else:
    assume {:partition} $r591 == $null;
    call $fakelocal_295 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_295;
    return;

  anon1926_Then:
    assume {:partition} $r591 != $null;
    $exception := $exception;
    goto anon891;

  anon891:
    call i422, $exception := java.lang.Integer$intValue$($r591);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r592, $exception := java.lang.Integer$valueOf$int(i421);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i150 := 8 + i422;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r593, $exception := java.lang.Integer$valueOf$int($i150);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r594, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r592, $r593);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1927_Then, anon1927_Else;

  anon1927_Else:
    assume {:partition} !($heap[$r594, $type] <: java.lang.Integer);
    call $fakelocal_296 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_296;
    return;

  anon1927_Then:
    assume {:partition} $heap[$r594, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon894;

  anon894:
    $r595 := $r594;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1928_Then, anon1928_Else;

  anon1928_Else:
    assume {:partition} $r595 == $null;
    call $fakelocal_297 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_297;
    return;

  anon1928_Then:
    assume {:partition} $r595 != $null;
    $exception := $exception;
    goto anon897;

  anon897:
    call i423, $exception := java.lang.Integer$intValue$($r595);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r596, $exception := java.lang.Integer$valueOf$int(i422);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i151 := 9 + i423;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r597, $exception := java.lang.Integer$valueOf$int($i151);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r598, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r596, $r597);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1929_Then, anon1929_Else;

  anon1929_Else:
    assume {:partition} !($heap[$r598, $type] <: java.lang.Integer);
    call $fakelocal_298 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_298;
    return;

  anon1929_Then:
    assume {:partition} $heap[$r598, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon900;

  anon900:
    $r599 := $r598;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1930_Then, anon1930_Else;

  anon1930_Else:
    assume {:partition} $r599 == $null;
    call $fakelocal_299 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_299;
    return;

  anon1930_Then:
    assume {:partition} $r599 != $null;
    $exception := $exception;
    goto anon903;

  anon903:
    call i424, $exception := java.lang.Integer$intValue$($r599);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r600, $exception := java.lang.Integer$valueOf$int(i423);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    $i152 := 10 + i424;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r601, $exception := java.lang.Integer$valueOf$int($i152);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    call $r602, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r600, $r601);
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1931_Then, anon1931_Else;

  anon1931_Else:
    assume {:partition} !($heap[$r602, $type] <: java.lang.Integer);
    call $fakelocal_300 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_300;
    return;

  anon1931_Then:
    assume {:partition} $heap[$r602, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon906;

  anon906:
    $r603 := $r602;
    assert {:sourceloc "Sanity.java", 27, -1, -1, -1} true;
    goto anon1932_Then, anon1932_Else;

  anon1932_Else:
    assume {:partition} $r603 == $null;
    call $fakelocal_301 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_301;
    return;

  anon1932_Then:
    assume {:partition} $r603 != $null;
    $exception := $exception;
    goto anon909;

  anon909:
    call i425, $exception := java.lang.Integer$intValue$($r603);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r604, $exception := java.lang.Integer$valueOf$int(i424);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i153 := 1 + i425;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r605, $exception := java.lang.Integer$valueOf$int($i153);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r606, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r604, $r605);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1933_Then, anon1933_Else;

  anon1933_Else:
    assume {:partition} !($heap[$r606, $type] <: java.lang.Integer);
    call $fakelocal_302 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_302;
    return;

  anon1933_Then:
    assume {:partition} $heap[$r606, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon912;

  anon912:
    $r607 := $r606;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1934_Then, anon1934_Else;

  anon1934_Else:
    assume {:partition} $r607 == $null;
    call $fakelocal_303 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_303;
    return;

  anon1934_Then:
    assume {:partition} $r607 != $null;
    $exception := $exception;
    goto anon915;

  anon915:
    call i426, $exception := java.lang.Integer$intValue$($r607);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r608, $exception := java.lang.Integer$valueOf$int(i425);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i154 := 2 + i426;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r609, $exception := java.lang.Integer$valueOf$int($i154);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r610, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r608, $r609);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1935_Then, anon1935_Else;

  anon1935_Else:
    assume {:partition} !($heap[$r610, $type] <: java.lang.Integer);
    call $fakelocal_304 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_304;
    return;

  anon1935_Then:
    assume {:partition} $heap[$r610, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon918;

  anon918:
    $r611 := $r610;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1936_Then, anon1936_Else;

  anon1936_Else:
    assume {:partition} $r611 == $null;
    call $fakelocal_305 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_305;
    return;

  anon1936_Then:
    assume {:partition} $r611 != $null;
    $exception := $exception;
    goto anon921;

  anon921:
    call i427, $exception := java.lang.Integer$intValue$($r611);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r612, $exception := java.lang.Integer$valueOf$int(i426);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i155 := 3 + i427;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r613, $exception := java.lang.Integer$valueOf$int($i155);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r614, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r612, $r613);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1937_Then, anon1937_Else;

  anon1937_Else:
    assume {:partition} !($heap[$r614, $type] <: java.lang.Integer);
    call $fakelocal_306 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_306;
    return;

  anon1937_Then:
    assume {:partition} $heap[$r614, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon924;

  anon924:
    $r615 := $r614;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1938_Then, anon1938_Else;

  anon1938_Else:
    assume {:partition} $r615 == $null;
    call $fakelocal_307 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_307;
    return;

  anon1938_Then:
    assume {:partition} $r615 != $null;
    $exception := $exception;
    goto anon927;

  anon927:
    call i428, $exception := java.lang.Integer$intValue$($r615);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r616, $exception := java.lang.Integer$valueOf$int(i427);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i156 := 4 + i428;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r617, $exception := java.lang.Integer$valueOf$int($i156);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r618, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r616, $r617);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1939_Then, anon1939_Else;

  anon1939_Else:
    assume {:partition} !($heap[$r618, $type] <: java.lang.Integer);
    call $fakelocal_308 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_308;
    return;

  anon1939_Then:
    assume {:partition} $heap[$r618, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon930;

  anon930:
    $r619 := $r618;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1940_Then, anon1940_Else;

  anon1940_Else:
    assume {:partition} $r619 == $null;
    call $fakelocal_309 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_309;
    return;

  anon1940_Then:
    assume {:partition} $r619 != $null;
    $exception := $exception;
    goto anon933;

  anon933:
    call i429, $exception := java.lang.Integer$intValue$($r619);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r620, $exception := java.lang.Integer$valueOf$int(i428);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i157 := 5 + i429;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r621, $exception := java.lang.Integer$valueOf$int($i157);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r622, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r620, $r621);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1941_Then, anon1941_Else;

  anon1941_Else:
    assume {:partition} !($heap[$r622, $type] <: java.lang.Integer);
    call $fakelocal_310 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_310;
    return;

  anon1941_Then:
    assume {:partition} $heap[$r622, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon936;

  anon936:
    $r623 := $r622;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1942_Then, anon1942_Else;

  anon1942_Else:
    assume {:partition} $r623 == $null;
    call $fakelocal_311 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_311;
    return;

  anon1942_Then:
    assume {:partition} $r623 != $null;
    $exception := $exception;
    goto anon939;

  anon939:
    call i430, $exception := java.lang.Integer$intValue$($r623);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r624, $exception := java.lang.Integer$valueOf$int(i429);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i158 := 6 + i430;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r625, $exception := java.lang.Integer$valueOf$int($i158);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r626, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r624, $r625);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1943_Then, anon1943_Else;

  anon1943_Else:
    assume {:partition} !($heap[$r626, $type] <: java.lang.Integer);
    call $fakelocal_312 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_312;
    return;

  anon1943_Then:
    assume {:partition} $heap[$r626, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon942;

  anon942:
    $r627 := $r626;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1944_Then, anon1944_Else;

  anon1944_Else:
    assume {:partition} $r627 == $null;
    call $fakelocal_313 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_313;
    return;

  anon1944_Then:
    assume {:partition} $r627 != $null;
    $exception := $exception;
    goto anon945;

  anon945:
    call i431, $exception := java.lang.Integer$intValue$($r627);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r628, $exception := java.lang.Integer$valueOf$int(i430);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i159 := 7 + i431;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r629, $exception := java.lang.Integer$valueOf$int($i159);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r630, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r628, $r629);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1945_Then, anon1945_Else;

  anon1945_Else:
    assume {:partition} !($heap[$r630, $type] <: java.lang.Integer);
    call $fakelocal_314 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_314;
    return;

  anon1945_Then:
    assume {:partition} $heap[$r630, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon948;

  anon948:
    $r631 := $r630;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1946_Then, anon1946_Else;

  anon1946_Else:
    assume {:partition} $r631 == $null;
    call $fakelocal_315 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_315;
    return;

  anon1946_Then:
    assume {:partition} $r631 != $null;
    $exception := $exception;
    goto anon951;

  anon951:
    call i432, $exception := java.lang.Integer$intValue$($r631);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r632, $exception := java.lang.Integer$valueOf$int(i431);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i160 := 8 + i432;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r633, $exception := java.lang.Integer$valueOf$int($i160);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r634, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r632, $r633);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1947_Then, anon1947_Else;

  anon1947_Else:
    assume {:partition} !($heap[$r634, $type] <: java.lang.Integer);
    call $fakelocal_316 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_316;
    return;

  anon1947_Then:
    assume {:partition} $heap[$r634, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon954;

  anon954:
    $r635 := $r634;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1948_Then, anon1948_Else;

  anon1948_Else:
    assume {:partition} $r635 == $null;
    call $fakelocal_317 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_317;
    return;

  anon1948_Then:
    assume {:partition} $r635 != $null;
    $exception := $exception;
    goto anon957;

  anon957:
    call i433, $exception := java.lang.Integer$intValue$($r635);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r636, $exception := java.lang.Integer$valueOf$int(i432);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i161 := 9 + i433;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r637, $exception := java.lang.Integer$valueOf$int($i161);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r638, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r636, $r637);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1949_Then, anon1949_Else;

  anon1949_Else:
    assume {:partition} !($heap[$r638, $type] <: java.lang.Integer);
    call $fakelocal_318 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_318;
    return;

  anon1949_Then:
    assume {:partition} $heap[$r638, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon960;

  anon960:
    $r639 := $r638;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1950_Then, anon1950_Else;

  anon1950_Else:
    assume {:partition} $r639 == $null;
    call $fakelocal_319 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_319;
    return;

  anon1950_Then:
    assume {:partition} $r639 != $null;
    $exception := $exception;
    goto anon963;

  anon963:
    call i434, $exception := java.lang.Integer$intValue$($r639);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r640, $exception := java.lang.Integer$valueOf$int(i433);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i162 := 10 + i434;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r641, $exception := java.lang.Integer$valueOf$int($i162);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r642, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r640, $r641);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1951_Then, anon1951_Else;

  anon1951_Else:
    assume {:partition} !($heap[$r642, $type] <: java.lang.Integer);
    call $fakelocal_320 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_320;
    return;

  anon1951_Then:
    assume {:partition} $heap[$r642, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon966;

  anon966:
    $r643 := $r642;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1952_Then, anon1952_Else;

  anon1952_Else:
    assume {:partition} $r643 == $null;
    call $fakelocal_321 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_321;
    return;

  anon1952_Then:
    assume {:partition} $r643 != $null;
    $exception := $exception;
    goto anon969;

  anon969:
    call i435, $exception := java.lang.Integer$intValue$($r643);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r644, $exception := java.lang.Integer$valueOf$int(i434);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i163 := 1 + i435;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r645, $exception := java.lang.Integer$valueOf$int($i163);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r646, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r644, $r645);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1953_Then, anon1953_Else;

  anon1953_Else:
    assume {:partition} !($heap[$r646, $type] <: java.lang.Integer);
    call $fakelocal_322 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_322;
    return;

  anon1953_Then:
    assume {:partition} $heap[$r646, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon972;

  anon972:
    $r647 := $r646;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1954_Then, anon1954_Else;

  anon1954_Else:
    assume {:partition} $r647 == $null;
    call $fakelocal_323 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_323;
    return;

  anon1954_Then:
    assume {:partition} $r647 != $null;
    $exception := $exception;
    goto anon975;

  anon975:
    call i436, $exception := java.lang.Integer$intValue$($r647);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r648, $exception := java.lang.Integer$valueOf$int(i435);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i164 := 2 + i436;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r649, $exception := java.lang.Integer$valueOf$int($i164);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r650, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r648, $r649);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1955_Then, anon1955_Else;

  anon1955_Else:
    assume {:partition} !($heap[$r650, $type] <: java.lang.Integer);
    call $fakelocal_324 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_324;
    return;

  anon1955_Then:
    assume {:partition} $heap[$r650, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon978;

  anon978:
    $r651 := $r650;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1956_Then, anon1956_Else;

  anon1956_Else:
    assume {:partition} $r651 == $null;
    call $fakelocal_325 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_325;
    return;

  anon1956_Then:
    assume {:partition} $r651 != $null;
    $exception := $exception;
    goto anon981;

  anon981:
    call i437, $exception := java.lang.Integer$intValue$($r651);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r652, $exception := java.lang.Integer$valueOf$int(i436);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i165 := 3 + i437;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r653, $exception := java.lang.Integer$valueOf$int($i165);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r654, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r652, $r653);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1957_Then, anon1957_Else;

  anon1957_Else:
    assume {:partition} !($heap[$r654, $type] <: java.lang.Integer);
    call $fakelocal_326 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_326;
    return;

  anon1957_Then:
    assume {:partition} $heap[$r654, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon984;

  anon984:
    $r655 := $r654;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1958_Then, anon1958_Else;

  anon1958_Else:
    assume {:partition} $r655 == $null;
    call $fakelocal_327 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_327;
    return;

  anon1958_Then:
    assume {:partition} $r655 != $null;
    $exception := $exception;
    goto anon987;

  anon987:
    call i438, $exception := java.lang.Integer$intValue$($r655);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r656, $exception := java.lang.Integer$valueOf$int(i437);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i166 := 4 + i438;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r657, $exception := java.lang.Integer$valueOf$int($i166);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r658, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r656, $r657);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1959_Then, anon1959_Else;

  anon1959_Else:
    assume {:partition} !($heap[$r658, $type] <: java.lang.Integer);
    call $fakelocal_328 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_328;
    return;

  anon1959_Then:
    assume {:partition} $heap[$r658, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon990;

  anon990:
    $r659 := $r658;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1960_Then, anon1960_Else;

  anon1960_Else:
    assume {:partition} $r659 == $null;
    call $fakelocal_329 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_329;
    return;

  anon1960_Then:
    assume {:partition} $r659 != $null;
    $exception := $exception;
    goto anon993;

  anon993:
    call i439, $exception := java.lang.Integer$intValue$($r659);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r660, $exception := java.lang.Integer$valueOf$int(i438);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i167 := 5 + i439;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r661, $exception := java.lang.Integer$valueOf$int($i167);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r662, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r660, $r661);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1961_Then, anon1961_Else;

  anon1961_Else:
    assume {:partition} !($heap[$r662, $type] <: java.lang.Integer);
    call $fakelocal_330 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_330;
    return;

  anon1961_Then:
    assume {:partition} $heap[$r662, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon996;

  anon996:
    $r663 := $r662;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1962_Then, anon1962_Else;

  anon1962_Else:
    assume {:partition} $r663 == $null;
    call $fakelocal_331 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_331;
    return;

  anon1962_Then:
    assume {:partition} $r663 != $null;
    $exception := $exception;
    goto anon999;

  anon999:
    call i440, $exception := java.lang.Integer$intValue$($r663);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r664, $exception := java.lang.Integer$valueOf$int(i439);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i168 := 6 + i440;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r665, $exception := java.lang.Integer$valueOf$int($i168);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r666, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r664, $r665);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1963_Then, anon1963_Else;

  anon1963_Else:
    assume {:partition} !($heap[$r666, $type] <: java.lang.Integer);
    call $fakelocal_332 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_332;
    return;

  anon1963_Then:
    assume {:partition} $heap[$r666, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1002;

  anon1002:
    $r667 := $r666;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1964_Then, anon1964_Else;

  anon1964_Else:
    assume {:partition} $r667 == $null;
    call $fakelocal_333 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_333;
    return;

  anon1964_Then:
    assume {:partition} $r667 != $null;
    $exception := $exception;
    goto anon1005;

  anon1005:
    call i441, $exception := java.lang.Integer$intValue$($r667);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r668, $exception := java.lang.Integer$valueOf$int(i440);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i169 := 7 + i441;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r669, $exception := java.lang.Integer$valueOf$int($i169);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r670, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r668, $r669);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1965_Then, anon1965_Else;

  anon1965_Else:
    assume {:partition} !($heap[$r670, $type] <: java.lang.Integer);
    call $fakelocal_334 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_334;
    return;

  anon1965_Then:
    assume {:partition} $heap[$r670, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1008;

  anon1008:
    $r671 := $r670;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1966_Then, anon1966_Else;

  anon1966_Else:
    assume {:partition} $r671 == $null;
    call $fakelocal_335 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_335;
    return;

  anon1966_Then:
    assume {:partition} $r671 != $null;
    $exception := $exception;
    goto anon1011;

  anon1011:
    call i442, $exception := java.lang.Integer$intValue$($r671);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r672, $exception := java.lang.Integer$valueOf$int(i441);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i170 := 8 + i442;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r673, $exception := java.lang.Integer$valueOf$int($i170);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r674, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r672, $r673);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1967_Then, anon1967_Else;

  anon1967_Else:
    assume {:partition} !($heap[$r674, $type] <: java.lang.Integer);
    call $fakelocal_336 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_336;
    return;

  anon1967_Then:
    assume {:partition} $heap[$r674, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1014;

  anon1014:
    $r675 := $r674;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1968_Then, anon1968_Else;

  anon1968_Else:
    assume {:partition} $r675 == $null;
    call $fakelocal_337 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_337;
    return;

  anon1968_Then:
    assume {:partition} $r675 != $null;
    $exception := $exception;
    goto anon1017;

  anon1017:
    call i443, $exception := java.lang.Integer$intValue$($r675);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r676, $exception := java.lang.Integer$valueOf$int(i442);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i171 := 9 + i443;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r677, $exception := java.lang.Integer$valueOf$int($i171);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r678, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r676, $r677);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1969_Then, anon1969_Else;

  anon1969_Else:
    assume {:partition} !($heap[$r678, $type] <: java.lang.Integer);
    call $fakelocal_338 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_338;
    return;

  anon1969_Then:
    assume {:partition} $heap[$r678, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1020;

  anon1020:
    $r679 := $r678;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1970_Then, anon1970_Else;

  anon1970_Else:
    assume {:partition} $r679 == $null;
    call $fakelocal_339 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_339;
    return;

  anon1970_Then:
    assume {:partition} $r679 != $null;
    $exception := $exception;
    goto anon1023;

  anon1023:
    call i444, $exception := java.lang.Integer$intValue$($r679);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r680, $exception := java.lang.Integer$valueOf$int(i443);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i172 := 10 + i444;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r681, $exception := java.lang.Integer$valueOf$int($i172);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r682, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r680, $r681);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1971_Then, anon1971_Else;

  anon1971_Else:
    assume {:partition} !($heap[$r682, $type] <: java.lang.Integer);
    call $fakelocal_340 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_340;
    return;

  anon1971_Then:
    assume {:partition} $heap[$r682, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1026;

  anon1026:
    $r683 := $r682;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1972_Then, anon1972_Else;

  anon1972_Else:
    assume {:partition} $r683 == $null;
    call $fakelocal_341 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_341;
    return;

  anon1972_Then:
    assume {:partition} $r683 != $null;
    $exception := $exception;
    goto anon1029;

  anon1029:
    call i445, $exception := java.lang.Integer$intValue$($r683);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r684, $exception := java.lang.Integer$valueOf$int(i444);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i173 := 1 + i445;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r685, $exception := java.lang.Integer$valueOf$int($i173);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r686, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r684, $r685);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1973_Then, anon1973_Else;

  anon1973_Else:
    assume {:partition} !($heap[$r686, $type] <: java.lang.Integer);
    call $fakelocal_342 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_342;
    return;

  anon1973_Then:
    assume {:partition} $heap[$r686, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1032;

  anon1032:
    $r687 := $r686;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1974_Then, anon1974_Else;

  anon1974_Else:
    assume {:partition} $r687 == $null;
    call $fakelocal_343 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_343;
    return;

  anon1974_Then:
    assume {:partition} $r687 != $null;
    $exception := $exception;
    goto anon1035;

  anon1035:
    call i446, $exception := java.lang.Integer$intValue$($r687);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r688, $exception := java.lang.Integer$valueOf$int(i445);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i174 := 2 + i446;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r689, $exception := java.lang.Integer$valueOf$int($i174);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r690, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r688, $r689);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1975_Then, anon1975_Else;

  anon1975_Else:
    assume {:partition} !($heap[$r690, $type] <: java.lang.Integer);
    call $fakelocal_344 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_344;
    return;

  anon1975_Then:
    assume {:partition} $heap[$r690, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1038;

  anon1038:
    $r691 := $r690;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1976_Then, anon1976_Else;

  anon1976_Else:
    assume {:partition} $r691 == $null;
    call $fakelocal_345 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_345;
    return;

  anon1976_Then:
    assume {:partition} $r691 != $null;
    $exception := $exception;
    goto anon1041;

  anon1041:
    call i447, $exception := java.lang.Integer$intValue$($r691);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r692, $exception := java.lang.Integer$valueOf$int(i446);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i175 := 3 + i447;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r693, $exception := java.lang.Integer$valueOf$int($i175);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r694, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r692, $r693);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1977_Then, anon1977_Else;

  anon1977_Else:
    assume {:partition} !($heap[$r694, $type] <: java.lang.Integer);
    call $fakelocal_346 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_346;
    return;

  anon1977_Then:
    assume {:partition} $heap[$r694, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1044;

  anon1044:
    $r695 := $r694;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1978_Then, anon1978_Else;

  anon1978_Else:
    assume {:partition} $r695 == $null;
    call $fakelocal_347 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_347;
    return;

  anon1978_Then:
    assume {:partition} $r695 != $null;
    $exception := $exception;
    goto anon1047;

  anon1047:
    call i448, $exception := java.lang.Integer$intValue$($r695);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r696, $exception := java.lang.Integer$valueOf$int(i447);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i176 := 4 + i448;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r697, $exception := java.lang.Integer$valueOf$int($i176);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r698, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r696, $r697);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1979_Then, anon1979_Else;

  anon1979_Else:
    assume {:partition} !($heap[$r698, $type] <: java.lang.Integer);
    call $fakelocal_348 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_348;
    return;

  anon1979_Then:
    assume {:partition} $heap[$r698, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1050;

  anon1050:
    $r699 := $r698;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1980_Then, anon1980_Else;

  anon1980_Else:
    assume {:partition} $r699 == $null;
    call $fakelocal_349 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_349;
    return;

  anon1980_Then:
    assume {:partition} $r699 != $null;
    $exception := $exception;
    goto anon1053;

  anon1053:
    call i449, $exception := java.lang.Integer$intValue$($r699);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r700, $exception := java.lang.Integer$valueOf$int(i448);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i177 := 5 + i449;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r701, $exception := java.lang.Integer$valueOf$int($i177);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r702, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r700, $r701);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1981_Then, anon1981_Else;

  anon1981_Else:
    assume {:partition} !($heap[$r702, $type] <: java.lang.Integer);
    call $fakelocal_350 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_350;
    return;

  anon1981_Then:
    assume {:partition} $heap[$r702, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1056;

  anon1056:
    $r703 := $r702;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1982_Then, anon1982_Else;

  anon1982_Else:
    assume {:partition} $r703 == $null;
    call $fakelocal_351 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_351;
    return;

  anon1982_Then:
    assume {:partition} $r703 != $null;
    $exception := $exception;
    goto anon1059;

  anon1059:
    call i450, $exception := java.lang.Integer$intValue$($r703);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r704, $exception := java.lang.Integer$valueOf$int(i449);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i178 := 6 + i450;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r705, $exception := java.lang.Integer$valueOf$int($i178);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r706, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r704, $r705);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1983_Then, anon1983_Else;

  anon1983_Else:
    assume {:partition} !($heap[$r706, $type] <: java.lang.Integer);
    call $fakelocal_352 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_352;
    return;

  anon1983_Then:
    assume {:partition} $heap[$r706, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1062;

  anon1062:
    $r707 := $r706;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1984_Then, anon1984_Else;

  anon1984_Else:
    assume {:partition} $r707 == $null;
    call $fakelocal_353 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_353;
    return;

  anon1984_Then:
    assume {:partition} $r707 != $null;
    $exception := $exception;
    goto anon1065;

  anon1065:
    call i451, $exception := java.lang.Integer$intValue$($r707);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r708, $exception := java.lang.Integer$valueOf$int(i450);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i179 := 7 + i451;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r709, $exception := java.lang.Integer$valueOf$int($i179);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r710, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r708, $r709);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1985_Then, anon1985_Else;

  anon1985_Else:
    assume {:partition} !($heap[$r710, $type] <: java.lang.Integer);
    call $fakelocal_354 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_354;
    return;

  anon1985_Then:
    assume {:partition} $heap[$r710, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1068;

  anon1068:
    $r711 := $r710;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1986_Then, anon1986_Else;

  anon1986_Else:
    assume {:partition} $r711 == $null;
    call $fakelocal_355 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_355;
    return;

  anon1986_Then:
    assume {:partition} $r711 != $null;
    $exception := $exception;
    goto anon1071;

  anon1071:
    call i452, $exception := java.lang.Integer$intValue$($r711);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r712, $exception := java.lang.Integer$valueOf$int(i451);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i180 := 8 + i452;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r713, $exception := java.lang.Integer$valueOf$int($i180);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r714, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r712, $r713);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1987_Then, anon1987_Else;

  anon1987_Else:
    assume {:partition} !($heap[$r714, $type] <: java.lang.Integer);
    call $fakelocal_356 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_356;
    return;

  anon1987_Then:
    assume {:partition} $heap[$r714, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1074;

  anon1074:
    $r715 := $r714;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1988_Then, anon1988_Else;

  anon1988_Else:
    assume {:partition} $r715 == $null;
    call $fakelocal_357 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_357;
    return;

  anon1988_Then:
    assume {:partition} $r715 != $null;
    $exception := $exception;
    goto anon1077;

  anon1077:
    call i453, $exception := java.lang.Integer$intValue$($r715);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r716, $exception := java.lang.Integer$valueOf$int(i452);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i181 := 9 + i453;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r717, $exception := java.lang.Integer$valueOf$int($i181);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r718, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r716, $r717);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1989_Then, anon1989_Else;

  anon1989_Else:
    assume {:partition} !($heap[$r718, $type] <: java.lang.Integer);
    call $fakelocal_358 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_358;
    return;

  anon1989_Then:
    assume {:partition} $heap[$r718, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1080;

  anon1080:
    $r719 := $r718;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1990_Then, anon1990_Else;

  anon1990_Else:
    assume {:partition} $r719 == $null;
    call $fakelocal_359 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_359;
    return;

  anon1990_Then:
    assume {:partition} $r719 != $null;
    $exception := $exception;
    goto anon1083;

  anon1083:
    call i454, $exception := java.lang.Integer$intValue$($r719);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r720, $exception := java.lang.Integer$valueOf$int(i453);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    $i182 := 10 + i454;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r721, $exception := java.lang.Integer$valueOf$int($i182);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    call $r722, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r720, $r721);
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1991_Then, anon1991_Else;

  anon1991_Else:
    assume {:partition} !($heap[$r722, $type] <: java.lang.Integer);
    call $fakelocal_360 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_360;
    return;

  anon1991_Then:
    assume {:partition} $heap[$r722, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1086;

  anon1086:
    $r723 := $r722;
    assert {:sourceloc "Sanity.java", 28, -1, -1, -1} true;
    goto anon1992_Then, anon1992_Else;

  anon1992_Else:
    assume {:partition} $r723 == $null;
    call $fakelocal_361 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_361;
    return;

  anon1992_Then:
    assume {:partition} $r723 != $null;
    $exception := $exception;
    goto anon1089;

  anon1089:
    call i455, $exception := java.lang.Integer$intValue$($r723);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r724, $exception := java.lang.Integer$valueOf$int(i454);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i183 := 1 + i455;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r725, $exception := java.lang.Integer$valueOf$int($i183);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r726, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r724, $r725);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon1993_Then, anon1993_Else;

  anon1993_Else:
    assume {:partition} !($heap[$r726, $type] <: java.lang.Integer);
    call $fakelocal_362 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_362;
    return;

  anon1993_Then:
    assume {:partition} $heap[$r726, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1092;

  anon1092:
    $r727 := $r726;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon1994_Then, anon1994_Else;

  anon1994_Else:
    assume {:partition} $r727 == $null;
    call $fakelocal_363 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_363;
    return;

  anon1994_Then:
    assume {:partition} $r727 != $null;
    $exception := $exception;
    goto anon1095;

  anon1095:
    call i456, $exception := java.lang.Integer$intValue$($r727);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r728, $exception := java.lang.Integer$valueOf$int(i455);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i184 := 2 + i456;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r729, $exception := java.lang.Integer$valueOf$int($i184);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r730, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r728, $r729);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon1995_Then, anon1995_Else;

  anon1995_Else:
    assume {:partition} !($heap[$r730, $type] <: java.lang.Integer);
    call $fakelocal_364 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_364;
    return;

  anon1995_Then:
    assume {:partition} $heap[$r730, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1098;

  anon1098:
    $r731 := $r730;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon1996_Then, anon1996_Else;

  anon1996_Else:
    assume {:partition} $r731 == $null;
    call $fakelocal_365 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_365;
    return;

  anon1996_Then:
    assume {:partition} $r731 != $null;
    $exception := $exception;
    goto anon1101;

  anon1101:
    call i457, $exception := java.lang.Integer$intValue$($r731);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r732, $exception := java.lang.Integer$valueOf$int(i456);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i185 := 3 + i457;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r733, $exception := java.lang.Integer$valueOf$int($i185);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r734, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r732, $r733);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon1997_Then, anon1997_Else;

  anon1997_Else:
    assume {:partition} !($heap[$r734, $type] <: java.lang.Integer);
    call $fakelocal_366 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_366;
    return;

  anon1997_Then:
    assume {:partition} $heap[$r734, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1104;

  anon1104:
    $r735 := $r734;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon1998_Then, anon1998_Else;

  anon1998_Else:
    assume {:partition} $r735 == $null;
    call $fakelocal_367 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_367;
    return;

  anon1998_Then:
    assume {:partition} $r735 != $null;
    $exception := $exception;
    goto anon1107;

  anon1107:
    call i458, $exception := java.lang.Integer$intValue$($r735);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r736, $exception := java.lang.Integer$valueOf$int(i457);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i186 := 4 + i458;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r737, $exception := java.lang.Integer$valueOf$int($i186);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r738, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r736, $r737);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon1999_Then, anon1999_Else;

  anon1999_Else:
    assume {:partition} !($heap[$r738, $type] <: java.lang.Integer);
    call $fakelocal_368 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_368;
    return;

  anon1999_Then:
    assume {:partition} $heap[$r738, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1110;

  anon1110:
    $r739 := $r738;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2000_Then, anon2000_Else;

  anon2000_Else:
    assume {:partition} $r739 == $null;
    call $fakelocal_369 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_369;
    return;

  anon2000_Then:
    assume {:partition} $r739 != $null;
    $exception := $exception;
    goto anon1113;

  anon1113:
    call i459, $exception := java.lang.Integer$intValue$($r739);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r740, $exception := java.lang.Integer$valueOf$int(i458);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i187 := 5 + i459;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r741, $exception := java.lang.Integer$valueOf$int($i187);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r742, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r740, $r741);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2001_Then, anon2001_Else;

  anon2001_Else:
    assume {:partition} !($heap[$r742, $type] <: java.lang.Integer);
    call $fakelocal_370 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_370;
    return;

  anon2001_Then:
    assume {:partition} $heap[$r742, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1116;

  anon1116:
    $r743 := $r742;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2002_Then, anon2002_Else;

  anon2002_Else:
    assume {:partition} $r743 == $null;
    call $fakelocal_371 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_371;
    return;

  anon2002_Then:
    assume {:partition} $r743 != $null;
    $exception := $exception;
    goto anon1119;

  anon1119:
    call i460, $exception := java.lang.Integer$intValue$($r743);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r744, $exception := java.lang.Integer$valueOf$int(i459);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i188 := 6 + i460;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r745, $exception := java.lang.Integer$valueOf$int($i188);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r746, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r744, $r745);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2003_Then, anon2003_Else;

  anon2003_Else:
    assume {:partition} !($heap[$r746, $type] <: java.lang.Integer);
    call $fakelocal_372 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_372;
    return;

  anon2003_Then:
    assume {:partition} $heap[$r746, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1122;

  anon1122:
    $r747 := $r746;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2004_Then, anon2004_Else;

  anon2004_Else:
    assume {:partition} $r747 == $null;
    call $fakelocal_373 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_373;
    return;

  anon2004_Then:
    assume {:partition} $r747 != $null;
    $exception := $exception;
    goto anon1125;

  anon1125:
    call i461, $exception := java.lang.Integer$intValue$($r747);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r748, $exception := java.lang.Integer$valueOf$int(i460);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i189 := 7 + i461;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r749, $exception := java.lang.Integer$valueOf$int($i189);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r750, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r748, $r749);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2005_Then, anon2005_Else;

  anon2005_Else:
    assume {:partition} !($heap[$r750, $type] <: java.lang.Integer);
    call $fakelocal_374 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_374;
    return;

  anon2005_Then:
    assume {:partition} $heap[$r750, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1128;

  anon1128:
    $r751 := $r750;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2006_Then, anon2006_Else;

  anon2006_Else:
    assume {:partition} $r751 == $null;
    call $fakelocal_375 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_375;
    return;

  anon2006_Then:
    assume {:partition} $r751 != $null;
    $exception := $exception;
    goto anon1131;

  anon1131:
    call i462, $exception := java.lang.Integer$intValue$($r751);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r752, $exception := java.lang.Integer$valueOf$int(i461);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i190 := 8 + i462;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r753, $exception := java.lang.Integer$valueOf$int($i190);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r754, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r752, $r753);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2007_Then, anon2007_Else;

  anon2007_Else:
    assume {:partition} !($heap[$r754, $type] <: java.lang.Integer);
    call $fakelocal_376 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_376;
    return;

  anon2007_Then:
    assume {:partition} $heap[$r754, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1134;

  anon1134:
    $r755 := $r754;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2008_Then, anon2008_Else;

  anon2008_Else:
    assume {:partition} $r755 == $null;
    call $fakelocal_377 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_377;
    return;

  anon2008_Then:
    assume {:partition} $r755 != $null;
    $exception := $exception;
    goto anon1137;

  anon1137:
    call i463, $exception := java.lang.Integer$intValue$($r755);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r756, $exception := java.lang.Integer$valueOf$int(i462);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i191 := 9 + i463;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r757, $exception := java.lang.Integer$valueOf$int($i191);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r758, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r756, $r757);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2009_Then, anon2009_Else;

  anon2009_Else:
    assume {:partition} !($heap[$r758, $type] <: java.lang.Integer);
    call $fakelocal_378 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_378;
    return;

  anon2009_Then:
    assume {:partition} $heap[$r758, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1140;

  anon1140:
    $r759 := $r758;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2010_Then, anon2010_Else;

  anon2010_Else:
    assume {:partition} $r759 == $null;
    call $fakelocal_379 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_379;
    return;

  anon2010_Then:
    assume {:partition} $r759 != $null;
    $exception := $exception;
    goto anon1143;

  anon1143:
    call i464, $exception := java.lang.Integer$intValue$($r759);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r760, $exception := java.lang.Integer$valueOf$int(i463);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i192 := 10 + i464;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r761, $exception := java.lang.Integer$valueOf$int($i192);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r762, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r760, $r761);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2011_Then, anon2011_Else;

  anon2011_Else:
    assume {:partition} !($heap[$r762, $type] <: java.lang.Integer);
    call $fakelocal_380 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_380;
    return;

  anon2011_Then:
    assume {:partition} $heap[$r762, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1146;

  anon1146:
    $r763 := $r762;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2012_Then, anon2012_Else;

  anon2012_Else:
    assume {:partition} $r763 == $null;
    call $fakelocal_381 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_381;
    return;

  anon2012_Then:
    assume {:partition} $r763 != $null;
    $exception := $exception;
    goto anon1149;

  anon1149:
    call i465, $exception := java.lang.Integer$intValue$($r763);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r764, $exception := java.lang.Integer$valueOf$int(i464);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i193 := 1 + i465;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r765, $exception := java.lang.Integer$valueOf$int($i193);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r766, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r764, $r765);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2013_Then, anon2013_Else;

  anon2013_Else:
    assume {:partition} !($heap[$r766, $type] <: java.lang.Integer);
    call $fakelocal_382 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_382;
    return;

  anon2013_Then:
    assume {:partition} $heap[$r766, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1152;

  anon1152:
    $r767 := $r766;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2014_Then, anon2014_Else;

  anon2014_Else:
    assume {:partition} $r767 == $null;
    call $fakelocal_383 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_383;
    return;

  anon2014_Then:
    assume {:partition} $r767 != $null;
    $exception := $exception;
    goto anon1155;

  anon1155:
    call i466, $exception := java.lang.Integer$intValue$($r767);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r768, $exception := java.lang.Integer$valueOf$int(i465);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i194 := 2 + i466;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r769, $exception := java.lang.Integer$valueOf$int($i194);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r770, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r768, $r769);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2015_Then, anon2015_Else;

  anon2015_Else:
    assume {:partition} !($heap[$r770, $type] <: java.lang.Integer);
    call $fakelocal_384 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_384;
    return;

  anon2015_Then:
    assume {:partition} $heap[$r770, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1158;

  anon1158:
    $r771 := $r770;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2016_Then, anon2016_Else;

  anon2016_Else:
    assume {:partition} $r771 == $null;
    call $fakelocal_385 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_385;
    return;

  anon2016_Then:
    assume {:partition} $r771 != $null;
    $exception := $exception;
    goto anon1161;

  anon1161:
    call i467, $exception := java.lang.Integer$intValue$($r771);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r772, $exception := java.lang.Integer$valueOf$int(i466);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i195 := 3 + i467;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r773, $exception := java.lang.Integer$valueOf$int($i195);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r774, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r772, $r773);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2017_Then, anon2017_Else;

  anon2017_Else:
    assume {:partition} !($heap[$r774, $type] <: java.lang.Integer);
    call $fakelocal_386 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_386;
    return;

  anon2017_Then:
    assume {:partition} $heap[$r774, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1164;

  anon1164:
    $r775 := $r774;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2018_Then, anon2018_Else;

  anon2018_Else:
    assume {:partition} $r775 == $null;
    call $fakelocal_387 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_387;
    return;

  anon2018_Then:
    assume {:partition} $r775 != $null;
    $exception := $exception;
    goto anon1167;

  anon1167:
    call i468, $exception := java.lang.Integer$intValue$($r775);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r776, $exception := java.lang.Integer$valueOf$int(i467);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i196 := 4 + i468;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r777, $exception := java.lang.Integer$valueOf$int($i196);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r778, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r776, $r777);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2019_Then, anon2019_Else;

  anon2019_Else:
    assume {:partition} !($heap[$r778, $type] <: java.lang.Integer);
    call $fakelocal_388 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_388;
    return;

  anon2019_Then:
    assume {:partition} $heap[$r778, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1170;

  anon1170:
    $r779 := $r778;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2020_Then, anon2020_Else;

  anon2020_Else:
    assume {:partition} $r779 == $null;
    call $fakelocal_389 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_389;
    return;

  anon2020_Then:
    assume {:partition} $r779 != $null;
    $exception := $exception;
    goto anon1173;

  anon1173:
    call i469, $exception := java.lang.Integer$intValue$($r779);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r780, $exception := java.lang.Integer$valueOf$int(i468);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i197 := 5 + i469;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r781, $exception := java.lang.Integer$valueOf$int($i197);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r782, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r780, $r781);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2021_Then, anon2021_Else;

  anon2021_Else:
    assume {:partition} !($heap[$r782, $type] <: java.lang.Integer);
    call $fakelocal_390 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_390;
    return;

  anon2021_Then:
    assume {:partition} $heap[$r782, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1176;

  anon1176:
    $r783 := $r782;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2022_Then, anon2022_Else;

  anon2022_Else:
    assume {:partition} $r783 == $null;
    call $fakelocal_391 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_391;
    return;

  anon2022_Then:
    assume {:partition} $r783 != $null;
    $exception := $exception;
    goto anon1179;

  anon1179:
    call i470, $exception := java.lang.Integer$intValue$($r783);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r784, $exception := java.lang.Integer$valueOf$int(i469);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i198 := 6 + i470;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r785, $exception := java.lang.Integer$valueOf$int($i198);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r786, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r784, $r785);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2023_Then, anon2023_Else;

  anon2023_Else:
    assume {:partition} !($heap[$r786, $type] <: java.lang.Integer);
    call $fakelocal_392 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_392;
    return;

  anon2023_Then:
    assume {:partition} $heap[$r786, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1182;

  anon1182:
    $r787 := $r786;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2024_Then, anon2024_Else;

  anon2024_Else:
    assume {:partition} $r787 == $null;
    call $fakelocal_393 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_393;
    return;

  anon2024_Then:
    assume {:partition} $r787 != $null;
    $exception := $exception;
    goto anon1185;

  anon1185:
    call i471, $exception := java.lang.Integer$intValue$($r787);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r788, $exception := java.lang.Integer$valueOf$int(i470);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i199 := 7 + i471;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r789, $exception := java.lang.Integer$valueOf$int($i199);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r790, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r788, $r789);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2025_Then, anon2025_Else;

  anon2025_Else:
    assume {:partition} !($heap[$r790, $type] <: java.lang.Integer);
    call $fakelocal_394 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_394;
    return;

  anon2025_Then:
    assume {:partition} $heap[$r790, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1188;

  anon1188:
    $r791 := $r790;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2026_Then, anon2026_Else;

  anon2026_Else:
    assume {:partition} $r791 == $null;
    call $fakelocal_395 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_395;
    return;

  anon2026_Then:
    assume {:partition} $r791 != $null;
    $exception := $exception;
    goto anon1191;

  anon1191:
    call i472, $exception := java.lang.Integer$intValue$($r791);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r792, $exception := java.lang.Integer$valueOf$int(i471);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i200 := 8 + i472;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r793, $exception := java.lang.Integer$valueOf$int($i200);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r794, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r792, $r793);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2027_Then, anon2027_Else;

  anon2027_Else:
    assume {:partition} !($heap[$r794, $type] <: java.lang.Integer);
    call $fakelocal_396 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_396;
    return;

  anon2027_Then:
    assume {:partition} $heap[$r794, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1194;

  anon1194:
    $r795 := $r794;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2028_Then, anon2028_Else;

  anon2028_Else:
    assume {:partition} $r795 == $null;
    call $fakelocal_397 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_397;
    return;

  anon2028_Then:
    assume {:partition} $r795 != $null;
    $exception := $exception;
    goto anon1197;

  anon1197:
    call i473, $exception := java.lang.Integer$intValue$($r795);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r796, $exception := java.lang.Integer$valueOf$int(i472);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i201 := 9 + i473;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r797, $exception := java.lang.Integer$valueOf$int($i201);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r798, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r796, $r797);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2029_Then, anon2029_Else;

  anon2029_Else:
    assume {:partition} !($heap[$r798, $type] <: java.lang.Integer);
    call $fakelocal_398 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_398;
    return;

  anon2029_Then:
    assume {:partition} $heap[$r798, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1200;

  anon1200:
    $r799 := $r798;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2030_Then, anon2030_Else;

  anon2030_Else:
    assume {:partition} $r799 == $null;
    call $fakelocal_399 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_399;
    return;

  anon2030_Then:
    assume {:partition} $r799 != $null;
    $exception := $exception;
    goto anon1203;

  anon1203:
    call i474, $exception := java.lang.Integer$intValue$($r799);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r800, $exception := java.lang.Integer$valueOf$int(i473);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i202 := 10 + i474;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r801, $exception := java.lang.Integer$valueOf$int($i202);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r802, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r800, $r801);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2031_Then, anon2031_Else;

  anon2031_Else:
    assume {:partition} !($heap[$r802, $type] <: java.lang.Integer);
    call $fakelocal_400 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_400;
    return;

  anon2031_Then:
    assume {:partition} $heap[$r802, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1206;

  anon1206:
    $r803 := $r802;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2032_Then, anon2032_Else;

  anon2032_Else:
    assume {:partition} $r803 == $null;
    call $fakelocal_401 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_401;
    return;

  anon2032_Then:
    assume {:partition} $r803 != $null;
    $exception := $exception;
    goto anon1209;

  anon1209:
    call i475, $exception := java.lang.Integer$intValue$($r803);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r804, $exception := java.lang.Integer$valueOf$int(i474);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i203 := 1 + i475;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r805, $exception := java.lang.Integer$valueOf$int($i203);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r806, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r804, $r805);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2033_Then, anon2033_Else;

  anon2033_Else:
    assume {:partition} !($heap[$r806, $type] <: java.lang.Integer);
    call $fakelocal_402 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_402;
    return;

  anon2033_Then:
    assume {:partition} $heap[$r806, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1212;

  anon1212:
    $r807 := $r806;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2034_Then, anon2034_Else;

  anon2034_Else:
    assume {:partition} $r807 == $null;
    call $fakelocal_403 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_403;
    return;

  anon2034_Then:
    assume {:partition} $r807 != $null;
    $exception := $exception;
    goto anon1215;

  anon1215:
    call i476, $exception := java.lang.Integer$intValue$($r807);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r808, $exception := java.lang.Integer$valueOf$int(i475);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i204 := 2 + i476;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r809, $exception := java.lang.Integer$valueOf$int($i204);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r810, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r808, $r809);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2035_Then, anon2035_Else;

  anon2035_Else:
    assume {:partition} !($heap[$r810, $type] <: java.lang.Integer);
    call $fakelocal_404 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_404;
    return;

  anon2035_Then:
    assume {:partition} $heap[$r810, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1218;

  anon1218:
    $r811 := $r810;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2036_Then, anon2036_Else;

  anon2036_Else:
    assume {:partition} $r811 == $null;
    call $fakelocal_405 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_405;
    return;

  anon2036_Then:
    assume {:partition} $r811 != $null;
    $exception := $exception;
    goto anon1221;

  anon1221:
    call i477, $exception := java.lang.Integer$intValue$($r811);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r812, $exception := java.lang.Integer$valueOf$int(i476);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i205 := 3 + i477;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r813, $exception := java.lang.Integer$valueOf$int($i205);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r814, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r812, $r813);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2037_Then, anon2037_Else;

  anon2037_Else:
    assume {:partition} !($heap[$r814, $type] <: java.lang.Integer);
    call $fakelocal_406 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_406;
    return;

  anon2037_Then:
    assume {:partition} $heap[$r814, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1224;

  anon1224:
    $r815 := $r814;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2038_Then, anon2038_Else;

  anon2038_Else:
    assume {:partition} $r815 == $null;
    call $fakelocal_407 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_407;
    return;

  anon2038_Then:
    assume {:partition} $r815 != $null;
    $exception := $exception;
    goto anon1227;

  anon1227:
    call i478, $exception := java.lang.Integer$intValue$($r815);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r816, $exception := java.lang.Integer$valueOf$int(i477);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i206 := 4 + i478;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r817, $exception := java.lang.Integer$valueOf$int($i206);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r818, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r816, $r817);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2039_Then, anon2039_Else;

  anon2039_Else:
    assume {:partition} !($heap[$r818, $type] <: java.lang.Integer);
    call $fakelocal_408 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_408;
    return;

  anon2039_Then:
    assume {:partition} $heap[$r818, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1230;

  anon1230:
    $r819 := $r818;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2040_Then, anon2040_Else;

  anon2040_Else:
    assume {:partition} $r819 == $null;
    call $fakelocal_409 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_409;
    return;

  anon2040_Then:
    assume {:partition} $r819 != $null;
    $exception := $exception;
    goto anon1233;

  anon1233:
    call i479, $exception := java.lang.Integer$intValue$($r819);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r820, $exception := java.lang.Integer$valueOf$int(i478);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i207 := 5 + i479;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r821, $exception := java.lang.Integer$valueOf$int($i207);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r822, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r820, $r821);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2041_Then, anon2041_Else;

  anon2041_Else:
    assume {:partition} !($heap[$r822, $type] <: java.lang.Integer);
    call $fakelocal_410 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_410;
    return;

  anon2041_Then:
    assume {:partition} $heap[$r822, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1236;

  anon1236:
    $r823 := $r822;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2042_Then, anon2042_Else;

  anon2042_Else:
    assume {:partition} $r823 == $null;
    call $fakelocal_411 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_411;
    return;

  anon2042_Then:
    assume {:partition} $r823 != $null;
    $exception := $exception;
    goto anon1239;

  anon1239:
    call i480, $exception := java.lang.Integer$intValue$($r823);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r824, $exception := java.lang.Integer$valueOf$int(i479);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i208 := 6 + i480;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r825, $exception := java.lang.Integer$valueOf$int($i208);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r826, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r824, $r825);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2043_Then, anon2043_Else;

  anon2043_Else:
    assume {:partition} !($heap[$r826, $type] <: java.lang.Integer);
    call $fakelocal_412 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_412;
    return;

  anon2043_Then:
    assume {:partition} $heap[$r826, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1242;

  anon1242:
    $r827 := $r826;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2044_Then, anon2044_Else;

  anon2044_Else:
    assume {:partition} $r827 == $null;
    call $fakelocal_413 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_413;
    return;

  anon2044_Then:
    assume {:partition} $r827 != $null;
    $exception := $exception;
    goto anon1245;

  anon1245:
    call i481, $exception := java.lang.Integer$intValue$($r827);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r828, $exception := java.lang.Integer$valueOf$int(i480);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i209 := 7 + i481;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r829, $exception := java.lang.Integer$valueOf$int($i209);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r830, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r828, $r829);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2045_Then, anon2045_Else;

  anon2045_Else:
    assume {:partition} !($heap[$r830, $type] <: java.lang.Integer);
    call $fakelocal_414 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_414;
    return;

  anon2045_Then:
    assume {:partition} $heap[$r830, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1248;

  anon1248:
    $r831 := $r830;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2046_Then, anon2046_Else;

  anon2046_Else:
    assume {:partition} $r831 == $null;
    call $fakelocal_415 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_415;
    return;

  anon2046_Then:
    assume {:partition} $r831 != $null;
    $exception := $exception;
    goto anon1251;

  anon1251:
    call i482, $exception := java.lang.Integer$intValue$($r831);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r832, $exception := java.lang.Integer$valueOf$int(i481);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i210 := 8 + i482;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r833, $exception := java.lang.Integer$valueOf$int($i210);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r834, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r832, $r833);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2047_Then, anon2047_Else;

  anon2047_Else:
    assume {:partition} !($heap[$r834, $type] <: java.lang.Integer);
    call $fakelocal_416 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_416;
    return;

  anon2047_Then:
    assume {:partition} $heap[$r834, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1254;

  anon1254:
    $r835 := $r834;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2048_Then, anon2048_Else;

  anon2048_Else:
    assume {:partition} $r835 == $null;
    call $fakelocal_417 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_417;
    return;

  anon2048_Then:
    assume {:partition} $r835 != $null;
    $exception := $exception;
    goto anon1257;

  anon1257:
    call i483, $exception := java.lang.Integer$intValue$($r835);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r836, $exception := java.lang.Integer$valueOf$int(i482);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i211 := 9 + i483;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r837, $exception := java.lang.Integer$valueOf$int($i211);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r838, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r836, $r837);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2049_Then, anon2049_Else;

  anon2049_Else:
    assume {:partition} !($heap[$r838, $type] <: java.lang.Integer);
    call $fakelocal_418 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_418;
    return;

  anon2049_Then:
    assume {:partition} $heap[$r838, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1260;

  anon1260:
    $r839 := $r838;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2050_Then, anon2050_Else;

  anon2050_Else:
    assume {:partition} $r839 == $null;
    call $fakelocal_419 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_419;
    return;

  anon2050_Then:
    assume {:partition} $r839 != $null;
    $exception := $exception;
    goto anon1263;

  anon1263:
    call i484, $exception := java.lang.Integer$intValue$($r839);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r840, $exception := java.lang.Integer$valueOf$int(i483);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    $i212 := 10 + i484;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r841, $exception := java.lang.Integer$valueOf$int($i212);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    call $r842, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r840, $r841);
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2051_Then, anon2051_Else;

  anon2051_Else:
    assume {:partition} !($heap[$r842, $type] <: java.lang.Integer);
    call $fakelocal_420 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_420;
    return;

  anon2051_Then:
    assume {:partition} $heap[$r842, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1266;

  anon1266:
    $r843 := $r842;
    assert {:sourceloc "Sanity.java", 29, -1, -1, -1} true;
    goto anon2052_Then, anon2052_Else;

  anon2052_Else:
    assume {:partition} $r843 == $null;
    call $fakelocal_421 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_421;
    return;

  anon2052_Then:
    assume {:partition} $r843 != $null;
    $exception := $exception;
    goto anon1269;

  anon1269:
    call i485, $exception := java.lang.Integer$intValue$($r843);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r844, $exception := java.lang.Integer$valueOf$int(i484);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i213 := 1 + i485;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r845, $exception := java.lang.Integer$valueOf$int($i213);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r846, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r844, $r845);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2053_Then, anon2053_Else;

  anon2053_Else:
    assume {:partition} !($heap[$r846, $type] <: java.lang.Integer);
    call $fakelocal_422 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_422;
    return;

  anon2053_Then:
    assume {:partition} $heap[$r846, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1272;

  anon1272:
    $r847 := $r846;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2054_Then, anon2054_Else;

  anon2054_Else:
    assume {:partition} $r847 == $null;
    call $fakelocal_423 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_423;
    return;

  anon2054_Then:
    assume {:partition} $r847 != $null;
    $exception := $exception;
    goto anon1275;

  anon1275:
    call i486, $exception := java.lang.Integer$intValue$($r847);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r848, $exception := java.lang.Integer$valueOf$int(i485);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i214 := 2 + i486;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r849, $exception := java.lang.Integer$valueOf$int($i214);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r850, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r848, $r849);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2055_Then, anon2055_Else;

  anon2055_Else:
    assume {:partition} !($heap[$r850, $type] <: java.lang.Integer);
    call $fakelocal_424 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_424;
    return;

  anon2055_Then:
    assume {:partition} $heap[$r850, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1278;

  anon1278:
    $r851 := $r850;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2056_Then, anon2056_Else;

  anon2056_Else:
    assume {:partition} $r851 == $null;
    call $fakelocal_425 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_425;
    return;

  anon2056_Then:
    assume {:partition} $r851 != $null;
    $exception := $exception;
    goto anon1281;

  anon1281:
    call i487, $exception := java.lang.Integer$intValue$($r851);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r852, $exception := java.lang.Integer$valueOf$int(i486);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i215 := 3 + i487;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r853, $exception := java.lang.Integer$valueOf$int($i215);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r854, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r852, $r853);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2057_Then, anon2057_Else;

  anon2057_Else:
    assume {:partition} !($heap[$r854, $type] <: java.lang.Integer);
    call $fakelocal_426 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_426;
    return;

  anon2057_Then:
    assume {:partition} $heap[$r854, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1284;

  anon1284:
    $r855 := $r854;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2058_Then, anon2058_Else;

  anon2058_Else:
    assume {:partition} $r855 == $null;
    call $fakelocal_427 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_427;
    return;

  anon2058_Then:
    assume {:partition} $r855 != $null;
    $exception := $exception;
    goto anon1287;

  anon1287:
    call i488, $exception := java.lang.Integer$intValue$($r855);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r856, $exception := java.lang.Integer$valueOf$int(i487);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i216 := 4 + i488;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r857, $exception := java.lang.Integer$valueOf$int($i216);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r858, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r856, $r857);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2059_Then, anon2059_Else;

  anon2059_Else:
    assume {:partition} !($heap[$r858, $type] <: java.lang.Integer);
    call $fakelocal_428 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_428;
    return;

  anon2059_Then:
    assume {:partition} $heap[$r858, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1290;

  anon1290:
    $r859 := $r858;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2060_Then, anon2060_Else;

  anon2060_Else:
    assume {:partition} $r859 == $null;
    call $fakelocal_429 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_429;
    return;

  anon2060_Then:
    assume {:partition} $r859 != $null;
    $exception := $exception;
    goto anon1293;

  anon1293:
    call i489, $exception := java.lang.Integer$intValue$($r859);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r860, $exception := java.lang.Integer$valueOf$int(i488);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i217 := 5 + i489;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r861, $exception := java.lang.Integer$valueOf$int($i217);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r862, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r860, $r861);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2061_Then, anon2061_Else;

  anon2061_Else:
    assume {:partition} !($heap[$r862, $type] <: java.lang.Integer);
    call $fakelocal_430 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_430;
    return;

  anon2061_Then:
    assume {:partition} $heap[$r862, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1296;

  anon1296:
    $r863 := $r862;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2062_Then, anon2062_Else;

  anon2062_Else:
    assume {:partition} $r863 == $null;
    call $fakelocal_431 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_431;
    return;

  anon2062_Then:
    assume {:partition} $r863 != $null;
    $exception := $exception;
    goto anon1299;

  anon1299:
    call i490, $exception := java.lang.Integer$intValue$($r863);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r864, $exception := java.lang.Integer$valueOf$int(i489);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i218 := 6 + i490;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r865, $exception := java.lang.Integer$valueOf$int($i218);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r866, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r864, $r865);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2063_Then, anon2063_Else;

  anon2063_Else:
    assume {:partition} !($heap[$r866, $type] <: java.lang.Integer);
    call $fakelocal_432 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_432;
    return;

  anon2063_Then:
    assume {:partition} $heap[$r866, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1302;

  anon1302:
    $r867 := $r866;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2064_Then, anon2064_Else;

  anon2064_Else:
    assume {:partition} $r867 == $null;
    call $fakelocal_433 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_433;
    return;

  anon2064_Then:
    assume {:partition} $r867 != $null;
    $exception := $exception;
    goto anon1305;

  anon1305:
    call i491, $exception := java.lang.Integer$intValue$($r867);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r868, $exception := java.lang.Integer$valueOf$int(i490);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i219 := 7 + i491;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r869, $exception := java.lang.Integer$valueOf$int($i219);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r870, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r868, $r869);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2065_Then, anon2065_Else;

  anon2065_Else:
    assume {:partition} !($heap[$r870, $type] <: java.lang.Integer);
    call $fakelocal_434 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_434;
    return;

  anon2065_Then:
    assume {:partition} $heap[$r870, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1308;

  anon1308:
    $r871 := $r870;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2066_Then, anon2066_Else;

  anon2066_Else:
    assume {:partition} $r871 == $null;
    call $fakelocal_435 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_435;
    return;

  anon2066_Then:
    assume {:partition} $r871 != $null;
    $exception := $exception;
    goto anon1311;

  anon1311:
    call i492, $exception := java.lang.Integer$intValue$($r871);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r872, $exception := java.lang.Integer$valueOf$int(i491);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i220 := 8 + i492;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r873, $exception := java.lang.Integer$valueOf$int($i220);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r874, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r872, $r873);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2067_Then, anon2067_Else;

  anon2067_Else:
    assume {:partition} !($heap[$r874, $type] <: java.lang.Integer);
    call $fakelocal_436 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_436;
    return;

  anon2067_Then:
    assume {:partition} $heap[$r874, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1314;

  anon1314:
    $r875 := $r874;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2068_Then, anon2068_Else;

  anon2068_Else:
    assume {:partition} $r875 == $null;
    call $fakelocal_437 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_437;
    return;

  anon2068_Then:
    assume {:partition} $r875 != $null;
    $exception := $exception;
    goto anon1317;

  anon1317:
    call i493, $exception := java.lang.Integer$intValue$($r875);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r876, $exception := java.lang.Integer$valueOf$int(i492);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i221 := 9 + i493;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r877, $exception := java.lang.Integer$valueOf$int($i221);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r878, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r876, $r877);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2069_Then, anon2069_Else;

  anon2069_Else:
    assume {:partition} !($heap[$r878, $type] <: java.lang.Integer);
    call $fakelocal_438 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_438;
    return;

  anon2069_Then:
    assume {:partition} $heap[$r878, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1320;

  anon1320:
    $r879 := $r878;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2070_Then, anon2070_Else;

  anon2070_Else:
    assume {:partition} $r879 == $null;
    call $fakelocal_439 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_439;
    return;

  anon2070_Then:
    assume {:partition} $r879 != $null;
    $exception := $exception;
    goto anon1323;

  anon1323:
    call i494, $exception := java.lang.Integer$intValue$($r879);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r880, $exception := java.lang.Integer$valueOf$int(i493);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i222 := 10 + i494;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r881, $exception := java.lang.Integer$valueOf$int($i222);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r882, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r880, $r881);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2071_Then, anon2071_Else;

  anon2071_Else:
    assume {:partition} !($heap[$r882, $type] <: java.lang.Integer);
    call $fakelocal_440 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_440;
    return;

  anon2071_Then:
    assume {:partition} $heap[$r882, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1326;

  anon1326:
    $r883 := $r882;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2072_Then, anon2072_Else;

  anon2072_Else:
    assume {:partition} $r883 == $null;
    call $fakelocal_441 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_441;
    return;

  anon2072_Then:
    assume {:partition} $r883 != $null;
    $exception := $exception;
    goto anon1329;

  anon1329:
    call i495, $exception := java.lang.Integer$intValue$($r883);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r884, $exception := java.lang.Integer$valueOf$int(i494);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i223 := 1 + i495;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r885, $exception := java.lang.Integer$valueOf$int($i223);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r886, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r884, $r885);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2073_Then, anon2073_Else;

  anon2073_Else:
    assume {:partition} !($heap[$r886, $type] <: java.lang.Integer);
    call $fakelocal_442 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_442;
    return;

  anon2073_Then:
    assume {:partition} $heap[$r886, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1332;

  anon1332:
    $r887 := $r886;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2074_Then, anon2074_Else;

  anon2074_Else:
    assume {:partition} $r887 == $null;
    call $fakelocal_443 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_443;
    return;

  anon2074_Then:
    assume {:partition} $r887 != $null;
    $exception := $exception;
    goto anon1335;

  anon1335:
    call i496, $exception := java.lang.Integer$intValue$($r887);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r888, $exception := java.lang.Integer$valueOf$int(i495);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i224 := 2 + i496;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r889, $exception := java.lang.Integer$valueOf$int($i224);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r890, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r888, $r889);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2075_Then, anon2075_Else;

  anon2075_Else:
    assume {:partition} !($heap[$r890, $type] <: java.lang.Integer);
    call $fakelocal_444 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_444;
    return;

  anon2075_Then:
    assume {:partition} $heap[$r890, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1338;

  anon1338:
    $r891 := $r890;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2076_Then, anon2076_Else;

  anon2076_Else:
    assume {:partition} $r891 == $null;
    call $fakelocal_445 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_445;
    return;

  anon2076_Then:
    assume {:partition} $r891 != $null;
    $exception := $exception;
    goto anon1341;

  anon1341:
    call i497, $exception := java.lang.Integer$intValue$($r891);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r892, $exception := java.lang.Integer$valueOf$int(i496);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i225 := 3 + i497;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r893, $exception := java.lang.Integer$valueOf$int($i225);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r894, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r892, $r893);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2077_Then, anon2077_Else;

  anon2077_Else:
    assume {:partition} !($heap[$r894, $type] <: java.lang.Integer);
    call $fakelocal_446 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_446;
    return;

  anon2077_Then:
    assume {:partition} $heap[$r894, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1344;

  anon1344:
    $r895 := $r894;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2078_Then, anon2078_Else;

  anon2078_Else:
    assume {:partition} $r895 == $null;
    call $fakelocal_447 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_447;
    return;

  anon2078_Then:
    assume {:partition} $r895 != $null;
    $exception := $exception;
    goto anon1347;

  anon1347:
    call i498, $exception := java.lang.Integer$intValue$($r895);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r896, $exception := java.lang.Integer$valueOf$int(i497);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i226 := 4 + i498;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r897, $exception := java.lang.Integer$valueOf$int($i226);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r898, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r896, $r897);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2079_Then, anon2079_Else;

  anon2079_Else:
    assume {:partition} !($heap[$r898, $type] <: java.lang.Integer);
    call $fakelocal_448 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_448;
    return;

  anon2079_Then:
    assume {:partition} $heap[$r898, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1350;

  anon1350:
    $r899 := $r898;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2080_Then, anon2080_Else;

  anon2080_Else:
    assume {:partition} $r899 == $null;
    call $fakelocal_449 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_449;
    return;

  anon2080_Then:
    assume {:partition} $r899 != $null;
    $exception := $exception;
    goto anon1353;

  anon1353:
    call i499, $exception := java.lang.Integer$intValue$($r899);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r900, $exception := java.lang.Integer$valueOf$int(i498);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i227 := 5 + i499;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r901, $exception := java.lang.Integer$valueOf$int($i227);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r902, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r900, $r901);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2081_Then, anon2081_Else;

  anon2081_Else:
    assume {:partition} !($heap[$r902, $type] <: java.lang.Integer);
    call $fakelocal_450 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_450;
    return;

  anon2081_Then:
    assume {:partition} $heap[$r902, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1356;

  anon1356:
    $r903 := $r902;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2082_Then, anon2082_Else;

  anon2082_Else:
    assume {:partition} $r903 == $null;
    call $fakelocal_451 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_451;
    return;

  anon2082_Then:
    assume {:partition} $r903 != $null;
    $exception := $exception;
    goto anon1359;

  anon1359:
    call i500, $exception := java.lang.Integer$intValue$($r903);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r904, $exception := java.lang.Integer$valueOf$int(i499);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i228 := 6 + i500;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r905, $exception := java.lang.Integer$valueOf$int($i228);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r906, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r904, $r905);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2083_Then, anon2083_Else;

  anon2083_Else:
    assume {:partition} !($heap[$r906, $type] <: java.lang.Integer);
    call $fakelocal_452 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_452;
    return;

  anon2083_Then:
    assume {:partition} $heap[$r906, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1362;

  anon1362:
    $r907 := $r906;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2084_Then, anon2084_Else;

  anon2084_Else:
    assume {:partition} $r907 == $null;
    call $fakelocal_453 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_453;
    return;

  anon2084_Then:
    assume {:partition} $r907 != $null;
    $exception := $exception;
    goto anon1365;

  anon1365:
    call i501, $exception := java.lang.Integer$intValue$($r907);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r908, $exception := java.lang.Integer$valueOf$int(i500);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i229 := 7 + i501;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r909, $exception := java.lang.Integer$valueOf$int($i229);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r910, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r908, $r909);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2085_Then, anon2085_Else;

  anon2085_Else:
    assume {:partition} !($heap[$r910, $type] <: java.lang.Integer);
    call $fakelocal_454 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_454;
    return;

  anon2085_Then:
    assume {:partition} $heap[$r910, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1368;

  anon1368:
    $r911 := $r910;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2086_Then, anon2086_Else;

  anon2086_Else:
    assume {:partition} $r911 == $null;
    call $fakelocal_455 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_455;
    return;

  anon2086_Then:
    assume {:partition} $r911 != $null;
    $exception := $exception;
    goto anon1371;

  anon1371:
    call i502, $exception := java.lang.Integer$intValue$($r911);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r912, $exception := java.lang.Integer$valueOf$int(i501);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i230 := 8 + i502;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r913, $exception := java.lang.Integer$valueOf$int($i230);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r914, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r912, $r913);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2087_Then, anon2087_Else;

  anon2087_Else:
    assume {:partition} !($heap[$r914, $type] <: java.lang.Integer);
    call $fakelocal_456 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_456;
    return;

  anon2087_Then:
    assume {:partition} $heap[$r914, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1374;

  anon1374:
    $r915 := $r914;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2088_Then, anon2088_Else;

  anon2088_Else:
    assume {:partition} $r915 == $null;
    call $fakelocal_457 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_457;
    return;

  anon2088_Then:
    assume {:partition} $r915 != $null;
    $exception := $exception;
    goto anon1377;

  anon1377:
    call i503, $exception := java.lang.Integer$intValue$($r915);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r916, $exception := java.lang.Integer$valueOf$int(i502);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i231 := 9 + i503;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r917, $exception := java.lang.Integer$valueOf$int($i231);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r918, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r916, $r917);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2089_Then, anon2089_Else;

  anon2089_Else:
    assume {:partition} !($heap[$r918, $type] <: java.lang.Integer);
    call $fakelocal_458 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_458;
    return;

  anon2089_Then:
    assume {:partition} $heap[$r918, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1380;

  anon1380:
    $r919 := $r918;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2090_Then, anon2090_Else;

  anon2090_Else:
    assume {:partition} $r919 == $null;
    call $fakelocal_459 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_459;
    return;

  anon2090_Then:
    assume {:partition} $r919 != $null;
    $exception := $exception;
    goto anon1383;

  anon1383:
    call i504, $exception := java.lang.Integer$intValue$($r919);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r920, $exception := java.lang.Integer$valueOf$int(i503);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i232 := 10 + i504;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r921, $exception := java.lang.Integer$valueOf$int($i232);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r922, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r920, $r921);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2091_Then, anon2091_Else;

  anon2091_Else:
    assume {:partition} !($heap[$r922, $type] <: java.lang.Integer);
    call $fakelocal_460 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_460;
    return;

  anon2091_Then:
    assume {:partition} $heap[$r922, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1386;

  anon1386:
    $r923 := $r922;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2092_Then, anon2092_Else;

  anon2092_Else:
    assume {:partition} $r923 == $null;
    call $fakelocal_461 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_461;
    return;

  anon2092_Then:
    assume {:partition} $r923 != $null;
    $exception := $exception;
    goto anon1389;

  anon1389:
    call i505, $exception := java.lang.Integer$intValue$($r923);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r924, $exception := java.lang.Integer$valueOf$int(i504);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i233 := 1 + i505;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r925, $exception := java.lang.Integer$valueOf$int($i233);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r926, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r924, $r925);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2093_Then, anon2093_Else;

  anon2093_Else:
    assume {:partition} !($heap[$r926, $type] <: java.lang.Integer);
    call $fakelocal_462 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_462;
    return;

  anon2093_Then:
    assume {:partition} $heap[$r926, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1392;

  anon1392:
    $r927 := $r926;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2094_Then, anon2094_Else;

  anon2094_Else:
    assume {:partition} $r927 == $null;
    call $fakelocal_463 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_463;
    return;

  anon2094_Then:
    assume {:partition} $r927 != $null;
    $exception := $exception;
    goto anon1395;

  anon1395:
    call i506, $exception := java.lang.Integer$intValue$($r927);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r928, $exception := java.lang.Integer$valueOf$int(i505);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i234 := 2 + i506;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r929, $exception := java.lang.Integer$valueOf$int($i234);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r930, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r928, $r929);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2095_Then, anon2095_Else;

  anon2095_Else:
    assume {:partition} !($heap[$r930, $type] <: java.lang.Integer);
    call $fakelocal_464 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_464;
    return;

  anon2095_Then:
    assume {:partition} $heap[$r930, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1398;

  anon1398:
    $r931 := $r930;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2096_Then, anon2096_Else;

  anon2096_Else:
    assume {:partition} $r931 == $null;
    call $fakelocal_465 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_465;
    return;

  anon2096_Then:
    assume {:partition} $r931 != $null;
    $exception := $exception;
    goto anon1401;

  anon1401:
    call i507, $exception := java.lang.Integer$intValue$($r931);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r932, $exception := java.lang.Integer$valueOf$int(i506);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i235 := 3 + i507;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r933, $exception := java.lang.Integer$valueOf$int($i235);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r934, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r932, $r933);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2097_Then, anon2097_Else;

  anon2097_Else:
    assume {:partition} !($heap[$r934, $type] <: java.lang.Integer);
    call $fakelocal_466 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_466;
    return;

  anon2097_Then:
    assume {:partition} $heap[$r934, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1404;

  anon1404:
    $r935 := $r934;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2098_Then, anon2098_Else;

  anon2098_Else:
    assume {:partition} $r935 == $null;
    call $fakelocal_467 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_467;
    return;

  anon2098_Then:
    assume {:partition} $r935 != $null;
    $exception := $exception;
    goto anon1407;

  anon1407:
    call i508, $exception := java.lang.Integer$intValue$($r935);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r936, $exception := java.lang.Integer$valueOf$int(i507);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i236 := 4 + i508;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r937, $exception := java.lang.Integer$valueOf$int($i236);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r938, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r936, $r937);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2099_Then, anon2099_Else;

  anon2099_Else:
    assume {:partition} !($heap[$r938, $type] <: java.lang.Integer);
    call $fakelocal_468 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_468;
    return;

  anon2099_Then:
    assume {:partition} $heap[$r938, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1410;

  anon1410:
    $r939 := $r938;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2100_Then, anon2100_Else;

  anon2100_Else:
    assume {:partition} $r939 == $null;
    call $fakelocal_469 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_469;
    return;

  anon2100_Then:
    assume {:partition} $r939 != $null;
    $exception := $exception;
    goto anon1413;

  anon1413:
    call i509, $exception := java.lang.Integer$intValue$($r939);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r940, $exception := java.lang.Integer$valueOf$int(i508);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i237 := 5 + i509;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r941, $exception := java.lang.Integer$valueOf$int($i237);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r942, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r940, $r941);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2101_Then, anon2101_Else;

  anon2101_Else:
    assume {:partition} !($heap[$r942, $type] <: java.lang.Integer);
    call $fakelocal_470 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_470;
    return;

  anon2101_Then:
    assume {:partition} $heap[$r942, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1416;

  anon1416:
    $r943 := $r942;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2102_Then, anon2102_Else;

  anon2102_Else:
    assume {:partition} $r943 == $null;
    call $fakelocal_471 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_471;
    return;

  anon2102_Then:
    assume {:partition} $r943 != $null;
    $exception := $exception;
    goto anon1419;

  anon1419:
    call i510, $exception := java.lang.Integer$intValue$($r943);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r944, $exception := java.lang.Integer$valueOf$int(i509);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i238 := 6 + i510;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r945, $exception := java.lang.Integer$valueOf$int($i238);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r946, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r944, $r945);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2103_Then, anon2103_Else;

  anon2103_Else:
    assume {:partition} !($heap[$r946, $type] <: java.lang.Integer);
    call $fakelocal_472 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_472;
    return;

  anon2103_Then:
    assume {:partition} $heap[$r946, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1422;

  anon1422:
    $r947 := $r946;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2104_Then, anon2104_Else;

  anon2104_Else:
    assume {:partition} $r947 == $null;
    call $fakelocal_473 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_473;
    return;

  anon2104_Then:
    assume {:partition} $r947 != $null;
    $exception := $exception;
    goto anon1425;

  anon1425:
    call i511, $exception := java.lang.Integer$intValue$($r947);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r948, $exception := java.lang.Integer$valueOf$int(i510);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i239 := 7 + i511;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r949, $exception := java.lang.Integer$valueOf$int($i239);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r950, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r948, $r949);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2105_Then, anon2105_Else;

  anon2105_Else:
    assume {:partition} !($heap[$r950, $type] <: java.lang.Integer);
    call $fakelocal_474 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_474;
    return;

  anon2105_Then:
    assume {:partition} $heap[$r950, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1428;

  anon1428:
    $r951 := $r950;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2106_Then, anon2106_Else;

  anon2106_Else:
    assume {:partition} $r951 == $null;
    call $fakelocal_475 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_475;
    return;

  anon2106_Then:
    assume {:partition} $r951 != $null;
    $exception := $exception;
    goto anon1431;

  anon1431:
    call i512, $exception := java.lang.Integer$intValue$($r951);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r952, $exception := java.lang.Integer$valueOf$int(i511);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i240 := 8 + i512;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r953, $exception := java.lang.Integer$valueOf$int($i240);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r954, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r952, $r953);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2107_Then, anon2107_Else;

  anon2107_Else:
    assume {:partition} !($heap[$r954, $type] <: java.lang.Integer);
    call $fakelocal_476 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_476;
    return;

  anon2107_Then:
    assume {:partition} $heap[$r954, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1434;

  anon1434:
    $r955 := $r954;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2108_Then, anon2108_Else;

  anon2108_Else:
    assume {:partition} $r955 == $null;
    call $fakelocal_477 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_477;
    return;

  anon2108_Then:
    assume {:partition} $r955 != $null;
    $exception := $exception;
    goto anon1437;

  anon1437:
    call i513, $exception := java.lang.Integer$intValue$($r955);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r956, $exception := java.lang.Integer$valueOf$int(i512);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i241 := 9 + i513;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r957, $exception := java.lang.Integer$valueOf$int($i241);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r958, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r956, $r957);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2109_Then, anon2109_Else;

  anon2109_Else:
    assume {:partition} !($heap[$r958, $type] <: java.lang.Integer);
    call $fakelocal_478 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_478;
    return;

  anon2109_Then:
    assume {:partition} $heap[$r958, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1440;

  anon1440:
    $r959 := $r958;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2110_Then, anon2110_Else;

  anon2110_Else:
    assume {:partition} $r959 == $null;
    call $fakelocal_479 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_479;
    return;

  anon2110_Then:
    assume {:partition} $r959 != $null;
    $exception := $exception;
    goto anon1443;

  anon1443:
    call i514, $exception := java.lang.Integer$intValue$($r959);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r960, $exception := java.lang.Integer$valueOf$int(i513);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    $i242 := 10 + i514;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r961, $exception := java.lang.Integer$valueOf$int($i242);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    call $r962, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r960, $r961);
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2111_Then, anon2111_Else;

  anon2111_Else:
    assume {:partition} !($heap[$r962, $type] <: java.lang.Integer);
    call $fakelocal_480 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_480;
    return;

  anon2111_Then:
    assume {:partition} $heap[$r962, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1446;

  anon1446:
    $r963 := $r962;
    assert {:sourceloc "Sanity.java", 30, -1, -1, -1} true;
    goto anon2112_Then, anon2112_Else;

  anon2112_Else:
    assume {:partition} $r963 == $null;
    call $fakelocal_481 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_481;
    return;

  anon2112_Then:
    assume {:partition} $r963 != $null;
    $exception := $exception;
    goto anon1449;

  anon1449:
    call i515, $exception := java.lang.Integer$intValue$($r963);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r964, $exception := java.lang.Integer$valueOf$int(i514);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i243 := 1 + i515;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r965, $exception := java.lang.Integer$valueOf$int($i243);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r966, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r964, $r965);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2113_Then, anon2113_Else;

  anon2113_Else:
    assume {:partition} !($heap[$r966, $type] <: java.lang.Integer);
    call $fakelocal_482 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_482;
    return;

  anon2113_Then:
    assume {:partition} $heap[$r966, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1452;

  anon1452:
    $r967 := $r966;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2114_Then, anon2114_Else;

  anon2114_Else:
    assume {:partition} $r967 == $null;
    call $fakelocal_483 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_483;
    return;

  anon2114_Then:
    assume {:partition} $r967 != $null;
    $exception := $exception;
    goto anon1455;

  anon1455:
    call i516, $exception := java.lang.Integer$intValue$($r967);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r968, $exception := java.lang.Integer$valueOf$int(i515);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i244 := 2 + i516;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r969, $exception := java.lang.Integer$valueOf$int($i244);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r970, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r968, $r969);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2115_Then, anon2115_Else;

  anon2115_Else:
    assume {:partition} !($heap[$r970, $type] <: java.lang.Integer);
    call $fakelocal_484 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_484;
    return;

  anon2115_Then:
    assume {:partition} $heap[$r970, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1458;

  anon1458:
    $r971 := $r970;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2116_Then, anon2116_Else;

  anon2116_Else:
    assume {:partition} $r971 == $null;
    call $fakelocal_485 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_485;
    return;

  anon2116_Then:
    assume {:partition} $r971 != $null;
    $exception := $exception;
    goto anon1461;

  anon1461:
    call i517, $exception := java.lang.Integer$intValue$($r971);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r972, $exception := java.lang.Integer$valueOf$int(i516);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i245 := 3 + i517;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r973, $exception := java.lang.Integer$valueOf$int($i245);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r974, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r972, $r973);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2117_Then, anon2117_Else;

  anon2117_Else:
    assume {:partition} !($heap[$r974, $type] <: java.lang.Integer);
    call $fakelocal_486 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_486;
    return;

  anon2117_Then:
    assume {:partition} $heap[$r974, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1464;

  anon1464:
    $r975 := $r974;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2118_Then, anon2118_Else;

  anon2118_Else:
    assume {:partition} $r975 == $null;
    call $fakelocal_487 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_487;
    return;

  anon2118_Then:
    assume {:partition} $r975 != $null;
    $exception := $exception;
    goto anon1467;

  anon1467:
    call i518, $exception := java.lang.Integer$intValue$($r975);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r976, $exception := java.lang.Integer$valueOf$int(i517);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i246 := 4 + i518;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r977, $exception := java.lang.Integer$valueOf$int($i246);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r978, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r976, $r977);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2119_Then, anon2119_Else;

  anon2119_Else:
    assume {:partition} !($heap[$r978, $type] <: java.lang.Integer);
    call $fakelocal_488 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_488;
    return;

  anon2119_Then:
    assume {:partition} $heap[$r978, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1470;

  anon1470:
    $r979 := $r978;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2120_Then, anon2120_Else;

  anon2120_Else:
    assume {:partition} $r979 == $null;
    call $fakelocal_489 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_489;
    return;

  anon2120_Then:
    assume {:partition} $r979 != $null;
    $exception := $exception;
    goto anon1473;

  anon1473:
    call i519, $exception := java.lang.Integer$intValue$($r979);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r980, $exception := java.lang.Integer$valueOf$int(i518);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i247 := 5 + i519;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r981, $exception := java.lang.Integer$valueOf$int($i247);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r982, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r980, $r981);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2121_Then, anon2121_Else;

  anon2121_Else:
    assume {:partition} !($heap[$r982, $type] <: java.lang.Integer);
    call $fakelocal_490 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_490;
    return;

  anon2121_Then:
    assume {:partition} $heap[$r982, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1476;

  anon1476:
    $r983 := $r982;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2122_Then, anon2122_Else;

  anon2122_Else:
    assume {:partition} $r983 == $null;
    call $fakelocal_491 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_491;
    return;

  anon2122_Then:
    assume {:partition} $r983 != $null;
    $exception := $exception;
    goto anon1479;

  anon1479:
    call i520, $exception := java.lang.Integer$intValue$($r983);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r984, $exception := java.lang.Integer$valueOf$int(i519);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i248 := 6 + i520;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r985, $exception := java.lang.Integer$valueOf$int($i248);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r986, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r984, $r985);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2123_Then, anon2123_Else;

  anon2123_Else:
    assume {:partition} !($heap[$r986, $type] <: java.lang.Integer);
    call $fakelocal_492 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_492;
    return;

  anon2123_Then:
    assume {:partition} $heap[$r986, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1482;

  anon1482:
    $r987 := $r986;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2124_Then, anon2124_Else;

  anon2124_Else:
    assume {:partition} $r987 == $null;
    call $fakelocal_493 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_493;
    return;

  anon2124_Then:
    assume {:partition} $r987 != $null;
    $exception := $exception;
    goto anon1485;

  anon1485:
    call i521, $exception := java.lang.Integer$intValue$($r987);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r988, $exception := java.lang.Integer$valueOf$int(i520);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i249 := 7 + i521;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r989, $exception := java.lang.Integer$valueOf$int($i249);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r990, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r988, $r989);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2125_Then, anon2125_Else;

  anon2125_Else:
    assume {:partition} !($heap[$r990, $type] <: java.lang.Integer);
    call $fakelocal_494 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_494;
    return;

  anon2125_Then:
    assume {:partition} $heap[$r990, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1488;

  anon1488:
    $r991 := $r990;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2126_Then, anon2126_Else;

  anon2126_Else:
    assume {:partition} $r991 == $null;
    call $fakelocal_495 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_495;
    return;

  anon2126_Then:
    assume {:partition} $r991 != $null;
    $exception := $exception;
    goto anon1491;

  anon1491:
    call i522, $exception := java.lang.Integer$intValue$($r991);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r992, $exception := java.lang.Integer$valueOf$int(i521);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i250 := 8 + i522;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r993, $exception := java.lang.Integer$valueOf$int($i250);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r994, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r992, $r993);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2127_Then, anon2127_Else;

  anon2127_Else:
    assume {:partition} !($heap[$r994, $type] <: java.lang.Integer);
    call $fakelocal_496 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_496;
    return;

  anon2127_Then:
    assume {:partition} $heap[$r994, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1494;

  anon1494:
    $r995 := $r994;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2128_Then, anon2128_Else;

  anon2128_Else:
    assume {:partition} $r995 == $null;
    call $fakelocal_497 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_497;
    return;

  anon2128_Then:
    assume {:partition} $r995 != $null;
    $exception := $exception;
    goto anon1497;

  anon1497:
    call i523, $exception := java.lang.Integer$intValue$($r995);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r996, $exception := java.lang.Integer$valueOf$int(i522);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i251 := 9 + i523;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r997, $exception := java.lang.Integer$valueOf$int($i251);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r998, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r996, $r997);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2129_Then, anon2129_Else;

  anon2129_Else:
    assume {:partition} !($heap[$r998, $type] <: java.lang.Integer);
    call $fakelocal_498 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_498;
    return;

  anon2129_Then:
    assume {:partition} $heap[$r998, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1500;

  anon1500:
    $r999 := $r998;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2130_Then, anon2130_Else;

  anon2130_Else:
    assume {:partition} $r999 == $null;
    call $fakelocal_499 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_499;
    return;

  anon2130_Then:
    assume {:partition} $r999 != $null;
    $exception := $exception;
    goto anon1503;

  anon1503:
    call i524, $exception := java.lang.Integer$intValue$($r999);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1000, $exception := java.lang.Integer$valueOf$int(i523);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i252 := 10 + i524;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1001, $exception := java.lang.Integer$valueOf$int($i252);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1002, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1000, $r1001);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2131_Then, anon2131_Else;

  anon2131_Else:
    assume {:partition} !($heap[$r1002, $type] <: java.lang.Integer);
    call $fakelocal_500 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_500;
    return;

  anon2131_Then:
    assume {:partition} $heap[$r1002, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1506;

  anon1506:
    $r1003 := $r1002;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2132_Then, anon2132_Else;

  anon2132_Else:
    assume {:partition} $r1003 == $null;
    call $fakelocal_501 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_501;
    return;

  anon2132_Then:
    assume {:partition} $r1003 != $null;
    $exception := $exception;
    goto anon1509;

  anon1509:
    call i525, $exception := java.lang.Integer$intValue$($r1003);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1004, $exception := java.lang.Integer$valueOf$int(i524);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i253 := 1 + i525;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1005, $exception := java.lang.Integer$valueOf$int($i253);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1006, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1004, $r1005);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2133_Then, anon2133_Else;

  anon2133_Else:
    assume {:partition} !($heap[$r1006, $type] <: java.lang.Integer);
    call $fakelocal_502 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_502;
    return;

  anon2133_Then:
    assume {:partition} $heap[$r1006, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1512;

  anon1512:
    $r1007 := $r1006;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2134_Then, anon2134_Else;

  anon2134_Else:
    assume {:partition} $r1007 == $null;
    call $fakelocal_503 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_503;
    return;

  anon2134_Then:
    assume {:partition} $r1007 != $null;
    $exception := $exception;
    goto anon1515;

  anon1515:
    call i526, $exception := java.lang.Integer$intValue$($r1007);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1008, $exception := java.lang.Integer$valueOf$int(i525);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i254 := 2 + i526;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1009, $exception := java.lang.Integer$valueOf$int($i254);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1010, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1008, $r1009);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2135_Then, anon2135_Else;

  anon2135_Else:
    assume {:partition} !($heap[$r1010, $type] <: java.lang.Integer);
    call $fakelocal_504 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_504;
    return;

  anon2135_Then:
    assume {:partition} $heap[$r1010, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1518;

  anon1518:
    $r1011 := $r1010;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2136_Then, anon2136_Else;

  anon2136_Else:
    assume {:partition} $r1011 == $null;
    call $fakelocal_505 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_505;
    return;

  anon2136_Then:
    assume {:partition} $r1011 != $null;
    $exception := $exception;
    goto anon1521;

  anon1521:
    call i527, $exception := java.lang.Integer$intValue$($r1011);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1012, $exception := java.lang.Integer$valueOf$int(i526);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i255 := 3 + i527;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1013, $exception := java.lang.Integer$valueOf$int($i255);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1014, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1012, $r1013);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2137_Then, anon2137_Else;

  anon2137_Else:
    assume {:partition} !($heap[$r1014, $type] <: java.lang.Integer);
    call $fakelocal_506 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_506;
    return;

  anon2137_Then:
    assume {:partition} $heap[$r1014, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1524;

  anon1524:
    $r1015 := $r1014;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2138_Then, anon2138_Else;

  anon2138_Else:
    assume {:partition} $r1015 == $null;
    call $fakelocal_507 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_507;
    return;

  anon2138_Then:
    assume {:partition} $r1015 != $null;
    $exception := $exception;
    goto anon1527;

  anon1527:
    call i528, $exception := java.lang.Integer$intValue$($r1015);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1016, $exception := java.lang.Integer$valueOf$int(i527);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i256 := 4 + i528;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1017, $exception := java.lang.Integer$valueOf$int($i256);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1018, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1016, $r1017);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2139_Then, anon2139_Else;

  anon2139_Else:
    assume {:partition} !($heap[$r1018, $type] <: java.lang.Integer);
    call $fakelocal_508 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_508;
    return;

  anon2139_Then:
    assume {:partition} $heap[$r1018, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1530;

  anon1530:
    $r1019 := $r1018;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2140_Then, anon2140_Else;

  anon2140_Else:
    assume {:partition} $r1019 == $null;
    call $fakelocal_509 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_509;
    return;

  anon2140_Then:
    assume {:partition} $r1019 != $null;
    $exception := $exception;
    goto anon1533;

  anon1533:
    call i529, $exception := java.lang.Integer$intValue$($r1019);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1020, $exception := java.lang.Integer$valueOf$int(i528);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i257 := 5 + i529;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1021, $exception := java.lang.Integer$valueOf$int($i257);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1022, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1020, $r1021);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2141_Then, anon2141_Else;

  anon2141_Else:
    assume {:partition} !($heap[$r1022, $type] <: java.lang.Integer);
    call $fakelocal_510 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_510;
    return;

  anon2141_Then:
    assume {:partition} $heap[$r1022, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1536;

  anon1536:
    $r1023 := $r1022;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2142_Then, anon2142_Else;

  anon2142_Else:
    assume {:partition} $r1023 == $null;
    call $fakelocal_511 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_511;
    return;

  anon2142_Then:
    assume {:partition} $r1023 != $null;
    $exception := $exception;
    goto anon1539;

  anon1539:
    call i530, $exception := java.lang.Integer$intValue$($r1023);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1024, $exception := java.lang.Integer$valueOf$int(i529);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i258 := 6 + i530;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1025, $exception := java.lang.Integer$valueOf$int($i258);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1026, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1024, $r1025);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2143_Then, anon2143_Else;

  anon2143_Else:
    assume {:partition} !($heap[$r1026, $type] <: java.lang.Integer);
    call $fakelocal_512 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_512;
    return;

  anon2143_Then:
    assume {:partition} $heap[$r1026, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1542;

  anon1542:
    $r1027 := $r1026;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2144_Then, anon2144_Else;

  anon2144_Else:
    assume {:partition} $r1027 == $null;
    call $fakelocal_513 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_513;
    return;

  anon2144_Then:
    assume {:partition} $r1027 != $null;
    $exception := $exception;
    goto anon1545;

  anon1545:
    call i531, $exception := java.lang.Integer$intValue$($r1027);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1028, $exception := java.lang.Integer$valueOf$int(i530);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i259 := 7 + i531;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1029, $exception := java.lang.Integer$valueOf$int($i259);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1030, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1028, $r1029);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2145_Then, anon2145_Else;

  anon2145_Else:
    assume {:partition} !($heap[$r1030, $type] <: java.lang.Integer);
    call $fakelocal_514 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_514;
    return;

  anon2145_Then:
    assume {:partition} $heap[$r1030, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1548;

  anon1548:
    $r1031 := $r1030;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2146_Then, anon2146_Else;

  anon2146_Else:
    assume {:partition} $r1031 == $null;
    call $fakelocal_515 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_515;
    return;

  anon2146_Then:
    assume {:partition} $r1031 != $null;
    $exception := $exception;
    goto anon1551;

  anon1551:
    call i532, $exception := java.lang.Integer$intValue$($r1031);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1032, $exception := java.lang.Integer$valueOf$int(i531);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i260 := 8 + i532;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1033, $exception := java.lang.Integer$valueOf$int($i260);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1034, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1032, $r1033);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2147_Then, anon2147_Else;

  anon2147_Else:
    assume {:partition} !($heap[$r1034, $type] <: java.lang.Integer);
    call $fakelocal_516 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_516;
    return;

  anon2147_Then:
    assume {:partition} $heap[$r1034, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1554;

  anon1554:
    $r1035 := $r1034;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2148_Then, anon2148_Else;

  anon2148_Else:
    assume {:partition} $r1035 == $null;
    call $fakelocal_517 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_517;
    return;

  anon2148_Then:
    assume {:partition} $r1035 != $null;
    $exception := $exception;
    goto anon1557;

  anon1557:
    call i533, $exception := java.lang.Integer$intValue$($r1035);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1036, $exception := java.lang.Integer$valueOf$int(i532);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i261 := 9 + i533;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1037, $exception := java.lang.Integer$valueOf$int($i261);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1038, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1036, $r1037);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2149_Then, anon2149_Else;

  anon2149_Else:
    assume {:partition} !($heap[$r1038, $type] <: java.lang.Integer);
    call $fakelocal_518 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_518;
    return;

  anon2149_Then:
    assume {:partition} $heap[$r1038, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1560;

  anon1560:
    $r1039 := $r1038;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2150_Then, anon2150_Else;

  anon2150_Else:
    assume {:partition} $r1039 == $null;
    call $fakelocal_519 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_519;
    return;

  anon2150_Then:
    assume {:partition} $r1039 != $null;
    $exception := $exception;
    goto anon1563;

  anon1563:
    call i534, $exception := java.lang.Integer$intValue$($r1039);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1040, $exception := java.lang.Integer$valueOf$int(i533);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i262 := 10 + i534;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1041, $exception := java.lang.Integer$valueOf$int($i262);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1042, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1040, $r1041);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2151_Then, anon2151_Else;

  anon2151_Else:
    assume {:partition} !($heap[$r1042, $type] <: java.lang.Integer);
    call $fakelocal_520 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_520;
    return;

  anon2151_Then:
    assume {:partition} $heap[$r1042, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1566;

  anon1566:
    $r1043 := $r1042;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2152_Then, anon2152_Else;

  anon2152_Else:
    assume {:partition} $r1043 == $null;
    call $fakelocal_521 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_521;
    return;

  anon2152_Then:
    assume {:partition} $r1043 != $null;
    $exception := $exception;
    goto anon1569;

  anon1569:
    call i535, $exception := java.lang.Integer$intValue$($r1043);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1044, $exception := java.lang.Integer$valueOf$int(i534);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i263 := 1 + i535;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1045, $exception := java.lang.Integer$valueOf$int($i263);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1046, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1044, $r1045);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2153_Then, anon2153_Else;

  anon2153_Else:
    assume {:partition} !($heap[$r1046, $type] <: java.lang.Integer);
    call $fakelocal_522 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_522;
    return;

  anon2153_Then:
    assume {:partition} $heap[$r1046, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1572;

  anon1572:
    $r1047 := $r1046;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2154_Then, anon2154_Else;

  anon2154_Else:
    assume {:partition} $r1047 == $null;
    call $fakelocal_523 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_523;
    return;

  anon2154_Then:
    assume {:partition} $r1047 != $null;
    $exception := $exception;
    goto anon1575;

  anon1575:
    call i536, $exception := java.lang.Integer$intValue$($r1047);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1048, $exception := java.lang.Integer$valueOf$int(i535);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i264 := 2 + i536;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1049, $exception := java.lang.Integer$valueOf$int($i264);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1050, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1048, $r1049);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2155_Then, anon2155_Else;

  anon2155_Else:
    assume {:partition} !($heap[$r1050, $type] <: java.lang.Integer);
    call $fakelocal_524 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_524;
    return;

  anon2155_Then:
    assume {:partition} $heap[$r1050, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1578;

  anon1578:
    $r1051 := $r1050;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2156_Then, anon2156_Else;

  anon2156_Else:
    assume {:partition} $r1051 == $null;
    call $fakelocal_525 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_525;
    return;

  anon2156_Then:
    assume {:partition} $r1051 != $null;
    $exception := $exception;
    goto anon1581;

  anon1581:
    call i537, $exception := java.lang.Integer$intValue$($r1051);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1052, $exception := java.lang.Integer$valueOf$int(i536);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i265 := 3 + i537;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1053, $exception := java.lang.Integer$valueOf$int($i265);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1054, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1052, $r1053);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2157_Then, anon2157_Else;

  anon2157_Else:
    assume {:partition} !($heap[$r1054, $type] <: java.lang.Integer);
    call $fakelocal_526 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_526;
    return;

  anon2157_Then:
    assume {:partition} $heap[$r1054, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1584;

  anon1584:
    $r1055 := $r1054;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2158_Then, anon2158_Else;

  anon2158_Else:
    assume {:partition} $r1055 == $null;
    call $fakelocal_527 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_527;
    return;

  anon2158_Then:
    assume {:partition} $r1055 != $null;
    $exception := $exception;
    goto anon1587;

  anon1587:
    call i538, $exception := java.lang.Integer$intValue$($r1055);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1056, $exception := java.lang.Integer$valueOf$int(i537);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i266 := 4 + i538;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1057, $exception := java.lang.Integer$valueOf$int($i266);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1058, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1056, $r1057);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2159_Then, anon2159_Else;

  anon2159_Else:
    assume {:partition} !($heap[$r1058, $type] <: java.lang.Integer);
    call $fakelocal_528 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_528;
    return;

  anon2159_Then:
    assume {:partition} $heap[$r1058, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1590;

  anon1590:
    $r1059 := $r1058;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2160_Then, anon2160_Else;

  anon2160_Else:
    assume {:partition} $r1059 == $null;
    call $fakelocal_529 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_529;
    return;

  anon2160_Then:
    assume {:partition} $r1059 != $null;
    $exception := $exception;
    goto anon1593;

  anon1593:
    call i539, $exception := java.lang.Integer$intValue$($r1059);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1060, $exception := java.lang.Integer$valueOf$int(i538);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i267 := 5 + i539;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1061, $exception := java.lang.Integer$valueOf$int($i267);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1062, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1060, $r1061);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2161_Then, anon2161_Else;

  anon2161_Else:
    assume {:partition} !($heap[$r1062, $type] <: java.lang.Integer);
    call $fakelocal_530 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_530;
    return;

  anon2161_Then:
    assume {:partition} $heap[$r1062, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1596;

  anon1596:
    $r1063 := $r1062;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2162_Then, anon2162_Else;

  anon2162_Else:
    assume {:partition} $r1063 == $null;
    call $fakelocal_531 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_531;
    return;

  anon2162_Then:
    assume {:partition} $r1063 != $null;
    $exception := $exception;
    goto anon1599;

  anon1599:
    call i540, $exception := java.lang.Integer$intValue$($r1063);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1064, $exception := java.lang.Integer$valueOf$int(i539);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i268 := 6 + i540;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1065, $exception := java.lang.Integer$valueOf$int($i268);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1066, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1064, $r1065);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2163_Then, anon2163_Else;

  anon2163_Else:
    assume {:partition} !($heap[$r1066, $type] <: java.lang.Integer);
    call $fakelocal_532 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_532;
    return;

  anon2163_Then:
    assume {:partition} $heap[$r1066, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1602;

  anon1602:
    $r1067 := $r1066;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2164_Then, anon2164_Else;

  anon2164_Else:
    assume {:partition} $r1067 == $null;
    call $fakelocal_533 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_533;
    return;

  anon2164_Then:
    assume {:partition} $r1067 != $null;
    $exception := $exception;
    goto anon1605;

  anon1605:
    call i541, $exception := java.lang.Integer$intValue$($r1067);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1068, $exception := java.lang.Integer$valueOf$int(i540);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i269 := 7 + i541;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1069, $exception := java.lang.Integer$valueOf$int($i269);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1070, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1068, $r1069);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2165_Then, anon2165_Else;

  anon2165_Else:
    assume {:partition} !($heap[$r1070, $type] <: java.lang.Integer);
    call $fakelocal_534 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_534;
    return;

  anon2165_Then:
    assume {:partition} $heap[$r1070, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1608;

  anon1608:
    $r1071 := $r1070;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2166_Then, anon2166_Else;

  anon2166_Else:
    assume {:partition} $r1071 == $null;
    call $fakelocal_535 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_535;
    return;

  anon2166_Then:
    assume {:partition} $r1071 != $null;
    $exception := $exception;
    goto anon1611;

  anon1611:
    call i542, $exception := java.lang.Integer$intValue$($r1071);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1072, $exception := java.lang.Integer$valueOf$int(i541);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i270 := 8 + i542;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1073, $exception := java.lang.Integer$valueOf$int($i270);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1074, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1072, $r1073);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2167_Then, anon2167_Else;

  anon2167_Else:
    assume {:partition} !($heap[$r1074, $type] <: java.lang.Integer);
    call $fakelocal_536 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_536;
    return;

  anon2167_Then:
    assume {:partition} $heap[$r1074, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1614;

  anon1614:
    $r1075 := $r1074;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2168_Then, anon2168_Else;

  anon2168_Else:
    assume {:partition} $r1075 == $null;
    call $fakelocal_537 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_537;
    return;

  anon2168_Then:
    assume {:partition} $r1075 != $null;
    $exception := $exception;
    goto anon1617;

  anon1617:
    call i543, $exception := java.lang.Integer$intValue$($r1075);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1076, $exception := java.lang.Integer$valueOf$int(i542);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i271 := 9 + i543;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1077, $exception := java.lang.Integer$valueOf$int($i271);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1078, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1076, $r1077);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2169_Then, anon2169_Else;

  anon2169_Else:
    assume {:partition} !($heap[$r1078, $type] <: java.lang.Integer);
    call $fakelocal_538 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_538;
    return;

  anon2169_Then:
    assume {:partition} $heap[$r1078, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1620;

  anon1620:
    $r1079 := $r1078;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2170_Then, anon2170_Else;

  anon2170_Else:
    assume {:partition} $r1079 == $null;
    call $fakelocal_539 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_539;
    return;

  anon2170_Then:
    assume {:partition} $r1079 != $null;
    $exception := $exception;
    goto anon1623;

  anon1623:
    call i544, $exception := java.lang.Integer$intValue$($r1079);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1080, $exception := java.lang.Integer$valueOf$int(i543);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    $i272 := 10 + i544;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1081, $exception := java.lang.Integer$valueOf$int($i272);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    call $r1082, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r1080, $r1081);
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2171_Then, anon2171_Else;

  anon2171_Else:
    assume {:partition} !($heap[$r1082, $type] <: java.lang.Integer);
    call $fakelocal_540 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_540;
    return;

  anon2171_Then:
    assume {:partition} $heap[$r1082, $type] <: java.lang.Integer;
    $exception := $exception;
    goto anon1626;

  anon1626:
    $r1083 := $r1082;
    assert {:sourceloc "Sanity.java", 31, -1, -1, -1} true;
    goto anon2172_Then, anon2172_Else;

  anon2172_Else:
    assume {:partition} $r1083 == $null;
    call $fakelocal_541 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_541;
    return;

  anon2172_Then:
    assume {:partition} $r1083 != $null;
    $exception := $exception;
    goto anon1629;

  anon1629:
    call $fakelocal_542, $exception := java.lang.Integer$intValue$($r1083);
    assert {:sourceloc "Sanity.java", 33, -1, -1, -1} true;
    $return := 0;
    goto block61;

  block61:
    return;

  anon1630_Then:
    assume {:partition} i0 <= 0;
    assert {:sourceloc "Sanity.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    goto block59;

  block59:
    assert {:sourceloc "Sanity.java", 21, -1, -1, -1} true;
    $z2 := 0;
    goto block60;
}



implementation Sanity$sanity_safe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $r5: ref;
  var $r0: ref;
  var $fakelocal_1: ref;
  var $fakelocal_0: ref;
  var i3: int;
  var $r3: ref;
  var $fakelocal_2: ref;
  var i0: int;
  var $r1: ref;
  var i1: int;
  var $r6: ref;
  var i2: int;
  var $fakelocal_4: ref;
  var $r2: ref;
  var $r4: ref;
  var $fakelocal_5: ref;
  var $fakelocal_3: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__1;
    assert {:sourceloc "Sanity.java", 50, -1, -1, -1} true;
    $r1 := java.io.PrintStream$java.lang.System$out260;
    assert {:sourceloc "Sanity.java", 50, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r0 := $fakelocal_0;
    assert {:sourceloc "Sanity.java", 50, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r0);
    assert {:sourceloc "Sanity.java", 50, -1, -1, -1} true;
    call $r2, $exception := java.lang.StringBuilder$append$java.lang.String($r0, $StringConst0);
    assert {:sourceloc "Sanity.java", 50, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} $r2 == $null;
    call $fakelocal_1 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon27_Then:
    assume {:partition} $r2 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $r3, $exception := java.lang.StringBuilder$append$int($r2, i0);
    assert {:sourceloc "Sanity.java", 50, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} $r3 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon28_Then:
    assume {:partition} $r3 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    call $r4, $exception := java.lang.StringBuilder$append$java.lang.String($r3, $StringConst1);
    assert {:sourceloc "Sanity.java", 50, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} $r4 == $null;
    call $fakelocal_3 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon29_Then:
    assume {:partition} $r4 != $null;
    $exception := $exception;
    goto anon9;

  anon9:
    call $r5, $exception := java.lang.StringBuilder$append$int($r4, i1);
    assert {:sourceloc "Sanity.java", 50, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} $r5 == $null;
    call $fakelocal_4 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon30_Then:
    assume {:partition} $r5 != $null;
    $exception := $exception;
    goto anon12;

  anon12:
    call $r6, $exception := java.lang.StringBuilder$toString$($r5);
    assert {:sourceloc "Sanity.java", 50, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} $r1 == $null;
    call $fakelocal_5 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon31_Then:
    assume {:partition} $r1 != $null;
    $exception := $exception;
    goto anon15;

  anon15:
    call $exception := java.io.PrintStream$println$java.lang.String($r1, $r6);
    assert {:sourceloc "Sanity.java", 51, -1, -1, -1} true;
    i2 := i1;
    assert {:sourceloc "Sanity.java", 52, -1, -1, -1} true;
    i3 := i1;
    assert {:sourceloc "Sanity.java", 53, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} 0 > i1;
    assert {:sourceloc "Sanity.java", 53, -1, -1, -1} {:comment "elseblock"} true;
    goto anon18;

  anon18:
    assert {:sourceloc "Sanity.java", 56, -1, -1, -1} true;
    $return := 0;
    goto block66;

  block66:
    return;

  anon32_Then:
    assume {:partition} i1 >= 0;
    assert {:sourceloc "Sanity.java", 53, -1, -1, -1} {:comment "thenblock"} true;
    goto block62;

  block62:
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} 0 < i0;
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} {:comment "elseblock"} true;
    goto block64;

  block64:
    call i2 := Sanity$sanity_safe$int_int_loop_block64(i2);
    goto block64_last;

  anon34_Else:
    assume {:partition} 0 < i2;
    assert {:sourceloc "Sanity.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto anon23;

  anon23:
    assert {:sourceloc "Sanity.java", 57, -1, -1, -1} true;
    i2 := i2 + -1;
    assert {:sourceloc "Sanity.java", 57, -1, -1, -1} true;
    goto anon23_dummy;

  anon34_Then:
    assume {:partition} i2 <= 0;
    assert {:sourceloc "Sanity.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block65;

  block65:
    assert {:sourceloc "Sanity.java", 65, -1, -1, -1} true;
    $return := 0;
    goto block66;

  anon33_Then:
    assume {:partition} i0 <= 0;
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} {:comment "thenblock"} true;
    goto block63;

  block63:
    call i3 := Sanity$sanity_safe$int_int_loop_block63(i3);
    goto block63_last;

  anon35_Else:
    assume {:partition} 0 < i3;
    assert {:sourceloc "Sanity.java", 60, -1, -1, -1} {:comment "elseblock"} true;
    goto anon26;

  anon26:
    assert {:sourceloc "Sanity.java", 61, -1, -1, -1} true;
    i3 := i3 + -1;
    assert {:sourceloc "Sanity.java", 61, -1, -1, -1} true;
    goto anon26_dummy;

  anon35_Then:
    assume {:partition} i3 <= 0;
    assert {:sourceloc "Sanity.java", 60, -1, -1, -1} {:comment "thenblock"} true;
    goto block65;

  anon23_dummy:
    assume false;
    return;

  block64_last:
    assert {:sourceloc "Sanity.java", 56, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon26_dummy:
    assume false;
    return;

  block63_last:
    assert {:sourceloc "Sanity.java", 60, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;
}



implementation Sanity$sanity_unsafe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var i3: int;
  var i0: int;
  var i1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__1;
    assert {:sourceloc "Sanity.java", 69, -1, -1, -1} true;
    i3 := i1;
    assert {:sourceloc "Sanity.java", 71, -1, -1, -1} true;
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} 0 > i1;
    assert {:sourceloc "Sanity.java", 71, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Sanity.java", 74, -1, -1, -1} true;
    $return := 0;
    goto block70;

  block70:
    return;

  anon10_Then:
    assume {:partition} i1 >= 0;
    assert {:sourceloc "Sanity.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block67;

  block67:
    assert {:sourceloc "Sanity.java", 73, -1, -1, -1} true;
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} 0 > i0;
    assert {:sourceloc "Sanity.java", 73, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Sanity.java", 74, -1, -1, -1} true;
    $return := 1;
    goto block70;

  anon11_Then:
    assume {:partition} i0 >= 0;
    assert {:sourceloc "Sanity.java", 73, -1, -1, -1} {:comment "thenblock"} true;
    goto block68;

  block68:
    call i3 := Sanity$sanity_unsafe$int_int_loop_block68(i3);
    goto block68_last;

  anon12_Else:
    assume {:partition} 0 < i3;
    assert {:sourceloc "Sanity.java", 76, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "Sanity.java", 77, -1, -1, -1} true;
    i3 := i3 + -1;
    assert {:sourceloc "Sanity.java", 77, -1, -1, -1} true;
    goto anon9_dummy;

  anon12_Then:
    assume {:partition} i3 <= 0;
    assert {:sourceloc "Sanity.java", 76, -1, -1, -1} {:comment "thenblock"} true;
    goto block69;

  block69:
    assert {:sourceloc "Sanity.java", 80, -1, -1, -1} true;
    $return := 0;
    goto block70;

  anon9_dummy:
    assume false;
    return;

  block68_last:
    assert {:sourceloc "Sanity.java", 76, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block54(in_$return: int, 
    in_$exception: ref, 
    in_i3: int, 
    in_$i2: int, 
    in_r0: ref, 
    in_$fakelocal_1: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_i3: int, 
    out_$i2: int, 
    out_$fakelocal_1: ref)
{

  entry:
    out_$return, out_$exception, out_i3, out_$i2, out_$fakelocal_1 := in_$return, in_$exception, in_i3, in_$i2, in_$fakelocal_1;
    goto block54;

  block54:
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} true;
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !(0 < $arrSizeHeap[in_r0] && 0 >= 0);
    call out_$fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_i3, out_$i2, out_$fakelocal_1 := in_$return, in_$exception, in_i3, in_$i2, in_$fakelocal_1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon12:
    assert {:sourceloc "Sanity.java", 10, -1, -1, -1} true;
    out_i3 := out_i3 + 1;
    assert {:sourceloc "Sanity.java", 10, -1, -1, -1} true;
    goto anon12_dummy;

  anon16_Else:
    assume {:partition} out_$i2 > out_i3;
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon9:
    out_$i2 := $intArrHeap[in_r0][0];
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Then:
    assume {:partition} out_i3 >= out_$i2;
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_i3, out_$i2, out_$fakelocal_1 := in_$return, in_$exception, in_i3, in_$i2, in_$fakelocal_1;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon15_Then:
    assume {:partition} 0 < $arrSizeHeap[in_r0] && 0 >= 0;
    out_$exception := out_$exception;
    goto anon9;

  anon12_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_i3, out_$i2, out_$fakelocal_1 := Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block54(out_$return, out_$exception, out_i3, out_$i2, in_r0, out_$fakelocal_1);
    return;

  exit:
    return;
}



procedure Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block54(in_$return: int, 
    in_$exception: ref, 
    in_i3: int, 
    in_$i2: int, 
    in_r0: ref, 
    in_$fakelocal_1: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_i3: int, 
    out_$i2: int, 
    out_$fakelocal_1: ref);
  modifies $objIndex, $heap;



implementation Sanity$nosecret_safe$int$lp$$rp$_int_loop_block57(in_i0: int, in_i1: int) returns (out_i1: int)
{

  entry:
    out_i1 := in_i1;
    goto block57;

  block57:
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} out_i1 >= in_i0;
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} {:comment "thenblock"} true;
    out_i1 := in_i1;
    return;

  anon6:
    assert {:sourceloc "Sanity.java", 16, -1, -1, -1} true;
    out_i1 := out_i1 + 1;
    assert {:sourceloc "Sanity.java", 16, -1, -1, -1} true;
    goto anon6_dummy;

  anon8_Else:
    assume {:partition} in_i0 > out_i1;
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6_dummy:
    call {:si_unique_call 1} out_i1 := Sanity$nosecret_safe$int$lp$$rp$_int_loop_block57(in_i0, out_i1);
    return;

  exit:
    return;
}



procedure Sanity$nosecret_safe$int$lp$$rp$_int_loop_block57(in_i0: int, in_i1: int) returns (out_i1: int);



implementation Sanity$sanity_safe$int_int_loop_block64(in_i2: int) returns (out_i2: int)
{

  entry:
    out_i2 := in_i2;
    goto block64;

  block64:
    assert {:sourceloc "Sanity.java", 56, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Then:
    assume {:partition} out_i2 <= 0;
    assert {:sourceloc "Sanity.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    out_i2 := in_i2;
    return;

  anon23:
    assert {:sourceloc "Sanity.java", 57, -1, -1, -1} true;
    out_i2 := out_i2 + -1;
    assert {:sourceloc "Sanity.java", 57, -1, -1, -1} true;
    goto anon23_dummy;

  anon34_Else:
    assume {:partition} 0 < out_i2;
    assert {:sourceloc "Sanity.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto anon23;

  anon23_dummy:
    call {:si_unique_call 1} out_i2 := Sanity$sanity_safe$int_int_loop_block64(out_i2);
    return;

  exit:
    return;
}



procedure Sanity$sanity_safe$int_int_loop_block64(in_i2: int) returns (out_i2: int);



implementation Sanity$sanity_safe$int_int_loop_block63(in_i3: int) returns (out_i3: int)
{

  entry:
    out_i3 := in_i3;
    goto block63;

  block63:
    assert {:sourceloc "Sanity.java", 60, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Then:
    assume {:partition} out_i3 <= 0;
    assert {:sourceloc "Sanity.java", 60, -1, -1, -1} {:comment "thenblock"} true;
    out_i3 := in_i3;
    return;

  anon26:
    assert {:sourceloc "Sanity.java", 61, -1, -1, -1} true;
    out_i3 := out_i3 + -1;
    assert {:sourceloc "Sanity.java", 61, -1, -1, -1} true;
    goto anon26_dummy;

  anon35_Else:
    assume {:partition} 0 < out_i3;
    assert {:sourceloc "Sanity.java", 60, -1, -1, -1} {:comment "elseblock"} true;
    goto anon26;

  anon26_dummy:
    call {:si_unique_call 1} out_i3 := Sanity$sanity_safe$int_int_loop_block63(out_i3);
    return;

  exit:
    return;
}



procedure Sanity$sanity_safe$int_int_loop_block63(in_i3: int) returns (out_i3: int);



implementation Sanity$sanity_unsafe$int_int_loop_block68(in_i3: int) returns (out_i3: int)
{

  entry:
    out_i3 := in_i3;
    goto block68;

  block68:
    assert {:sourceloc "Sanity.java", 76, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} out_i3 <= 0;
    assert {:sourceloc "Sanity.java", 76, -1, -1, -1} {:comment "thenblock"} true;
    out_i3 := in_i3;
    return;

  anon9:
    assert {:sourceloc "Sanity.java", 77, -1, -1, -1} true;
    out_i3 := out_i3 + -1;
    assert {:sourceloc "Sanity.java", 77, -1, -1, -1} true;
    goto anon9_dummy;

  anon12_Else:
    assume {:partition} 0 < out_i3;
    assert {:sourceloc "Sanity.java", 76, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9_dummy:
    call {:si_unique_call 1} out_i3 := Sanity$sanity_unsafe$int_int_loop_block68(out_i3);
    return;

  exit:
    return;
}



procedure Sanity$sanity_unsafe$int_int_loop_block68(in_i3: int) returns (out_i3: int);


