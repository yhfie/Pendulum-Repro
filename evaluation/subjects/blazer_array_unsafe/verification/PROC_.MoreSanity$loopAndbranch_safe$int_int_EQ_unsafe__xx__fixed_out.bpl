var fixed.$heap: $heap_type;

var fixed.$intArrayType: javaType;

var fixed.$charArrayType: javaType;

var fixed.$boolArrayType: javaType;

var fixed.$byteArrayType: javaType;

var fixed.$longArrayType: javaType;

var fixed.$arrSizeHeap: [ref]int;

var fixed.$stringSizeHeap: [ref]int;

var fixed.$boolArrHeap: boolArrHeap_type;

var fixed.$refArrHeap: refArrHeap_type;

var fixed.$realArrHeap: realArrHeap_type;

var fixed.$intArrHeap: intArrHeap_type;

var fixed.$objIndex: int;

var fixed.int$java.lang.Integer$value0: Field int;

const unique fixed.$type: Field javaType;

const unique fixed.$alloc: Field bool;

const unique fixed.$null: ref;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.lang.Object: javaType extends complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.io.Serializable: javaType extends complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.lang.Comparable: javaType extends complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.lang.Integer: javaType extends unique fixed.java.lang.Object, fixed.java.io.Serializable, fixed.java.lang.Comparable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.lang.Throwable: javaType extends unique fixed.java.lang.Object, fixed.java.io.Serializable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.lang.Exception: javaType extends unique fixed.java.lang.Throwable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.lang.RuntimeException: javaType extends unique fixed.java.lang.Exception complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.lang.NullPointerException: javaType extends unique fixed.java.lang.RuntimeException complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.lang.ClassCastException: javaType extends unique fixed.java.lang.RuntimeException complete;

const {:sourceloc "MoreSanity.java", -1, -1, -1, -1} unique fixed.MoreSanity: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "MoreSanity.java", -1, -1, -1, -1} unique fixed.sg.edu.nus.comp.tsunami.safe.Safe: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "MoreSanity.java", -1, -1, -1, -1} unique fixed.java.lang.IndexOutOfBoundsException: javaType extends unique fixed.java.lang.RuntimeException complete;

const {:sourceloc "MoreSanity.java", -1, -1, -1, -1} unique fixed.java.lang.ArrayIndexOutOfBoundsException: javaType extends unique fixed.java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "MoreSanity.java", -1, -1, -1, -1} unique fixed.java.lang.Number: javaType extends unique fixed.java.lang.Object, fixed.java.io.Serializable complete;

const {:sourceloc "MoreSanity.java", -1, -1, -1, -1} unique fixed.java.lang.ArithmeticException: javaType extends unique fixed.java.lang.RuntimeException complete;

function fixed.$arrayType(t: javaType) : javaType;

function fixed.$intToReal(x: int) : real;

function fixed.$intToBool(x: int) : bool;

function fixed.$refToBool(x: ref) : bool;

function fixed.$boolToInt(x: bool) : int;

function fixed.$cmpBool(x: bool, y: bool) : int;

function fixed.$cmpRef(x: ref, y: ref) : int;

function fixed.$cmpReal(x: real, y: real) : int;

function fixed.$cmpInt(x: int, y: int) : int;

function fixed.$bitOr(x: int, y: int) : int;

function fixed.$bitAnd(x: int, y: int) : int;

function fixed.$xorInt(x: int, y: int) : int;

function fixed.$shlInt(x: int, y: int) : int;

function fixed.$ushrInt(x: int, y: int) : int;

function fixed.$shrInt(x: int, y: int) : int;

function fixed.$mulInt(x: int, y: int) : int;

function fixed.$divInt(x: int, y: int) : int;

function fixed.$modInt(x: int, y: int) : int;

function fixed.$intToRef(id: int) : ref;

axiom (forall x: int :: 
  { fixed.$intToBool(x): bool } 
  fixed.$intToBool(x): bool <==> (if x == 0 then false else true));

axiom (forall x: ref :: 
  { fixed.$refToBool(x): bool } 
  fixed.$refToBool(x): bool <==> (if x == fixed.$null then false else true));

axiom (forall x: bool :: 
  { fixed.$boolToInt(x): int } 
  fixed.$boolToInt(x): int == (if x <==> true then 1 else 0));

axiom (forall x: real, y: real :: 
  { fixed.$cmpReal(x, y): int } 
  fixed.$cmpReal(x, y): int == (if x > y then 1 else (if x < y then -1 else 0)));

axiom (forall x: int, y: int :: 
  { fixed.$cmpInt(x, y): int } 
  fixed.$cmpInt(x, y): int == (if x > y then 1 else (if x < y then -1 else 0)));

axiom (forall index: int :: fixed.$intToRef(index) != fixed.$null);

axiom (forall i1: int, i2: int :: 
  i1 == i2 <==> fixed.$intToRef(i1) == fixed.$intToRef(i2));

procedure {:prefix "fixed"} fixed.$new(obj_type: javaType) returns ($obj: ref);
  modifies fixed.$objIndex, fixed.$heap;
  free ensures !old(fixed.$heap[$obj, fixed.$alloc]);
  free ensures fixed.$objIndex == old(fixed.$objIndex) + 1;
  free ensures fixed.$heap
   == old(fixed.$heap)[$obj, fixed.$alloc := true][$obj, fixed.$type := obj_type];
  free ensures $obj != fixed.$null;
  free ensures $obj == fixed.$intToRef(old(fixed.$objIndex));



procedure {:prefix "fixed"} fixed.java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  free ensures fixed.$heap[$other, fixed.$alloc] <==> true;
  free ensures $other != fixed.$null;
  free ensures fixed.$heap[$other, fixed.$type] == fixed.$heap[$this, fixed.$type];



procedure {:prefix "fixed"} fixed.int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure {:prefix "fixed"} fixed.java.lang.Integer$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies fixed.$heap;
  free ensures $exception
   == _uf_fixed.java.lang.Integer$$la$init$ra$$int_$exception($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures fixed.$heap
   == _uf_fixed.java.lang.Integer$$la$init$ra$$int_fixed.$heap($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.int$java.lang.Integer$value0));



procedure {:prefix "fixed"} fixed.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);
  free ensures $exception == _uf_fixed.java.lang.Object$$la$init$ra$$_$exception($this);



procedure {:prefix "fixed"} fixed.java.lang.Integer$valueOf$int($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;
  free ensures $return
   == _uf_fixed.java.lang.Integer$valueOf$int_$return($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures $exception
   == _uf_fixed.java.lang.Integer$valueOf$int_$exception($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures fixed.$objIndex
   == _uf_fixed.java.lang.Integer$valueOf$int_fixed.$objIndex($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures fixed.$heap
   == _uf_fixed.java.lang.Integer$valueOf$int_fixed.$heap($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.int$java.lang.Integer$value0));



procedure {:prefix "fixed"} fixed.java.lang.Integer$intValue$($this: ref) returns ($return: int, $exception: ref);
  free ensures $return
   == _uf_fixed.java.lang.Integer$intValue$_$return($this, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures $exception
   == _uf_fixed.java.lang.Integer$intValue$_$exception($this, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.int$java.lang.Integer$value0));



procedure {:prefix "fixed"} fixed.java.lang.Integer$compareTo$java.lang.Integer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;
  free ensures $return
   == _uf_fixed.java.lang.Integer$compareTo$java.lang.Integer_$return($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.int$java.lang.Integer$value0), 
    old(fixed.$objIndex));
  free ensures $exception
   == _uf_fixed.java.lang.Integer$compareTo$java.lang.Integer_$exception($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.int$java.lang.Integer$value0), 
    old(fixed.$objIndex));
  free ensures fixed.$objIndex
   == _uf_fixed.java.lang.Integer$compareTo$java.lang.Integer_fixed.$objIndex($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.int$java.lang.Integer$value0), 
    old(fixed.$objIndex));
  free ensures fixed.$heap
   == _uf_fixed.java.lang.Integer$compareTo$java.lang.Integer_fixed.$heap($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.int$java.lang.Integer$value0), 
    old(fixed.$objIndex));



procedure {:prefix "fixed"} fixed.java.lang.Integer$compareTo$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;
  free ensures $return
   == _uf_fixed.java.lang.Integer$compareTo$java.lang.Object_$return($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures $exception
   == _uf_fixed.java.lang.Integer$compareTo$java.lang.Object_$exception($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures fixed.$objIndex
   == _uf_fixed.java.lang.Integer$compareTo$java.lang.Object_fixed.$objIndex($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures fixed.$heap
   == _uf_fixed.java.lang.Integer$compareTo$java.lang.Object_fixed.$heap($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.int$java.lang.Integer$value0));



procedure {:prefix "fixed"} fixed.MoreSanity$$la$init$ra$$($this: ref) returns ($exception: ref);
  free ensures $exception
   == _uf_fixed.MoreSanity$$la$init$ra$$_$exception($this, old(fixed.$heap), old(fixed.$arrSizeHeap), old(fixed.$stringSizeHeap));



procedure {:prefix "fixed"} fixed.MoreSanity$array_unsafe$int$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref);
  free requires fixed.$arrSizeHeap[$in_parameter__0] > 0;
  free requires $in_parameter__0 != fixed.$null;
  modifies fixed.$objIndex, fixed.$heap;
  free ensures $return
   == _uf_fixed.MoreSanity$array_unsafe$int$lp$$rp$_int_$return($in_parameter__0, 
    $in_parameter__1, 
    old(fixed.$arrSizeHeap), 
    old(fixed.$heap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures $exception
   == _uf_fixed.MoreSanity$array_unsafe$int$lp$$rp$_int_$exception($in_parameter__0, 
    $in_parameter__1, 
    old(fixed.$arrSizeHeap), 
    old(fixed.$heap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures fixed.$objIndex
   == _uf_fixed.MoreSanity$array_unsafe$int$lp$$rp$_int_fixed.$objIndex($in_parameter__0, 
    $in_parameter__1, 
    old(fixed.$arrSizeHeap), 
    old(fixed.$heap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures fixed.$heap
   == _uf_fixed.MoreSanity$array_unsafe$int$lp$$rp$_int_fixed.$heap($in_parameter__0, 
    $in_parameter__1, 
    old(fixed.$arrSizeHeap), 
    old(fixed.$heap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap), 
    old(fixed.int$java.lang.Integer$value0));



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);



procedure {:inline 1} fixed.MoreSanity$loopAndbranch_safe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);
  free ensures $return
   == _uf_fixed.MoreSanity$loopAndbranch_safe$int_int_$return($in_parameter__0, 
    $in_parameter__1, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap));
  free ensures $exception
   == _uf_fixed.MoreSanity$loopAndbranch_safe$int_int_$exception($in_parameter__0, 
    $in_parameter__1, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap));



procedure {:prefix "fixed"} fixed.MoreSanity$loopAndbranch_unsafe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0: int) returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9(in_$return: int, 
    in_$exception: ref, 
    in_$r7: ref, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_2: ref, 
    in_i7: int, 
    in_i6: int, 
    in_$fakelocal_1: ref, 
    in_$r5: ref, 
    in_r0: ref, 
    in_$r8: ref, 
    in_z0: int, 
    in_$i5: int, 
    in_$r6: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$r7: ref, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_2: ref, 
    out_i7: int, 
    out_i6: int, 
    out_$fakelocal_1: ref, 
    out_$r5: ref, 
    out_$r8: ref, 
    out_$i5: int, 
    out_$r6: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "fixed"} fixed.MoreSanity$loopAndbranch_safe$int_int_loop_block13(in_i2: int) returns (out_i2: int);



procedure {:prefix "fixed"} fixed.MoreSanity$loopAndbranch_safe$int_int_loop_block16(in_i4: int) returns (out_i4: int);



procedure {:prefix "fixed"} fixed.MoreSanity$loopAndbranch_safe$int_int_loop_block18(in_i5: int) returns (out_i5: int);



procedure {:prefix "fixed"} fixed.MoreSanity$loopAndbranch_unsafe$int_int_loop_block21(in_i2: int) returns (out_i2: int);



procedure {:prefix "fixed"} fixed.MoreSanity$loopAndbranch_unsafe$int_int_loop_block24(in_i4: int) returns (out_i4: int);



procedure {:prefix "fixed"} fixed.MoreSanity$loopAndbranch_unsafe$int_int_loop_block26(in_i5: int) returns (out_i5: int);



implementation fixed.java.lang.Integer$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var r0: ref;
  var i0: int;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$java.lang.Object$$la$init$ra$$$0$$this := r0;
    havoc inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    $exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Integer.java", 9, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[r0, fixed.int$java.lang.Integer$value0 := i0];
    assert {:sourceloc "Integer.java", 10, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation fixed.java.lang.Integer$valueOf$int($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var $r0: ref;
  var i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$0$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$return, fixed.$type] <: fixed.java.lang.Integer;
    $exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    call $fakelocal_0 := fixed.$new(fixed.java.lang.Integer);
    $r0 := $fakelocal_0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$Entry;

  inline$java.lang.Integer$$la$init$ra$$int$0$Entry:
    inline$java.lang.Integer$$la$init$ra$$int$0$$this := $r0;
    inline$java.lang.Integer$$la$init$ra$$int$0$$in_parameter__0 := i0;
    havoc inline$java.lang.Integer$$la$init$ra$$int$0$r0, inline$java.lang.Integer$$la$init$ra$$int$0$i0, inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
    inline$java.lang.Integer$$la$init$ra$$int$0$$heap := fixed.$heap;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$anon0;

  inline$java.lang.Integer$$la$init$ra$$int$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$0$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$$la$init$ra$$int$0$$this != fixed.$null;
    inline$java.lang.Integer$$la$init$ra$$int$0$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$0$r0 := inline$java.lang.Integer$$la$init$ra$$int$0$$this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$0$i0 := inline$java.lang.Integer$$la$init$ra$$int$0$$in_parameter__0;
    assert {:sourceloc "Integer.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$java.lang.Object$$la$init$ra$$$0$$this := inline$java.lang.Integer$$la$init$ra$$int$0$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    inline$java.lang.Integer$$la$init$ra$$int$0$$exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$anon0$1;

  inline$java.lang.Integer$$la$init$ra$$int$0$anon0$1:
    assert {:sourceloc "Integer.java", 9, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$0$r0, fixed.int$java.lang.Integer$value0 := inline$java.lang.Integer$$la$init$ra$$int$0$i0];
    assert {:sourceloc "Integer.java", 10, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$block1;

  inline$java.lang.Integer$$la$init$ra$$int$0$block1:
    goto inline$java.lang.Integer$$la$init$ra$$int$0$Return;

  inline$java.lang.Integer$$la$init$ra$$int$0$Return:
    $exception := inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    $return := $r0;
    goto block2;

  block2:
    return;
}



implementation fixed.java.lang.Integer$intValue$($this: ref) returns ($return: int, $exception: ref)
{
  var $i0: int;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    $i0 := fixed.$heap[r0, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    $return := $i0;
    goto block3;

  block3:
    return;
}



implementation fixed.java.lang.Integer$compareTo$java.lang.Integer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var $i0: int;
  var r1: ref;
  var $i3: int;
  var $fakelocal_0: ref;
  var $i2: int;
  var $i1: int;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != fixed.$null;
    assume fixed.$heap[$in_parameter__0, fixed.$type] <: fixed.java.lang.Integer;
    $exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    $i1 := fixed.$heap[r0, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} r1 == fixed.$null;
    call $fakelocal_0 := fixed.$new(fixed.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon10_Then:
    assume {:partition} r1 != fixed.$null;
    $exception := $exception;
    goto anon3;

  anon3:
    $i0 := fixed.$heap[r1, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} $i0 < $i1;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Integer.java", 23, -1, -1, -1} true;
    $return := 1;
    goto block6;

  block6:
    return;

  anon11_Then:
    assume {:partition} $i1 <= $i0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block4;

  block4:
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    $i3 := fixed.$heap[r0, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    $i2 := fixed.$heap[r1, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} $i2 > $i3;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "Integer.java", 25, -1, -1, -1} true;
    $return := -1;
    goto block6;

  anon12_Then:
    assume {:partition} $i3 >= $i2;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "thenblock"} true;
    goto block5;

  block5:
    assert {:sourceloc "Integer.java", 27, -1, -1, -1} true;
    $return := 0;
    goto block6;
}



implementation fixed.java.lang.Integer$compareTo$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var r0: ref;
  var r1: ref;
  var $r2: ref;
  var $fakelocal_0: ref;
  var $i0: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$this: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$in_parameter__0: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$objIndex: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != fixed.$null;
    assume fixed.$heap[$in_parameter__0, fixed.$type] <: fixed.java.lang.Object;
    $exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 5, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} !(fixed.$heap[r1, fixed.$type] <: fixed.java.lang.Integer);
    call $fakelocal_0 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon4_Then:
    assume {:partition} fixed.$heap[r1, fixed.$type] <: fixed.java.lang.Integer;
    $exception := $exception;
    goto anon3;

  anon3:
    $r2 := r1;
    assert {:sourceloc "Integer.java", 5, -1, -1, -1} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$Entry;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$Entry:
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$this := r0;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$in_parameter__0 := $r2;
    havoc inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1, inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$objIndex := fixed.$objIndex;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$heap := fixed.$heap;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon0;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$this != fixed.$null;
    assume fixed.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$$in_parameter__0, fixed.$type]
   <: fixed.java.lang.Integer;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0 := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1 := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$in_parameter__0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1 := fixed.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon10_Then, inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon10_Else;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon10_Else:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1 == fixed.$null;
    call inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0 := fixed.$new(fixed.java.lang.NullPointerException);
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return := 0;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$Return;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon10_Then:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1 != fixed.$null;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon3;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon3:
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0 := fixed.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon11_Then, inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon11_Else;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon11_Else:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0
   < inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon6;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon6:
    assert {:sourceloc "Integer.java", 23, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return := 1;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block6;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block6:
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$Return;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon11_Then:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1
   <= inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block4;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block4:
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3 := fixed.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2 := fixed.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon12_Then, inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon12_Else;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon12_Else:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2
   > inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon9;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon9:
    assert {:sourceloc "Integer.java", 25, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return := -1;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block6;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon12_Then:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3
   >= inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block5;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block5:
    assert {:sourceloc "Integer.java", 27, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return := 0;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block6;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$Return:
    $i0 := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return;
    $exception := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception;
    goto anon3$1;

  anon3$1:
    assert {:sourceloc "Integer.java", 5, -1, -1, -1} true;
    $return := $i0;
    goto block7;

  block7:
    return;
}



implementation fixed.MoreSanity$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "MoreSanity.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.MoreSanity;
    assume {:sourceloc "MoreSanity.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "MoreSanity.java", 3, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$java.lang.Object$$la$init$ra$$$0$$this := r0;
    havoc inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    $exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "MoreSanity.java", 3, -1, -1, -1} true;
    goto block8;

  block8:
    return;
}



implementation fixed.MoreSanity$array_unsafe$int$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $r2: ref;
  var $l1: int;
  var $fakelocal_0: ref;
  var $i4: int;
  var $r7: ref;
  var $fakelocal_3: ref;
  var $fakelocal_2: ref;
  var i7: int;
  var i6: int;
  var $fakelocal_1: ref;
  var $r5: ref;
  var b8: int;
  var r0: ref;
  var $fakelocal_7: ref;
  var $fakelocal_6: ref;
  var $i2: int;
  var $fakelocal_4: ref;
  var $fakelocal_8: int;
  var $r4: ref;
  var $fakelocal_5: ref;
  var $r8: ref;
  var i0: int;
  var z0: int;
  var $r3: ref;
  var $r1: ref;
  var $i5: int;
  var $i3: int;
  var $r6: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$exception: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$return: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$exception: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r7: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_3: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_2: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i7: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i6: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_1: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r5: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_r0: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r8: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_z0: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$i5: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r6: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_3: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_2: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i6: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_1: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r5: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$i5: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r6: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$objIndex: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$heap: $heap_type;
  var inline$java.lang.Integer$intValue$$0$$i0: int;
  var inline$java.lang.Integer$intValue$$0$r0: ref;
  var inline$java.lang.Integer$intValue$$0$$this: ref;
  var inline$java.lang.Integer$intValue$$0$$return: int;
  var inline$java.lang.Integer$intValue$$0$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$0$$fakelocal_0: ref;
  var inline$java.lang.Integer$valueOf$int$0$$r0: ref;
  var inline$java.lang.Integer$valueOf$int$0$i0: int;
  var inline$java.lang.Integer$valueOf$int$0$$in_parameter__0: int;
  var inline$java.lang.Integer$valueOf$int$0$$return: ref;
  var inline$java.lang.Integer$valueOf$int$0$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$0$$objIndex: int;
  var inline$java.lang.Integer$valueOf$int$0$$heap: $heap_type;
  var inline$java.lang.Integer$$la$init$ra$$int$0$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$1$$fakelocal_0: ref;
  var inline$java.lang.Integer$valueOf$int$1$$r0: ref;
  var inline$java.lang.Integer$valueOf$int$1$i0: int;
  var inline$java.lang.Integer$valueOf$int$1$$in_parameter__0: int;
  var inline$java.lang.Integer$valueOf$int$1$$return: ref;
  var inline$java.lang.Integer$valueOf$int$1$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$1$$objIndex: int;
  var inline$java.lang.Integer$valueOf$int$1$$heap: $heap_type;
  var inline$java.lang.Integer$$la$init$ra$$int$1$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$1$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$1$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$1$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$1$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$1$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$1$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$1$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$2$$fakelocal_0: ref;
  var inline$java.lang.Integer$valueOf$int$2$$r0: ref;
  var inline$java.lang.Integer$valueOf$int$2$i0: int;
  var inline$java.lang.Integer$valueOf$int$2$$in_parameter__0: int;
  var inline$java.lang.Integer$valueOf$int$2$$return: ref;
  var inline$java.lang.Integer$valueOf$int$2$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$2$$objIndex: int;
  var inline$java.lang.Integer$valueOf$int$2$$heap: $heap_type;
  var inline$java.lang.Integer$$la$init$ra$$int$2$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$2$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$2$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$2$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$2$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$2$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$2$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$2$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$3$$fakelocal_0: ref;
  var inline$java.lang.Integer$valueOf$int$3$$r0: ref;
  var inline$java.lang.Integer$valueOf$int$3$i0: int;
  var inline$java.lang.Integer$valueOf$int$3$$in_parameter__0: int;
  var inline$java.lang.Integer$valueOf$int$3$$return: ref;
  var inline$java.lang.Integer$valueOf$int$3$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$3$$objIndex: int;
  var inline$java.lang.Integer$valueOf$int$3$$heap: $heap_type;
  var inline$java.lang.Integer$$la$init$ra$$int$3$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$3$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$3$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$3$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$3$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$3$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$3$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$3$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception: ref;
  var inline$java.lang.Integer$intValue$$1$$i0: int;
  var inline$java.lang.Integer$intValue$$1$r0: ref;
  var inline$java.lang.Integer$intValue$$1$$this: ref;
  var inline$java.lang.Integer$intValue$$1$$return: int;
  var inline$java.lang.Integer$intValue$$1$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$4$$fakelocal_0: ref;
  var inline$java.lang.Integer$valueOf$int$4$$r0: ref;
  var inline$java.lang.Integer$valueOf$int$4$i0: int;
  var inline$java.lang.Integer$valueOf$int$4$$in_parameter__0: int;
  var inline$java.lang.Integer$valueOf$int$4$$return: ref;
  var inline$java.lang.Integer$valueOf$int$4$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$4$$objIndex: int;
  var inline$java.lang.Integer$valueOf$int$4$$heap: $heap_type;
  var inline$java.lang.Integer$$la$init$ra$$int$4$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$4$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$4$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$4$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$4$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$4$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$4$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$4$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$5$$fakelocal_0: ref;
  var inline$java.lang.Integer$valueOf$int$5$$r0: ref;
  var inline$java.lang.Integer$valueOf$int$5$i0: int;
  var inline$java.lang.Integer$valueOf$int$5$$in_parameter__0: int;
  var inline$java.lang.Integer$valueOf$int$5$$return: ref;
  var inline$java.lang.Integer$valueOf$int$5$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$5$$objIndex: int;
  var inline$java.lang.Integer$valueOf$int$5$$heap: $heap_type;
  var inline$java.lang.Integer$$la$init$ra$$int$5$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$5$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$5$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$5$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$5$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$5$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$5$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$5$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception: ref;
  var inline$java.lang.Integer$intValue$$2$$i0: int;
  var inline$java.lang.Integer$intValue$$2$r0: ref;
  var inline$java.lang.Integer$intValue$$2$$this: ref;
  var inline$java.lang.Integer$intValue$$2$$return: int;
  var inline$java.lang.Integer$intValue$$2$$exception: ref;

  anon0:
    assume fixed.$arrSizeHeap[$in_parameter__0] > 0 && $in_parameter__0 != fixed.$null;
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__1;
    assert {:sourceloc "MoreSanity.java", 23, -1, -1, -1} true;
    i6 := 0;
    assert {:sourceloc "MoreSanity.java", 24, -1, -1, -1} true;
    $l1 := i0;
    assert {:sourceloc "MoreSanity.java", 24, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$in_parameter__0 := $l1;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$in_parameter__1 := 0;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$l0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$l1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$in_parameter__1;
    assert {:sourceloc "Safe.java", 27, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$z0 := 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$b2 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$l1);
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$anon7_Else:
    assume {:partition} 0 > inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$b2;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$anon3:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$block37;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$block37:
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$l1);
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$anon8_Else:
    assume {:partition} 0 <= inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$b3;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$anon6:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$block38;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$block38:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$block39;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$block39:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$b3 < 0;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$block38;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$b2 >= 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$block37;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$Return:
    z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} r0 == fixed.$null;
    call $fakelocal_0 := fixed.$new(fixed.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon28_Then:
    assume {:partition} r0 != fixed.$null;
    $exception := $exception;
    goto anon3;

  anon3:
    $i2 := fixed.$arrSizeHeap[r0];
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} true;
    i7 := $i2 - 1;
    goto block9;

  block9:
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$Entry;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$Entry:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$return := $return;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$exception := $exception;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r7 := $r7;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_3 := $fakelocal_3;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_2 := $fakelocal_2;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i7 := i7;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i6 := i6;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_1 := $fakelocal_1;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r5 := $r5;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_r0 := r0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r8 := $r8;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_z0 := z0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$i5 := $i5;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r6 := $r6;
    havoc inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r6;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$objIndex := fixed.$objIndex;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$heap := fixed.$heap;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$entry;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$entry:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r6 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r6;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$block9;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$block9:
    assert {:sourceloc "MoreSanity.java", 28, -1, -1, -1} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon29_Then, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon29_Else;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon29_Then:
    assume {:partition} inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7 < 0;
    assert {:sourceloc "MoreSanity.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r6 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r6;
    fixed.$objIndex, fixed.$heap := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$objIndex, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$heap;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon15:
    goto inline$java.lang.Integer$intValue$$0$Entry;

  inline$java.lang.Integer$intValue$$0$Entry:
    inline$java.lang.Integer$intValue$$0$$this := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8;
    havoc inline$java.lang.Integer$intValue$$0$$i0, inline$java.lang.Integer$intValue$$0$r0, inline$java.lang.Integer$intValue$$0$$return, inline$java.lang.Integer$intValue$$0$$exception;
    goto inline$java.lang.Integer$intValue$$0$anon0;

  inline$java.lang.Integer$intValue$$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$intValue$$0$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$intValue$$0$$this != fixed.$null;
    inline$java.lang.Integer$intValue$$0$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$intValue$$0$r0 := inline$java.lang.Integer$intValue$$0$$this;
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    inline$java.lang.Integer$intValue$$0$$i0 := fixed.$heap[inline$java.lang.Integer$intValue$$0$r0, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    inline$java.lang.Integer$intValue$$0$$return := inline$java.lang.Integer$intValue$$0$$i0;
    goto inline$java.lang.Integer$intValue$$0$block3;

  inline$java.lang.Integer$intValue$$0$block3:
    goto inline$java.lang.Integer$intValue$$0$Return;

  inline$java.lang.Integer$intValue$$0$Return:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i6 := inline$java.lang.Integer$intValue$$0$$return;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception := inline$java.lang.Integer$intValue$$0$$exception;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon15$1;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon15$1:
    assert {:sourceloc "MoreSanity.java", 30, -1, -1, -1} true;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7 + -1;
    assert {:sourceloc "MoreSanity.java", 30, -1, -1, -1} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon15_dummy;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon32_Then:
    assume {:partition} inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8
   != fixed.$null;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon15;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon12:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7;
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon32_Then, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon32_Else;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon32_Else:
    assume {:partition} inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8
   == fixed.$null;
    call inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_3 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return := 0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_3;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r6 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r6;
    fixed.$objIndex, fixed.$heap := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$objIndex, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$heap;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon31_Then:
    assume {:partition} fixed.$heap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7, fixed.$type]
   <: fixed.java.lang.Integer;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon12;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon9:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$i5 := fixed.$intArrHeap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_r0][inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7];
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto inline$java.lang.Integer$valueOf$int$0$Entry;

  inline$java.lang.Integer$valueOf$int$0$Entry:
    inline$java.lang.Integer$valueOf$int$0$$in_parameter__0 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$i5;
    havoc inline$java.lang.Integer$valueOf$int$0$$fakelocal_0, inline$java.lang.Integer$valueOf$int$0$$r0, inline$java.lang.Integer$valueOf$int$0$i0, inline$java.lang.Integer$valueOf$int$0$$return, inline$java.lang.Integer$valueOf$int$0$$exception;
    inline$java.lang.Integer$valueOf$int$0$$objIndex := fixed.$objIndex;
    inline$java.lang.Integer$valueOf$int$0$$heap := fixed.$heap;
    goto inline$java.lang.Integer$valueOf$int$0$anon0;

  inline$java.lang.Integer$valueOf$int$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Integer$valueOf$int$0$$return, fixed.$type]
   <: fixed.java.lang.Integer;
    inline$java.lang.Integer$valueOf$int$0$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$0$i0 := inline$java.lang.Integer$valueOf$int$0$$in_parameter__0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    call inline$java.lang.Integer$valueOf$int$0$$fakelocal_0 := fixed.$new(fixed.java.lang.Integer);
    inline$java.lang.Integer$valueOf$int$0$$r0 := inline$java.lang.Integer$valueOf$int$0$$fakelocal_0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$Entry;

  inline$java.lang.Integer$$la$init$ra$$int$0$Entry:
    inline$java.lang.Integer$$la$init$ra$$int$0$$this := inline$java.lang.Integer$valueOf$int$0$$r0;
    inline$java.lang.Integer$$la$init$ra$$int$0$$in_parameter__0 := inline$java.lang.Integer$valueOf$int$0$i0;
    havoc inline$java.lang.Integer$$la$init$ra$$int$0$r0, inline$java.lang.Integer$$la$init$ra$$int$0$i0, inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
    inline$java.lang.Integer$$la$init$ra$$int$0$$heap := fixed.$heap;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$anon0;

  inline$java.lang.Integer$$la$init$ra$$int$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$0$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$$la$init$ra$$int$0$$this != fixed.$null;
    inline$java.lang.Integer$$la$init$ra$$int$0$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$0$r0 := inline$java.lang.Integer$$la$init$ra$$int$0$$this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$0$i0 := inline$java.lang.Integer$$la$init$ra$$int$0$$in_parameter__0;
    assert {:sourceloc "Integer.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$java.lang.Object$$la$init$ra$$$0$$this := inline$java.lang.Integer$$la$init$ra$$int$0$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    inline$java.lang.Integer$$la$init$ra$$int$0$$exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$anon0$1;

  inline$java.lang.Integer$$la$init$ra$$int$0$anon0$1:
    assert {:sourceloc "Integer.java", 9, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$0$r0, fixed.int$java.lang.Integer$value0 := inline$java.lang.Integer$$la$init$ra$$int$0$i0];
    assert {:sourceloc "Integer.java", 10, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$block1;

  inline$java.lang.Integer$$la$init$ra$$int$0$block1:
    goto inline$java.lang.Integer$$la$init$ra$$int$0$Return;

  inline$java.lang.Integer$$la$init$ra$$int$0$Return:
    inline$java.lang.Integer$valueOf$int$0$$exception := inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
    goto inline$java.lang.Integer$valueOf$int$0$anon0$1;

  inline$java.lang.Integer$valueOf$int$0$anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$0$$return := inline$java.lang.Integer$valueOf$int$0$$r0;
    goto inline$java.lang.Integer$valueOf$int$0$block2;

  inline$java.lang.Integer$valueOf$int$0$block2:
    goto inline$java.lang.Integer$valueOf$int$0$Return;

  inline$java.lang.Integer$valueOf$int$0$Return:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r5 := inline$java.lang.Integer$valueOf$int$0$$return;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception := inline$java.lang.Integer$valueOf$int$0$$exception;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon9$1;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon9$1:
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto inline$java.lang.Integer$valueOf$int$1$Entry;

  inline$java.lang.Integer$valueOf$int$1$Entry:
    inline$java.lang.Integer$valueOf$int$1$$in_parameter__0 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i6;
    havoc inline$java.lang.Integer$valueOf$int$1$$fakelocal_0, inline$java.lang.Integer$valueOf$int$1$$r0, inline$java.lang.Integer$valueOf$int$1$i0, inline$java.lang.Integer$valueOf$int$1$$return, inline$java.lang.Integer$valueOf$int$1$$exception;
    inline$java.lang.Integer$valueOf$int$1$$objIndex := fixed.$objIndex;
    inline$java.lang.Integer$valueOf$int$1$$heap := fixed.$heap;
    goto inline$java.lang.Integer$valueOf$int$1$anon0;

  inline$java.lang.Integer$valueOf$int$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Integer$valueOf$int$1$$return, fixed.$type]
   <: fixed.java.lang.Integer;
    inline$java.lang.Integer$valueOf$int$1$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$1$i0 := inline$java.lang.Integer$valueOf$int$1$$in_parameter__0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    call inline$java.lang.Integer$valueOf$int$1$$fakelocal_0 := fixed.$new(fixed.java.lang.Integer);
    inline$java.lang.Integer$valueOf$int$1$$r0 := inline$java.lang.Integer$valueOf$int$1$$fakelocal_0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$1$Entry;

  inline$java.lang.Integer$$la$init$ra$$int$1$Entry:
    inline$java.lang.Integer$$la$init$ra$$int$1$$this := inline$java.lang.Integer$valueOf$int$1$$r0;
    inline$java.lang.Integer$$la$init$ra$$int$1$$in_parameter__0 := inline$java.lang.Integer$valueOf$int$1$i0;
    havoc inline$java.lang.Integer$$la$init$ra$$int$1$r0, inline$java.lang.Integer$$la$init$ra$$int$1$i0, inline$java.lang.Integer$$la$init$ra$$int$1$$exception;
    inline$java.lang.Integer$$la$init$ra$$int$1$$heap := fixed.$heap;
    goto inline$java.lang.Integer$$la$init$ra$$int$1$anon0;

  inline$java.lang.Integer$$la$init$ra$$int$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$1$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$$la$init$ra$$int$1$$this != fixed.$null;
    inline$java.lang.Integer$$la$init$ra$$int$1$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$1$r0 := inline$java.lang.Integer$$la$init$ra$$int$1$$this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$1$i0 := inline$java.lang.Integer$$la$init$ra$$int$1$$in_parameter__0;
    assert {:sourceloc "Integer.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$1$Entry;

  inline$java.lang.Object$$la$init$ra$$$1$Entry:
    inline$java.lang.Object$$la$init$ra$$$1$$this := inline$java.lang.Integer$$la$init$ra$$int$1$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$1$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$1$anon0;

  inline$java.lang.Object$$la$init$ra$$$1$anon0:
    inline$java.lang.Object$$la$init$ra$$$1$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$1$Return;

  inline$java.lang.Object$$la$init$ra$$$1$Return:
    inline$java.lang.Integer$$la$init$ra$$int$1$$exception := inline$java.lang.Object$$la$init$ra$$$1$$exception;
    goto inline$java.lang.Integer$$la$init$ra$$int$1$anon0$1;

  inline$java.lang.Integer$$la$init$ra$$int$1$anon0$1:
    assert {:sourceloc "Integer.java", 9, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$1$r0, fixed.int$java.lang.Integer$value0 := inline$java.lang.Integer$$la$init$ra$$int$1$i0];
    assert {:sourceloc "Integer.java", 10, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$1$block1;

  inline$java.lang.Integer$$la$init$ra$$int$1$block1:
    goto inline$java.lang.Integer$$la$init$ra$$int$1$Return;

  inline$java.lang.Integer$$la$init$ra$$int$1$Return:
    inline$java.lang.Integer$valueOf$int$1$$exception := inline$java.lang.Integer$$la$init$ra$$int$1$$exception;
    goto inline$java.lang.Integer$valueOf$int$1$anon0$1;

  inline$java.lang.Integer$valueOf$int$1$anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$1$$return := inline$java.lang.Integer$valueOf$int$1$$r0;
    goto inline$java.lang.Integer$valueOf$int$1$block2;

  inline$java.lang.Integer$valueOf$int$1$block2:
    goto inline$java.lang.Integer$valueOf$int$1$Return;

  inline$java.lang.Integer$valueOf$int$1$Return:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r6 := inline$java.lang.Integer$valueOf$int$1$$return;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception := inline$java.lang.Integer$valueOf$int$1$$exception;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon9$2;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon9$2:
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r6;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block76;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block76:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block77;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block77:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block78;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block78:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block77;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block76;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon9$3;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon9$3:
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon31_Then, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon31_Else;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon31_Else:
    assume {:partition} !(fixed.$heap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7, fixed.$type]
   <: fixed.java.lang.Integer);
    call inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return := 0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_2;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r6 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r6;
    fixed.$objIndex, fixed.$heap := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$objIndex, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$heap;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon30_Then:
    assume {:partition} inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7
     < fixed.$arrSizeHeap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_r0]
   && inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7 >= 0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon9;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon6:
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon30_Then, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon30_Else;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon30_Else:
    assume {:partition} !(inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7
     < fixed.$arrSizeHeap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_r0]
   && inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7 >= 0);
    call inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return := 0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_1;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r6 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r6;
    fixed.$objIndex, fixed.$heap := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$objIndex, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$heap;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon29_Else:
    assume {:partition} 0 <= inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7;
    assert {:sourceloc "MoreSanity.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon6;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon15_dummy:
    assume false;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$exit:
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$Return:
    $return := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return;
    $exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception;
    $r7 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7;
    $fakelocal_3 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_3;
    $fakelocal_2 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_2;
    i7 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7;
    i6 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i6;
    $fakelocal_1 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_1;
    $r5 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r5;
    $r8 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8;
    $i5 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$i5;
    $r6 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r6;
    goto block9$1;

  block9$1:
    goto block9_last;

  anon29_Else:
    assume {:partition} 0 <= i7;
    assert {:sourceloc "MoreSanity.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(i7 < fixed.$arrSizeHeap[r0] && i7 >= 0);
    call $fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon30_Then:
    assume {:partition} i7 < fixed.$arrSizeHeap[r0] && i7 >= 0;
    $exception := $exception;
    goto anon9;

  anon9:
    $i5 := fixed.$intArrHeap[r0][i7];
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto inline$java.lang.Integer$valueOf$int$2$Entry;

  inline$java.lang.Integer$valueOf$int$2$Entry:
    inline$java.lang.Integer$valueOf$int$2$$in_parameter__0 := $i5;
    havoc inline$java.lang.Integer$valueOf$int$2$$fakelocal_0, inline$java.lang.Integer$valueOf$int$2$$r0, inline$java.lang.Integer$valueOf$int$2$i0, inline$java.lang.Integer$valueOf$int$2$$return, inline$java.lang.Integer$valueOf$int$2$$exception;
    inline$java.lang.Integer$valueOf$int$2$$objIndex := fixed.$objIndex;
    inline$java.lang.Integer$valueOf$int$2$$heap := fixed.$heap;
    goto inline$java.lang.Integer$valueOf$int$2$anon0;

  inline$java.lang.Integer$valueOf$int$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Integer$valueOf$int$2$$return, fixed.$type]
   <: fixed.java.lang.Integer;
    inline$java.lang.Integer$valueOf$int$2$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$2$i0 := inline$java.lang.Integer$valueOf$int$2$$in_parameter__0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    call inline$java.lang.Integer$valueOf$int$2$$fakelocal_0 := fixed.$new(fixed.java.lang.Integer);
    inline$java.lang.Integer$valueOf$int$2$$r0 := inline$java.lang.Integer$valueOf$int$2$$fakelocal_0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$2$Entry;

  inline$java.lang.Integer$$la$init$ra$$int$2$Entry:
    inline$java.lang.Integer$$la$init$ra$$int$2$$this := inline$java.lang.Integer$valueOf$int$2$$r0;
    inline$java.lang.Integer$$la$init$ra$$int$2$$in_parameter__0 := inline$java.lang.Integer$valueOf$int$2$i0;
    havoc inline$java.lang.Integer$$la$init$ra$$int$2$r0, inline$java.lang.Integer$$la$init$ra$$int$2$i0, inline$java.lang.Integer$$la$init$ra$$int$2$$exception;
    inline$java.lang.Integer$$la$init$ra$$int$2$$heap := fixed.$heap;
    goto inline$java.lang.Integer$$la$init$ra$$int$2$anon0;

  inline$java.lang.Integer$$la$init$ra$$int$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$2$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$$la$init$ra$$int$2$$this != fixed.$null;
    inline$java.lang.Integer$$la$init$ra$$int$2$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$2$r0 := inline$java.lang.Integer$$la$init$ra$$int$2$$this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$2$i0 := inline$java.lang.Integer$$la$init$ra$$int$2$$in_parameter__0;
    assert {:sourceloc "Integer.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$2$Entry;

  inline$java.lang.Object$$la$init$ra$$$2$Entry:
    inline$java.lang.Object$$la$init$ra$$$2$$this := inline$java.lang.Integer$$la$init$ra$$int$2$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$2$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$2$anon0;

  inline$java.lang.Object$$la$init$ra$$$2$anon0:
    inline$java.lang.Object$$la$init$ra$$$2$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$2$Return;

  inline$java.lang.Object$$la$init$ra$$$2$Return:
    inline$java.lang.Integer$$la$init$ra$$int$2$$exception := inline$java.lang.Object$$la$init$ra$$$2$$exception;
    goto inline$java.lang.Integer$$la$init$ra$$int$2$anon0$1;

  inline$java.lang.Integer$$la$init$ra$$int$2$anon0$1:
    assert {:sourceloc "Integer.java", 9, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$2$r0, fixed.int$java.lang.Integer$value0 := inline$java.lang.Integer$$la$init$ra$$int$2$i0];
    assert {:sourceloc "Integer.java", 10, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$2$block1;

  inline$java.lang.Integer$$la$init$ra$$int$2$block1:
    goto inline$java.lang.Integer$$la$init$ra$$int$2$Return;

  inline$java.lang.Integer$$la$init$ra$$int$2$Return:
    inline$java.lang.Integer$valueOf$int$2$$exception := inline$java.lang.Integer$$la$init$ra$$int$2$$exception;
    goto inline$java.lang.Integer$valueOf$int$2$anon0$1;

  inline$java.lang.Integer$valueOf$int$2$anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$2$$return := inline$java.lang.Integer$valueOf$int$2$$r0;
    goto inline$java.lang.Integer$valueOf$int$2$block2;

  inline$java.lang.Integer$valueOf$int$2$block2:
    goto inline$java.lang.Integer$valueOf$int$2$Return;

  inline$java.lang.Integer$valueOf$int$2$Return:
    $r5 := inline$java.lang.Integer$valueOf$int$2$$return;
    $exception := inline$java.lang.Integer$valueOf$int$2$$exception;
    goto anon9$1;

  anon9$1:
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto inline$java.lang.Integer$valueOf$int$3$Entry;

  inline$java.lang.Integer$valueOf$int$3$Entry:
    inline$java.lang.Integer$valueOf$int$3$$in_parameter__0 := i6;
    havoc inline$java.lang.Integer$valueOf$int$3$$fakelocal_0, inline$java.lang.Integer$valueOf$int$3$$r0, inline$java.lang.Integer$valueOf$int$3$i0, inline$java.lang.Integer$valueOf$int$3$$return, inline$java.lang.Integer$valueOf$int$3$$exception;
    inline$java.lang.Integer$valueOf$int$3$$objIndex := fixed.$objIndex;
    inline$java.lang.Integer$valueOf$int$3$$heap := fixed.$heap;
    goto inline$java.lang.Integer$valueOf$int$3$anon0;

  inline$java.lang.Integer$valueOf$int$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Integer$valueOf$int$3$$return, fixed.$type]
   <: fixed.java.lang.Integer;
    inline$java.lang.Integer$valueOf$int$3$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$3$i0 := inline$java.lang.Integer$valueOf$int$3$$in_parameter__0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    call inline$java.lang.Integer$valueOf$int$3$$fakelocal_0 := fixed.$new(fixed.java.lang.Integer);
    inline$java.lang.Integer$valueOf$int$3$$r0 := inline$java.lang.Integer$valueOf$int$3$$fakelocal_0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$3$Entry;

  inline$java.lang.Integer$$la$init$ra$$int$3$Entry:
    inline$java.lang.Integer$$la$init$ra$$int$3$$this := inline$java.lang.Integer$valueOf$int$3$$r0;
    inline$java.lang.Integer$$la$init$ra$$int$3$$in_parameter__0 := inline$java.lang.Integer$valueOf$int$3$i0;
    havoc inline$java.lang.Integer$$la$init$ra$$int$3$r0, inline$java.lang.Integer$$la$init$ra$$int$3$i0, inline$java.lang.Integer$$la$init$ra$$int$3$$exception;
    inline$java.lang.Integer$$la$init$ra$$int$3$$heap := fixed.$heap;
    goto inline$java.lang.Integer$$la$init$ra$$int$3$anon0;

  inline$java.lang.Integer$$la$init$ra$$int$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$3$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$$la$init$ra$$int$3$$this != fixed.$null;
    inline$java.lang.Integer$$la$init$ra$$int$3$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$3$r0 := inline$java.lang.Integer$$la$init$ra$$int$3$$this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$3$i0 := inline$java.lang.Integer$$la$init$ra$$int$3$$in_parameter__0;
    assert {:sourceloc "Integer.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$3$Entry;

  inline$java.lang.Object$$la$init$ra$$$3$Entry:
    inline$java.lang.Object$$la$init$ra$$$3$$this := inline$java.lang.Integer$$la$init$ra$$int$3$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$3$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$3$anon0;

  inline$java.lang.Object$$la$init$ra$$$3$anon0:
    inline$java.lang.Object$$la$init$ra$$$3$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$3$Return;

  inline$java.lang.Object$$la$init$ra$$$3$Return:
    inline$java.lang.Integer$$la$init$ra$$int$3$$exception := inline$java.lang.Object$$la$init$ra$$$3$$exception;
    goto inline$java.lang.Integer$$la$init$ra$$int$3$anon0$1;

  inline$java.lang.Integer$$la$init$ra$$int$3$anon0$1:
    assert {:sourceloc "Integer.java", 9, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$3$r0, fixed.int$java.lang.Integer$value0 := inline$java.lang.Integer$$la$init$ra$$int$3$i0];
    assert {:sourceloc "Integer.java", 10, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$3$block1;

  inline$java.lang.Integer$$la$init$ra$$int$3$block1:
    goto inline$java.lang.Integer$$la$init$ra$$int$3$Return;

  inline$java.lang.Integer$$la$init$ra$$int$3$Return:
    inline$java.lang.Integer$valueOf$int$3$$exception := inline$java.lang.Integer$$la$init$ra$$int$3$$exception;
    goto inline$java.lang.Integer$valueOf$int$3$anon0$1;

  inline$java.lang.Integer$valueOf$int$3$anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$3$$return := inline$java.lang.Integer$valueOf$int$3$$r0;
    goto inline$java.lang.Integer$valueOf$int$3$block2;

  inline$java.lang.Integer$valueOf$int$3$block2:
    goto inline$java.lang.Integer$valueOf$int$3$Return;

  inline$java.lang.Integer$valueOf$int$3$Return:
    $r6 := inline$java.lang.Integer$valueOf$int$3$$return;
    $exception := inline$java.lang.Integer$valueOf$int$3$$exception;
    goto anon9$2;

  anon9$2:
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0 := z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1 := $r5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2 := $r6;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block76;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block76:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block77;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block77:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block78;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block78:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block77;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block76;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return:
    $r7 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto anon9$3;

  anon9$3:
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(fixed.$heap[$r7, fixed.$type] <: fixed.java.lang.Integer);
    call $fakelocal_2 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon31_Then:
    assume {:partition} fixed.$heap[$r7, fixed.$type] <: fixed.java.lang.Integer;
    $exception := $exception;
    goto anon12;

  anon12:
    $r8 := $r7;
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} $r8 == fixed.$null;
    call $fakelocal_3 := fixed.$new(fixed.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon32_Then:
    assume {:partition} $r8 != fixed.$null;
    $exception := $exception;
    goto anon15;

  anon15:
    goto inline$java.lang.Integer$intValue$$1$Entry;

  inline$java.lang.Integer$intValue$$1$Entry:
    inline$java.lang.Integer$intValue$$1$$this := $r8;
    havoc inline$java.lang.Integer$intValue$$1$$i0, inline$java.lang.Integer$intValue$$1$r0, inline$java.lang.Integer$intValue$$1$$return, inline$java.lang.Integer$intValue$$1$$exception;
    goto inline$java.lang.Integer$intValue$$1$anon0;

  inline$java.lang.Integer$intValue$$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$intValue$$1$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$intValue$$1$$this != fixed.$null;
    inline$java.lang.Integer$intValue$$1$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$intValue$$1$r0 := inline$java.lang.Integer$intValue$$1$$this;
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    inline$java.lang.Integer$intValue$$1$$i0 := fixed.$heap[inline$java.lang.Integer$intValue$$1$r0, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    inline$java.lang.Integer$intValue$$1$$return := inline$java.lang.Integer$intValue$$1$$i0;
    goto inline$java.lang.Integer$intValue$$1$block3;

  inline$java.lang.Integer$intValue$$1$block3:
    goto inline$java.lang.Integer$intValue$$1$Return;

  inline$java.lang.Integer$intValue$$1$Return:
    i6 := inline$java.lang.Integer$intValue$$1$$return;
    $exception := inline$java.lang.Integer$intValue$$1$$exception;
    goto anon15$1;

  anon15$1:
    assert {:sourceloc "MoreSanity.java", 30, -1, -1, -1} true;
    i7 := i7 + -1;
    assert {:sourceloc "MoreSanity.java", 30, -1, -1, -1} true;
    goto anon15_dummy;

  anon29_Then:
    assume {:partition} i7 < 0;
    assert {:sourceloc "MoreSanity.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "MoreSanity.java", 32, -1, -1, -1} true;
    b8 := 0;
    assert {:sourceloc "MoreSanity.java", 33, -1, -1, -1} true;
    goto inline$java.lang.Integer$valueOf$int$4$Entry;

  inline$java.lang.Integer$valueOf$int$4$Entry:
    inline$java.lang.Integer$valueOf$int$4$$in_parameter__0 := i6;
    havoc inline$java.lang.Integer$valueOf$int$4$$fakelocal_0, inline$java.lang.Integer$valueOf$int$4$$r0, inline$java.lang.Integer$valueOf$int$4$i0, inline$java.lang.Integer$valueOf$int$4$$return, inline$java.lang.Integer$valueOf$int$4$$exception;
    inline$java.lang.Integer$valueOf$int$4$$objIndex := fixed.$objIndex;
    inline$java.lang.Integer$valueOf$int$4$$heap := fixed.$heap;
    goto inline$java.lang.Integer$valueOf$int$4$anon0;

  inline$java.lang.Integer$valueOf$int$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Integer$valueOf$int$4$$return, fixed.$type]
   <: fixed.java.lang.Integer;
    inline$java.lang.Integer$valueOf$int$4$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$4$i0 := inline$java.lang.Integer$valueOf$int$4$$in_parameter__0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    call inline$java.lang.Integer$valueOf$int$4$$fakelocal_0 := fixed.$new(fixed.java.lang.Integer);
    inline$java.lang.Integer$valueOf$int$4$$r0 := inline$java.lang.Integer$valueOf$int$4$$fakelocal_0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$4$Entry;

  inline$java.lang.Integer$$la$init$ra$$int$4$Entry:
    inline$java.lang.Integer$$la$init$ra$$int$4$$this := inline$java.lang.Integer$valueOf$int$4$$r0;
    inline$java.lang.Integer$$la$init$ra$$int$4$$in_parameter__0 := inline$java.lang.Integer$valueOf$int$4$i0;
    havoc inline$java.lang.Integer$$la$init$ra$$int$4$r0, inline$java.lang.Integer$$la$init$ra$$int$4$i0, inline$java.lang.Integer$$la$init$ra$$int$4$$exception;
    inline$java.lang.Integer$$la$init$ra$$int$4$$heap := fixed.$heap;
    goto inline$java.lang.Integer$$la$init$ra$$int$4$anon0;

  inline$java.lang.Integer$$la$init$ra$$int$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$4$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$$la$init$ra$$int$4$$this != fixed.$null;
    inline$java.lang.Integer$$la$init$ra$$int$4$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$4$r0 := inline$java.lang.Integer$$la$init$ra$$int$4$$this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$4$i0 := inline$java.lang.Integer$$la$init$ra$$int$4$$in_parameter__0;
    assert {:sourceloc "Integer.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$4$Entry;

  inline$java.lang.Object$$la$init$ra$$$4$Entry:
    inline$java.lang.Object$$la$init$ra$$$4$$this := inline$java.lang.Integer$$la$init$ra$$int$4$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$4$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$4$anon0;

  inline$java.lang.Object$$la$init$ra$$$4$anon0:
    inline$java.lang.Object$$la$init$ra$$$4$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$4$Return;

  inline$java.lang.Object$$la$init$ra$$$4$Return:
    inline$java.lang.Integer$$la$init$ra$$int$4$$exception := inline$java.lang.Object$$la$init$ra$$$4$$exception;
    goto inline$java.lang.Integer$$la$init$ra$$int$4$anon0$1;

  inline$java.lang.Integer$$la$init$ra$$int$4$anon0$1:
    assert {:sourceloc "Integer.java", 9, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$4$r0, fixed.int$java.lang.Integer$value0 := inline$java.lang.Integer$$la$init$ra$$int$4$i0];
    assert {:sourceloc "Integer.java", 10, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$4$block1;

  inline$java.lang.Integer$$la$init$ra$$int$4$block1:
    goto inline$java.lang.Integer$$la$init$ra$$int$4$Return;

  inline$java.lang.Integer$$la$init$ra$$int$4$Return:
    inline$java.lang.Integer$valueOf$int$4$$exception := inline$java.lang.Integer$$la$init$ra$$int$4$$exception;
    goto inline$java.lang.Integer$valueOf$int$4$anon0$1;

  inline$java.lang.Integer$valueOf$int$4$anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$4$$return := inline$java.lang.Integer$valueOf$int$4$$r0;
    goto inline$java.lang.Integer$valueOf$int$4$block2;

  inline$java.lang.Integer$valueOf$int$4$block2:
    goto inline$java.lang.Integer$valueOf$int$4$Return;

  inline$java.lang.Integer$valueOf$int$4$Return:
    $r1 := inline$java.lang.Integer$valueOf$int$4$$return;
    $exception := inline$java.lang.Integer$valueOf$int$4$$exception;
    goto block10$1;

  block10$1:
    assert {:sourceloc "MoreSanity.java", 33, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !(b8 < fixed.$arrSizeHeap[r0] && b8 >= 0);
    call $fakelocal_4 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon33_Then:
    assume {:partition} b8 < fixed.$arrSizeHeap[r0] && b8 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $i3 := fixed.$intArrHeap[r0][b8];
    assert {:sourceloc "MoreSanity.java", 33, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} 2 == 0;
    call $fakelocal_5 := fixed.$new(fixed.java.lang.ArithmeticException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon34_Then:
    assume {:partition} 2 != 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $i4 := fixed.$divInt($i3, 2);
    assert {:sourceloc "MoreSanity.java", 33, -1, -1, -1} true;
    goto inline$java.lang.Integer$valueOf$int$5$Entry;

  inline$java.lang.Integer$valueOf$int$5$Entry:
    inline$java.lang.Integer$valueOf$int$5$$in_parameter__0 := $i4;
    havoc inline$java.lang.Integer$valueOf$int$5$$fakelocal_0, inline$java.lang.Integer$valueOf$int$5$$r0, inline$java.lang.Integer$valueOf$int$5$i0, inline$java.lang.Integer$valueOf$int$5$$return, inline$java.lang.Integer$valueOf$int$5$$exception;
    inline$java.lang.Integer$valueOf$int$5$$objIndex := fixed.$objIndex;
    inline$java.lang.Integer$valueOf$int$5$$heap := fixed.$heap;
    goto inline$java.lang.Integer$valueOf$int$5$anon0;

  inline$java.lang.Integer$valueOf$int$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Integer$valueOf$int$5$$return, fixed.$type]
   <: fixed.java.lang.Integer;
    inline$java.lang.Integer$valueOf$int$5$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$5$i0 := inline$java.lang.Integer$valueOf$int$5$$in_parameter__0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    call inline$java.lang.Integer$valueOf$int$5$$fakelocal_0 := fixed.$new(fixed.java.lang.Integer);
    inline$java.lang.Integer$valueOf$int$5$$r0 := inline$java.lang.Integer$valueOf$int$5$$fakelocal_0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$5$Entry;

  inline$java.lang.Integer$$la$init$ra$$int$5$Entry:
    inline$java.lang.Integer$$la$init$ra$$int$5$$this := inline$java.lang.Integer$valueOf$int$5$$r0;
    inline$java.lang.Integer$$la$init$ra$$int$5$$in_parameter__0 := inline$java.lang.Integer$valueOf$int$5$i0;
    havoc inline$java.lang.Integer$$la$init$ra$$int$5$r0, inline$java.lang.Integer$$la$init$ra$$int$5$i0, inline$java.lang.Integer$$la$init$ra$$int$5$$exception;
    inline$java.lang.Integer$$la$init$ra$$int$5$$heap := fixed.$heap;
    goto inline$java.lang.Integer$$la$init$ra$$int$5$anon0;

  inline$java.lang.Integer$$la$init$ra$$int$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$5$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$$la$init$ra$$int$5$$this != fixed.$null;
    inline$java.lang.Integer$$la$init$ra$$int$5$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$5$r0 := inline$java.lang.Integer$$la$init$ra$$int$5$$this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$5$i0 := inline$java.lang.Integer$$la$init$ra$$int$5$$in_parameter__0;
    assert {:sourceloc "Integer.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$5$Entry;

  inline$java.lang.Object$$la$init$ra$$$5$Entry:
    inline$java.lang.Object$$la$init$ra$$$5$$this := inline$java.lang.Integer$$la$init$ra$$int$5$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$5$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$5$anon0;

  inline$java.lang.Object$$la$init$ra$$$5$anon0:
    inline$java.lang.Object$$la$init$ra$$$5$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$5$Return;

  inline$java.lang.Object$$la$init$ra$$$5$Return:
    inline$java.lang.Integer$$la$init$ra$$int$5$$exception := inline$java.lang.Object$$la$init$ra$$$5$$exception;
    goto inline$java.lang.Integer$$la$init$ra$$int$5$anon0$1;

  inline$java.lang.Integer$$la$init$ra$$int$5$anon0$1:
    assert {:sourceloc "Integer.java", 9, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$5$r0, fixed.int$java.lang.Integer$value0 := inline$java.lang.Integer$$la$init$ra$$int$5$i0];
    assert {:sourceloc "Integer.java", 10, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$5$block1;

  inline$java.lang.Integer$$la$init$ra$$int$5$block1:
    goto inline$java.lang.Integer$$la$init$ra$$int$5$Return;

  inline$java.lang.Integer$$la$init$ra$$int$5$Return:
    inline$java.lang.Integer$valueOf$int$5$$exception := inline$java.lang.Integer$$la$init$ra$$int$5$$exception;
    goto inline$java.lang.Integer$valueOf$int$5$anon0$1;

  inline$java.lang.Integer$valueOf$int$5$anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$5$$return := inline$java.lang.Integer$valueOf$int$5$$r0;
    goto inline$java.lang.Integer$valueOf$int$5$block2;

  inline$java.lang.Integer$valueOf$int$5$block2:
    goto inline$java.lang.Integer$valueOf$int$5$Return;

  inline$java.lang.Integer$valueOf$int$5$Return:
    $r2 := inline$java.lang.Integer$valueOf$int$5$$return;
    $exception := inline$java.lang.Integer$valueOf$int$5$$exception;
    goto anon21$1;

  anon21$1:
    assert {:sourceloc "MoreSanity.java", 33, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0 := z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1 := $r1;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2 := $r2;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block76;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block76:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block77;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block77:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block78;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block78:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block77;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block76;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Return:
    $r3 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception;
    goto anon21$2;

  anon21$2:
    assert {:sourceloc "MoreSanity.java", 33, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} !(fixed.$heap[$r3, fixed.$type] <: fixed.java.lang.Integer);
    call $fakelocal_6 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon35_Then:
    assume {:partition} fixed.$heap[$r3, fixed.$type] <: fixed.java.lang.Integer;
    $exception := $exception;
    goto anon24;

  anon24:
    $r4 := $r3;
    assert {:sourceloc "MoreSanity.java", 33, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} $r4 == fixed.$null;
    call $fakelocal_7 := fixed.$new(fixed.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_7;
    return;

  anon36_Then:
    assume {:partition} $r4 != fixed.$null;
    $exception := $exception;
    goto anon27;

  anon27:
    goto inline$java.lang.Integer$intValue$$2$Entry;

  inline$java.lang.Integer$intValue$$2$Entry:
    inline$java.lang.Integer$intValue$$2$$this := $r4;
    havoc inline$java.lang.Integer$intValue$$2$$i0, inline$java.lang.Integer$intValue$$2$r0, inline$java.lang.Integer$intValue$$2$$return, inline$java.lang.Integer$intValue$$2$$exception;
    goto inline$java.lang.Integer$intValue$$2$anon0;

  inline$java.lang.Integer$intValue$$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$intValue$$2$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$intValue$$2$$this != fixed.$null;
    inline$java.lang.Integer$intValue$$2$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$intValue$$2$r0 := inline$java.lang.Integer$intValue$$2$$this;
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    inline$java.lang.Integer$intValue$$2$$i0 := fixed.$heap[inline$java.lang.Integer$intValue$$2$r0, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    inline$java.lang.Integer$intValue$$2$$return := inline$java.lang.Integer$intValue$$2$$i0;
    goto inline$java.lang.Integer$intValue$$2$block3;

  inline$java.lang.Integer$intValue$$2$block3:
    goto inline$java.lang.Integer$intValue$$2$Return;

  inline$java.lang.Integer$intValue$$2$Return:
    $fakelocal_8 := inline$java.lang.Integer$intValue$$2$$return;
    $exception := inline$java.lang.Integer$intValue$$2$$exception;
    goto anon27$1;

  anon27$1:
    assert {:sourceloc "MoreSanity.java", 36, -1, -1, -1} true;
    $return := 0;
    goto block11;

  block11:
    return;

  anon15_dummy:
    assume false;
    return;

  block9_last:
    assert {:sourceloc "MoreSanity.java", 28, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;
}



implementation {:inline 1} fixed.MoreSanity$loopAndbranch_safe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var i4: int;
  var i0: int;
  var i5: int;
  var i1: int;
  var i2: int;
  var i3: int;
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$in_i2: int;
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2: int;
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$in_i4: int;
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4: int;
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i5: int;
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__1;
    assert {:sourceloc "MoreSanity.java", 40, -1, -1, -1} true;
    i2 := i0;
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} 0 > i1;
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} {:comment "elseblock"} true;
    goto block13;

  block13:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$Entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$Entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$in_i2 := i2;
    havoc inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$in_i2;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$block13;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$block13:
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon19_Then, inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon19_Else;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon19_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$in_i2;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon5:
    assert {:sourceloc "MoreSanity.java", 44, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2 + -1;
    assert {:sourceloc "MoreSanity.java", 44, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon5_dummy;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon19_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2;
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon5;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon5_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$exit:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$Return:
    i2 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2;
    goto block13$1;

  block13$1:
    goto block13_last;

  anon19_Else:
    assume {:partition} 0 < i2;
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} {:comment "elseblock"} true;
    goto anon5;

  anon5:
    assert {:sourceloc "MoreSanity.java", 44, -1, -1, -1} true;
    i2 := i2 + -1;
    assert {:sourceloc "MoreSanity.java", 44, -1, -1, -1} true;
    goto anon5_dummy;

  anon19_Then:
    assume {:partition} i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "MoreSanity.java", 64, -1, -1, -1} true;
    $return := 1;
    goto block19;

  block19:
    return;

  anon18_Then:
    assume {:partition} i1 >= 0;
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block12;

  block12:
    assert {:sourceloc "MoreSanity.java", 48, -1, -1, -1} true;
    i3 := i1 + 10;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} 10 <= i3;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto anon8;

  anon8:
    assert {:sourceloc "MoreSanity.java", 51, -1, -1, -1} true;
    i4 := i0;
    goto block16;

  block16:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$Entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$Entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$in_i4 := i4;
    havoc inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$in_i4;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$block16;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$block16:
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon21_Then, inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon21_Else;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon21_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$in_i4;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon11:
    assert {:sourceloc "MoreSanity.java", 53, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4 + -1;
    assert {:sourceloc "MoreSanity.java", 53, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon11_dummy;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon21_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4;
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon11;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon11_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$exit:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$Return:
    i4 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4;
    goto block16$1;

  block16$1:
    goto block16_last;

  anon21_Else:
    assume {:partition} 0 < i4;
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} {:comment "elseblock"} true;
    goto anon11;

  anon11:
    assert {:sourceloc "MoreSanity.java", 53, -1, -1, -1} true;
    i4 := i4 + -1;
    assert {:sourceloc "MoreSanity.java", 53, -1, -1, -1} true;
    goto anon11_dummy;

  anon21_Then:
    assume {:partition} i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} {:comment "thenblock"} true;
    goto block17;

  block17:
    assert {:sourceloc "MoreSanity.java", 55, -1, -1, -1} true;
    goto block14;

  anon20_Then:
    assume {:partition} i3 < 10;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  block15:
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} true;
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} 0 > i0;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto anon14;

  anon14:
    assert {:sourceloc "MoreSanity.java", 57, -1, -1, -1} true;
    i5 := i0;
    goto block18;

  block18:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i5 := i5;
    havoc inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i5;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$block18;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$block18:
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon23_Then, inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon23_Else;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon23_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i5;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon17:
    assert {:sourceloc "MoreSanity.java", 59, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5 + -1;
    assert {:sourceloc "MoreSanity.java", 59, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon17_dummy;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon23_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5;
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon17;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon17_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$exit:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return:
    i5 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5;
    goto block18$1;

  block18$1:
    goto block18_last;

  anon23_Else:
    assume {:partition} 0 < i5;
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "MoreSanity.java", 59, -1, -1, -1} true;
    i5 := i5 + -1;
    assert {:sourceloc "MoreSanity.java", 59, -1, -1, -1} true;
    goto anon17_dummy;

  anon23_Then:
    assume {:partition} i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  anon22_Then:
    assume {:partition} i0 >= 0;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  anon5_dummy:
    assume false;
    return;

  block13_last:
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon11_dummy:
    assume false;
    return;

  block16_last:
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;

  anon17_dummy:
    assume false;
    return;

  block18_last:
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;
}



implementation fixed.MoreSanity$loopAndbranch_unsafe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var i1: int;
  var i5: int;
  var i0: int;
  var i2: int;
  var i4: int;
  var i3: int;
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$in_i2: int;
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$out_i2: int;
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$in_i4: int;
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$out_i4: int;
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$in_i5: int;
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i5: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__1;
    assert {:sourceloc "MoreSanity.java", 68, -1, -1, -1} true;
    i2 := i0;
    assert {:sourceloc "MoreSanity.java", 70, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} 0 > i1;
    assert {:sourceloc "MoreSanity.java", 70, -1, -1, -1} {:comment "elseblock"} true;
    goto block21;

  block21:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$Entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$Entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$in_i2 := i2;
    havoc inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$out_i2;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$out_i2 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$in_i2;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$block21;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$block21:
    assert {:sourceloc "MoreSanity.java", 71, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$anon19_Then, inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$anon19_Else;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$anon19_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$out_i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$out_i2 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$in_i2;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$anon5:
    assert {:sourceloc "MoreSanity.java", 72, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$out_i2 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$out_i2 + -1;
    assert {:sourceloc "MoreSanity.java", 72, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$anon5_dummy;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$anon19_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$out_i2;
    assert {:sourceloc "MoreSanity.java", 71, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$anon5;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$anon5_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$exit:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$Return:
    i2 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$out_i2;
    goto block21$1;

  block21$1:
    goto block21_last;

  anon19_Else:
    assume {:partition} 0 < i2;
    assert {:sourceloc "MoreSanity.java", 71, -1, -1, -1} {:comment "elseblock"} true;
    goto anon5;

  anon5:
    assert {:sourceloc "MoreSanity.java", 72, -1, -1, -1} true;
    i2 := i2 + -1;
    assert {:sourceloc "MoreSanity.java", 72, -1, -1, -1} true;
    goto anon5_dummy;

  anon19_Then:
    assume {:partition} i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;

  block22:
    assert {:sourceloc "MoreSanity.java", 92, -1, -1, -1} true;
    $return := 1;
    goto block27;

  block27:
    return;

  anon18_Then:
    assume {:partition} i1 >= 0;
    assert {:sourceloc "MoreSanity.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block20;

  block20:
    assert {:sourceloc "MoreSanity.java", 76, -1, -1, -1} true;
    i3 := i1 - 10;
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} 10 <= i3;
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} {:comment "elseblock"} true;
    goto anon8;

  anon8:
    assert {:sourceloc "MoreSanity.java", 79, -1, -1, -1} true;
    i4 := i0;
    goto block24;

  block24:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$Entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$Entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$in_i4 := i4;
    havoc inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$out_i4;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$out_i4 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$in_i4;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$block24;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$block24:
    assert {:sourceloc "MoreSanity.java", 80, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$anon21_Then, inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$anon21_Else;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$anon21_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$out_i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 80, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$out_i4 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$in_i4;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$anon11:
    assert {:sourceloc "MoreSanity.java", 81, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$out_i4 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$out_i4 + -1;
    assert {:sourceloc "MoreSanity.java", 81, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$anon11_dummy;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$anon21_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$out_i4;
    assert {:sourceloc "MoreSanity.java", 80, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$anon11;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$anon11_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$exit:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$Return:
    i4 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$out_i4;
    goto block24$1;

  block24$1:
    goto block24_last;

  anon21_Else:
    assume {:partition} 0 < i4;
    assert {:sourceloc "MoreSanity.java", 80, -1, -1, -1} {:comment "elseblock"} true;
    goto anon11;

  anon11:
    assert {:sourceloc "MoreSanity.java", 81, -1, -1, -1} true;
    i4 := i4 + -1;
    assert {:sourceloc "MoreSanity.java", 81, -1, -1, -1} true;
    goto anon11_dummy;

  anon21_Then:
    assume {:partition} i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 80, -1, -1, -1} {:comment "thenblock"} true;
    goto block25;

  block25:
    assert {:sourceloc "MoreSanity.java", 83, -1, -1, -1} true;
    goto block22;

  anon20_Then:
    assume {:partition} i3 < 10;
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block23;

  block23:
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} true;
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} 0 > i0;
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} {:comment "elseblock"} true;
    goto anon14;

  anon14:
    assert {:sourceloc "MoreSanity.java", 85, -1, -1, -1} true;
    i5 := i0;
    goto block26;

  block26:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$in_i5 := i5;
    havoc inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i5;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i5 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$in_i5;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$block26;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$block26:
    assert {:sourceloc "MoreSanity.java", 86, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon23_Then, inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon23_Else;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon23_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 86, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i5 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$in_i5;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon17:
    assert {:sourceloc "MoreSanity.java", 87, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i5 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i5 + -1;
    assert {:sourceloc "MoreSanity.java", 87, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon17_dummy;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon23_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i5;
    assert {:sourceloc "MoreSanity.java", 86, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon17;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon17_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$exit:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Return:
    i5 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i5;
    goto block26$1;

  block26$1:
    goto block26_last;

  anon23_Else:
    assume {:partition} 0 < i5;
    assert {:sourceloc "MoreSanity.java", 86, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "MoreSanity.java", 87, -1, -1, -1} true;
    i5 := i5 + -1;
    assert {:sourceloc "MoreSanity.java", 87, -1, -1, -1} true;
    goto anon17_dummy;

  anon23_Then:
    assume {:partition} i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 86, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;

  anon22_Then:
    assume {:partition} i0 >= 0;
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;

  anon5_dummy:
    assume false;
    return;

  block21_last:
    assert {:sourceloc "MoreSanity.java", 71, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon11_dummy:
    assume false;
    return;

  block24_last:
    assert {:sourceloc "MoreSanity.java", 80, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;

  anon17_dummy:
    assume false;
    return;

  block26_last:
    assert {:sourceloc "MoreSanity.java", 86, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Safe.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.sg.edu.nus.comp.tsunami.safe.Safe;
    assume {:sourceloc "Safe.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Safe.java", 3, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$java.lang.Object$$la$init$ra$$$0$$this := r0;
    havoc inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    $exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Safe.java", 3, -1, -1, -1} true;
    goto block28;

  block28:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var z0: int;
  var z1: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
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
    goto block29;

  block29:
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 1;
    goto block30;

  block30:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    $return := z1;
    goto block31;

  block31:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block30;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block29;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $z2: int;
  var z0: int;
  var z1: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 12, -1, -1, -1} true;
    $z2 := fixed.$bitAnd(z0, z1);
    assert {:sourceloc "Safe.java", 12, -1, -1, -1} true;
    $return := $z2;
    goto block32;

  block32:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $z2: int;
  var z1: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 16, -1, -1, -1} true;
    $z2 := fixed.$bitOr(z0, z1);
    assert {:sourceloc "Safe.java", 16, -1, -1, -1} true;
    $return := $z2;
    goto block33;

  block33:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b3: int;
  var l0: int;
  var l1: int;
  var $b2: int;
  var z0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 20, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} true;
    $b2 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 < $b2;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    z0 := 1;
    goto block34;

  block34:
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} true;
    $b3 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 >= $b3;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    z0 := 0;
    goto block35;

  block35:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    $return := z0;
    goto block36;

  block36:
    return;

  anon8_Then:
    assume {:partition} $b3 > 0;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block35;

  anon7_Then:
    assume {:partition} $b2 <= 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    goto block34;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var $b3: int;
  var l1: int;
  var z0: int;
  var l0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 27, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} true;
    $b2 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 > $b2;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    z0 := 1;
    goto block37;

  block37:
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} true;
    $b3 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 <= $b3;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    z0 := 0;
    goto block38;

  block38:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    $return := z0;
    goto block39;

  block39:
    return;

  anon8_Then:
    assume {:partition} $b3 < 0;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block38;

  anon7_Then:
    assume {:partition} $b2 >= 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block37;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var l1: int;
  var $b3: int;
  var l0: int;
  var z0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 34, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} true;
    $b2 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 <= $b2;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    z0 := 1;
    goto block40;

  block40:
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} true;
    $b3 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 > $b3;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    z0 := 0;
    goto block41;

  block41:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    $return := z0;
    goto block42;

  block42:
    return;

  anon8_Then:
    assume {:partition} $b3 >= 0;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block41;

  anon7_Then:
    assume {:partition} $b2 < 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block40;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l1: int;
  var l0: int;
  var z0: int;
  var $b2: int;
  var $b3: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 41, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} true;
    $b2 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 >= $b2;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    z0 := 1;
    goto block43;

  block43:
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} true;
    $b3 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 < $b3;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    z0 := 0;
    goto block44;

  block44:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    $return := z0;
    goto block45;

  block45:
    return;

  anon8_Then:
    assume {:partition} $b3 <= 0;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block44;

  anon7_Then:
    assume {:partition} $b2 > 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block43;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l0: int;
  var $b2: int;
  var z0: int;
  var $b3: int;
  var l1: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 48, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    $b2 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    z0 := 1;
    goto block46;

  block46:
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    $b3 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    z0 := 0;
    goto block47;

  block47:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    $return := z0;
    goto block48;

  block48:
    return;

  anon8_Then:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block47;

  anon7_Then:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto block46;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l1: int;
  var $b3: int;
  var l0: int;
  var $b2: int;
  var z0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 55, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    $b2 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    z0 := 1;
    goto block49;

  block49:
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    $b3 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    z0 := 0;
    goto block50;

  block50:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    $return := z0;
    goto block51;

  block51:
    return;

  anon8_Then:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto block50;

  anon7_Then:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block49;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b0: int;
  var d0: int;
  var $b1: int;
  var z0: int;
  var d1: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 62, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} true;
    $b0 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 < $b0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    z0 := 1;
    goto block52;

  block52:
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} true;
    $b1 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 >= $b1;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    z0 := 0;
    goto block53;

  block53:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    $return := z0;
    goto block54;

  block54:
    return;

  anon8_Then:
    assume {:partition} $b1 > 0;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "thenblock"} true;
    goto block53;

  anon7_Then:
    assume {:partition} $b0 <= 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "thenblock"} true;
    goto block52;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b1: int;
  var d0: int;
  var d1: int;
  var $b0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 69, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} true;
    $b0 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 > $b0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    z0 := 1;
    goto block55;

  block55:
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} true;
    $b1 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 <= $b1;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    z0 := 0;
    goto block56;

  block56:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    $return := z0;
    goto block57;

  block57:
    return;

  anon8_Then:
    assume {:partition} $b1 < 0;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block56;

  anon7_Then:
    assume {:partition} $b0 >= 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block55;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b1: int;
  var $b0: int;
  var d1: int;
  var d0: int;
  var z0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 76, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} true;
    $b0 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 <= $b0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    z0 := 1;
    goto block58;

  block58:
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} true;
    $b1 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 > $b1;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    z0 := 0;
    goto block59;

  block59:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    $return := z0;
    goto block60;

  block60:
    return;

  anon8_Then:
    assume {:partition} $b1 >= 0;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block59;

  anon7_Then:
    assume {:partition} $b0 < 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block58;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var $b1: int;
  var z0: int;
  var $b0: int;
  var d1: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 83, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} true;
    $b0 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 >= $b0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    z0 := 1;
    goto block61;

  block61:
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} true;
    $b1 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 < $b1;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    z0 := 0;
    goto block62;

  block62:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    $return := z0;
    goto block63;

  block63:
    return;

  anon8_Then:
    assume {:partition} $b1 <= 0;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "thenblock"} true;
    goto block62;

  anon7_Then:
    assume {:partition} $b0 > 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block61;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b1: int;
  var d1: int;
  var d0: int;
  var z0: int;
  var $b0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 90, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} true;
    $b0 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    z0 := 1;
    goto block64;

  block64:
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} true;
    $b1 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    z0 := 0;
    goto block65;

  block65:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    $return := z0;
    goto block66;

  block66:
    return;

  anon8_Then:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "thenblock"} true;
    goto block65;

  anon7_Then:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "thenblock"} true;
    goto block64;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var d1: int;
  var z0: int;
  var $b0: int;
  var $b1: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 97, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} true;
    $b0 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    z0 := 1;
    goto block67;

  block67:
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} true;
    $b1 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    z0 := 0;
    goto block68;

  block68:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    $return := z0;
    goto block69;

  block69:
    return;

  anon8_Then:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "thenblock"} true;
    goto block68;

  anon7_Then:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "thenblock"} true;
    goto block67;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r1: ref;
  var r0: ref;
  var z0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$in_parameter__0, fixed.$type] <: fixed.java.lang.Object;
    assume fixed.$heap[$in_parameter__1, fixed.$type] <: fixed.java.lang.Object;
    $exception := fixed.$null;
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
    goto block70;

  block70:
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 0;
    goto block71;

  block71:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    $return := z0;
    goto block72;

  block72:
    return;

  anon8_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block71;

  anon7_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block70;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var r0: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$in_parameter__1, fixed.$type] <: fixed.java.lang.Object;
    assume fixed.$heap[$in_parameter__0, fixed.$type] <: fixed.java.lang.Object;
    $exception := fixed.$null;
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
    goto block73;

  block73:
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 0;
    goto block74;

  block74:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    $return := z0;
    goto block75;

  block75:
    return;

  anon8_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block74;

  anon7_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block73;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var r1: ref;
  var r2: ref;
  var r0: ref;
  var z0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$in_parameter__1, fixed.$type] <: fixed.java.lang.Object;
    assume fixed.$heap[$return, fixed.$type] <: fixed.java.lang.Object;
    assume fixed.$heap[$in_parameter__2, fixed.$type] <: fixed.java.lang.Object;
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r0;
    goto block76;

  block76:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r1;
    goto block77;

  block77:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    $return := r2;
    goto block78;

  block78:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block77;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block76;
}



implementation fixed.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := fixed.$null;
    return;
}



implementation fixed.MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9(in_$return: int, 
    in_$exception: ref, 
    in_$r7: ref, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_2: ref, 
    in_i7: int, 
    in_i6: int, 
    in_$fakelocal_1: ref, 
    in_$r5: ref, 
    in_r0: ref, 
    in_$r8: ref, 
    in_z0: int, 
    in_$i5: int, 
    in_$r6: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$r7: ref, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_2: ref, 
    out_i7: int, 
    out_i6: int, 
    out_$fakelocal_1: ref, 
    out_$r5: ref, 
    out_$r8: ref, 
    out_$i5: int, 
    out_$r6: ref)
{
  var inline$java.lang.Integer$intValue$$0$$i0: int;
  var inline$java.lang.Integer$intValue$$0$r0: ref;
  var inline$java.lang.Integer$intValue$$0$$this: ref;
  var inline$java.lang.Integer$intValue$$0$$return: int;
  var inline$java.lang.Integer$intValue$$0$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$0$$fakelocal_0: ref;
  var inline$java.lang.Integer$valueOf$int$0$$r0: ref;
  var inline$java.lang.Integer$valueOf$int$0$i0: int;
  var inline$java.lang.Integer$valueOf$int$0$$in_parameter__0: int;
  var inline$java.lang.Integer$valueOf$int$0$$return: ref;
  var inline$java.lang.Integer$valueOf$int$0$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$0$$objIndex: int;
  var inline$java.lang.Integer$valueOf$int$0$$heap: $heap_type;
  var inline$java.lang.Integer$$la$init$ra$$int$0$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$1$$fakelocal_0: ref;
  var inline$java.lang.Integer$valueOf$int$1$$r0: ref;
  var inline$java.lang.Integer$valueOf$int$1$i0: int;
  var inline$java.lang.Integer$valueOf$int$1$$in_parameter__0: int;
  var inline$java.lang.Integer$valueOf$int$1$$return: ref;
  var inline$java.lang.Integer$valueOf$int$1$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$1$$objIndex: int;
  var inline$java.lang.Integer$valueOf$int$1$$heap: $heap_type;
  var inline$java.lang.Integer$$la$init$ra$$int$1$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$1$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$1$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$1$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$1$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$1$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$1$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$1$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$return: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$exception: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r7: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_3: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_2: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i7: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i6: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_1: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r5: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_r0: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r8: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_z0: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$i5: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r6: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_3: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_2: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i6: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_1: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r5: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$i5: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r6: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$objIndex: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$heap: $heap_type;
  var inline$java.lang.Integer$intValue$$1$$i0: int;
  var inline$java.lang.Integer$intValue$$1$r0: ref;
  var inline$java.lang.Integer$intValue$$1$$this: ref;
  var inline$java.lang.Integer$intValue$$1$$return: int;
  var inline$java.lang.Integer$intValue$$1$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$2$$fakelocal_0: ref;
  var inline$java.lang.Integer$valueOf$int$2$$r0: ref;
  var inline$java.lang.Integer$valueOf$int$2$i0: int;
  var inline$java.lang.Integer$valueOf$int$2$$in_parameter__0: int;
  var inline$java.lang.Integer$valueOf$int$2$$return: ref;
  var inline$java.lang.Integer$valueOf$int$2$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$2$$objIndex: int;
  var inline$java.lang.Integer$valueOf$int$2$$heap: $heap_type;
  var inline$java.lang.Integer$$la$init$ra$$int$2$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$2$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$2$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$2$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$2$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$2$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$2$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$2$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$3$$fakelocal_0: ref;
  var inline$java.lang.Integer$valueOf$int$3$$r0: ref;
  var inline$java.lang.Integer$valueOf$int$3$i0: int;
  var inline$java.lang.Integer$valueOf$int$3$$in_parameter__0: int;
  var inline$java.lang.Integer$valueOf$int$3$$return: ref;
  var inline$java.lang.Integer$valueOf$int$3$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$3$$objIndex: int;
  var inline$java.lang.Integer$valueOf$int$3$$heap: $heap_type;
  var inline$java.lang.Integer$$la$init$ra$$int$3$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$3$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$3$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$3$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$3$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$3$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$3$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$3$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception: ref;

  entry:
    out_$return, out_$exception, out_$r7, out_$fakelocal_3, out_$fakelocal_2, out_i7, out_i6, out_$fakelocal_1, out_$r5, out_$r8, out_$i5, out_$r6 := in_$return, in_$exception, in_$r7, in_$fakelocal_3, in_$fakelocal_2, in_i7, in_i6, in_$fakelocal_1, in_$r5, in_$r8, in_$i5, in_$r6;
    goto block9;

  block9:
    assert {:sourceloc "MoreSanity.java", 28, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Then:
    assume {:partition} out_i7 < 0;
    assert {:sourceloc "MoreSanity.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$r7, out_$fakelocal_3, out_$fakelocal_2, out_i7, out_i6, out_$fakelocal_1, out_$r5, out_$r8, out_$i5, out_$r6 := in_$return, in_$exception, in_$r7, in_$fakelocal_3, in_$fakelocal_2, in_i7, in_i6, in_$fakelocal_1, in_$r5, in_$r8, in_$i5, in_$r6;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon15:
    goto inline$java.lang.Integer$intValue$$0$Entry;

  inline$java.lang.Integer$intValue$$0$Entry:
    inline$java.lang.Integer$intValue$$0$$this := out_$r8;
    havoc inline$java.lang.Integer$intValue$$0$$i0, inline$java.lang.Integer$intValue$$0$r0, inline$java.lang.Integer$intValue$$0$$return, inline$java.lang.Integer$intValue$$0$$exception;
    goto inline$java.lang.Integer$intValue$$0$anon0;

  inline$java.lang.Integer$intValue$$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$intValue$$0$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$intValue$$0$$this != fixed.$null;
    inline$java.lang.Integer$intValue$$0$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$intValue$$0$r0 := inline$java.lang.Integer$intValue$$0$$this;
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    inline$java.lang.Integer$intValue$$0$$i0 := fixed.$heap[inline$java.lang.Integer$intValue$$0$r0, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    inline$java.lang.Integer$intValue$$0$$return := inline$java.lang.Integer$intValue$$0$$i0;
    goto inline$java.lang.Integer$intValue$$0$block3;

  inline$java.lang.Integer$intValue$$0$block3:
    goto inline$java.lang.Integer$intValue$$0$Return;

  inline$java.lang.Integer$intValue$$0$Return:
    out_i6 := inline$java.lang.Integer$intValue$$0$$return;
    out_$exception := inline$java.lang.Integer$intValue$$0$$exception;
    goto anon15$1;

  anon15$1:
    assert {:sourceloc "MoreSanity.java", 30, -1, -1, -1} true;
    out_i7 := out_i7 + -1;
    assert {:sourceloc "MoreSanity.java", 30, -1, -1, -1} true;
    goto anon15_dummy;

  anon32_Then:
    assume {:partition} out_$r8 != fixed.$null;
    out_$exception := out_$exception;
    goto anon15;

  anon12:
    out_$r8 := out_$r7;
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} out_$r8 == fixed.$null;
    call out_$fakelocal_3 := fixed.$new(fixed.java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$r7, out_$fakelocal_3, out_$fakelocal_2, out_i7, out_i6, out_$fakelocal_1, out_$r5, out_$r8, out_$i5, out_$r6 := in_$return, in_$exception, in_$r7, in_$fakelocal_3, in_$fakelocal_2, in_i7, in_i6, in_$fakelocal_1, in_$r5, in_$r8, in_$i5, in_$r6;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon31_Then:
    assume {:partition} fixed.$heap[out_$r7, fixed.$type] <: fixed.java.lang.Integer;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    out_$i5 := fixed.$intArrHeap[in_r0][out_i7];
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto inline$java.lang.Integer$valueOf$int$0$Entry;

  inline$java.lang.Integer$valueOf$int$0$Entry:
    inline$java.lang.Integer$valueOf$int$0$$in_parameter__0 := out_$i5;
    havoc inline$java.lang.Integer$valueOf$int$0$$fakelocal_0, inline$java.lang.Integer$valueOf$int$0$$r0, inline$java.lang.Integer$valueOf$int$0$i0, inline$java.lang.Integer$valueOf$int$0$$return, inline$java.lang.Integer$valueOf$int$0$$exception;
    inline$java.lang.Integer$valueOf$int$0$$objIndex := fixed.$objIndex;
    inline$java.lang.Integer$valueOf$int$0$$heap := fixed.$heap;
    goto inline$java.lang.Integer$valueOf$int$0$anon0;

  inline$java.lang.Integer$valueOf$int$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Integer$valueOf$int$0$$return, fixed.$type]
   <: fixed.java.lang.Integer;
    inline$java.lang.Integer$valueOf$int$0$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$0$i0 := inline$java.lang.Integer$valueOf$int$0$$in_parameter__0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    call inline$java.lang.Integer$valueOf$int$0$$fakelocal_0 := fixed.$new(fixed.java.lang.Integer);
    inline$java.lang.Integer$valueOf$int$0$$r0 := inline$java.lang.Integer$valueOf$int$0$$fakelocal_0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$Entry;

  inline$java.lang.Integer$$la$init$ra$$int$0$Entry:
    inline$java.lang.Integer$$la$init$ra$$int$0$$this := inline$java.lang.Integer$valueOf$int$0$$r0;
    inline$java.lang.Integer$$la$init$ra$$int$0$$in_parameter__0 := inline$java.lang.Integer$valueOf$int$0$i0;
    havoc inline$java.lang.Integer$$la$init$ra$$int$0$r0, inline$java.lang.Integer$$la$init$ra$$int$0$i0, inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
    inline$java.lang.Integer$$la$init$ra$$int$0$$heap := fixed.$heap;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$anon0;

  inline$java.lang.Integer$$la$init$ra$$int$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$0$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$$la$init$ra$$int$0$$this != fixed.$null;
    inline$java.lang.Integer$$la$init$ra$$int$0$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$0$r0 := inline$java.lang.Integer$$la$init$ra$$int$0$$this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$0$i0 := inline$java.lang.Integer$$la$init$ra$$int$0$$in_parameter__0;
    assert {:sourceloc "Integer.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$java.lang.Object$$la$init$ra$$$0$$this := inline$java.lang.Integer$$la$init$ra$$int$0$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    inline$java.lang.Integer$$la$init$ra$$int$0$$exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$anon0$1;

  inline$java.lang.Integer$$la$init$ra$$int$0$anon0$1:
    assert {:sourceloc "Integer.java", 9, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$0$r0, fixed.int$java.lang.Integer$value0 := inline$java.lang.Integer$$la$init$ra$$int$0$i0];
    assert {:sourceloc "Integer.java", 10, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$block1;

  inline$java.lang.Integer$$la$init$ra$$int$0$block1:
    goto inline$java.lang.Integer$$la$init$ra$$int$0$Return;

  inline$java.lang.Integer$$la$init$ra$$int$0$Return:
    inline$java.lang.Integer$valueOf$int$0$$exception := inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
    goto inline$java.lang.Integer$valueOf$int$0$anon0$1;

  inline$java.lang.Integer$valueOf$int$0$anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$0$$return := inline$java.lang.Integer$valueOf$int$0$$r0;
    goto inline$java.lang.Integer$valueOf$int$0$block2;

  inline$java.lang.Integer$valueOf$int$0$block2:
    goto inline$java.lang.Integer$valueOf$int$0$Return;

  inline$java.lang.Integer$valueOf$int$0$Return:
    out_$r5 := inline$java.lang.Integer$valueOf$int$0$$return;
    out_$exception := inline$java.lang.Integer$valueOf$int$0$$exception;
    goto anon9$1;

  anon9$1:
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto inline$java.lang.Integer$valueOf$int$1$Entry;

  inline$java.lang.Integer$valueOf$int$1$Entry:
    inline$java.lang.Integer$valueOf$int$1$$in_parameter__0 := out_i6;
    havoc inline$java.lang.Integer$valueOf$int$1$$fakelocal_0, inline$java.lang.Integer$valueOf$int$1$$r0, inline$java.lang.Integer$valueOf$int$1$i0, inline$java.lang.Integer$valueOf$int$1$$return, inline$java.lang.Integer$valueOf$int$1$$exception;
    inline$java.lang.Integer$valueOf$int$1$$objIndex := fixed.$objIndex;
    inline$java.lang.Integer$valueOf$int$1$$heap := fixed.$heap;
    goto inline$java.lang.Integer$valueOf$int$1$anon0;

  inline$java.lang.Integer$valueOf$int$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Integer$valueOf$int$1$$return, fixed.$type]
   <: fixed.java.lang.Integer;
    inline$java.lang.Integer$valueOf$int$1$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$1$i0 := inline$java.lang.Integer$valueOf$int$1$$in_parameter__0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    call inline$java.lang.Integer$valueOf$int$1$$fakelocal_0 := fixed.$new(fixed.java.lang.Integer);
    inline$java.lang.Integer$valueOf$int$1$$r0 := inline$java.lang.Integer$valueOf$int$1$$fakelocal_0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$1$Entry;

  inline$java.lang.Integer$$la$init$ra$$int$1$Entry:
    inline$java.lang.Integer$$la$init$ra$$int$1$$this := inline$java.lang.Integer$valueOf$int$1$$r0;
    inline$java.lang.Integer$$la$init$ra$$int$1$$in_parameter__0 := inline$java.lang.Integer$valueOf$int$1$i0;
    havoc inline$java.lang.Integer$$la$init$ra$$int$1$r0, inline$java.lang.Integer$$la$init$ra$$int$1$i0, inline$java.lang.Integer$$la$init$ra$$int$1$$exception;
    inline$java.lang.Integer$$la$init$ra$$int$1$$heap := fixed.$heap;
    goto inline$java.lang.Integer$$la$init$ra$$int$1$anon0;

  inline$java.lang.Integer$$la$init$ra$$int$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$1$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$$la$init$ra$$int$1$$this != fixed.$null;
    inline$java.lang.Integer$$la$init$ra$$int$1$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$1$r0 := inline$java.lang.Integer$$la$init$ra$$int$1$$this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$1$i0 := inline$java.lang.Integer$$la$init$ra$$int$1$$in_parameter__0;
    assert {:sourceloc "Integer.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$1$Entry;

  inline$java.lang.Object$$la$init$ra$$$1$Entry:
    inline$java.lang.Object$$la$init$ra$$$1$$this := inline$java.lang.Integer$$la$init$ra$$int$1$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$1$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$1$anon0;

  inline$java.lang.Object$$la$init$ra$$$1$anon0:
    inline$java.lang.Object$$la$init$ra$$$1$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$1$Return;

  inline$java.lang.Object$$la$init$ra$$$1$Return:
    inline$java.lang.Integer$$la$init$ra$$int$1$$exception := inline$java.lang.Object$$la$init$ra$$$1$$exception;
    goto inline$java.lang.Integer$$la$init$ra$$int$1$anon0$1;

  inline$java.lang.Integer$$la$init$ra$$int$1$anon0$1:
    assert {:sourceloc "Integer.java", 9, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$1$r0, fixed.int$java.lang.Integer$value0 := inline$java.lang.Integer$$la$init$ra$$int$1$i0];
    assert {:sourceloc "Integer.java", 10, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$1$block1;

  inline$java.lang.Integer$$la$init$ra$$int$1$block1:
    goto inline$java.lang.Integer$$la$init$ra$$int$1$Return;

  inline$java.lang.Integer$$la$init$ra$$int$1$Return:
    inline$java.lang.Integer$valueOf$int$1$$exception := inline$java.lang.Integer$$la$init$ra$$int$1$$exception;
    goto inline$java.lang.Integer$valueOf$int$1$anon0$1;

  inline$java.lang.Integer$valueOf$int$1$anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$1$$return := inline$java.lang.Integer$valueOf$int$1$$r0;
    goto inline$java.lang.Integer$valueOf$int$1$block2;

  inline$java.lang.Integer$valueOf$int$1$block2:
    goto inline$java.lang.Integer$valueOf$int$1$Return;

  inline$java.lang.Integer$valueOf$int$1$Return:
    out_$r6 := inline$java.lang.Integer$valueOf$int$1$$return;
    out_$exception := inline$java.lang.Integer$valueOf$int$1$$exception;
    goto anon9$2;

  anon9$2:
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0 := in_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1 := out_$r5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2 := out_$r6;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block76;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block76:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block77;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block77:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block78;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block78:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block77;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block76;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return:
    out_$r7 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return;
    out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto anon9$3;

  anon9$3:
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(fixed.$heap[out_$r7, fixed.$type] <: fixed.java.lang.Integer);
    call out_$fakelocal_2 := fixed.$new(fixed.java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$r7, out_$fakelocal_3, out_$fakelocal_2, out_i7, out_i6, out_$fakelocal_1, out_$r5, out_$r8, out_$i5, out_$r6 := in_$return, in_$exception, in_$r7, in_$fakelocal_3, in_$fakelocal_2, in_i7, in_i6, in_$fakelocal_1, in_$r5, in_$r8, in_$i5, in_$r6;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon30_Then:
    assume {:partition} out_i7 < fixed.$arrSizeHeap[in_r0] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon9;

  anon6:
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(out_i7 < fixed.$arrSizeHeap[in_r0] && out_i7 >= 0);
    call out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$r7, out_$fakelocal_3, out_$fakelocal_2, out_i7, out_i6, out_$fakelocal_1, out_$r5, out_$r8, out_$i5, out_$r6 := in_$return, in_$exception, in_$r7, in_$fakelocal_3, in_$fakelocal_2, in_i7, in_i6, in_$fakelocal_1, in_$r5, in_$r8, in_$i5, in_$r6;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon29_Else:
    assume {:partition} 0 <= out_i7;
    assert {:sourceloc "MoreSanity.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon15_dummy:
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$Entry;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$Entry:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$return := out_$return;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$exception := out_$exception;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r7 := out_$r7;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_3 := out_$fakelocal_3;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_2 := out_$fakelocal_2;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i7 := out_i7;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i6 := out_i6;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_1 := out_$fakelocal_1;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r5 := out_$r5;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_r0 := in_r0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r8 := out_$r8;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_z0 := in_z0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$i5 := out_$i5;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r6 := out_$r6;
    havoc inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r6;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$objIndex := fixed.$objIndex;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$heap := fixed.$heap;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$entry;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$entry:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r6 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r6;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$block9;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$block9:
    assert {:sourceloc "MoreSanity.java", 28, -1, -1, -1} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon29_Then, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon29_Else;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon29_Then:
    assume {:partition} inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7 < 0;
    assert {:sourceloc "MoreSanity.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r6 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r6;
    fixed.$objIndex, fixed.$heap := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$objIndex, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$heap;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon15:
    goto inline$java.lang.Integer$intValue$$1$Entry;

  inline$java.lang.Integer$intValue$$1$Entry:
    inline$java.lang.Integer$intValue$$1$$this := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8;
    havoc inline$java.lang.Integer$intValue$$1$$i0, inline$java.lang.Integer$intValue$$1$r0, inline$java.lang.Integer$intValue$$1$$return, inline$java.lang.Integer$intValue$$1$$exception;
    goto inline$java.lang.Integer$intValue$$1$anon0;

  inline$java.lang.Integer$intValue$$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$intValue$$1$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$intValue$$1$$this != fixed.$null;
    inline$java.lang.Integer$intValue$$1$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$intValue$$1$r0 := inline$java.lang.Integer$intValue$$1$$this;
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    inline$java.lang.Integer$intValue$$1$$i0 := fixed.$heap[inline$java.lang.Integer$intValue$$1$r0, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    inline$java.lang.Integer$intValue$$1$$return := inline$java.lang.Integer$intValue$$1$$i0;
    goto inline$java.lang.Integer$intValue$$1$block3;

  inline$java.lang.Integer$intValue$$1$block3:
    goto inline$java.lang.Integer$intValue$$1$Return;

  inline$java.lang.Integer$intValue$$1$Return:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i6 := inline$java.lang.Integer$intValue$$1$$return;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception := inline$java.lang.Integer$intValue$$1$$exception;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon15$1;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon15$1:
    assert {:sourceloc "MoreSanity.java", 30, -1, -1, -1} true;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7 + -1;
    assert {:sourceloc "MoreSanity.java", 30, -1, -1, -1} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon15_dummy;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon32_Then:
    assume {:partition} inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8
   != fixed.$null;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon15;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon12:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7;
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon32_Then, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon32_Else;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon32_Else:
    assume {:partition} inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8
   == fixed.$null;
    call inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_3 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return := 0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_3;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r6 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r6;
    fixed.$objIndex, fixed.$heap := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$objIndex, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$heap;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon31_Then:
    assume {:partition} fixed.$heap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7, fixed.$type]
   <: fixed.java.lang.Integer;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon12;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon9:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$i5 := fixed.$intArrHeap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_r0][inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7];
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto inline$java.lang.Integer$valueOf$int$2$Entry;

  inline$java.lang.Integer$valueOf$int$2$Entry:
    inline$java.lang.Integer$valueOf$int$2$$in_parameter__0 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$i5;
    havoc inline$java.lang.Integer$valueOf$int$2$$fakelocal_0, inline$java.lang.Integer$valueOf$int$2$$r0, inline$java.lang.Integer$valueOf$int$2$i0, inline$java.lang.Integer$valueOf$int$2$$return, inline$java.lang.Integer$valueOf$int$2$$exception;
    inline$java.lang.Integer$valueOf$int$2$$objIndex := fixed.$objIndex;
    inline$java.lang.Integer$valueOf$int$2$$heap := fixed.$heap;
    goto inline$java.lang.Integer$valueOf$int$2$anon0;

  inline$java.lang.Integer$valueOf$int$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Integer$valueOf$int$2$$return, fixed.$type]
   <: fixed.java.lang.Integer;
    inline$java.lang.Integer$valueOf$int$2$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$2$i0 := inline$java.lang.Integer$valueOf$int$2$$in_parameter__0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    call inline$java.lang.Integer$valueOf$int$2$$fakelocal_0 := fixed.$new(fixed.java.lang.Integer);
    inline$java.lang.Integer$valueOf$int$2$$r0 := inline$java.lang.Integer$valueOf$int$2$$fakelocal_0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$2$Entry;

  inline$java.lang.Integer$$la$init$ra$$int$2$Entry:
    inline$java.lang.Integer$$la$init$ra$$int$2$$this := inline$java.lang.Integer$valueOf$int$2$$r0;
    inline$java.lang.Integer$$la$init$ra$$int$2$$in_parameter__0 := inline$java.lang.Integer$valueOf$int$2$i0;
    havoc inline$java.lang.Integer$$la$init$ra$$int$2$r0, inline$java.lang.Integer$$la$init$ra$$int$2$i0, inline$java.lang.Integer$$la$init$ra$$int$2$$exception;
    inline$java.lang.Integer$$la$init$ra$$int$2$$heap := fixed.$heap;
    goto inline$java.lang.Integer$$la$init$ra$$int$2$anon0;

  inline$java.lang.Integer$$la$init$ra$$int$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$2$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$$la$init$ra$$int$2$$this != fixed.$null;
    inline$java.lang.Integer$$la$init$ra$$int$2$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$2$r0 := inline$java.lang.Integer$$la$init$ra$$int$2$$this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$2$i0 := inline$java.lang.Integer$$la$init$ra$$int$2$$in_parameter__0;
    assert {:sourceloc "Integer.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$2$Entry;

  inline$java.lang.Object$$la$init$ra$$$2$Entry:
    inline$java.lang.Object$$la$init$ra$$$2$$this := inline$java.lang.Integer$$la$init$ra$$int$2$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$2$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$2$anon0;

  inline$java.lang.Object$$la$init$ra$$$2$anon0:
    inline$java.lang.Object$$la$init$ra$$$2$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$2$Return;

  inline$java.lang.Object$$la$init$ra$$$2$Return:
    inline$java.lang.Integer$$la$init$ra$$int$2$$exception := inline$java.lang.Object$$la$init$ra$$$2$$exception;
    goto inline$java.lang.Integer$$la$init$ra$$int$2$anon0$1;

  inline$java.lang.Integer$$la$init$ra$$int$2$anon0$1:
    assert {:sourceloc "Integer.java", 9, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$2$r0, fixed.int$java.lang.Integer$value0 := inline$java.lang.Integer$$la$init$ra$$int$2$i0];
    assert {:sourceloc "Integer.java", 10, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$2$block1;

  inline$java.lang.Integer$$la$init$ra$$int$2$block1:
    goto inline$java.lang.Integer$$la$init$ra$$int$2$Return;

  inline$java.lang.Integer$$la$init$ra$$int$2$Return:
    inline$java.lang.Integer$valueOf$int$2$$exception := inline$java.lang.Integer$$la$init$ra$$int$2$$exception;
    goto inline$java.lang.Integer$valueOf$int$2$anon0$1;

  inline$java.lang.Integer$valueOf$int$2$anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$2$$return := inline$java.lang.Integer$valueOf$int$2$$r0;
    goto inline$java.lang.Integer$valueOf$int$2$block2;

  inline$java.lang.Integer$valueOf$int$2$block2:
    goto inline$java.lang.Integer$valueOf$int$2$Return;

  inline$java.lang.Integer$valueOf$int$2$Return:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r5 := inline$java.lang.Integer$valueOf$int$2$$return;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception := inline$java.lang.Integer$valueOf$int$2$$exception;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon9$1;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon9$1:
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto inline$java.lang.Integer$valueOf$int$3$Entry;

  inline$java.lang.Integer$valueOf$int$3$Entry:
    inline$java.lang.Integer$valueOf$int$3$$in_parameter__0 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i6;
    havoc inline$java.lang.Integer$valueOf$int$3$$fakelocal_0, inline$java.lang.Integer$valueOf$int$3$$r0, inline$java.lang.Integer$valueOf$int$3$i0, inline$java.lang.Integer$valueOf$int$3$$return, inline$java.lang.Integer$valueOf$int$3$$exception;
    inline$java.lang.Integer$valueOf$int$3$$objIndex := fixed.$objIndex;
    inline$java.lang.Integer$valueOf$int$3$$heap := fixed.$heap;
    goto inline$java.lang.Integer$valueOf$int$3$anon0;

  inline$java.lang.Integer$valueOf$int$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Integer$valueOf$int$3$$return, fixed.$type]
   <: fixed.java.lang.Integer;
    inline$java.lang.Integer$valueOf$int$3$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$3$i0 := inline$java.lang.Integer$valueOf$int$3$$in_parameter__0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    call inline$java.lang.Integer$valueOf$int$3$$fakelocal_0 := fixed.$new(fixed.java.lang.Integer);
    inline$java.lang.Integer$valueOf$int$3$$r0 := inline$java.lang.Integer$valueOf$int$3$$fakelocal_0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$3$Entry;

  inline$java.lang.Integer$$la$init$ra$$int$3$Entry:
    inline$java.lang.Integer$$la$init$ra$$int$3$$this := inline$java.lang.Integer$valueOf$int$3$$r0;
    inline$java.lang.Integer$$la$init$ra$$int$3$$in_parameter__0 := inline$java.lang.Integer$valueOf$int$3$i0;
    havoc inline$java.lang.Integer$$la$init$ra$$int$3$r0, inline$java.lang.Integer$$la$init$ra$$int$3$i0, inline$java.lang.Integer$$la$init$ra$$int$3$$exception;
    inline$java.lang.Integer$$la$init$ra$$int$3$$heap := fixed.$heap;
    goto inline$java.lang.Integer$$la$init$ra$$int$3$anon0;

  inline$java.lang.Integer$$la$init$ra$$int$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$3$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$$la$init$ra$$int$3$$this != fixed.$null;
    inline$java.lang.Integer$$la$init$ra$$int$3$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$3$r0 := inline$java.lang.Integer$$la$init$ra$$int$3$$this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$3$i0 := inline$java.lang.Integer$$la$init$ra$$int$3$$in_parameter__0;
    assert {:sourceloc "Integer.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$3$Entry;

  inline$java.lang.Object$$la$init$ra$$$3$Entry:
    inline$java.lang.Object$$la$init$ra$$$3$$this := inline$java.lang.Integer$$la$init$ra$$int$3$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$3$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$3$anon0;

  inline$java.lang.Object$$la$init$ra$$$3$anon0:
    inline$java.lang.Object$$la$init$ra$$$3$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$3$Return;

  inline$java.lang.Object$$la$init$ra$$$3$Return:
    inline$java.lang.Integer$$la$init$ra$$int$3$$exception := inline$java.lang.Object$$la$init$ra$$$3$$exception;
    goto inline$java.lang.Integer$$la$init$ra$$int$3$anon0$1;

  inline$java.lang.Integer$$la$init$ra$$int$3$anon0$1:
    assert {:sourceloc "Integer.java", 9, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$3$r0, fixed.int$java.lang.Integer$value0 := inline$java.lang.Integer$$la$init$ra$$int$3$i0];
    assert {:sourceloc "Integer.java", 10, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$3$block1;

  inline$java.lang.Integer$$la$init$ra$$int$3$block1:
    goto inline$java.lang.Integer$$la$init$ra$$int$3$Return;

  inline$java.lang.Integer$$la$init$ra$$int$3$Return:
    inline$java.lang.Integer$valueOf$int$3$$exception := inline$java.lang.Integer$$la$init$ra$$int$3$$exception;
    goto inline$java.lang.Integer$valueOf$int$3$anon0$1;

  inline$java.lang.Integer$valueOf$int$3$anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$3$$return := inline$java.lang.Integer$valueOf$int$3$$r0;
    goto inline$java.lang.Integer$valueOf$int$3$block2;

  inline$java.lang.Integer$valueOf$int$3$block2:
    goto inline$java.lang.Integer$valueOf$int$3$Return;

  inline$java.lang.Integer$valueOf$int$3$Return:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r6 := inline$java.lang.Integer$valueOf$int$3$$return;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception := inline$java.lang.Integer$valueOf$int$3$$exception;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon9$2;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon9$2:
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r6;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block76;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block76:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block77;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block77:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block78;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block78:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block77;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block76;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon9$3;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon9$3:
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon31_Then, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon31_Else;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon31_Else:
    assume {:partition} !(fixed.$heap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7, fixed.$type]
   <: fixed.java.lang.Integer);
    call inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return := 0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_2;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r6 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r6;
    fixed.$objIndex, fixed.$heap := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$objIndex, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$heap;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon30_Then:
    assume {:partition} inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7
     < fixed.$arrSizeHeap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_r0]
   && inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7 >= 0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon9;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon6:
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon30_Then, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon30_Else;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon30_Else:
    assume {:partition} !(inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7
     < fixed.$arrSizeHeap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_r0]
   && inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7 >= 0);
    call inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return := 0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_1;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r6 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_2, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i7, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_i6, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$fakelocal_1, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r8, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$i5, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$in_$r6;
    fixed.$objIndex, fixed.$heap := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$objIndex, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$$heap;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon29_Else:
    assume {:partition} 0 <= inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7;
    assert {:sourceloc "MoreSanity.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon6;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$anon15_dummy:
    assume false;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$exit:
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$Return:
    out_$return := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$return;
    out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$exception;
    out_$r7 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r7;
    out_$fakelocal_3 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_3;
    out_$fakelocal_2 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_2;
    out_i7 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i7;
    out_i6 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_i6;
    out_$fakelocal_1 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$fakelocal_1;
    out_$r5 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r5;
    out_$r8 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r8;
    out_$i5 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$i5;
    out_$r6 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block9$0$out_$r6;
    goto anon15_dummy$1;

  anon15_dummy$1:
    return;

  exit:
    return;
}



implementation fixed.MoreSanity$loopAndbranch_safe$int_int_loop_block13(in_i2: int) returns (out_i2: int)
{
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$in_i2: int;
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2: int;

  entry:
    out_i2 := in_i2;
    goto block13;

  block13:
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Then:
    assume {:partition} out_i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    out_i2 := in_i2;
    return;

  anon5:
    assert {:sourceloc "MoreSanity.java", 44, -1, -1, -1} true;
    out_i2 := out_i2 + -1;
    assert {:sourceloc "MoreSanity.java", 44, -1, -1, -1} true;
    goto anon5_dummy;

  anon19_Else:
    assume {:partition} 0 < out_i2;
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} {:comment "elseblock"} true;
    goto anon5;

  anon5_dummy:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$Entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$Entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$in_i2 := out_i2;
    havoc inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$in_i2;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$block13;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$block13:
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon19_Then, inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon19_Else;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon19_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$in_i2;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon5:
    assert {:sourceloc "MoreSanity.java", 44, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2 + -1;
    assert {:sourceloc "MoreSanity.java", 44, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon5_dummy;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon19_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2;
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon5;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon5_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$exit:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$Return:
    out_i2 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2;
    goto anon5_dummy$1;

  anon5_dummy$1:
    return;

  exit:
    return;
}



implementation fixed.MoreSanity$loopAndbranch_safe$int_int_loop_block16(in_i4: int) returns (out_i4: int)
{
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$in_i4: int;
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4: int;

  entry:
    out_i4 := in_i4;
    goto block16;

  block16:
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;

  anon21_Then:
    assume {:partition} out_i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} {:comment "thenblock"} true;
    out_i4 := in_i4;
    return;

  anon11:
    assert {:sourceloc "MoreSanity.java", 53, -1, -1, -1} true;
    out_i4 := out_i4 + -1;
    assert {:sourceloc "MoreSanity.java", 53, -1, -1, -1} true;
    goto anon11_dummy;

  anon21_Else:
    assume {:partition} 0 < out_i4;
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} {:comment "elseblock"} true;
    goto anon11;

  anon11_dummy:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$Entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$Entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$in_i4 := out_i4;
    havoc inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$in_i4;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$block16;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$block16:
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon21_Then, inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon21_Else;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon21_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$in_i4;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon11:
    assert {:sourceloc "MoreSanity.java", 53, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4 + -1;
    assert {:sourceloc "MoreSanity.java", 53, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon11_dummy;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon21_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4;
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon11;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon11_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$exit:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$Return:
    out_i4 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4;
    goto anon11_dummy$1;

  anon11_dummy$1:
    return;

  exit:
    return;
}



implementation fixed.MoreSanity$loopAndbranch_safe$int_int_loop_block18(in_i5: int) returns (out_i5: int)
{
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i5: int;
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5: int;

  entry:
    out_i5 := in_i5;
    goto block18;

  block18:
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;

  anon23_Then:
    assume {:partition} out_i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} {:comment "thenblock"} true;
    out_i5 := in_i5;
    return;

  anon17:
    assert {:sourceloc "MoreSanity.java", 59, -1, -1, -1} true;
    out_i5 := out_i5 + -1;
    assert {:sourceloc "MoreSanity.java", 59, -1, -1, -1} true;
    goto anon17_dummy;

  anon23_Else:
    assume {:partition} 0 < out_i5;
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17_dummy:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i5 := out_i5;
    havoc inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i5;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$block18;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$block18:
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon23_Then, inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon23_Else;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon23_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i5;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon17:
    assert {:sourceloc "MoreSanity.java", 59, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5 + -1;
    assert {:sourceloc "MoreSanity.java", 59, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon17_dummy;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon23_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5;
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon17;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon17_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$exit:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return:
    out_i5 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5;
    goto anon17_dummy$1;

  anon17_dummy$1:
    return;

  exit:
    return;
}



implementation fixed.MoreSanity$loopAndbranch_unsafe$int_int_loop_block21(in_i2: int) returns (out_i2: int)
{
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$in_i2: int;
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$out_i2: int;

  entry:
    out_i2 := in_i2;
    goto block21;

  block21:
    assert {:sourceloc "MoreSanity.java", 71, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Then:
    assume {:partition} out_i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    out_i2 := in_i2;
    return;

  anon5:
    assert {:sourceloc "MoreSanity.java", 72, -1, -1, -1} true;
    out_i2 := out_i2 + -1;
    assert {:sourceloc "MoreSanity.java", 72, -1, -1, -1} true;
    goto anon5_dummy;

  anon19_Else:
    assume {:partition} 0 < out_i2;
    assert {:sourceloc "MoreSanity.java", 71, -1, -1, -1} {:comment "elseblock"} true;
    goto anon5;

  anon5_dummy:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$Entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$Entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$in_i2 := out_i2;
    havoc inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$out_i2;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$out_i2 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$in_i2;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$block21;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$block21:
    assert {:sourceloc "MoreSanity.java", 71, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$anon19_Then, inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$anon19_Else;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$anon19_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$out_i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$out_i2 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$in_i2;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$anon5:
    assert {:sourceloc "MoreSanity.java", 72, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$out_i2 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$out_i2 + -1;
    assert {:sourceloc "MoreSanity.java", 72, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$anon5_dummy;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$anon19_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$out_i2;
    assert {:sourceloc "MoreSanity.java", 71, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$anon5;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$anon5_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$exit:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$Return:
    out_i2 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block21$0$out_i2;
    goto anon5_dummy$1;

  anon5_dummy$1:
    return;

  exit:
    return;
}



implementation fixed.MoreSanity$loopAndbranch_unsafe$int_int_loop_block24(in_i4: int) returns (out_i4: int)
{
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$in_i4: int;
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$out_i4: int;

  entry:
    out_i4 := in_i4;
    goto block24;

  block24:
    assert {:sourceloc "MoreSanity.java", 80, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;

  anon21_Then:
    assume {:partition} out_i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 80, -1, -1, -1} {:comment "thenblock"} true;
    out_i4 := in_i4;
    return;

  anon11:
    assert {:sourceloc "MoreSanity.java", 81, -1, -1, -1} true;
    out_i4 := out_i4 + -1;
    assert {:sourceloc "MoreSanity.java", 81, -1, -1, -1} true;
    goto anon11_dummy;

  anon21_Else:
    assume {:partition} 0 < out_i4;
    assert {:sourceloc "MoreSanity.java", 80, -1, -1, -1} {:comment "elseblock"} true;
    goto anon11;

  anon11_dummy:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$Entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$Entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$in_i4 := out_i4;
    havoc inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$out_i4;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$out_i4 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$in_i4;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$block24;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$block24:
    assert {:sourceloc "MoreSanity.java", 80, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$anon21_Then, inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$anon21_Else;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$anon21_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$out_i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 80, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$out_i4 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$in_i4;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$anon11:
    assert {:sourceloc "MoreSanity.java", 81, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$out_i4 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$out_i4 + -1;
    assert {:sourceloc "MoreSanity.java", 81, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$anon11_dummy;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$anon21_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$out_i4;
    assert {:sourceloc "MoreSanity.java", 80, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$anon11;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$anon11_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$exit:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$Return:
    out_i4 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block24$0$out_i4;
    goto anon11_dummy$1;

  anon11_dummy$1:
    return;

  exit:
    return;
}



implementation fixed.MoreSanity$loopAndbranch_unsafe$int_int_loop_block26(in_i5: int) returns (out_i5: int)
{
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$in_i5: int;
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i5: int;

  entry:
    out_i5 := in_i5;
    goto block26;

  block26:
    assert {:sourceloc "MoreSanity.java", 86, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;

  anon23_Then:
    assume {:partition} out_i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 86, -1, -1, -1} {:comment "thenblock"} true;
    out_i5 := in_i5;
    return;

  anon17:
    assert {:sourceloc "MoreSanity.java", 87, -1, -1, -1} true;
    out_i5 := out_i5 + -1;
    assert {:sourceloc "MoreSanity.java", 87, -1, -1, -1} true;
    goto anon17_dummy;

  anon23_Else:
    assume {:partition} 0 < out_i5;
    assert {:sourceloc "MoreSanity.java", 86, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17_dummy:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$in_i5 := out_i5;
    havoc inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i5;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i5 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$in_i5;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$block26;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$block26:
    assert {:sourceloc "MoreSanity.java", 86, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon23_Then, inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon23_Else;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon23_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 86, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i5 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$in_i5;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon17:
    assert {:sourceloc "MoreSanity.java", 87, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i5 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i5 + -1;
    assert {:sourceloc "MoreSanity.java", 87, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon17_dummy;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon23_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i5;
    assert {:sourceloc "MoreSanity.java", 86, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon17;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon17_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$exit:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Return:
    out_i5 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i5;
    goto anon17_dummy$1;

  anon17_dummy$1:
    return;

  exit:
    return;
}



axiom (forall x: int :: 
  { fixed.$intToBool(x): bool } 
  fixed.$intToBool(x): bool <==> (if x == 0 then false else true));

axiom (forall x: ref :: 
  { fixed.$refToBool(x): bool } 
  fixed.$refToBool(x): bool <==> (if x == fixed.$null then false else true));

axiom (forall x: bool :: 
  { fixed.$boolToInt(x): int } 
  fixed.$boolToInt(x): int == (if x <==> true then 1 else 0));

axiom (forall x: real, y: real :: 
  { fixed.$cmpReal(x, y): int } 
  fixed.$cmpReal(x, y): int == (if x > y then 1 else (if x < y then -1 else 0)));

axiom (forall x: int, y: int :: 
  { fixed.$cmpInt(x, y): int } 
  fixed.$cmpInt(x, y): int == (if x > y then 1 else (if x < y then -1 else 0)));

axiom (forall index: int :: fixed.$intToRef(index) != fixed.$null);

axiom (forall i1: int, i2: int :: 
  i1 == i2 <==> fixed.$intToRef(i1) == fixed.$intToRef(i2));

procedure {:prefix "unsafe"} unsafe.java.lang.Integer$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies fixed.$heap;
  free ensures $exception
   == _uf_fixed.java.lang.Integer$$la$init$ra$$int_$exception($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures fixed.$heap
   == _uf_fixed.java.lang.Integer$$la$init$ra$$int_fixed.$heap($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.int$java.lang.Integer$value0));



procedure {:prefix "unsafe"} unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);
  free ensures $exception == _uf_fixed.java.lang.Object$$la$init$ra$$_$exception($this);



procedure {:prefix "unsafe"} unsafe.java.lang.Integer$valueOf$int($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;
  free ensures $return
   == _uf_fixed.java.lang.Integer$valueOf$int_$return($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures $exception
   == _uf_fixed.java.lang.Integer$valueOf$int_$exception($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures fixed.$objIndex
   == _uf_fixed.java.lang.Integer$valueOf$int_fixed.$objIndex($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures fixed.$heap
   == _uf_fixed.java.lang.Integer$valueOf$int_fixed.$heap($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.int$java.lang.Integer$value0));



procedure {:prefix "unsafe"} unsafe.java.lang.Integer$intValue$($this: ref) returns ($return: int, $exception: ref);
  free ensures $return
   == _uf_fixed.java.lang.Integer$intValue$_$return($this, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures $exception
   == _uf_fixed.java.lang.Integer$intValue$_$exception($this, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.int$java.lang.Integer$value0));



procedure {:prefix "unsafe"} unsafe.java.lang.Integer$compareTo$java.lang.Integer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;
  free ensures $return
   == _uf_fixed.java.lang.Integer$compareTo$java.lang.Integer_$return($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.int$java.lang.Integer$value0), 
    old(fixed.$objIndex));
  free ensures $exception
   == _uf_fixed.java.lang.Integer$compareTo$java.lang.Integer_$exception($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.int$java.lang.Integer$value0), 
    old(fixed.$objIndex));
  free ensures fixed.$objIndex
   == _uf_fixed.java.lang.Integer$compareTo$java.lang.Integer_fixed.$objIndex($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.int$java.lang.Integer$value0), 
    old(fixed.$objIndex));
  free ensures fixed.$heap
   == _uf_fixed.java.lang.Integer$compareTo$java.lang.Integer_fixed.$heap($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.int$java.lang.Integer$value0), 
    old(fixed.$objIndex));



procedure {:prefix "unsafe"} unsafe.java.lang.Integer$compareTo$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;
  free ensures $return
   == _uf_fixed.java.lang.Integer$compareTo$java.lang.Object_$return($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures $exception
   == _uf_fixed.java.lang.Integer$compareTo$java.lang.Object_$exception($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures fixed.$objIndex
   == _uf_fixed.java.lang.Integer$compareTo$java.lang.Object_fixed.$objIndex($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures fixed.$heap
   == _uf_fixed.java.lang.Integer$compareTo$java.lang.Object_fixed.$heap($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.int$java.lang.Integer$value0));



procedure {:prefix "unsafe"} unsafe.MoreSanity$$la$init$ra$$($this: ref) returns ($exception: ref);
  free ensures $exception
   == _uf_fixed.MoreSanity$$la$init$ra$$_$exception($this, old(fixed.$heap), old(fixed.$arrSizeHeap), old(fixed.$stringSizeHeap));



procedure {:prefix "unsafe"} unsafe.MoreSanity$array_unsafe$int$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref);
  free requires fixed.$arrSizeHeap[$in_parameter__0] > 0;
  free requires $in_parameter__0 != fixed.$null;
  modifies fixed.$objIndex, fixed.$heap;
  free ensures $return
   == _uf_fixed.MoreSanity$array_unsafe$int$lp$$rp$_int_$return($in_parameter__0, 
    $in_parameter__1, 
    old(fixed.$arrSizeHeap), 
    old(fixed.$heap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures $exception
   == _uf_fixed.MoreSanity$array_unsafe$int$lp$$rp$_int_$exception($in_parameter__0, 
    $in_parameter__1, 
    old(fixed.$arrSizeHeap), 
    old(fixed.$heap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures fixed.$objIndex
   == _uf_fixed.MoreSanity$array_unsafe$int$lp$$rp$_int_fixed.$objIndex($in_parameter__0, 
    $in_parameter__1, 
    old(fixed.$arrSizeHeap), 
    old(fixed.$heap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap), 
    old(fixed.int$java.lang.Integer$value0));
  free ensures fixed.$heap
   == _uf_fixed.MoreSanity$array_unsafe$int$lp$$rp$_int_fixed.$heap($in_parameter__0, 
    $in_parameter__1, 
    old(fixed.$arrSizeHeap), 
    old(fixed.$heap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap), 
    old(fixed.int$java.lang.Integer$value0));



procedure {:inline 1} unsafe.MoreSanity$loopAndbranch_safe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);
  free ensures $return
   == _uf_fixed.MoreSanity$loopAndbranch_safe$int_int_$return($in_parameter__0, 
    $in_parameter__1, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap));
  free ensures $exception
   == _uf_fixed.MoreSanity$loopAndbranch_safe$int_int_$exception($in_parameter__0, 
    $in_parameter__1, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap));



procedure {:prefix "unsafe"} unsafe.MoreSanity$loopAndbranch_unsafe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10(in_$return: int, 
    in_$exception: ref, 
    in_i4: int, 
    in_i3: int, 
    in_r0: ref, 
    in_$fakelocal_1: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_i4: int, 
    out_i3: int, 
    out_$fakelocal_1: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "unsafe"} unsafe.MoreSanity$loopAndbranch_safe$int_int_loop_block15(in_i2: int) returns (out_i2: int);



procedure {:prefix "unsafe"} unsafe.MoreSanity$loopAndbranch_safe$int_int_loop_block18(in_i4: int) returns (out_i4: int);



procedure {:prefix "unsafe"} unsafe.MoreSanity$loopAndbranch_safe$int_int_loop_block20(in_i5: int) returns (out_i5: int);



procedure {:prefix "unsafe"} unsafe.MoreSanity$loopAndbranch_unsafe$int_int_loop_block23(in_i2: int) returns (out_i2: int);



procedure {:prefix "unsafe"} unsafe.MoreSanity$loopAndbranch_unsafe$int_int_loop_block26(in_i4: int) returns (out_i4: int);



procedure {:prefix "unsafe"} unsafe.MoreSanity$loopAndbranch_unsafe$int_int_loop_block28(in_i5: int) returns (out_i5: int);



implementation unsafe.java.lang.Integer$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var r0: ref;
  var i0: int;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$java.lang.Object$$la$init$ra$$$0$$this := r0;
    havoc inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    $exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Integer.java", 9, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[r0, fixed.int$java.lang.Integer$value0 := i0];
    assert {:sourceloc "Integer.java", 10, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation unsafe.java.lang.Integer$valueOf$int($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $r0: ref;
  var i0: int;
  var $fakelocal_0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$return, fixed.$type] <: fixed.java.lang.Integer;
    $exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    call $fakelocal_0 := fixed.$new(fixed.java.lang.Integer);
    $r0 := $fakelocal_0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$Entry;

  inline$java.lang.Integer$$la$init$ra$$int$0$Entry:
    inline$java.lang.Integer$$la$init$ra$$int$0$$this := $r0;
    inline$java.lang.Integer$$la$init$ra$$int$0$$in_parameter__0 := i0;
    havoc inline$java.lang.Integer$$la$init$ra$$int$0$r0, inline$java.lang.Integer$$la$init$ra$$int$0$i0, inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
    inline$java.lang.Integer$$la$init$ra$$int$0$$heap := fixed.$heap;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$anon0;

  inline$java.lang.Integer$$la$init$ra$$int$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$0$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$$la$init$ra$$int$0$$this != fixed.$null;
    inline$java.lang.Integer$$la$init$ra$$int$0$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$0$r0 := inline$java.lang.Integer$$la$init$ra$$int$0$$this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$$la$init$ra$$int$0$i0 := inline$java.lang.Integer$$la$init$ra$$int$0$$in_parameter__0;
    assert {:sourceloc "Integer.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$java.lang.Object$$la$init$ra$$$0$$this := inline$java.lang.Integer$$la$init$ra$$int$0$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    inline$java.lang.Integer$$la$init$ra$$int$0$$exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$anon0$1;

  inline$java.lang.Integer$$la$init$ra$$int$0$anon0$1:
    assert {:sourceloc "Integer.java", 9, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$0$r0, fixed.int$java.lang.Integer$value0 := inline$java.lang.Integer$$la$init$ra$$int$0$i0];
    assert {:sourceloc "Integer.java", 10, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$block1;

  inline$java.lang.Integer$$la$init$ra$$int$0$block1:
    goto inline$java.lang.Integer$$la$init$ra$$int$0$Return;

  inline$java.lang.Integer$$la$init$ra$$int$0$Return:
    $exception := inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    $return := $r0;
    goto block2;

  block2:
    return;
}



implementation unsafe.java.lang.Integer$intValue$($this: ref) returns ($return: int, $exception: ref)
{
  var $i0: int;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    $i0 := fixed.$heap[r0, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    $return := $i0;
    goto block3;

  block3:
    return;
}



implementation unsafe.java.lang.Integer$compareTo$java.lang.Integer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var $i3: int;
  var $i0: int;
  var $i1: int;
  var $i2: int;
  var r1: ref;
  var $fakelocal_0: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != fixed.$null;
    assume fixed.$heap[$in_parameter__0, fixed.$type] <: fixed.java.lang.Integer;
    $exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    $i1 := fixed.$heap[r0, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} r1 == fixed.$null;
    call $fakelocal_0 := fixed.$new(fixed.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon10_Then:
    assume {:partition} r1 != fixed.$null;
    $exception := $exception;
    goto anon3;

  anon3:
    $i0 := fixed.$heap[r1, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} $i0 < $i1;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Integer.java", 23, -1, -1, -1} true;
    $return := 1;
    goto block6;

  block6:
    return;

  anon11_Then:
    assume {:partition} $i1 <= $i0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block4;

  block4:
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    $i3 := fixed.$heap[r0, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    $i2 := fixed.$heap[r1, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} $i2 > $i3;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "Integer.java", 25, -1, -1, -1} true;
    $return := -1;
    goto block6;

  anon12_Then:
    assume {:partition} $i3 >= $i2;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "thenblock"} true;
    goto block5;

  block5:
    assert {:sourceloc "Integer.java", 27, -1, -1, -1} true;
    $return := 0;
    goto block6;
}



implementation unsafe.java.lang.Integer$compareTo$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var r1: ref;
  var $r2: ref;
  var $fakelocal_0: ref;
  var r0: ref;
  var $i0: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$this: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$in_parameter__0: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$objIndex: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != fixed.$null;
    assume fixed.$heap[$in_parameter__0, fixed.$type] <: fixed.java.lang.Object;
    $exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 5, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} !(fixed.$heap[r1, fixed.$type] <: fixed.java.lang.Integer);
    call $fakelocal_0 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon4_Then:
    assume {:partition} fixed.$heap[r1, fixed.$type] <: fixed.java.lang.Integer;
    $exception := $exception;
    goto anon3;

  anon3:
    $r2 := r1;
    assert {:sourceloc "Integer.java", 5, -1, -1, -1} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$Entry;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$Entry:
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$this := r0;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$in_parameter__0 := $r2;
    havoc inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2, inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$objIndex := fixed.$objIndex;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$heap := fixed.$heap;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon0;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$this != fixed.$null;
    assume fixed.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$$in_parameter__0, fixed.$type]
   <: fixed.java.lang.Integer;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0 := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1 := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$in_parameter__0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1 := fixed.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon10_Then, inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon10_Else;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon10_Else:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1 == fixed.$null;
    call inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0 := fixed.$new(fixed.java.lang.NullPointerException);
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return := 0;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$Return;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon10_Then:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1 != fixed.$null;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon3;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon3:
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0 := fixed.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon11_Then, inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon11_Else;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon11_Else:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0
   < inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon6;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon6:
    assert {:sourceloc "Integer.java", 23, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return := 1;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block6;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block6:
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$Return;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon11_Then:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1
   <= inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block4;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block4:
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3 := fixed.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2 := fixed.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon12_Then, inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon12_Else;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon12_Else:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2
   > inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon9;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon9:
    assert {:sourceloc "Integer.java", 25, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return := -1;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block6;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon12_Then:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3
   >= inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block5;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block5:
    assert {:sourceloc "Integer.java", 27, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return := 0;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block6;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$Return:
    $i0 := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return;
    $exception := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception;
    goto anon3$1;

  anon3$1:
    assert {:sourceloc "Integer.java", 5, -1, -1, -1} true;
    $return := $i0;
    goto block7;

  block7:
    return;
}



implementation unsafe.MoreSanity$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "MoreSanity.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.MoreSanity;
    assume {:sourceloc "MoreSanity.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "MoreSanity.java", 1, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$java.lang.Object$$la$init$ra$$$0$$this := r0;
    havoc inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    $exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "MoreSanity.java", 1, -1, -1, -1} true;
    goto block8;

  block8:
    return;
}



implementation unsafe.MoreSanity$array_unsafe$int$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $i1: int;
  var $i2: int;
  var b5: int;
  var i4: int;
  var i3: int;
  var r0: ref;
  var $fakelocal_0: ref;
  var i0: int;
  var $fakelocal_1: ref;
  var $fakelocal_2: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$return: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$exception: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i4: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i3: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_r0: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$fakelocal_1: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$return: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i4: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$objIndex: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$heap: $heap_type;

  anon0:
    assume fixed.$arrSizeHeap[$in_parameter__0] > 0 && $in_parameter__0 != fixed.$null;
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__1;
    assert {:sourceloc "MoreSanity.java", 22, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} 0 > i0;
    assert {:sourceloc "MoreSanity.java", 22, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "MoreSanity.java", 23, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} r0 == fixed.$null;
    call $fakelocal_0 := fixed.$new(fixed.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon17_Then:
    assume {:partition} r0 != fixed.$null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i2 := fixed.$arrSizeHeap[r0];
    assert {:sourceloc "MoreSanity.java", 23, -1, -1, -1} true;
    i3 := $i2 - 1;
    goto block10;

  block10:
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$Entry;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$Entry:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$return := $return;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$exception := $exception;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i4 := i4;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i3 := i3;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_r0 := r0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$fakelocal_1 := $fakelocal_1;
    havoc inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i4, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$objIndex := fixed.$objIndex;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$heap := fixed.$heap;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$entry;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$entry:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i4, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i4, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$fakelocal_1;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$block10;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$block10:
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon18_Then, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon18_Else;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon18_Then:
    assume {:partition} inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3 < 0;
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i4, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i4, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$fakelocal_1;
    fixed.$objIndex, fixed.$heap := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$objIndex, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$heap;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon12:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i4 := fixed.$intArrHeap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_r0][inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3];
    assert {:sourceloc "MoreSanity.java", 27, -1, -1, -1} true;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3 + -1;
    assert {:sourceloc "MoreSanity.java", 27, -1, -1, -1} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon12_dummy;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon19_Then:
    assume {:partition} inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3
     < fixed.$arrSizeHeap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_r0]
   && inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3 >= 0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon12;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon9:
    assert {:sourceloc "MoreSanity.java", 26, -1, -1, -1} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon19_Then, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon19_Else;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon19_Else:
    assume {:partition} !(inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3
     < fixed.$arrSizeHeap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_r0]
   && inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3 >= 0);
    call inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$return := 0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i4, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i4, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$fakelocal_1;
    fixed.$objIndex, fixed.$heap := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$objIndex, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$heap;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon18_Else:
    assume {:partition} 0 <= inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3;
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon9;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon12_dummy:
    assume false;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$exit:
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$Return:
    $return := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$return;
    $exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception;
    i4 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i4;
    i3 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3;
    $fakelocal_1 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1;
    goto block10$1;

  block10$1:
    goto block10_last;

  anon18_Else:
    assume {:partition} 0 <= i3;
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "MoreSanity.java", 26, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(i3 < fixed.$arrSizeHeap[r0] && i3 >= 0);
    call $fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon19_Then:
    assume {:partition} i3 < fixed.$arrSizeHeap[r0] && i3 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    i4 := fixed.$intArrHeap[r0][i3];
    assert {:sourceloc "MoreSanity.java", 27, -1, -1, -1} true;
    i3 := i3 + -1;
    assert {:sourceloc "MoreSanity.java", 27, -1, -1, -1} true;
    goto anon12_dummy;

  anon18_Then:
    assume {:partition} i3 < 0;
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  block11:
    assert {:sourceloc "MoreSanity.java", 29, -1, -1, -1} true;
    goto block12;

  block12:
    assert {:sourceloc "MoreSanity.java", 34, -1, -1, -1} true;
    $return := 0;
    goto block13;

  block13:
    return;

  anon16_Then:
    assume {:partition} i0 >= 0;
    assert {:sourceloc "MoreSanity.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block9;

  block9:
    assert {:sourceloc "MoreSanity.java", 30, -1, -1, -1} true;
    b5 := 0;
    assert {:sourceloc "MoreSanity.java", 31, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !(b5 < fixed.$arrSizeHeap[r0] && b5 >= 0);
    call $fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon20_Then:
    assume {:partition} b5 < fixed.$arrSizeHeap[r0] && b5 >= 0;
    $exception := $exception;
    goto anon15;

  anon15:
    $i1 := fixed.$intArrHeap[r0][b5];
    goto block12;

  anon12_dummy:
    assume false;
    return;

  block10_last:
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;
}



implementation {:inline 1} unsafe.MoreSanity$loopAndbranch_safe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var i1: int;
  var i5: int;
  var i4: int;
  var i3: int;
  var i0: int;
  var i2: int;
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$in_i2: int;
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2: int;
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i4: int;
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4: int;
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$in_i5: int;
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__1;
    assert {:sourceloc "MoreSanity.java", 38, -1, -1, -1} true;
    i2 := i0;
    assert {:sourceloc "MoreSanity.java", 40, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} 0 > i1;
    assert {:sourceloc "MoreSanity.java", 40, -1, -1, -1} {:comment "elseblock"} true;
    goto block15;

  block15:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$Entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$Entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$in_i2 := i2;
    havoc inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$in_i2;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$block15;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$block15:
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon19_Then, inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon19_Else;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon19_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$in_i2;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon5:
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2 + -1;
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon5_dummy;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon19_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2;
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon5;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon5_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$exit:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$Return:
    i2 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2;
    goto block15$1;

  block15$1:
    goto block15_last;

  anon19_Else:
    assume {:partition} 0 < i2;
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} {:comment "elseblock"} true;
    goto anon5;

  anon5:
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} true;
    i2 := i2 + -1;
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} true;
    goto anon5_dummy;

  anon19_Then:
    assume {:partition} i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  block16:
    assert {:sourceloc "MoreSanity.java", 62, -1, -1, -1} true;
    $return := 1;
    goto block21;

  block21:
    return;

  anon18_Then:
    assume {:partition} i1 >= 0;
    assert {:sourceloc "MoreSanity.java", 40, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "MoreSanity.java", 46, -1, -1, -1} true;
    i3 := i1 + 10;
    assert {:sourceloc "MoreSanity.java", 48, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} 10 <= i3;
    assert {:sourceloc "MoreSanity.java", 48, -1, -1, -1} {:comment "elseblock"} true;
    goto anon8;

  anon8:
    assert {:sourceloc "MoreSanity.java", 49, -1, -1, -1} true;
    i4 := i0;
    goto block18;

  block18:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i4 := i4;
    havoc inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i4;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$block18;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$block18:
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon21_Then, inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon21_Else;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon21_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i4;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon11:
    assert {:sourceloc "MoreSanity.java", 51, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4 + -1;
    assert {:sourceloc "MoreSanity.java", 51, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon11_dummy;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon21_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon11;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon11_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$exit:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return:
    i4 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4;
    goto block18$1;

  block18$1:
    goto block18_last;

  anon21_Else:
    assume {:partition} 0 < i4;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto anon11;

  anon11:
    assert {:sourceloc "MoreSanity.java", 51, -1, -1, -1} true;
    i4 := i4 + -1;
    assert {:sourceloc "MoreSanity.java", 51, -1, -1, -1} true;
    goto anon11_dummy;

  anon21_Then:
    assume {:partition} i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block19;

  block19:
    assert {:sourceloc "MoreSanity.java", 53, -1, -1, -1} true;
    goto block16;

  anon20_Then:
    assume {:partition} i3 < 10;
    assert {:sourceloc "MoreSanity.java", 48, -1, -1, -1} {:comment "thenblock"} true;
    goto block17;

  block17:
    assert {:sourceloc "MoreSanity.java", 54, -1, -1, -1} true;
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} 0 > i0;
    assert {:sourceloc "MoreSanity.java", 54, -1, -1, -1} {:comment "elseblock"} true;
    goto anon14;

  anon14:
    assert {:sourceloc "MoreSanity.java", 55, -1, -1, -1} true;
    i5 := i0;
    goto block20;

  block20:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$Entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$Entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$in_i5 := i5;
    havoc inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$in_i5;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$block20;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$block20:
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon23_Then, inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon23_Else;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon23_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$in_i5;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon17:
    assert {:sourceloc "MoreSanity.java", 57, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5 + -1;
    assert {:sourceloc "MoreSanity.java", 57, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon17_dummy;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon23_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon17;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon17_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$exit:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$Return:
    i5 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5;
    goto block20$1;

  block20$1:
    goto block20_last;

  anon23_Else:
    assume {:partition} 0 < i5;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "MoreSanity.java", 57, -1, -1, -1} true;
    i5 := i5 + -1;
    assert {:sourceloc "MoreSanity.java", 57, -1, -1, -1} true;
    goto anon17_dummy;

  anon23_Then:
    assume {:partition} i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  anon22_Then:
    assume {:partition} i0 >= 0;
    assert {:sourceloc "MoreSanity.java", 54, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  anon5_dummy:
    assume false;
    return;

  block15_last:
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon11_dummy:
    assume false;
    return;

  block18_last:
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;

  anon17_dummy:
    assume false;
    return;

  block20_last:
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;
}



implementation unsafe.MoreSanity$loopAndbranch_unsafe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var i1: int;
  var i5: int;
  var i4: int;
  var i3: int;
  var i0: int;
  var i2: int;
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$in_i2: int;
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$out_i2: int;
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$in_i4: int;
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i4: int;
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$in_i5: int;
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$out_i5: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__1;
    assert {:sourceloc "MoreSanity.java", 66, -1, -1, -1} true;
    i2 := i0;
    assert {:sourceloc "MoreSanity.java", 68, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} 0 > i1;
    assert {:sourceloc "MoreSanity.java", 68, -1, -1, -1} {:comment "elseblock"} true;
    goto block23;

  block23:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$Entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$Entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$in_i2 := i2;
    havoc inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$out_i2;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$out_i2 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$in_i2;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$block23;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$block23:
    assert {:sourceloc "MoreSanity.java", 69, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$anon19_Then, inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$anon19_Else;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$anon19_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$out_i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 69, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$out_i2 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$in_i2;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$anon5:
    assert {:sourceloc "MoreSanity.java", 70, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$out_i2 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$out_i2 + -1;
    assert {:sourceloc "MoreSanity.java", 70, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$anon5_dummy;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$anon19_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$out_i2;
    assert {:sourceloc "MoreSanity.java", 69, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$anon5;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$anon5_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$exit:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$Return:
    i2 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$out_i2;
    goto block23$1;

  block23$1:
    goto block23_last;

  anon19_Else:
    assume {:partition} 0 < i2;
    assert {:sourceloc "MoreSanity.java", 69, -1, -1, -1} {:comment "elseblock"} true;
    goto anon5;

  anon5:
    assert {:sourceloc "MoreSanity.java", 70, -1, -1, -1} true;
    i2 := i2 + -1;
    assert {:sourceloc "MoreSanity.java", 70, -1, -1, -1} true;
    goto anon5_dummy;

  anon19_Then:
    assume {:partition} i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 69, -1, -1, -1} {:comment "thenblock"} true;
    goto block24;

  block24:
    assert {:sourceloc "MoreSanity.java", 90, -1, -1, -1} true;
    $return := 1;
    goto block29;

  block29:
    return;

  anon18_Then:
    assume {:partition} i1 >= 0;
    assert {:sourceloc "MoreSanity.java", 68, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;

  block22:
    assert {:sourceloc "MoreSanity.java", 74, -1, -1, -1} true;
    i3 := i1 - 10;
    assert {:sourceloc "MoreSanity.java", 76, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} 10 <= i3;
    assert {:sourceloc "MoreSanity.java", 76, -1, -1, -1} {:comment "elseblock"} true;
    goto anon8;

  anon8:
    assert {:sourceloc "MoreSanity.java", 77, -1, -1, -1} true;
    i4 := i0;
    goto block26;

  block26:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$in_i4 := i4;
    havoc inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i4;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i4 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$in_i4;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$block26;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$block26:
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon21_Then, inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon21_Else;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon21_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i4 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$in_i4;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon11:
    assert {:sourceloc "MoreSanity.java", 79, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i4 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i4 + -1;
    assert {:sourceloc "MoreSanity.java", 79, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon11_dummy;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon21_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i4;
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon11;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon11_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$exit:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Return:
    i4 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i4;
    goto block26$1;

  block26$1:
    goto block26_last;

  anon21_Else:
    assume {:partition} 0 < i4;
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} {:comment "elseblock"} true;
    goto anon11;

  anon11:
    assert {:sourceloc "MoreSanity.java", 79, -1, -1, -1} true;
    i4 := i4 + -1;
    assert {:sourceloc "MoreSanity.java", 79, -1, -1, -1} true;
    goto anon11_dummy;

  anon21_Then:
    assume {:partition} i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block27;

  block27:
    assert {:sourceloc "MoreSanity.java", 81, -1, -1, -1} true;
    goto block24;

  anon20_Then:
    assume {:partition} i3 < 10;
    assert {:sourceloc "MoreSanity.java", 76, -1, -1, -1} {:comment "thenblock"} true;
    goto block25;

  block25:
    assert {:sourceloc "MoreSanity.java", 82, -1, -1, -1} true;
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} 0 > i0;
    assert {:sourceloc "MoreSanity.java", 82, -1, -1, -1} {:comment "elseblock"} true;
    goto anon14;

  anon14:
    assert {:sourceloc "MoreSanity.java", 83, -1, -1, -1} true;
    i5 := i0;
    goto block28;

  block28:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$Entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$Entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$in_i5 := i5;
    havoc inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$out_i5;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$out_i5 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$in_i5;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$block28;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$block28:
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$anon23_Then, inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$anon23_Else;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$anon23_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$out_i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$out_i5 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$in_i5;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$anon17:
    assert {:sourceloc "MoreSanity.java", 85, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$out_i5 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$out_i5 + -1;
    assert {:sourceloc "MoreSanity.java", 85, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$anon17_dummy;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$anon23_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$out_i5;
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$anon17;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$anon17_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$exit:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$Return:
    i5 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$out_i5;
    goto block28$1;

  block28$1:
    goto block28_last;

  anon23_Else:
    assume {:partition} 0 < i5;
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "MoreSanity.java", 85, -1, -1, -1} true;
    i5 := i5 + -1;
    assert {:sourceloc "MoreSanity.java", 85, -1, -1, -1} true;
    goto anon17_dummy;

  anon23_Then:
    assume {:partition} i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block24;

  anon22_Then:
    assume {:partition} i0 >= 0;
    assert {:sourceloc "MoreSanity.java", 82, -1, -1, -1} {:comment "thenblock"} true;
    goto block24;

  anon5_dummy:
    assume false;
    return;

  block23_last:
    assert {:sourceloc "MoreSanity.java", 69, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon11_dummy:
    assume false;
    return;

  block26_last:
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;

  anon17_dummy:
    assume false;
    return;

  block28_last:
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;
}



implementation unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := fixed.$null;
    return;
}



implementation unsafe.MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10(in_$return: int, 
    in_$exception: ref, 
    in_i4: int, 
    in_i3: int, 
    in_r0: ref, 
    in_$fakelocal_1: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_i4: int, 
    out_i3: int, 
    out_$fakelocal_1: ref)
{
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$return: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$exception: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i4: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i3: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_r0: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$fakelocal_1: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$return: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i4: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1: ref;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$objIndex: int;
  var inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$heap: $heap_type;

  entry:
    out_$return, out_$exception, out_i4, out_i3, out_$fakelocal_1 := in_$return, in_$exception, in_i4, in_i3, in_$fakelocal_1;
    goto block10;

  block10:
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Then:
    assume {:partition} out_i3 < 0;
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_i4, out_i3, out_$fakelocal_1 := in_$return, in_$exception, in_i4, in_i3, in_$fakelocal_1;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon12:
    out_i4 := fixed.$intArrHeap[in_r0][out_i3];
    assert {:sourceloc "MoreSanity.java", 27, -1, -1, -1} true;
    out_i3 := out_i3 + -1;
    assert {:sourceloc "MoreSanity.java", 27, -1, -1, -1} true;
    goto anon12_dummy;

  anon19_Then:
    assume {:partition} out_i3 < fixed.$arrSizeHeap[in_r0] && out_i3 >= 0;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    assert {:sourceloc "MoreSanity.java", 26, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(out_i3 < fixed.$arrSizeHeap[in_r0] && out_i3 >= 0);
    call out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_i4, out_i3, out_$fakelocal_1 := in_$return, in_$exception, in_i4, in_i3, in_$fakelocal_1;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon18_Else:
    assume {:partition} 0 <= out_i3;
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon12_dummy:
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$Entry;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$Entry:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$return := out_$return;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$exception := out_$exception;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i4 := out_i4;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i3 := out_i3;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_r0 := in_r0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$fakelocal_1 := out_$fakelocal_1;
    havoc inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i4, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$objIndex := fixed.$objIndex;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$heap := fixed.$heap;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$entry;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$entry:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i4, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i4, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$fakelocal_1;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$block10;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$block10:
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon18_Then, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon18_Else;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon18_Then:
    assume {:partition} inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3 < 0;
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i4, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i4, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$fakelocal_1;
    fixed.$objIndex, fixed.$heap := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$objIndex, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$heap;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon12:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i4 := fixed.$intArrHeap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_r0][inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3];
    assert {:sourceloc "MoreSanity.java", 27, -1, -1, -1} true;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3 + -1;
    assert {:sourceloc "MoreSanity.java", 27, -1, -1, -1} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon12_dummy;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon19_Then:
    assume {:partition} inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3
     < fixed.$arrSizeHeap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_r0]
   && inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3 >= 0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon12;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon9:
    assert {:sourceloc "MoreSanity.java", 26, -1, -1, -1} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon19_Then, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon19_Else;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon19_Else:
    assume {:partition} !(inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3
     < fixed.$arrSizeHeap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_r0]
   && inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3 >= 0);
    call inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$return := 0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i4, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i4, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$fakelocal_1;
    fixed.$objIndex, fixed.$heap := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$objIndex, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$heap;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon18_Else:
    assume {:partition} 0 <= inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3;
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon9;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon12_dummy:
    assume false;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$exit:
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$Return:
    out_$return := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$return;
    out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception;
    out_i4 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i4;
    out_i3 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3;
    out_$fakelocal_1 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1;
    goto anon12_dummy$1;

  anon12_dummy$1:
    return;

  exit:
    return;
}



implementation unsafe.MoreSanity$loopAndbranch_safe$int_int_loop_block15(in_i2: int) returns (out_i2: int)
{
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$in_i2: int;
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2: int;

  entry:
    out_i2 := in_i2;
    goto block15;

  block15:
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Then:
    assume {:partition} out_i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} {:comment "thenblock"} true;
    out_i2 := in_i2;
    return;

  anon5:
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} true;
    out_i2 := out_i2 + -1;
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} true;
    goto anon5_dummy;

  anon19_Else:
    assume {:partition} 0 < out_i2;
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} {:comment "elseblock"} true;
    goto anon5;

  anon5_dummy:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$Entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$Entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$in_i2 := out_i2;
    havoc inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$in_i2;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$block15;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$block15:
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon19_Then, inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon19_Else;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon19_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$in_i2;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon5:
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2 + -1;
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon5_dummy;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon19_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2;
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon5;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon5_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$exit:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$Return:
    out_i2 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2;
    goto anon5_dummy$1;

  anon5_dummy$1:
    return;

  exit:
    return;
}



implementation unsafe.MoreSanity$loopAndbranch_safe$int_int_loop_block18(in_i4: int) returns (out_i4: int)
{
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i4: int;
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4: int;

  entry:
    out_i4 := in_i4;
    goto block18;

  block18:
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;

  anon21_Then:
    assume {:partition} out_i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    out_i4 := in_i4;
    return;

  anon11:
    assert {:sourceloc "MoreSanity.java", 51, -1, -1, -1} true;
    out_i4 := out_i4 + -1;
    assert {:sourceloc "MoreSanity.java", 51, -1, -1, -1} true;
    goto anon11_dummy;

  anon21_Else:
    assume {:partition} 0 < out_i4;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto anon11;

  anon11_dummy:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i4 := out_i4;
    havoc inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i4;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$block18;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$block18:
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon21_Then, inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon21_Else;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon21_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i4;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon11:
    assert {:sourceloc "MoreSanity.java", 51, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4 + -1;
    assert {:sourceloc "MoreSanity.java", 51, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon11_dummy;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon21_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon11;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon11_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$exit:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return:
    out_i4 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4;
    goto anon11_dummy$1;

  anon11_dummy$1:
    return;

  exit:
    return;
}



implementation unsafe.MoreSanity$loopAndbranch_safe$int_int_loop_block20(in_i5: int) returns (out_i5: int)
{
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$in_i5: int;
  var inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5: int;

  entry:
    out_i5 := in_i5;
    goto block20;

  block20:
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;

  anon23_Then:
    assume {:partition} out_i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    out_i5 := in_i5;
    return;

  anon17:
    assert {:sourceloc "MoreSanity.java", 57, -1, -1, -1} true;
    out_i5 := out_i5 + -1;
    assert {:sourceloc "MoreSanity.java", 57, -1, -1, -1} true;
    goto anon17_dummy;

  anon23_Else:
    assume {:partition} 0 < out_i5;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17_dummy:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$Entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$Entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$in_i5 := out_i5;
    havoc inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$entry;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$entry:
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$in_i5;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$block20;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$block20:
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon23_Then, inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon23_Else;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon23_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$in_i5;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon17:
    assert {:sourceloc "MoreSanity.java", 57, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5 + -1;
    assert {:sourceloc "MoreSanity.java", 57, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon17_dummy;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon23_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon17;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon17_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$exit:
    goto inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$Return;

  inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$Return:
    out_i5 := inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5;
    goto anon17_dummy$1;

  anon17_dummy$1:
    return;

  exit:
    return;
}



implementation unsafe.MoreSanity$loopAndbranch_unsafe$int_int_loop_block23(in_i2: int) returns (out_i2: int)
{
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$in_i2: int;
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$out_i2: int;

  entry:
    out_i2 := in_i2;
    goto block23;

  block23:
    assert {:sourceloc "MoreSanity.java", 69, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Then:
    assume {:partition} out_i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 69, -1, -1, -1} {:comment "thenblock"} true;
    out_i2 := in_i2;
    return;

  anon5:
    assert {:sourceloc "MoreSanity.java", 70, -1, -1, -1} true;
    out_i2 := out_i2 + -1;
    assert {:sourceloc "MoreSanity.java", 70, -1, -1, -1} true;
    goto anon5_dummy;

  anon19_Else:
    assume {:partition} 0 < out_i2;
    assert {:sourceloc "MoreSanity.java", 69, -1, -1, -1} {:comment "elseblock"} true;
    goto anon5;

  anon5_dummy:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$Entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$Entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$in_i2 := out_i2;
    havoc inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$out_i2;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$out_i2 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$in_i2;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$block23;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$block23:
    assert {:sourceloc "MoreSanity.java", 69, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$anon19_Then, inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$anon19_Else;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$anon19_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$out_i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 69, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$out_i2 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$in_i2;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$anon5:
    assert {:sourceloc "MoreSanity.java", 70, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$out_i2 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$out_i2 + -1;
    assert {:sourceloc "MoreSanity.java", 70, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$anon5_dummy;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$anon19_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$out_i2;
    assert {:sourceloc "MoreSanity.java", 69, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$anon5;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$anon5_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$exit:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$Return:
    out_i2 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block23$0$out_i2;
    goto anon5_dummy$1;

  anon5_dummy$1:
    return;

  exit:
    return;
}



implementation unsafe.MoreSanity$loopAndbranch_unsafe$int_int_loop_block26(in_i4: int) returns (out_i4: int)
{
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$in_i4: int;
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i4: int;

  entry:
    out_i4 := in_i4;
    goto block26;

  block26:
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;

  anon21_Then:
    assume {:partition} out_i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    out_i4 := in_i4;
    return;

  anon11:
    assert {:sourceloc "MoreSanity.java", 79, -1, -1, -1} true;
    out_i4 := out_i4 + -1;
    assert {:sourceloc "MoreSanity.java", 79, -1, -1, -1} true;
    goto anon11_dummy;

  anon21_Else:
    assume {:partition} 0 < out_i4;
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} {:comment "elseblock"} true;
    goto anon11;

  anon11_dummy:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$in_i4 := out_i4;
    havoc inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i4;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i4 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$in_i4;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$block26;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$block26:
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon21_Then, inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon21_Else;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon21_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i4 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$in_i4;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon11:
    assert {:sourceloc "MoreSanity.java", 79, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i4 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i4 + -1;
    assert {:sourceloc "MoreSanity.java", 79, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon11_dummy;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon21_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i4;
    assert {:sourceloc "MoreSanity.java", 78, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon11;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$anon11_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$exit:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$Return:
    out_i4 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block26$0$out_i4;
    goto anon11_dummy$1;

  anon11_dummy$1:
    return;

  exit:
    return;
}



implementation unsafe.MoreSanity$loopAndbranch_unsafe$int_int_loop_block28(in_i5: int) returns (out_i5: int)
{
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$in_i5: int;
  var inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$out_i5: int;

  entry:
    out_i5 := in_i5;
    goto block28;

  block28:
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;

  anon23_Then:
    assume {:partition} out_i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    out_i5 := in_i5;
    return;

  anon17:
    assert {:sourceloc "MoreSanity.java", 85, -1, -1, -1} true;
    out_i5 := out_i5 + -1;
    assert {:sourceloc "MoreSanity.java", 85, -1, -1, -1} true;
    goto anon17_dummy;

  anon23_Else:
    assume {:partition} 0 < out_i5;
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17_dummy:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$Entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$Entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$in_i5 := out_i5;
    havoc inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$out_i5;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$entry;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$entry:
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$out_i5 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$in_i5;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$block28;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$block28:
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$anon23_Then, inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$anon23_Else;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$anon23_Then:
    assume {:partition} inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$out_i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$out_i5 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$in_i5;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$anon17:
    assert {:sourceloc "MoreSanity.java", 85, -1, -1, -1} true;
    inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$out_i5 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$out_i5 + -1;
    assert {:sourceloc "MoreSanity.java", 85, -1, -1, -1} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$anon17_dummy;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$anon23_Else:
    assume {:partition} 0 < inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$out_i5;
    assert {:sourceloc "MoreSanity.java", 84, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$anon17;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$anon17_dummy:
    assume false;
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$exit:
    goto inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$Return;

  inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$Return:
    out_i5 := inline$MoreSanity$loopAndbranch_unsafe$int_int_loop_block28$0$out_i5;
    goto anon17_dummy$1;

  anon17_dummy$1:
    return;

  exit:
    return;
}



type ref;

type javaType;

type Field _;

type $heap_type = <$GenericType__0>[ref,Field $GenericType__0]$GenericType__0;

type boolArrHeap_type = [ref][int]bool;

type refArrHeap_type = [ref][int]ref;

type realArrHeap_type = [ref][int]int;

type intArrHeap_type = [ref][int]int;

function _uf_fixed.java.lang.Integer$$la$init$ra$$int_$exception(arg_0: ref, 
    arg_1: int, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: Field int)
   : ref;

function _uf_fixed.java.lang.Integer$$la$init$ra$$int_fixed.$heap(arg_0: ref, 
    arg_1: int, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: Field int)
   : $heap_type;

function _uf_unsafe.java.lang.Integer$$la$init$ra$$int_$exception(arg_0: ref, 
    arg_1: int, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: Field int)
   : ref;

function _uf_unsafe.java.lang.Integer$$la$init$ra$$int_fixed.$heap(arg_0: ref, 
    arg_1: int, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: Field int)
   : $heap_type;

function _uf_fixed.java.lang.Object$$la$init$ra$$_$exception(arg_0: ref) : ref;

function _uf_unsafe.java.lang.Object$$la$init$ra$$_$exception(arg_0: ref) : ref;

function _uf_fixed.java.lang.Integer$valueOf$int_$return(arg_0: int, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: int, 
    arg_5: Field int)
   : ref;

function _uf_fixed.java.lang.Integer$valueOf$int_$exception(arg_0: int, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: int, 
    arg_5: Field int)
   : ref;

function _uf_fixed.java.lang.Integer$valueOf$int_fixed.$objIndex(arg_0: int, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: int, 
    arg_5: Field int)
   : int;

function _uf_fixed.java.lang.Integer$valueOf$int_fixed.$heap(arg_0: int, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: int, 
    arg_5: Field int)
   : $heap_type;

function _uf_unsafe.java.lang.Integer$valueOf$int_$return(arg_0: int, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: int, 
    arg_5: Field int)
   : ref;

function _uf_unsafe.java.lang.Integer$valueOf$int_$exception(arg_0: int, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: int, 
    arg_5: Field int)
   : ref;

function _uf_unsafe.java.lang.Integer$valueOf$int_fixed.$objIndex(arg_0: int, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: int, 
    arg_5: Field int)
   : int;

function _uf_unsafe.java.lang.Integer$valueOf$int_fixed.$heap(arg_0: int, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: int, 
    arg_5: Field int)
   : $heap_type;

function _uf_fixed.java.lang.Integer$intValue$_$return(arg_0: ref, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: Field int)
   : int;

function _uf_fixed.java.lang.Integer$intValue$_$exception(arg_0: ref, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: Field int)
   : ref;

function _uf_unsafe.java.lang.Integer$intValue$_$return(arg_0: ref, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: Field int)
   : int;

function _uf_unsafe.java.lang.Integer$intValue$_$exception(arg_0: ref, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: Field int)
   : ref;

function _uf_fixed.java.lang.Integer$compareTo$java.lang.Integer_$return(arg_0: ref, 
    arg_1: ref, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: Field int, 
    arg_6: int)
   : int;

function _uf_fixed.java.lang.Integer$compareTo$java.lang.Integer_$exception(arg_0: ref, 
    arg_1: ref, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: Field int, 
    arg_6: int)
   : ref;

function _uf_fixed.java.lang.Integer$compareTo$java.lang.Integer_fixed.$objIndex(arg_0: ref, 
    arg_1: ref, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: Field int, 
    arg_6: int)
   : int;

function _uf_fixed.java.lang.Integer$compareTo$java.lang.Integer_fixed.$heap(arg_0: ref, 
    arg_1: ref, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: Field int, 
    arg_6: int)
   : $heap_type;

function _uf_unsafe.java.lang.Integer$compareTo$java.lang.Integer_$return(arg_0: ref, 
    arg_1: ref, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: Field int, 
    arg_6: int)
   : int;

function _uf_unsafe.java.lang.Integer$compareTo$java.lang.Integer_$exception(arg_0: ref, 
    arg_1: ref, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: Field int, 
    arg_6: int)
   : ref;

function _uf_unsafe.java.lang.Integer$compareTo$java.lang.Integer_fixed.$objIndex(arg_0: ref, 
    arg_1: ref, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: Field int, 
    arg_6: int)
   : int;

function _uf_unsafe.java.lang.Integer$compareTo$java.lang.Integer_fixed.$heap(arg_0: ref, 
    arg_1: ref, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: Field int, 
    arg_6: int)
   : $heap_type;

function _uf_fixed.java.lang.Integer$compareTo$java.lang.Object_$return(arg_0: ref, 
    arg_1: ref, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: int, 
    arg_6: Field int)
   : int;

function _uf_fixed.java.lang.Integer$compareTo$java.lang.Object_$exception(arg_0: ref, 
    arg_1: ref, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: int, 
    arg_6: Field int)
   : ref;

function _uf_fixed.java.lang.Integer$compareTo$java.lang.Object_fixed.$objIndex(arg_0: ref, 
    arg_1: ref, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: int, 
    arg_6: Field int)
   : int;

function _uf_fixed.java.lang.Integer$compareTo$java.lang.Object_fixed.$heap(arg_0: ref, 
    arg_1: ref, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: int, 
    arg_6: Field int)
   : $heap_type;

function _uf_unsafe.java.lang.Integer$compareTo$java.lang.Object_$return(arg_0: ref, 
    arg_1: ref, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: int, 
    arg_6: Field int)
   : int;

function _uf_unsafe.java.lang.Integer$compareTo$java.lang.Object_$exception(arg_0: ref, 
    arg_1: ref, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: int, 
    arg_6: Field int)
   : ref;

function _uf_unsafe.java.lang.Integer$compareTo$java.lang.Object_fixed.$objIndex(arg_0: ref, 
    arg_1: ref, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: int, 
    arg_6: Field int)
   : int;

function _uf_unsafe.java.lang.Integer$compareTo$java.lang.Object_fixed.$heap(arg_0: ref, 
    arg_1: ref, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: int, 
    arg_6: Field int)
   : $heap_type;

var Output_of_unsafe.java.lang.Integer$compareTo$java.lang.Object_$return: int;

var Output_of_fixed.java.lang.Integer$compareTo$java.lang.Object_$return: int;

var Output_of_unsafe.java.lang.Integer$compareTo$java.lang.Object_$exception: ref;

var Output_of_fixed.java.lang.Integer$compareTo$java.lang.Object_$exception: ref;

var Output_of_unsafe.java.lang.Integer$compareTo$java.lang.Object_fixed.$objIndex: int;

var Output_of_fixed.java.lang.Integer$compareTo$java.lang.Object_fixed.$objIndex: int;

var Output_of_unsafe.java.lang.Integer$compareTo$java.lang.Object_fixed.$heap: $heap_type;

var Output_of_fixed.java.lang.Integer$compareTo$java.lang.Object_fixed.$heap: $heap_type;

function _uf_fixed.MoreSanity$$la$init$ra$$_$exception(arg_0: ref, arg_1: $heap_type, arg_2: [ref]int, arg_3: [ref]int) : ref;

function _uf_unsafe.MoreSanity$$la$init$ra$$_$exception(arg_0: ref, arg_1: $heap_type, arg_2: [ref]int, arg_3: [ref]int) : ref;

var Output_of_unsafe.MoreSanity$$la$init$ra$$_$exception: ref;

var Output_of_fixed.MoreSanity$$la$init$ra$$_$exception: ref;

function _uf_fixed.MoreSanity$array_unsafe$int$lp$$rp$_int_$return(arg_0: ref, 
    arg_1: int, 
    arg_2: [ref]int, 
    arg_3: $heap_type, 
    arg_4: [ref]int, 
    arg_5: int, 
    arg_6: intArrHeap_type, 
    arg_7: Field int)
   : int;

function _uf_fixed.MoreSanity$array_unsafe$int$lp$$rp$_int_$exception(arg_0: ref, 
    arg_1: int, 
    arg_2: [ref]int, 
    arg_3: $heap_type, 
    arg_4: [ref]int, 
    arg_5: int, 
    arg_6: intArrHeap_type, 
    arg_7: Field int)
   : ref;

function _uf_fixed.MoreSanity$array_unsafe$int$lp$$rp$_int_fixed.$objIndex(arg_0: ref, 
    arg_1: int, 
    arg_2: [ref]int, 
    arg_3: $heap_type, 
    arg_4: [ref]int, 
    arg_5: int, 
    arg_6: intArrHeap_type, 
    arg_7: Field int)
   : int;

function _uf_fixed.MoreSanity$array_unsafe$int$lp$$rp$_int_fixed.$heap(arg_0: ref, 
    arg_1: int, 
    arg_2: [ref]int, 
    arg_3: $heap_type, 
    arg_4: [ref]int, 
    arg_5: int, 
    arg_6: intArrHeap_type, 
    arg_7: Field int)
   : $heap_type;

function _uf_unsafe.MoreSanity$array_unsafe$int$lp$$rp$_int_$return(arg_0: ref, 
    arg_1: int, 
    arg_2: [ref]int, 
    arg_3: $heap_type, 
    arg_4: [ref]int, 
    arg_5: int, 
    arg_6: intArrHeap_type, 
    arg_7: Field int)
   : int;

function _uf_unsafe.MoreSanity$array_unsafe$int$lp$$rp$_int_$exception(arg_0: ref, 
    arg_1: int, 
    arg_2: [ref]int, 
    arg_3: $heap_type, 
    arg_4: [ref]int, 
    arg_5: int, 
    arg_6: intArrHeap_type, 
    arg_7: Field int)
   : ref;

function _uf_unsafe.MoreSanity$array_unsafe$int$lp$$rp$_int_fixed.$objIndex(arg_0: ref, 
    arg_1: int, 
    arg_2: [ref]int, 
    arg_3: $heap_type, 
    arg_4: [ref]int, 
    arg_5: int, 
    arg_6: intArrHeap_type, 
    arg_7: Field int)
   : int;

function _uf_unsafe.MoreSanity$array_unsafe$int$lp$$rp$_int_fixed.$heap(arg_0: ref, 
    arg_1: int, 
    arg_2: [ref]int, 
    arg_3: $heap_type, 
    arg_4: [ref]int, 
    arg_5: int, 
    arg_6: intArrHeap_type, 
    arg_7: Field int)
   : $heap_type;

var Output_of_unsafe.MoreSanity$array_unsafe$int$lp$$rp$_int_$return: int;

var Output_of_fixed.MoreSanity$array_unsafe$int$lp$$rp$_int_$return: int;

var Output_of_unsafe.MoreSanity$array_unsafe$int$lp$$rp$_int_$exception: ref;

var Output_of_fixed.MoreSanity$array_unsafe$int$lp$$rp$_int_$exception: ref;

var Output_of_unsafe.MoreSanity$array_unsafe$int$lp$$rp$_int_fixed.$objIndex: int;

var Output_of_fixed.MoreSanity$array_unsafe$int$lp$$rp$_int_fixed.$objIndex: int;

var Output_of_unsafe.MoreSanity$array_unsafe$int$lp$$rp$_int_fixed.$heap: $heap_type;

var Output_of_fixed.MoreSanity$array_unsafe$int$lp$$rp$_int_fixed.$heap: $heap_type;

function _uf_fixed.MoreSanity$loopAndbranch_safe$int_int_$return(arg_0: int, arg_1: int, arg_2: $heap_type, arg_3: [ref]int, arg_4: [ref]int)
   : int;

function _uf_fixed.MoreSanity$loopAndbranch_safe$int_int_$exception(arg_0: int, arg_1: int, arg_2: $heap_type, arg_3: [ref]int, arg_4: [ref]int)
   : ref;

function _uf_unsafe.MoreSanity$loopAndbranch_safe$int_int_$return(arg_0: int, arg_1: int, arg_2: $heap_type, arg_3: [ref]int, arg_4: [ref]int)
   : int;

function _uf_unsafe.MoreSanity$loopAndbranch_safe$int_int_$exception(arg_0: int, arg_1: int, arg_2: $heap_type, arg_3: [ref]int, arg_4: [ref]int)
   : ref;

var Output_of_unsafe.MoreSanity$loopAndbranch_safe$int_int_$return: int;

var Output_of_fixed.MoreSanity$loopAndbranch_safe$int_int_$return: int;

var Output_of_unsafe.MoreSanity$loopAndbranch_safe$int_int_$exception: ref;

var Output_of_fixed.MoreSanity$loopAndbranch_safe$int_int_$exception: ref;

procedure PROC_.MoreSanity$loopAndbranch_safe$int_int_EQ_unsafe__xx__fixed($in_parameter__0: int, $in_parameter__1: int)
   returns (AA_TEMP180: bool, AA_TEMP181: bool);
  modifies Output_of_unsafe.MoreSanity$loopAndbranch_safe$int_int_$return, Output_of_fixed.MoreSanity$loopAndbranch_safe$int_int_$return, Output_of_unsafe.MoreSanity$loopAndbranch_safe$int_int_$exception, Output_of_fixed.MoreSanity$loopAndbranch_safe$int_int_$exception;
  ensures AA_TEMP181 && AA_TEMP180;



implementation PROC_.MoreSanity$loopAndbranch_safe$int_int_EQ_unsafe__xx__fixed($in_parameter__0: int, $in_parameter__1: int)
   returns (AA_TEMP180: bool, AA_TEMP181: bool)
{
  var AA_TEMP170: int;
  var AA_TEMP171: ref;
  var $return: int;
  var $exception: ref;
  var inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i1: int;
  var inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i5: int;
  var inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i4: int;
  var inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i3: int;
  var inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i0: int;
  var inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i2: int;
  var inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$in_i2: int;
  var inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2: int;
  var inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i4: int;
  var inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4: int;
  var inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$in_i5: int;
  var inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5: int;
  var inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$$in_parameter__0: int;
  var inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$$in_parameter__1: int;
  var inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$$return: int;
  var inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$$exception: ref;
  var inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i4: int;
  var inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i0: int;
  var inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i5: int;
  var inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i1: int;
  var inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i2: int;
  var inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i3: int;
  var inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$in_i2: int;
  var inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2: int;
  var inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$in_i4: int;
  var inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4: int;
  var inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i5: int;
  var inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5: int;
  var inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$$in_parameter__0: int;
  var inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$$in_parameter__1: int;
  var inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$$return: int;
  var inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$$exception: ref;

  AA_INSTR_EQ_BODY:
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$Entry;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$Entry:
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$$in_parameter__0 := $in_parameter__0;
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$$in_parameter__1 := $in_parameter__1;
    havoc inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i1, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i5, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i4, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i3, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i0, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i2, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$in_i2, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i4, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$in_i5, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$$return, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$$exception;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon0;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$$exception := fixed.$null;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i0 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$$in_parameter__0;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i1 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$$in_parameter__1;
    assert {:sourceloc "MoreSanity.java", 38, -1, -1, -1} true;
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i2 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i0;
    assert {:sourceloc "MoreSanity.java", 40, -1, -1, -1} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon18_Then, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon18_Else;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon18_Else:
    assume {:partition} 0 > inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i1;
    assert {:sourceloc "MoreSanity.java", 40, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block15;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block15:
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$Entry;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$Entry:
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$in_i2 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i2;
    havoc inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$entry;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$entry:
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$in_i2;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$block15;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$block15:
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon19_Then, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon19_Else;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon19_Then:
    assume {:partition} inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2
   <= 0;
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} {:comment "thenblock"} true;
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$in_i2;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$Return;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon5:
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} true;
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2
   + -1;
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon5_dummy;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon19_Else:
    assume {:partition} 0
   < inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2;
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon5;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$anon5_dummy:
    assume false;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$Return;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$exit:
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$Return;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$Return:
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i2 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block15$0$out_i2;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block15$1;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block15$1:
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block15_last;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon19_Else:
    assume {:partition} 0 < inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i2;
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon5;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon5:
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} true;
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i2 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i2 + -1;
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon5_dummy;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon19_Then:
    assume {:partition} inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block16;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block16:
    assert {:sourceloc "MoreSanity.java", 62, -1, -1, -1} true;
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$$return := 1;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block21;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block21:
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$Return;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon18_Then:
    assume {:partition} inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i1 >= 0;
    assert {:sourceloc "MoreSanity.java", 40, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block14;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block14:
    assert {:sourceloc "MoreSanity.java", 46, -1, -1, -1} true;
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i3 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i1 + 10;
    assert {:sourceloc "MoreSanity.java", 48, -1, -1, -1} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon20_Then, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon20_Else;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon20_Else:
    assume {:partition} 10 <= inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i3;
    assert {:sourceloc "MoreSanity.java", 48, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon8;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon8:
    assert {:sourceloc "MoreSanity.java", 49, -1, -1, -1} true;
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i4 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i0;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block18;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block18:
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Entry;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Entry:
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i4 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i4;
    havoc inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$entry;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$entry:
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i4;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$block18;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$block18:
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon21_Then, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon21_Else;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon21_Then:
    assume {:partition} inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4
   <= 0;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i4;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon11:
    assert {:sourceloc "MoreSanity.java", 51, -1, -1, -1} true;
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4
   + -1;
    assert {:sourceloc "MoreSanity.java", 51, -1, -1, -1} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon11_dummy;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon21_Else:
    assume {:partition} 0
   < inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon11;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon11_dummy:
    assume false;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$exit:
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return:
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i4 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i4;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block18$1;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block18$1:
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block18_last;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon21_Else:
    assume {:partition} 0 < inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i4;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon11;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon11:
    assert {:sourceloc "MoreSanity.java", 51, -1, -1, -1} true;
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i4 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i4 + -1;
    assert {:sourceloc "MoreSanity.java", 51, -1, -1, -1} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon11_dummy;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon21_Then:
    assume {:partition} inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block19;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block19:
    assert {:sourceloc "MoreSanity.java", 53, -1, -1, -1} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block16;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon20_Then:
    assume {:partition} inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i3 < 10;
    assert {:sourceloc "MoreSanity.java", 48, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block17;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block17:
    assert {:sourceloc "MoreSanity.java", 54, -1, -1, -1} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon22_Then, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon22_Else;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon22_Else:
    assume {:partition} 0 > inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i0;
    assert {:sourceloc "MoreSanity.java", 54, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon14;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon14:
    assert {:sourceloc "MoreSanity.java", 55, -1, -1, -1} true;
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i5 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i0;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block20;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block20:
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$Entry;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$Entry:
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$in_i5 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i5;
    havoc inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$entry;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$entry:
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$in_i5;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$block20;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$block20:
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon23_Then, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon23_Else;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon23_Then:
    assume {:partition} inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5
   <= 0;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$in_i5;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$Return;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon17:
    assert {:sourceloc "MoreSanity.java", 57, -1, -1, -1} true;
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5
   + -1;
    assert {:sourceloc "MoreSanity.java", 57, -1, -1, -1} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon17_dummy;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon23_Else:
    assume {:partition} 0
   < inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon17;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$anon17_dummy:
    assume false;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$Return;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$exit:
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$Return;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$Return:
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i5 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block20$0$out_i5;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block20$1;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block20$1:
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block20_last;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon23_Else:
    assume {:partition} 0 < inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i5;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon17;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon17:
    assert {:sourceloc "MoreSanity.java", 57, -1, -1, -1} true;
    inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i5 := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i5 + -1;
    assert {:sourceloc "MoreSanity.java", 57, -1, -1, -1} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon17_dummy;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon23_Then:
    assume {:partition} inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block16;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon22_Then:
    assume {:partition} inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$i0 >= 0;
    assert {:sourceloc "MoreSanity.java", 54, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block16;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon5_dummy:
    assume false;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$Return;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block15_last:
    assert {:sourceloc "MoreSanity.java", 41, -1, -1, -1} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon19_Then, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon19_Else;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon11_dummy:
    assume false;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$Return;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block18_last:
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon21_Then, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon21_Else;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon17_dummy:
    assume false;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$Return;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$block20_last:
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} true;
    goto inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon23_Then, inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$anon23_Else;

  inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$Return:
    assume true;
    assume true;
    $return := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$$return;
    $exception := inline$unsafe.MoreSanity$loopAndbranch_safe$int_int$0$$exception;
    goto AA_INSTR_EQ_BODY$1;

  AA_INSTR_EQ_BODY$1:
    AA_TEMP170 := $return;
    AA_TEMP171 := $exception;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$Entry;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$Entry:
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$$in_parameter__0 := $in_parameter__0;
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$$in_parameter__1 := $in_parameter__1;
    havoc inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i4, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i0, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i5, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i1, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i2, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i3, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$in_i2, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$in_i4, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i5, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$$return, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$$exception;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon0;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$$exception := fixed.$null;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i0 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$$in_parameter__0;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i1 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$$in_parameter__1;
    assert {:sourceloc "MoreSanity.java", 40, -1, -1, -1} true;
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i2 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i0;
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon18_Then, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon18_Else;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon18_Else:
    assume {:partition} 0 > inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i1;
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block13;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block13:
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$Entry;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$Entry:
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$in_i2 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i2;
    havoc inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$entry;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$entry:
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$in_i2;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$block13;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$block13:
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon19_Then, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon19_Else;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon19_Then:
    assume {:partition} inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2
   <= 0;
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$in_i2;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$Return;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon5:
    assert {:sourceloc "MoreSanity.java", 44, -1, -1, -1} true;
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2
   + -1;
    assert {:sourceloc "MoreSanity.java", 44, -1, -1, -1} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon5_dummy;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon19_Else:
    assume {:partition} 0
   < inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2;
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon5;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$anon5_dummy:
    assume false;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$Return;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$exit:
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$Return;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$Return:
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i2 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block13$0$out_i2;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block13$1;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block13$1:
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block13_last;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon19_Else:
    assume {:partition} 0 < inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i2;
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon5;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon5:
    assert {:sourceloc "MoreSanity.java", 44, -1, -1, -1} true;
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i2 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i2 + -1;
    assert {:sourceloc "MoreSanity.java", 44, -1, -1, -1} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon5_dummy;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon19_Then:
    assume {:partition} inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i2 <= 0;
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block14;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block14:
    assert {:sourceloc "MoreSanity.java", 64, -1, -1, -1} true;
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$$return := 1;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block19;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block19:
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$Return;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon18_Then:
    assume {:partition} inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i1 >= 0;
    assert {:sourceloc "MoreSanity.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block12;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block12:
    assert {:sourceloc "MoreSanity.java", 48, -1, -1, -1} true;
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i3 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i1 + 10;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon20_Then, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon20_Else;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon20_Else:
    assume {:partition} 10 <= inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i3;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon8;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon8:
    assert {:sourceloc "MoreSanity.java", 51, -1, -1, -1} true;
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i4 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i0;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block16;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block16:
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$Entry;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$Entry:
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$in_i4 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i4;
    havoc inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$entry;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$entry:
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$in_i4;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$block16;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$block16:
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon21_Then, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon21_Else;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon21_Then:
    assume {:partition} inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4
   <= 0;
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} {:comment "thenblock"} true;
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$in_i4;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$Return;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon11:
    assert {:sourceloc "MoreSanity.java", 53, -1, -1, -1} true;
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4
   + -1;
    assert {:sourceloc "MoreSanity.java", 53, -1, -1, -1} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon11_dummy;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon21_Else:
    assume {:partition} 0
   < inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4;
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon11;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$anon11_dummy:
    assume false;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$Return;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$exit:
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$Return;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$Return:
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i4 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block16$0$out_i4;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block16$1;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block16$1:
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block16_last;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon21_Else:
    assume {:partition} 0 < inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i4;
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon11;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon11:
    assert {:sourceloc "MoreSanity.java", 53, -1, -1, -1} true;
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i4 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i4 + -1;
    assert {:sourceloc "MoreSanity.java", 53, -1, -1, -1} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon11_dummy;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon21_Then:
    assume {:partition} inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i4 <= 0;
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block17;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block17:
    assert {:sourceloc "MoreSanity.java", 55, -1, -1, -1} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block14;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon20_Then:
    assume {:partition} inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i3 < 10;
    assert {:sourceloc "MoreSanity.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block15;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block15:
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon22_Then, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon22_Else;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon22_Else:
    assume {:partition} 0 > inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i0;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon14;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon14:
    assert {:sourceloc "MoreSanity.java", 57, -1, -1, -1} true;
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i5 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i0;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block18;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block18:
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Entry;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Entry:
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i5 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i5;
    havoc inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$entry;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$entry:
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i5;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$block18;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$block18:
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon23_Then, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon23_Else;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon23_Then:
    assume {:partition} inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5
   <= 0;
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} {:comment "thenblock"} true;
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$in_i5;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon17:
    assert {:sourceloc "MoreSanity.java", 59, -1, -1, -1} true;
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5
   + -1;
    assert {:sourceloc "MoreSanity.java", 59, -1, -1, -1} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon17_dummy;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon23_Else:
    assume {:partition} 0
   < inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5;
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon17;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$anon17_dummy:
    assume false;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$exit:
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$Return:
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i5 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$inline$MoreSanity$loopAndbranch_safe$int_int_loop_block18$0$out_i5;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block18$1;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block18$1:
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block18_last;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon23_Else:
    assume {:partition} 0 < inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i5;
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon17;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon17:
    assert {:sourceloc "MoreSanity.java", 59, -1, -1, -1} true;
    inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i5 := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i5 + -1;
    assert {:sourceloc "MoreSanity.java", 59, -1, -1, -1} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon17_dummy;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon23_Then:
    assume {:partition} inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i5 <= 0;
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block14;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon22_Then:
    assume {:partition} inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$i0 >= 0;
    assert {:sourceloc "MoreSanity.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block14;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon5_dummy:
    assume false;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$Return;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block13_last:
    assert {:sourceloc "MoreSanity.java", 43, -1, -1, -1} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon19_Then, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon19_Else;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon11_dummy:
    assume false;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$Return;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block16_last:
    assert {:sourceloc "MoreSanity.java", 52, -1, -1, -1} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon21_Then, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon21_Else;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon17_dummy:
    assume false;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$Return;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$block18_last:
    assert {:sourceloc "MoreSanity.java", 58, -1, -1, -1} true;
    goto inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon23_Then, inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$anon23_Else;

  inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$Return:
    assume true;
    assume true;
    $return := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$$return;
    $exception := inline$fixed.MoreSanity$loopAndbranch_safe$int_int$0$$exception;
    goto AA_INSTR_EQ_BODY$2;

  AA_INSTR_EQ_BODY$2:
    Output_of_unsafe.MoreSanity$loopAndbranch_safe$int_int_$return := AA_TEMP170;
    Output_of_fixed.MoreSanity$loopAndbranch_safe$int_int_$return := $return;
    Output_of_unsafe.MoreSanity$loopAndbranch_safe$int_int_$exception := AA_TEMP171;
    Output_of_fixed.MoreSanity$loopAndbranch_safe$int_int_$exception := $exception;
    havoc AA_TEMP180, AA_TEMP181;
    AA_TEMP180, AA_TEMP181 := AA_TEMP180 || AA_TEMP170 == $return, AA_TEMP181 || AA_TEMP171 == $exception;
    return;
}


