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

var fixed.boolean$java.lang.Boolean$value0: Field int;

var fixed.int$java.lang.Integer$value0: Field int;

const unique fixed.$type: Field javaType;

const unique fixed.$alloc: Field bool;

const unique fixed.$null: ref;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique fixed.java.lang.Object: javaType extends complete;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique fixed.java.lang.Boolean: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.io.Serializable: javaType extends complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.lang.Comparable: javaType extends complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.lang.Integer: javaType extends unique fixed.java.lang.Object, fixed.java.io.Serializable, fixed.java.lang.Comparable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.lang.Throwable: javaType extends unique fixed.java.lang.Object, fixed.java.io.Serializable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.lang.Exception: javaType extends unique fixed.java.lang.Throwable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.lang.RuntimeException: javaType extends unique fixed.java.lang.Exception complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.lang.NullPointerException: javaType extends unique fixed.java.lang.RuntimeException complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.lang.ClassCastException: javaType extends unique fixed.java.lang.RuntimeException complete;

const {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} unique fixed.AesEaxJce: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} unique fixed.java.lang.IndexOutOfBoundsException: javaType extends unique fixed.java.lang.RuntimeException complete;

const {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} unique fixed.java.lang.ArrayIndexOutOfBoundsException: javaType extends unique fixed.java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} unique fixed.sg.edu.nus.comp.tsunami.safe.Safe: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} unique fixed.java.lang.Number: javaType extends unique fixed.java.lang.Object, fixed.java.io.Serializable complete;

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
  free ensures fixed.$objIndex == old(fixed.$objIndex) + 1;
  free ensures $obj == fixed.$intToRef(old(fixed.$objIndex));
  free ensures fixed.$heap
   == old(fixed.$heap)[$obj, fixed.$alloc := true][$obj, fixed.$type := obj_type];
  free ensures !old(fixed.$heap[$obj, fixed.$alloc]);
  free ensures $obj != fixed.$null;



procedure {:prefix "fixed"} fixed.java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  free ensures $other != fixed.$null;
  free ensures fixed.$heap[$other, fixed.$alloc] <==> true;
  free ensures fixed.$heap[$other, fixed.$type] == fixed.$heap[$this, fixed.$type];



procedure {:prefix "fixed"} fixed.int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure {:prefix "fixed"} fixed.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies fixed.$heap;
  free ensures $exception
   == _uf_fixed.java.lang.Boolean$$la$init$ra$$boolean_$exception($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.boolean$java.lang.Boolean$value0));
  free ensures fixed.$heap
   == _uf_fixed.java.lang.Boolean$$la$init$ra$$boolean_fixed.$heap($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.boolean$java.lang.Boolean$value0));



procedure {:prefix "fixed"} fixed.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);
  free ensures $exception == _uf_fixed.java.lang.Object$$la$init$ra$$_$exception($this);



procedure {:inline 1} fixed.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;
  free ensures $return
   == _uf_fixed.java.lang.Boolean$valueOf$boolean_$return($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.boolean$java.lang.Boolean$value0));
  free ensures $exception
   == _uf_fixed.java.lang.Boolean$valueOf$boolean_$exception($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.boolean$java.lang.Boolean$value0));
  free ensures fixed.$objIndex
   == _uf_fixed.java.lang.Boolean$valueOf$boolean_fixed.$objIndex($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.boolean$java.lang.Boolean$value0));
  free ensures fixed.$heap
   == _uf_fixed.java.lang.Boolean$valueOf$boolean_fixed.$heap($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.boolean$java.lang.Boolean$value0));



procedure {:prefix "fixed"} fixed.java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.java.lang.Integer$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies fixed.$heap;



procedure {:prefix "fixed"} fixed.java.lang.Integer$valueOf$int($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "fixed"} fixed.java.lang.Integer$intValue$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.java.lang.Integer$compareTo$java.lang.Integer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "fixed"} fixed.java.lang.Integer$compareTo$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "fixed"} fixed.AesEaxJce$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "fixed"} fixed.AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$($in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap, fixed.$arrSizeHeap, fixed.$intArrHeap;



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);



procedure {:prefix "fixed"} fixed.AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: ref, $exception: ref);
  modifies fixed.$objIndex, fixed.$arrSizeHeap, fixed.$intArrHeap, fixed.$heap;



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0: int) returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
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



procedure {:prefix "fixed"} fixed.AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12(in_$return: ref, 
    in_$exception: ref, 
    in_$fakelocal_2: ref, 
    in_$i14: int, 
    in_$i9: int, 
    in_$b8: int, 
    in_$i13: int, 
    in_i17: int, 
    in_$i15: int, 
    in_$fakelocal_3: ref, 
    in_r1: ref, 
    in_$b10: int, 
    in_$fakelocal_1: ref, 
    in_r0: ref, 
    in_$b16: int, 
    in_$s12: int, 
    in_$s11: int)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$fakelocal_2: ref, 
    out_$i14: int, 
    out_$i9: int, 
    out_$b8: int, 
    out_$i13: int, 
    out_i17: int, 
    out_$i15: int, 
    out_$fakelocal_3: ref, 
    out_$b10: int, 
    out_$fakelocal_1: ref, 
    out_$b16: int, 
    out_$s12: int, 
    out_$s11: int);
  modifies fixed.$intArrHeap, fixed.$objIndex, fixed.$heap;



procedure {:prefix "fixed"} fixed.AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15(in_$exception: ref, in_i1: int, in_i0: int, in_r1: ref, in_r0: ref)
   returns (out_$exception: ref, out_i1: int, out_r1: ref);
  modifies fixed.$objIndex, fixed.$arrSizeHeap, fixed.$intArrHeap, fixed.$heap;



implementation fixed.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var z0: int;
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
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
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[r0, fixed.boolean$java.lang.Boolean$value0 := z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation {:inline 1} fixed.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var z0: int;
  var $r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$return, fixed.$type] <: fixed.java.lang.Boolean;
    $exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call $fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    $r0 := $fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this := $r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0 := z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$java.lang.Object$$la$init$ra$$$0$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    $exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    $return := $r0;
    goto block2;

  block2:
    return;
}



implementation fixed.java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $z0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    $z0 := fixed.$heap[r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    $return := $z0;
    goto block3;

  block3:
    return;
}



implementation fixed.java.lang.Integer$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var i0: int;
  var r0: ref;
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
    goto block4;

  block4:
    return;
}



implementation fixed.java.lang.Integer$valueOf$int($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var i0: int;
  var $r0: ref;
  var $fakelocal_0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$0$r0: ref;
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
    havoc inline$java.lang.Integer$$la$init$ra$$int$0$i0, inline$java.lang.Integer$$la$init$ra$$int$0$r0, inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
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
    goto inline$java.lang.Integer$$la$init$ra$$int$0$block4;

  inline$java.lang.Integer$$la$init$ra$$int$0$block4:
    goto inline$java.lang.Integer$$la$init$ra$$int$0$Return;

  inline$java.lang.Integer$$la$init$ra$$int$0$Return:
    $exception := inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    $return := $r0;
    goto block5;

  block5:
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
    goto block6;

  block6:
    return;
}



implementation fixed.java.lang.Integer$compareTo$java.lang.Integer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var $i1: int;
  var $fakelocal_0: ref;
  var $i2: int;
  var $i0: int;
  var r1: ref;
  var $i3: int;
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
    goto block9;

  block9:
    return;

  anon11_Then:
    assume {:partition} $i1 <= $i0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  block7:
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



implementation fixed.java.lang.Integer$compareTo$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var r0: ref;
  var r1: ref;
  var $fakelocal_0: ref;
  var $i0: int;
  var $r2: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3: int;
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
    havoc inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3, inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception;
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
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block9;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block9:
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$Return;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon11_Then:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1
   <= inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block7;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block7:
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
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block9;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon12_Then:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3
   >= inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block8;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block8:
    assert {:sourceloc "Integer.java", 27, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return := 0;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block9;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$Return:
    $i0 := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return;
    $exception := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception;
    goto anon3$1;

  anon3$1:
    assert {:sourceloc "Integer.java", 5, -1, -1, -1} true;
    $return := $i0;
    goto block10;

  block10:
    return;
}



implementation fixed.AesEaxJce$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.AesEaxJce;
    assume {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "AesEaxJce.java", 4, -1, -1, -1} true;
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
    assert {:sourceloc "AesEaxJce.java", 4, -1, -1, -1} true;
    goto block11;

  block11:
    return;
}



implementation fixed.AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$($in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var $fakelocal_5: ref;
  var $i6: int;
  var $fakelocal_2: ref;
  var $i14: int;
  var $r4: ref;
  var $i9: int;
  var $r3: ref;
  var $b8: int;
  var $i13: int;
  var $fakelocal_4: ref;
  var i17: int;
  var $i15: int;
  var $fakelocal_3: ref;
  var $i5: int;
  var $s2: int;
  var r1: ref;
  var $b0: int;
  var $i4: int;
  var $l3: int;
  var $fakelocal_8: ref;
  var $b10: int;
  var $fakelocal_7: ref;
  var $b7: int;
  var $r2: ref;
  var $fakelocal_1: ref;
  var $fakelocal_0: ref;
  var $fakelocal_6: ref;
  var $r5: ref;
  var $z0: int;
  var r0: ref;
  var $b16: int;
  var $b1: int;
  var $s12: int;
  var $s11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap: $heap_type;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$0$i0: int;
  var inline$java.lang.Integer$valueOf$int$0$$r0: ref;
  var inline$java.lang.Integer$valueOf$int$0$$fakelocal_0: ref;
  var inline$java.lang.Integer$valueOf$int$0$$in_parameter__0: int;
  var inline$java.lang.Integer$valueOf$int$0$$return: ref;
  var inline$java.lang.Integer$valueOf$int$0$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$0$$objIndex: int;
  var inline$java.lang.Integer$valueOf$int$0$$heap: $heap_type;
  var inline$java.lang.Integer$$la$init$ra$$int$0$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$0$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$1$i0: int;
  var inline$java.lang.Integer$valueOf$int$1$$r0: ref;
  var inline$java.lang.Integer$valueOf$int$1$$fakelocal_0: ref;
  var inline$java.lang.Integer$valueOf$int$1$$in_parameter__0: int;
  var inline$java.lang.Integer$valueOf$int$1$$return: ref;
  var inline$java.lang.Integer$valueOf$int$1$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$1$$objIndex: int;
  var inline$java.lang.Integer$valueOf$int$1$$heap: $heap_type;
  var inline$java.lang.Integer$$la$init$ra$$int$1$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$1$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$1$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$1$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$1$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$1$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$1$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$1$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception: ref;
  var inline$java.lang.Integer$intValue$$0$$i0: int;
  var inline$java.lang.Integer$intValue$$0$r0: ref;
  var inline$java.lang.Integer$intValue$$0$$this: ref;
  var inline$java.lang.Integer$intValue$$0$$return: int;
  var inline$java.lang.Integer$intValue$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "AesEaxJce.java", 9, -1, -1, -1} true;
    call $fakelocal_0 := fixed.$new(fixed.$intArrayType);
    fixed.$arrSizeHeap := fixed.$arrSizeHeap[$fakelocal_0 := 16];
    r1 := $fakelocal_0;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    i17 := 0;
    goto block12;

  block12:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return := $return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception := $exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2 := $fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14 := $i14;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9 := $i9;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8 := $b8;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13 := $i13;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17 := i17;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15 := $i15;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3 := $fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1 := r1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10 := $b10;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1 := $fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0 := r0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16 := $b16;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12 := $s12;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11 := $s11;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$block12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$block12:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 >= 15;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "thenblock"} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16]];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon31_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12 := fixed.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11, 7);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon31_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon31_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon31_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon30_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, 1);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon30_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon30_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon30_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon29_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon29_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon29_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon29_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else:
    assume {:partition} 15 > inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$exit:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return:
    $return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return;
    $exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    $fakelocal_2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2;
    $i14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14;
    $i9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9;
    $b8 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8;
    $i13 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13;
    i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17;
    $i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15;
    $fakelocal_3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3;
    $b10 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10;
    $fakelocal_1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1;
    $b16 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16;
    $s12 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12;
    $s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11;
    goto block12$1;

  block12$1:
    goto block12_last;

  anon28_Else:
    assume {:partition} 15 > i17;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} !(i17 < fixed.$arrSizeHeap[r0] && i17 >= 0);
    call $fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := fixed.$null;
    $exception := $fakelocal_1;
    return;

  anon29_Then:
    assume {:partition} i17 < fixed.$arrSizeHeap[r0] && i17 >= 0;
    $exception := $exception;
    goto anon6;

  anon6:
    $b8 := fixed.$intArrHeap[r0][i17];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    $i13 := fixed.$shlInt($b8, 1);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    $i9 := i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !($i9 < fixed.$arrSizeHeap[r0] && $i9 >= 0);
    call $fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := fixed.$null;
    $exception := $fakelocal_2;
    return;

  anon30_Then:
    assume {:partition} $i9 < fixed.$arrSizeHeap[r0] && $i9 >= 0;
    $exception := $exception;
    goto anon9;

  anon9:
    $b10 := fixed.$intArrHeap[r0][$i9];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    $s11 := fixed.$bitAnd($b10, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    $s12 := fixed.$ushrInt($s11, 7);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    $i14 := fixed.$xorInt($i13, $s12);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    $i15 := fixed.$bitAnd($i14, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    $b16 := $i15;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(i17 < fixed.$arrSizeHeap[r1] && i17 >= 0);
    call $fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := fixed.$null;
    $exception := $fakelocal_3;
    return;

  anon31_Then:
    assume {:partition} i17 < fixed.$arrSizeHeap[r1] && i17 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[r1 := fixed.$intArrHeap[r1][i17 := $b16]];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    i17 := i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon12_dummy;

  anon28_Then:
    assume {:partition} i17 >= 15;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  block13:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !(15 < fixed.$arrSizeHeap[r0] && 15 >= 0);
    call $fakelocal_4 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := fixed.$null;
    $exception := $fakelocal_4;
    return;

  anon32_Then:
    assume {:partition} 15 < fixed.$arrSizeHeap[r0] && 15 >= 0;
    $exception := $exception;
    goto anon15;

  anon15:
    $b0 := fixed.$intArrHeap[r0][15];
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    $i4 := fixed.$shlInt($b0, 1);
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !(0 < fixed.$arrSizeHeap[r0] && 0 >= 0);
    call $fakelocal_5 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := fixed.$null;
    $exception := $fakelocal_5;
    return;

  anon33_Then:
    assume {:partition} 0 < fixed.$arrSizeHeap[r0] && 0 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $b1 := fixed.$intArrHeap[r0][0];
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    $s2 := fixed.$bitAnd($b1, 128);
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    $l3 := $s2;
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__0 := $l3;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__1 := 0;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__1;
    assert {:sourceloc "Safe.java", 48, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0 := 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2 == 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon3:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block36;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block36:
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3 != 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon6:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block37;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block37:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block38;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block38:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block37;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block36;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$Return:
    $z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$exception;
    goto anon18$1;

  anon18$1:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$java.lang.Integer$valueOf$int$0$Entry;

  inline$java.lang.Integer$valueOf$int$0$Entry:
    inline$java.lang.Integer$valueOf$int$0$$in_parameter__0 := 0;
    havoc inline$java.lang.Integer$valueOf$int$0$i0, inline$java.lang.Integer$valueOf$int$0$$r0, inline$java.lang.Integer$valueOf$int$0$$fakelocal_0, inline$java.lang.Integer$valueOf$int$0$$return, inline$java.lang.Integer$valueOf$int$0$$exception;
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
    havoc inline$java.lang.Integer$$la$init$ra$$int$0$i0, inline$java.lang.Integer$$la$init$ra$$int$0$r0, inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
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
    goto inline$java.lang.Integer$$la$init$ra$$int$0$block4;

  inline$java.lang.Integer$$la$init$ra$$int$0$block4:
    goto inline$java.lang.Integer$$la$init$ra$$int$0$Return;

  inline$java.lang.Integer$$la$init$ra$$int$0$Return:
    inline$java.lang.Integer$valueOf$int$0$$exception := inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
    goto inline$java.lang.Integer$valueOf$int$0$anon0$1;

  inline$java.lang.Integer$valueOf$int$0$anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$0$$return := inline$java.lang.Integer$valueOf$int$0$$r0;
    goto inline$java.lang.Integer$valueOf$int$0$block5;

  inline$java.lang.Integer$valueOf$int$0$block5:
    goto inline$java.lang.Integer$valueOf$int$0$Return;

  inline$java.lang.Integer$valueOf$int$0$Return:
    $r2 := inline$java.lang.Integer$valueOf$int$0$$return;
    $exception := inline$java.lang.Integer$valueOf$int$0$$exception;
    goto anon18$2;

  anon18$2:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$java.lang.Integer$valueOf$int$1$Entry;

  inline$java.lang.Integer$valueOf$int$1$Entry:
    inline$java.lang.Integer$valueOf$int$1$$in_parameter__0 := 135;
    havoc inline$java.lang.Integer$valueOf$int$1$i0, inline$java.lang.Integer$valueOf$int$1$$r0, inline$java.lang.Integer$valueOf$int$1$$fakelocal_0, inline$java.lang.Integer$valueOf$int$1$$return, inline$java.lang.Integer$valueOf$int$1$$exception;
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
    havoc inline$java.lang.Integer$$la$init$ra$$int$1$i0, inline$java.lang.Integer$$la$init$ra$$int$1$r0, inline$java.lang.Integer$$la$init$ra$$int$1$$exception;
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
    goto inline$java.lang.Integer$$la$init$ra$$int$1$block4;

  inline$java.lang.Integer$$la$init$ra$$int$1$block4:
    goto inline$java.lang.Integer$$la$init$ra$$int$1$Return;

  inline$java.lang.Integer$$la$init$ra$$int$1$Return:
    inline$java.lang.Integer$valueOf$int$1$$exception := inline$java.lang.Integer$$la$init$ra$$int$1$$exception;
    goto inline$java.lang.Integer$valueOf$int$1$anon0$1;

  inline$java.lang.Integer$valueOf$int$1$anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$1$$return := inline$java.lang.Integer$valueOf$int$1$$r0;
    goto inline$java.lang.Integer$valueOf$int$1$block5;

  inline$java.lang.Integer$valueOf$int$1$block5:
    goto inline$java.lang.Integer$valueOf$int$1$Return;

  inline$java.lang.Integer$valueOf$int$1$Return:
    $r3 := inline$java.lang.Integer$valueOf$int$1$$return;
    $exception := inline$java.lang.Integer$valueOf$int$1$$exception;
    goto anon18$3;

  anon18$3:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0 := $z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1 := $r2;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2 := $r3;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1, fixed.$type]
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block66;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block66:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block67;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block67:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block68:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block67;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block66;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return:
    $r4 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto anon18$4;

  anon18$4:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} !(fixed.$heap[$r4, fixed.$type] <: fixed.java.lang.Integer);
    call $fakelocal_6 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := fixed.$null;
    $exception := $fakelocal_6;
    return;

  anon34_Then:
    assume {:partition} fixed.$heap[$r4, fixed.$type] <: fixed.java.lang.Integer;
    $exception := $exception;
    goto anon21;

  anon21:
    $r5 := $r4;
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} $r5 == fixed.$null;
    call $fakelocal_7 := fixed.$new(fixed.java.lang.RuntimeException);
    $return := fixed.$null;
    $exception := $fakelocal_7;
    return;

  anon35_Then:
    assume {:partition} $r5 != fixed.$null;
    $exception := $exception;
    goto anon24;

  anon24:
    goto inline$java.lang.Integer$intValue$$0$Entry;

  inline$java.lang.Integer$intValue$$0$Entry:
    inline$java.lang.Integer$intValue$$0$$this := $r5;
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
    goto inline$java.lang.Integer$intValue$$0$block6;

  inline$java.lang.Integer$intValue$$0$block6:
    goto inline$java.lang.Integer$intValue$$0$Return;

  inline$java.lang.Integer$intValue$$0$Return:
    $i5 := inline$java.lang.Integer$intValue$$0$$return;
    $exception := inline$java.lang.Integer$intValue$$0$$exception;
    goto anon24$1;

  anon24$1:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    $i6 := fixed.$xorInt($i4, $i5);
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    $b7 := $i6;
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} !(15 < fixed.$arrSizeHeap[r1] && 15 >= 0);
    call $fakelocal_8 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := fixed.$null;
    $exception := $fakelocal_8;
    return;

  anon36_Then:
    assume {:partition} 15 < fixed.$arrSizeHeap[r1] && 15 >= 0;
    $exception := $exception;
    goto anon27;

  anon27:
    fixed.$intArrHeap := fixed.$intArrHeap[r1 := fixed.$intArrHeap[r1][15 := $b7]];
    assert {:sourceloc "AesEaxJce.java", 16, -1, -1, -1} true;
    $return := r1;
    goto block14;

  block14:
    return;

  anon12_dummy:
    assume false;
    return;

  block12_last:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;
}



implementation fixed.AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: ref, $exception: ref)
{
  var i1: int;
  var i0: int;
  var r1: ref;
  var r0: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_$exception: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_i1: int;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_i0: int;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_r1: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_r0: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_$exception: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_i1: int;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_r1: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$arrSizeHeap: [ref]int;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$heap: $heap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i6: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r4: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i5: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$l3: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_8: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_7: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b7: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r5: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$z0: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b16: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$in_parameter__0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$arrSizeHeap: [ref]int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$heap: $heap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap: $heap_type;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$0$i0: int;
  var inline$java.lang.Integer$valueOf$int$0$$r0: ref;
  var inline$java.lang.Integer$valueOf$int$0$$fakelocal_0: ref;
  var inline$java.lang.Integer$valueOf$int$0$$in_parameter__0: int;
  var inline$java.lang.Integer$valueOf$int$0$$return: ref;
  var inline$java.lang.Integer$valueOf$int$0$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$0$$objIndex: int;
  var inline$java.lang.Integer$valueOf$int$0$$heap: $heap_type;
  var inline$java.lang.Integer$$la$init$ra$$int$0$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$0$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$1$i0: int;
  var inline$java.lang.Integer$valueOf$int$1$$r0: ref;
  var inline$java.lang.Integer$valueOf$int$1$$fakelocal_0: ref;
  var inline$java.lang.Integer$valueOf$int$1$$in_parameter__0: int;
  var inline$java.lang.Integer$valueOf$int$1$$return: ref;
  var inline$java.lang.Integer$valueOf$int$1$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$1$$objIndex: int;
  var inline$java.lang.Integer$valueOf$int$1$$heap: $heap_type;
  var inline$java.lang.Integer$$la$init$ra$$int$1$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$1$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$1$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$1$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$1$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$1$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$1$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$1$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception: ref;
  var inline$java.lang.Integer$intValue$$0$$i0: int;
  var inline$java.lang.Integer$intValue$$0$r0: ref;
  var inline$java.lang.Integer$intValue$$0$$this: ref;
  var inline$java.lang.Integer$intValue$$0$$return: int;
  var inline$java.lang.Integer$intValue$$0$$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i6: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r4: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i5: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$l3: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_8: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_7: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b7: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r5: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$z0: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b16: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$in_parameter__0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$arrSizeHeap: [ref]int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$heap: $heap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i17: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b16: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b16: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap: $heap_type;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$2$i0: int;
  var inline$java.lang.Integer$valueOf$int$2$$r0: ref;
  var inline$java.lang.Integer$valueOf$int$2$$fakelocal_0: ref;
  var inline$java.lang.Integer$valueOf$int$2$$in_parameter__0: int;
  var inline$java.lang.Integer$valueOf$int$2$$return: ref;
  var inline$java.lang.Integer$valueOf$int$2$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$2$$objIndex: int;
  var inline$java.lang.Integer$valueOf$int$2$$heap: $heap_type;
  var inline$java.lang.Integer$$la$init$ra$$int$2$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$2$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$2$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$2$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$2$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$2$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$2$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$2$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$3$i0: int;
  var inline$java.lang.Integer$valueOf$int$3$$r0: ref;
  var inline$java.lang.Integer$valueOf$int$3$$fakelocal_0: ref;
  var inline$java.lang.Integer$valueOf$int$3$$in_parameter__0: int;
  var inline$java.lang.Integer$valueOf$int$3$$return: ref;
  var inline$java.lang.Integer$valueOf$int$3$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$3$$objIndex: int;
  var inline$java.lang.Integer$valueOf$int$3$$heap: $heap_type;
  var inline$java.lang.Integer$$la$init$ra$$int$3$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$3$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$3$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$3$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$3$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$3$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$3$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$3$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1: ref;
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

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__1;
    assert {:sourceloc "AesEaxJce.java", 32, -1, -1, -1} true;
    r1 := fixed.$null;
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} true;
    i1 := 0;
    goto block15;

  block15:
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$Entry;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$Entry:
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_$exception := $exception;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_i1 := i1;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_i0 := i0;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_r1 := r1;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_r0 := r0;
    havoc inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_$exception, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_i1, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_r1;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$arrSizeHeap := fixed.$arrSizeHeap;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$entry;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$entry:
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_$exception, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_i1, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_r1 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_$exception, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_i1, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_r1;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$block15;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$block15:
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$anon4_Then, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$anon4_Else;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$anon4_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_i1
   >= inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_i0;
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} {:comment "thenblock"} true;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_$exception, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_i1, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_r1 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_$exception, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_i1, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_r1;
    fixed.$objIndex, fixed.$arrSizeHeap, fixed.$intArrHeap, fixed.$heap := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$objIndex, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$arrSizeHeap, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$intArrHeap, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$heap;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$Return;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 34, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$in_parameter__0 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_r0;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$l3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$z0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$arrSizeHeap := fixed.$arrSizeHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon0;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := fixed.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$in_parameter__0;
    assert {:sourceloc "AesEaxJce.java", 9, -1, -1, -1} true;
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0 := fixed.$new(fixed.$intArrayType);
    fixed.$arrSizeHeap := fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0 := 16];
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 := 0;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i14;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i9;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i15;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b10;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b16;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s12;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s11;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$block12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$block12:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 >= 15;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "thenblock"} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16]];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon31_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12 := fixed.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11, 7);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon31_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon31_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon31_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon30_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, 1);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon30_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon30_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon30_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon29_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon29_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon29_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon29_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else:
    assume {:partition} 15 > inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$exit:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b10 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b16 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s12 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12$1;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12$1:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12_last;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Else:
    assume {:partition} 15 > inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon29_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon29_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon29_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon29_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8, 1);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i9
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i9 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i9
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i9 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b10 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i9];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s11 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b10, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s12 := fixed.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s11, 7);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i14 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s12);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i15 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i14, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b16 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i15;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon31_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon31_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon31_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon31_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b16]];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 >= 15;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block13;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block13:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Else:
    assume {:partition} !(15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Then:
    assume {:partition} 15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon15;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon15:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][15];
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0, 1);
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon33_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon33_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon33_Else:
    assume {:partition} !(0 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 0 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon33_Then:
    assume {:partition} 0 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 0 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][0];
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1, 128);
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$l3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2;
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$l3;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__1 := 0;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__1;
    assert {:sourceloc "Safe.java", 48, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0 := 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2 == 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon3:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block36;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block36:
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3 != 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon6:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block37;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block37:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block38;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block38:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block37;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block36;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18$1;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18$1:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$java.lang.Integer$valueOf$int$0$Entry;

  inline$java.lang.Integer$valueOf$int$0$Entry:
    inline$java.lang.Integer$valueOf$int$0$$in_parameter__0 := 0;
    havoc inline$java.lang.Integer$valueOf$int$0$i0, inline$java.lang.Integer$valueOf$int$0$$r0, inline$java.lang.Integer$valueOf$int$0$$fakelocal_0, inline$java.lang.Integer$valueOf$int$0$$return, inline$java.lang.Integer$valueOf$int$0$$exception;
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
    havoc inline$java.lang.Integer$$la$init$ra$$int$0$i0, inline$java.lang.Integer$$la$init$ra$$int$0$r0, inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
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
    goto inline$java.lang.Integer$$la$init$ra$$int$0$block4;

  inline$java.lang.Integer$$la$init$ra$$int$0$block4:
    goto inline$java.lang.Integer$$la$init$ra$$int$0$Return;

  inline$java.lang.Integer$$la$init$ra$$int$0$Return:
    inline$java.lang.Integer$valueOf$int$0$$exception := inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
    goto inline$java.lang.Integer$valueOf$int$0$anon0$1;

  inline$java.lang.Integer$valueOf$int$0$anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$0$$return := inline$java.lang.Integer$valueOf$int$0$$r0;
    goto inline$java.lang.Integer$valueOf$int$0$block5;

  inline$java.lang.Integer$valueOf$int$0$block5:
    goto inline$java.lang.Integer$valueOf$int$0$Return;

  inline$java.lang.Integer$valueOf$int$0$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r2 := inline$java.lang.Integer$valueOf$int$0$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$java.lang.Integer$valueOf$int$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18$2;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18$2:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$java.lang.Integer$valueOf$int$1$Entry;

  inline$java.lang.Integer$valueOf$int$1$Entry:
    inline$java.lang.Integer$valueOf$int$1$$in_parameter__0 := 135;
    havoc inline$java.lang.Integer$valueOf$int$1$i0, inline$java.lang.Integer$valueOf$int$1$$r0, inline$java.lang.Integer$valueOf$int$1$$fakelocal_0, inline$java.lang.Integer$valueOf$int$1$$return, inline$java.lang.Integer$valueOf$int$1$$exception;
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
    havoc inline$java.lang.Integer$$la$init$ra$$int$1$i0, inline$java.lang.Integer$$la$init$ra$$int$1$r0, inline$java.lang.Integer$$la$init$ra$$int$1$$exception;
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
    goto inline$java.lang.Integer$$la$init$ra$$int$1$block4;

  inline$java.lang.Integer$$la$init$ra$$int$1$block4:
    goto inline$java.lang.Integer$$la$init$ra$$int$1$Return;

  inline$java.lang.Integer$$la$init$ra$$int$1$Return:
    inline$java.lang.Integer$valueOf$int$1$$exception := inline$java.lang.Integer$$la$init$ra$$int$1$$exception;
    goto inline$java.lang.Integer$valueOf$int$1$anon0$1;

  inline$java.lang.Integer$valueOf$int$1$anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$1$$return := inline$java.lang.Integer$valueOf$int$1$$r0;
    goto inline$java.lang.Integer$valueOf$int$1$block5;

  inline$java.lang.Integer$valueOf$int$1$block5:
    goto inline$java.lang.Integer$valueOf$int$1$Return;

  inline$java.lang.Integer$valueOf$int$1$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r3 := inline$java.lang.Integer$valueOf$int$1$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$java.lang.Integer$valueOf$int$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18$3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18$3:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r2;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r3;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1, fixed.$type]
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block66;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block66:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block67;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block67:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block68:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block67;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block66;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r4 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18$4;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18$4:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon34_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon34_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon34_Else:
    assume {:partition} !(fixed.$heap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r4, fixed.$type]
   <: fixed.java.lang.Integer);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon34_Then:
    assume {:partition} fixed.$heap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r4, fixed.$type]
   <: fixed.java.lang.Integer;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon21;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon21:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r5 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r4;
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon35_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon35_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon35_Else:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r5 == fixed.$null;
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_7 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_7;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon35_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r5 != fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon24;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon24:
    goto inline$java.lang.Integer$intValue$$0$Entry;

  inline$java.lang.Integer$intValue$$0$Entry:
    inline$java.lang.Integer$intValue$$0$$this := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r5;
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
    goto inline$java.lang.Integer$intValue$$0$block6;

  inline$java.lang.Integer$intValue$$0$block6:
    goto inline$java.lang.Integer$intValue$$0$Return;

  inline$java.lang.Integer$intValue$$0$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i5 := inline$java.lang.Integer$intValue$$0$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$java.lang.Integer$intValue$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon24$1;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon24$1:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i6 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i5);
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i6;
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon36_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon36_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon36_Else:
    assume {:partition} !(15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_8 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_8;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon36_Then:
    assume {:partition} 15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon27;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon27:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1][15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b7]];
    assert {:sourceloc "AesEaxJce.java", 16, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block14;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block14:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon12_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12_last:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return:
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$anon3$1;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$anon3$1:
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_i1 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_i1
   + 1;
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$anon3_dummy;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$anon4_Else:
    assume {:partition} inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_i0
   > inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_i1;
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$anon3;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$anon3_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$Return;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$exit:
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$Return;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$Return:
    $exception := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_$exception;
    i1 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_i1;
    r1 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_r1;
    goto block15$1;

  block15$1:
    goto block15_last;

  anon4_Else:
    assume {:partition} i0 > i1;
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "AesEaxJce.java", 34, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$in_parameter__0 := r0;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$l3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$z0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$arrSizeHeap := fixed.$arrSizeHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon0;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := fixed.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$in_parameter__0;
    assert {:sourceloc "AesEaxJce.java", 9, -1, -1, -1} true;
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0 := fixed.$new(fixed.$intArrayType);
    fixed.$arrSizeHeap := fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0 := 16];
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 := 0;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i14;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i9;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i15;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b10 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b10;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b16 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b16;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s12 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s12;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s11;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s11;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s11;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$block12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$block12:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17 >= 15;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "thenblock"} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b16]];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon31_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b10 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s11 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b10, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s12 := fixed.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s11, 7);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i14 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s12);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i15 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i14, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b16 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i15;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon31_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon31_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon31_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon30_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, 1);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon30_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon30_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon30_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon29_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon3:
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon29_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon29_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon29_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Else:
    assume {:partition} 15 > inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$exit:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i14;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i15;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b10 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b10;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b16 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b16;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s12 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s12;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s11;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12$1;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12$1:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12_last;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Else:
    assume {:partition} 15 > inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon3:
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon29_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon29_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon29_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon29_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8, 1);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i9
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i9 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i9
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i9 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b10 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i9];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s11 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b10, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s12 := fixed.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s11, 7);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i14 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s12);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i15 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i14, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b16 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i15;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon31_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon31_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon31_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon31_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b16]];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 >= 15;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block13;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block13:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Else:
    assume {:partition} !(15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Then:
    assume {:partition} 15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon15;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon15:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][15];
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0, 1);
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon33_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon33_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon33_Else:
    assume {:partition} !(0 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 0 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon33_Then:
    assume {:partition} 0 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 0 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][0];
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1, 128);
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$l3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2;
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$l3;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__1 := 0;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__1;
    assert {:sourceloc "Safe.java", 48, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0 := 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b2 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l1);
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b2 == 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon3:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block36;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block36:
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l1);
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b3 != 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon6:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block37;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block37:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block38;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block38:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block37;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block36;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18$1;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18$1:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$java.lang.Integer$valueOf$int$2$Entry;

  inline$java.lang.Integer$valueOf$int$2$Entry:
    inline$java.lang.Integer$valueOf$int$2$$in_parameter__0 := 0;
    havoc inline$java.lang.Integer$valueOf$int$2$i0, inline$java.lang.Integer$valueOf$int$2$$r0, inline$java.lang.Integer$valueOf$int$2$$fakelocal_0, inline$java.lang.Integer$valueOf$int$2$$return, inline$java.lang.Integer$valueOf$int$2$$exception;
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
    havoc inline$java.lang.Integer$$la$init$ra$$int$2$i0, inline$java.lang.Integer$$la$init$ra$$int$2$r0, inline$java.lang.Integer$$la$init$ra$$int$2$$exception;
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
    goto inline$java.lang.Integer$$la$init$ra$$int$2$block4;

  inline$java.lang.Integer$$la$init$ra$$int$2$block4:
    goto inline$java.lang.Integer$$la$init$ra$$int$2$Return;

  inline$java.lang.Integer$$la$init$ra$$int$2$Return:
    inline$java.lang.Integer$valueOf$int$2$$exception := inline$java.lang.Integer$$la$init$ra$$int$2$$exception;
    goto inline$java.lang.Integer$valueOf$int$2$anon0$1;

  inline$java.lang.Integer$valueOf$int$2$anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$2$$return := inline$java.lang.Integer$valueOf$int$2$$r0;
    goto inline$java.lang.Integer$valueOf$int$2$block5;

  inline$java.lang.Integer$valueOf$int$2$block5:
    goto inline$java.lang.Integer$valueOf$int$2$Return;

  inline$java.lang.Integer$valueOf$int$2$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r2 := inline$java.lang.Integer$valueOf$int$2$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$java.lang.Integer$valueOf$int$2$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18$2;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18$2:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$java.lang.Integer$valueOf$int$3$Entry;

  inline$java.lang.Integer$valueOf$int$3$Entry:
    inline$java.lang.Integer$valueOf$int$3$$in_parameter__0 := 135;
    havoc inline$java.lang.Integer$valueOf$int$3$i0, inline$java.lang.Integer$valueOf$int$3$$r0, inline$java.lang.Integer$valueOf$int$3$$fakelocal_0, inline$java.lang.Integer$valueOf$int$3$$return, inline$java.lang.Integer$valueOf$int$3$$exception;
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
    havoc inline$java.lang.Integer$$la$init$ra$$int$3$i0, inline$java.lang.Integer$$la$init$ra$$int$3$r0, inline$java.lang.Integer$$la$init$ra$$int$3$$exception;
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
    goto inline$java.lang.Integer$$la$init$ra$$int$3$block4;

  inline$java.lang.Integer$$la$init$ra$$int$3$block4:
    goto inline$java.lang.Integer$$la$init$ra$$int$3$Return;

  inline$java.lang.Integer$$la$init$ra$$int$3$Return:
    inline$java.lang.Integer$valueOf$int$3$$exception := inline$java.lang.Integer$$la$init$ra$$int$3$$exception;
    goto inline$java.lang.Integer$valueOf$int$3$anon0$1;

  inline$java.lang.Integer$valueOf$int$3$anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$3$$return := inline$java.lang.Integer$valueOf$int$3$$r0;
    goto inline$java.lang.Integer$valueOf$int$3$block5;

  inline$java.lang.Integer$valueOf$int$3$block5:
    goto inline$java.lang.Integer$valueOf$int$3$Return;

  inline$java.lang.Integer$valueOf$int$3$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r3 := inline$java.lang.Integer$valueOf$int$3$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$java.lang.Integer$valueOf$int$3$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18$3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18$3:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r2;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r3;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1, fixed.$type]
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block66;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block66:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block67;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block67:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block68:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block67;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block66;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r4 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18$4;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18$4:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon34_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon34_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon34_Else:
    assume {:partition} !(fixed.$heap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r4, fixed.$type]
   <: fixed.java.lang.Integer);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon34_Then:
    assume {:partition} fixed.$heap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r4, fixed.$type]
   <: fixed.java.lang.Integer;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon21;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon21:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r5 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r4;
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon35_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon35_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon35_Else:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r5 == fixed.$null;
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_7 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_7;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon35_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r5 != fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon24;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon24:
    goto inline$java.lang.Integer$intValue$$1$Entry;

  inline$java.lang.Integer$intValue$$1$Entry:
    inline$java.lang.Integer$intValue$$1$$this := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r5;
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
    goto inline$java.lang.Integer$intValue$$1$block6;

  inline$java.lang.Integer$intValue$$1$block6:
    goto inline$java.lang.Integer$intValue$$1$Return;

  inline$java.lang.Integer$intValue$$1$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i5 := inline$java.lang.Integer$intValue$$1$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$java.lang.Integer$intValue$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon24$1;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon24$1:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i6 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i5);
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i6;
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon36_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon36_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon36_Else:
    assume {:partition} !(15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_8 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_8;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon36_Then:
    assume {:partition} 15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon27;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon27:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1][15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b7]];
    assert {:sourceloc "AesEaxJce.java", 16, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block14;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block14:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon12_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12_last:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return:
    r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return;
    $exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto anon3$1;

  anon3$1:
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} true;
    i1 := i1 + 1;
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} true;
    goto anon3_dummy;

  anon4_Then:
    assume {:partition} i1 >= i0;
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  block16:
    assert {:sourceloc "AesEaxJce.java", 36, -1, -1, -1} true;
    $return := r1;
    goto block17;

  block17:
    return;

  anon3_dummy:
    assume false;
    return;

  block15_last:
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;
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
    goto block18;

  block18:
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
    goto block19;

  block19:
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 1;
    goto block20;

  block20:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    $return := z1;
    goto block21;

  block21:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block20;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block19;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z1: int;
  var z0: int;
  var $z2: int;

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
    goto block22;

  block22:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z1: int;
  var $z2: int;
  var z0: int;

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
    goto block23;

  block23:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l1: int;
  var l0: int;
  var $b3: int;
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
    goto block24;

  block24:
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
    goto block25;

  block25:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    $return := z0;
    goto block26;

  block26:
    return;

  anon8_Then:
    assume {:partition} $b3 > 0;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block25;

  anon7_Then:
    assume {:partition} $b2 <= 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    goto block24;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b3: int;
  var l0: int;
  var l1: int;
  var $b2: int;

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
    goto block27;

  block27:
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
    goto block28;

  block28:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    $return := z0;
    goto block29;

  block29:
    return;

  anon8_Then:
    assume {:partition} $b3 < 0;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block28;

  anon7_Then:
    assume {:partition} $b2 >= 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block27;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var l1: int;
  var l0: int;
  var $b3: int;
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
    goto block30;

  block30:
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
    goto block31;

  block31:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    $return := z0;
    goto block32;

  block32:
    return;

  anon8_Then:
    assume {:partition} $b3 >= 0;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block31;

  anon7_Then:
    assume {:partition} $b2 < 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block30;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b3: int;
  var z0: int;
  var l0: int;
  var $b2: int;
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
    goto block33;

  block33:
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
    goto block34;

  block34:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    $return := z0;
    goto block35;

  block35:
    return;

  anon8_Then:
    assume {:partition} $b3 <= 0;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block34;

  anon7_Then:
    assume {:partition} $b2 > 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block33;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b2: int;
  var l1: int;
  var $b3: int;
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
    goto block36;

  block36:
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
    goto block37;

  block37:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    $return := z0;
    goto block38;

  block38:
    return;

  anon8_Then:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block37;

  anon7_Then:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto block36;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var l0: int;
  var $b3: int;
  var l1: int;
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
    goto block39;

  block39:
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
    goto block40;

  block40:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    $return := z0;
    goto block41;

  block41:
    return;

  anon8_Then:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto block40;

  anon7_Then:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block39;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
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
    goto block42;

  block42:
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
    goto block43;

  block43:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    $return := z0;
    goto block44;

  block44:
    return;

  anon8_Then:
    assume {:partition} $b1 > 0;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "thenblock"} true;
    goto block43;

  anon7_Then:
    assume {:partition} $b0 <= 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "thenblock"} true;
    goto block42;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b1: int;
  var d0: int;
  var $b0: int;
  var d1: int;
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
    goto block45;

  block45:
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
    goto block46;

  block46:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    $return := z0;
    goto block47;

  block47:
    return;

  anon8_Then:
    assume {:partition} $b1 < 0;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block46;

  anon7_Then:
    assume {:partition} $b0 >= 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block45;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b1: int;
  var d0: int;
  var z0: int;
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
    goto block48;

  block48:
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
    goto block49;

  block49:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    $return := z0;
    goto block50;

  block50:
    return;

  anon8_Then:
    assume {:partition} $b1 >= 0;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block49;

  anon7_Then:
    assume {:partition} $b0 < 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block48;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b1: int;
  var z0: int;
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
    goto block51;

  block51:
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
    goto block52;

  block52:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    $return := z0;
    goto block53;

  block53:
    return;

  anon8_Then:
    assume {:partition} $b1 <= 0;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "thenblock"} true;
    goto block52;

  anon7_Then:
    assume {:partition} $b0 > 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block51;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d1: int;
  var d0: int;
  var $b1: int;
  var $b0: int;
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
    goto block54;

  block54:
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
    goto block55;

  block55:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    $return := z0;
    goto block56;

  block56:
    return;

  anon8_Then:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "thenblock"} true;
    goto block55;

  anon7_Then:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "thenblock"} true;
    goto block54;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d1: int;
  var $b0: int;
  var d0: int;
  var z0: int;
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
    goto block57;

  block57:
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
    goto block58;

  block58:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    $return := z0;
    goto block59;

  block59:
    return;

  anon8_Then:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "thenblock"} true;
    goto block58;

  anon7_Then:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "thenblock"} true;
    goto block57;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r0: ref;
  var z0: int;
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
    goto block60;

  block60:
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 0;
    goto block61;

  block61:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    $return := z0;
    goto block62;

  block62:
    return;

  anon8_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block61;

  anon7_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block60;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r1: ref;
  var r0: ref;
  var z0: int;

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
    goto block63;

  block63:
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 0;
    goto block64;

  block64:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    $return := z0;
    goto block65;

  block65:
    return;

  anon8_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block64;

  anon7_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block63;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var r2: ref;
  var r0: ref;
  var r1: ref;
  var z0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$return, fixed.$type] <: fixed.java.lang.Object;
    assume fixed.$heap[$in_parameter__2, fixed.$type] <: fixed.java.lang.Object;
    assume fixed.$heap[$in_parameter__1, fixed.$type] <: fixed.java.lang.Object;
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
    goto block66;

  block66:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r1;
    goto block67;

  block67:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    $return := r2;
    goto block68;

  block68:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block67;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block66;
}



implementation fixed.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := fixed.$null;
    return;
}



implementation fixed.AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12(in_$return: ref, 
    in_$exception: ref, 
    in_$fakelocal_2: ref, 
    in_$i14: int, 
    in_$i9: int, 
    in_$b8: int, 
    in_$i13: int, 
    in_i17: int, 
    in_$i15: int, 
    in_$fakelocal_3: ref, 
    in_r1: ref, 
    in_$b10: int, 
    in_$fakelocal_1: ref, 
    in_r0: ref, 
    in_$b16: int, 
    in_$s12: int, 
    in_$s11: int)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$fakelocal_2: ref, 
    out_$i14: int, 
    out_$i9: int, 
    out_$b8: int, 
    out_$i13: int, 
    out_i17: int, 
    out_$i15: int, 
    out_$fakelocal_3: ref, 
    out_$b10: int, 
    out_$fakelocal_1: ref, 
    out_$b16: int, 
    out_$s12: int, 
    out_$s11: int)
{
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap: $heap_type;

  entry:
    out_$return, out_$exception, out_$fakelocal_2, out_$i14, out_$i9, out_$b8, out_$i13, out_i17, out_$i15, out_$fakelocal_3, out_$b10, out_$fakelocal_1, out_$b16, out_$s12, out_$s11 := in_$return, in_$exception, in_$fakelocal_2, in_$i14, in_$i9, in_$b8, in_$i13, in_i17, in_$i15, in_$fakelocal_3, in_$b10, in_$fakelocal_1, in_$b16, in_$s12, in_$s11;
    goto block12;

  block12:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Then:
    assume {:partition} out_i17 >= 15;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_2, out_$i14, out_$i9, out_$b8, out_$i13, out_i17, out_$i15, out_$fakelocal_3, out_$b10, out_$fakelocal_1, out_$b16, out_$s12, out_$s11 := in_$return, in_$exception, in_$fakelocal_2, in_$i14, in_$i9, in_$b8, in_$i13, in_i17, in_$i15, in_$fakelocal_3, in_$b10, in_$fakelocal_1, in_$b16, in_$s12, in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := old(fixed.$intArrHeap), old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[in_r1 := fixed.$intArrHeap[in_r1][out_i17 := out_$b16]];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_i17 := out_i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon12_dummy;

  anon31_Then:
    assume {:partition} out_i17 < fixed.$arrSizeHeap[in_r1] && out_i17 >= 0;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    out_$b10 := fixed.$intArrHeap[in_r0][out_$i9];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    out_$s11 := fixed.$bitAnd(out_$b10, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    out_$s12 := fixed.$ushrInt(out_$s11, 7);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    out_$i14 := fixed.$xorInt(out_$i13, out_$s12);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    out_$i15 := fixed.$bitAnd(out_$i14, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    out_$b16 := out_$i15;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(out_i17 < fixed.$arrSizeHeap[in_r1] && out_i17 >= 0);
    call out_$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := fixed.$null;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$fakelocal_2, out_$i14, out_$i9, out_$b8, out_$i13, out_i17, out_$i15, out_$fakelocal_3, out_$b10, out_$fakelocal_1, out_$b16, out_$s12, out_$s11 := in_$return, in_$exception, in_$fakelocal_2, in_$i14, in_$i9, in_$b8, in_$i13, in_i17, in_$i15, in_$fakelocal_3, in_$b10, in_$fakelocal_1, in_$b16, in_$s12, in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := old(fixed.$intArrHeap), old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon30_Then:
    assume {:partition} out_$i9 < fixed.$arrSizeHeap[in_r0] && out_$i9 >= 0;
    out_$exception := out_$exception;
    goto anon9;

  anon6:
    out_$b8 := fixed.$intArrHeap[in_r0][out_i17];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    out_$i13 := fixed.$shlInt(out_$b8, 1);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    out_$i9 := out_i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(out_$i9 < fixed.$arrSizeHeap[in_r0] && out_$i9 >= 0);
    call out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := fixed.$null;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$fakelocal_2, out_$i14, out_$i9, out_$b8, out_$i13, out_i17, out_$i15, out_$fakelocal_3, out_$b10, out_$fakelocal_1, out_$b16, out_$s12, out_$s11 := in_$return, in_$exception, in_$fakelocal_2, in_$i14, in_$i9, in_$b8, in_$i13, in_i17, in_$i15, in_$fakelocal_3, in_$b10, in_$fakelocal_1, in_$b16, in_$s12, in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := old(fixed.$intArrHeap), old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon29_Then:
    assume {:partition} out_i17 < fixed.$arrSizeHeap[in_r0] && out_i17 >= 0;
    out_$exception := out_$exception;
    goto anon6;

  anon3:
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} !(out_i17 < fixed.$arrSizeHeap[in_r0] && out_i17 >= 0);
    call out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := fixed.$null;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$fakelocal_2, out_$i14, out_$i9, out_$b8, out_$i13, out_i17, out_$i15, out_$fakelocal_3, out_$b10, out_$fakelocal_1, out_$b16, out_$s12, out_$s11 := in_$return, in_$exception, in_$fakelocal_2, in_$i14, in_$i9, in_$b8, in_$i13, in_i17, in_$i15, in_$fakelocal_3, in_$b10, in_$fakelocal_1, in_$b16, in_$s12, in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := old(fixed.$intArrHeap), old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon28_Else:
    assume {:partition} 15 > out_i17;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon12_dummy:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return := out_$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception := out_$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2 := out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14 := out_$i14;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9 := out_$i9;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8 := out_$b8;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13 := out_$i13;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17 := out_i17;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15 := out_$i15;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3 := out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1 := in_r1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10 := out_$b10;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1 := out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0 := in_r0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16 := out_$b16;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12 := out_$s12;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11 := out_$s11;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$block12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$block12:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 >= 15;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "thenblock"} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16]];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon31_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12 := fixed.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11, 7);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon31_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon31_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon31_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon30_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, 1);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon30_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon30_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon30_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon29_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon29_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon29_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon29_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else:
    assume {:partition} 15 > inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$exit:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return:
    out_$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return;
    out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    out_$fakelocal_2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2;
    out_$i14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14;
    out_$i9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9;
    out_$b8 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8;
    out_$i13 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13;
    out_i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17;
    out_$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15;
    out_$fakelocal_3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3;
    out_$b10 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10;
    out_$fakelocal_1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1;
    out_$b16 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16;
    out_$s12 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12;
    out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11;
    goto anon12_dummy$1;

  anon12_dummy$1:
    return;

  exit:
    return;
}



implementation fixed.AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15(in_$exception: ref, in_i1: int, in_i0: int, in_r1: ref, in_r0: ref)
   returns (out_$exception: ref, out_i1: int, out_r1: ref)
{
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i6: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r4: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i5: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$l3: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_8: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_7: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b7: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r5: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$z0: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b16: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$in_parameter__0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$arrSizeHeap: [ref]int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$heap: $heap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap: $heap_type;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$0$i0: int;
  var inline$java.lang.Integer$valueOf$int$0$$r0: ref;
  var inline$java.lang.Integer$valueOf$int$0$$fakelocal_0: ref;
  var inline$java.lang.Integer$valueOf$int$0$$in_parameter__0: int;
  var inline$java.lang.Integer$valueOf$int$0$$return: ref;
  var inline$java.lang.Integer$valueOf$int$0$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$0$$objIndex: int;
  var inline$java.lang.Integer$valueOf$int$0$$heap: $heap_type;
  var inline$java.lang.Integer$$la$init$ra$$int$0$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$0$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$1$i0: int;
  var inline$java.lang.Integer$valueOf$int$1$$r0: ref;
  var inline$java.lang.Integer$valueOf$int$1$$fakelocal_0: ref;
  var inline$java.lang.Integer$valueOf$int$1$$in_parameter__0: int;
  var inline$java.lang.Integer$valueOf$int$1$$return: ref;
  var inline$java.lang.Integer$valueOf$int$1$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$1$$objIndex: int;
  var inline$java.lang.Integer$valueOf$int$1$$heap: $heap_type;
  var inline$java.lang.Integer$$la$init$ra$$int$1$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$1$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$1$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$1$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$1$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$1$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$1$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$1$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception: ref;
  var inline$java.lang.Integer$intValue$$0$$i0: int;
  var inline$java.lang.Integer$intValue$$0$r0: ref;
  var inline$java.lang.Integer$intValue$$0$$this: ref;
  var inline$java.lang.Integer$intValue$$0$$return: int;
  var inline$java.lang.Integer$intValue$$0$$exception: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_$exception: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_i1: int;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_i0: int;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_r1: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_r0: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_$exception: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_i1: int;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_r1: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$arrSizeHeap: [ref]int;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$heap: $heap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i6: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r4: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i5: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$l3: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_8: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_7: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b7: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r5: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$z0: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b16: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$in_parameter__0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$arrSizeHeap: [ref]int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$heap: $heap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i17: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b16: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b16: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap: $heap_type;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$2$i0: int;
  var inline$java.lang.Integer$valueOf$int$2$$r0: ref;
  var inline$java.lang.Integer$valueOf$int$2$$fakelocal_0: ref;
  var inline$java.lang.Integer$valueOf$int$2$$in_parameter__0: int;
  var inline$java.lang.Integer$valueOf$int$2$$return: ref;
  var inline$java.lang.Integer$valueOf$int$2$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$2$$objIndex: int;
  var inline$java.lang.Integer$valueOf$int$2$$heap: $heap_type;
  var inline$java.lang.Integer$$la$init$ra$$int$2$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$2$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$2$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$2$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$2$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$2$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$2$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$2$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$3$i0: int;
  var inline$java.lang.Integer$valueOf$int$3$$r0: ref;
  var inline$java.lang.Integer$valueOf$int$3$$fakelocal_0: ref;
  var inline$java.lang.Integer$valueOf$int$3$$in_parameter__0: int;
  var inline$java.lang.Integer$valueOf$int$3$$return: ref;
  var inline$java.lang.Integer$valueOf$int$3$$exception: ref;
  var inline$java.lang.Integer$valueOf$int$3$$objIndex: int;
  var inline$java.lang.Integer$valueOf$int$3$$heap: $heap_type;
  var inline$java.lang.Integer$$la$init$ra$$int$3$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$3$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$3$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$3$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$3$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$3$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$3$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$3$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1: ref;
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

  entry:
    out_$exception, out_i1, out_r1 := in_$exception, in_i1, in_r1;
    goto block15;

  block15:
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Then:
    assume {:partition} out_i1 >= in_i0;
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} {:comment "thenblock"} true;
    out_$exception, out_i1, out_r1 := in_$exception, in_i1, in_r1;
    fixed.$objIndex, fixed.$arrSizeHeap, fixed.$intArrHeap, fixed.$heap := old(fixed.$objIndex), old(fixed.$arrSizeHeap), old(fixed.$intArrHeap), old(fixed.$heap);
    return;

  anon3:
    assert {:sourceloc "AesEaxJce.java", 34, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$in_parameter__0 := in_r0;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$l3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$z0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$arrSizeHeap := fixed.$arrSizeHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon0;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := fixed.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$in_parameter__0;
    assert {:sourceloc "AesEaxJce.java", 9, -1, -1, -1} true;
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0 := fixed.$new(fixed.$intArrayType);
    fixed.$arrSizeHeap := fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0 := 16];
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 := 0;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i14;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i9;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i15;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b10;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b16;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s12;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s11;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$block12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$block12:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 >= 15;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "thenblock"} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16]];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon31_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12 := fixed.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11, 7);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon31_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon31_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon31_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon30_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, 1);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon30_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon30_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon30_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon29_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon29_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon29_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon29_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else:
    assume {:partition} 15 > inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$exit:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i14;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i9;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i17;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i15;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b10 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b10;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b16 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b16;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s12 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s12;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s11;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12$1;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12$1:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12_last;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Else:
    assume {:partition} 15 > inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon29_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon29_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon29_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon29_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8, 1);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i9
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i9 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i9
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i9 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b10 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i9];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s11 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b10, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s12 := fixed.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s11, 7);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i14 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s12);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i15 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i14, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b16 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i15;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon31_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon31_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon31_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon31_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b16]];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i17 >= 15;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block13;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block13:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Else:
    assume {:partition} !(15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Then:
    assume {:partition} 15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon15;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon15:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][15];
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0, 1);
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon33_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon33_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon33_Else:
    assume {:partition} !(0 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 0 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon33_Then:
    assume {:partition} 0 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 0 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][0];
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1, 128);
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$l3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2;
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$l3;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__1 := 0;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__1;
    assert {:sourceloc "Safe.java", 48, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0 := 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2 == 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon3:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block36;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block36:
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3 != 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon6:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block37;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block37:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block38;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block38:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block37;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block36;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18$1;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18$1:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$java.lang.Integer$valueOf$int$0$Entry;

  inline$java.lang.Integer$valueOf$int$0$Entry:
    inline$java.lang.Integer$valueOf$int$0$$in_parameter__0 := 0;
    havoc inline$java.lang.Integer$valueOf$int$0$i0, inline$java.lang.Integer$valueOf$int$0$$r0, inline$java.lang.Integer$valueOf$int$0$$fakelocal_0, inline$java.lang.Integer$valueOf$int$0$$return, inline$java.lang.Integer$valueOf$int$0$$exception;
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
    havoc inline$java.lang.Integer$$la$init$ra$$int$0$i0, inline$java.lang.Integer$$la$init$ra$$int$0$r0, inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
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
    goto inline$java.lang.Integer$$la$init$ra$$int$0$block4;

  inline$java.lang.Integer$$la$init$ra$$int$0$block4:
    goto inline$java.lang.Integer$$la$init$ra$$int$0$Return;

  inline$java.lang.Integer$$la$init$ra$$int$0$Return:
    inline$java.lang.Integer$valueOf$int$0$$exception := inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
    goto inline$java.lang.Integer$valueOf$int$0$anon0$1;

  inline$java.lang.Integer$valueOf$int$0$anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$0$$return := inline$java.lang.Integer$valueOf$int$0$$r0;
    goto inline$java.lang.Integer$valueOf$int$0$block5;

  inline$java.lang.Integer$valueOf$int$0$block5:
    goto inline$java.lang.Integer$valueOf$int$0$Return;

  inline$java.lang.Integer$valueOf$int$0$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r2 := inline$java.lang.Integer$valueOf$int$0$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$java.lang.Integer$valueOf$int$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18$2;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18$2:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$java.lang.Integer$valueOf$int$1$Entry;

  inline$java.lang.Integer$valueOf$int$1$Entry:
    inline$java.lang.Integer$valueOf$int$1$$in_parameter__0 := 135;
    havoc inline$java.lang.Integer$valueOf$int$1$i0, inline$java.lang.Integer$valueOf$int$1$$r0, inline$java.lang.Integer$valueOf$int$1$$fakelocal_0, inline$java.lang.Integer$valueOf$int$1$$return, inline$java.lang.Integer$valueOf$int$1$$exception;
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
    havoc inline$java.lang.Integer$$la$init$ra$$int$1$i0, inline$java.lang.Integer$$la$init$ra$$int$1$r0, inline$java.lang.Integer$$la$init$ra$$int$1$$exception;
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
    goto inline$java.lang.Integer$$la$init$ra$$int$1$block4;

  inline$java.lang.Integer$$la$init$ra$$int$1$block4:
    goto inline$java.lang.Integer$$la$init$ra$$int$1$Return;

  inline$java.lang.Integer$$la$init$ra$$int$1$Return:
    inline$java.lang.Integer$valueOf$int$1$$exception := inline$java.lang.Integer$$la$init$ra$$int$1$$exception;
    goto inline$java.lang.Integer$valueOf$int$1$anon0$1;

  inline$java.lang.Integer$valueOf$int$1$anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$1$$return := inline$java.lang.Integer$valueOf$int$1$$r0;
    goto inline$java.lang.Integer$valueOf$int$1$block5;

  inline$java.lang.Integer$valueOf$int$1$block5:
    goto inline$java.lang.Integer$valueOf$int$1$Return;

  inline$java.lang.Integer$valueOf$int$1$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r3 := inline$java.lang.Integer$valueOf$int$1$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$java.lang.Integer$valueOf$int$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18$3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18$3:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r2;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r3;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1, fixed.$type]
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block66;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block66:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block67;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block67:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block68:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block67;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block66;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r4 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18$4;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18$4:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon34_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon34_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon34_Else:
    assume {:partition} !(fixed.$heap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r4, fixed.$type]
   <: fixed.java.lang.Integer);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon34_Then:
    assume {:partition} fixed.$heap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r4, fixed.$type]
   <: fixed.java.lang.Integer;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon21;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon21:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r5 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r4;
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon35_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon35_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon35_Else:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r5 == fixed.$null;
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_7 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_7;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon35_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r5 != fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon24;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon24:
    goto inline$java.lang.Integer$intValue$$0$Entry;

  inline$java.lang.Integer$intValue$$0$Entry:
    inline$java.lang.Integer$intValue$$0$$this := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$r5;
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
    goto inline$java.lang.Integer$intValue$$0$block6;

  inline$java.lang.Integer$intValue$$0$block6:
    goto inline$java.lang.Integer$intValue$$0$Return;

  inline$java.lang.Integer$intValue$$0$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i5 := inline$java.lang.Integer$intValue$$0$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$java.lang.Integer$intValue$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon24$1;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon24$1:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i6 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i5);
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i6;
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon36_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon36_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon36_Else:
    assume {:partition} !(15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_8 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_8;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon36_Then:
    assume {:partition} 15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon27;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon27:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1][15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b7]];
    assert {:sourceloc "AesEaxJce.java", 16, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block14;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block14:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon12_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12_last:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return:
    out_r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return;
    out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto anon3$1;

  anon3$1:
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} true;
    out_i1 := out_i1 + 1;
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} true;
    goto anon3_dummy;

  anon4_Else:
    assume {:partition} in_i0 > out_i1;
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3_dummy:
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$Entry;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$Entry:
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_$exception := out_$exception;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_i1 := out_i1;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_i0 := in_i0;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_r1 := out_r1;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_r0 := in_r0;
    havoc inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_$exception, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_i1, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_r1;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$arrSizeHeap := fixed.$arrSizeHeap;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$entry;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$entry:
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_$exception, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_i1, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_r1 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_$exception, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_i1, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_r1;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$block15;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$block15:
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$anon4_Then, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$anon4_Else;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$anon4_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_i1
   >= inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_i0;
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} {:comment "thenblock"} true;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_$exception, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_i1, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_r1 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_$exception, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_i1, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_r1;
    fixed.$objIndex, fixed.$arrSizeHeap, fixed.$intArrHeap, fixed.$heap := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$objIndex, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$arrSizeHeap, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$intArrHeap, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$$heap;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$Return;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 34, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$in_parameter__0 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_r0;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$l3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$z0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$arrSizeHeap := fixed.$arrSizeHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon0;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := fixed.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$in_parameter__0;
    assert {:sourceloc "AesEaxJce.java", 9, -1, -1, -1} true;
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0 := fixed.$new(fixed.$intArrayType);
    fixed.$arrSizeHeap := fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0 := 16];
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 := 0;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i14;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i9;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i15;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b10 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b10;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b16 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b16;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s12 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s12;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s11;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s11;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s11;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$block12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$block12:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17 >= 15;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "thenblock"} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b16]];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon31_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b10 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s11 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b10, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s12 := fixed.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s11, 7);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i14 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s12);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i15 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i14, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b16 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i15;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon31_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon31_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon31_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon30_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, 1);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon30_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon30_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon30_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon29_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon3:
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon29_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon29_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon29_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i17, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s11;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Else:
    assume {:partition} 15 > inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$exit:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i14;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i9;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i17;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i15;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b10 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b10;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b16 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b16;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s12 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s12;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s11;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12$1;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12$1:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12_last;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Else:
    assume {:partition} 15 > inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon3:
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon29_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon29_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon29_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon29_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8, 1);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i9
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i9 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i9
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i9 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b10 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i9];
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s11 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b10, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s12 := fixed.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s11, 7);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i14 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s12);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i15 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i14, 255);
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b16 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i15;
    assert {:sourceloc "AesEaxJce.java", 12, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon31_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon31_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon31_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon31_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b16]];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i17 >= 15;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block13;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block13:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Else:
    assume {:partition} !(15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Then:
    assume {:partition} 15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon15;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon15:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][15];
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0, 1);
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon33_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon33_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon33_Else:
    assume {:partition} !(0 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 0 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon33_Then:
    assume {:partition} 0 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 0 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][0];
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1, 128);
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$l3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2;
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$l3;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__1 := 0;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__1;
    assert {:sourceloc "Safe.java", 48, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0 := 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b2 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l1);
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b2 == 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon3:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block36;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block36:
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l1);
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b3 != 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon6:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block37;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block37:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block38;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block38:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block37;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block36;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18$1;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18$1:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$java.lang.Integer$valueOf$int$2$Entry;

  inline$java.lang.Integer$valueOf$int$2$Entry:
    inline$java.lang.Integer$valueOf$int$2$$in_parameter__0 := 0;
    havoc inline$java.lang.Integer$valueOf$int$2$i0, inline$java.lang.Integer$valueOf$int$2$$r0, inline$java.lang.Integer$valueOf$int$2$$fakelocal_0, inline$java.lang.Integer$valueOf$int$2$$return, inline$java.lang.Integer$valueOf$int$2$$exception;
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
    havoc inline$java.lang.Integer$$la$init$ra$$int$2$i0, inline$java.lang.Integer$$la$init$ra$$int$2$r0, inline$java.lang.Integer$$la$init$ra$$int$2$$exception;
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
    goto inline$java.lang.Integer$$la$init$ra$$int$2$block4;

  inline$java.lang.Integer$$la$init$ra$$int$2$block4:
    goto inline$java.lang.Integer$$la$init$ra$$int$2$Return;

  inline$java.lang.Integer$$la$init$ra$$int$2$Return:
    inline$java.lang.Integer$valueOf$int$2$$exception := inline$java.lang.Integer$$la$init$ra$$int$2$$exception;
    goto inline$java.lang.Integer$valueOf$int$2$anon0$1;

  inline$java.lang.Integer$valueOf$int$2$anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$2$$return := inline$java.lang.Integer$valueOf$int$2$$r0;
    goto inline$java.lang.Integer$valueOf$int$2$block5;

  inline$java.lang.Integer$valueOf$int$2$block5:
    goto inline$java.lang.Integer$valueOf$int$2$Return;

  inline$java.lang.Integer$valueOf$int$2$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r2 := inline$java.lang.Integer$valueOf$int$2$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$java.lang.Integer$valueOf$int$2$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18$2;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18$2:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$java.lang.Integer$valueOf$int$3$Entry;

  inline$java.lang.Integer$valueOf$int$3$Entry:
    inline$java.lang.Integer$valueOf$int$3$$in_parameter__0 := 135;
    havoc inline$java.lang.Integer$valueOf$int$3$i0, inline$java.lang.Integer$valueOf$int$3$$r0, inline$java.lang.Integer$valueOf$int$3$$fakelocal_0, inline$java.lang.Integer$valueOf$int$3$$return, inline$java.lang.Integer$valueOf$int$3$$exception;
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
    havoc inline$java.lang.Integer$$la$init$ra$$int$3$i0, inline$java.lang.Integer$$la$init$ra$$int$3$r0, inline$java.lang.Integer$$la$init$ra$$int$3$$exception;
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
    goto inline$java.lang.Integer$$la$init$ra$$int$3$block4;

  inline$java.lang.Integer$$la$init$ra$$int$3$block4:
    goto inline$java.lang.Integer$$la$init$ra$$int$3$Return;

  inline$java.lang.Integer$$la$init$ra$$int$3$Return:
    inline$java.lang.Integer$valueOf$int$3$$exception := inline$java.lang.Integer$$la$init$ra$$int$3$$exception;
    goto inline$java.lang.Integer$valueOf$int$3$anon0$1;

  inline$java.lang.Integer$valueOf$int$3$anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    inline$java.lang.Integer$valueOf$int$3$$return := inline$java.lang.Integer$valueOf$int$3$$r0;
    goto inline$java.lang.Integer$valueOf$int$3$block5;

  inline$java.lang.Integer$valueOf$int$3$block5:
    goto inline$java.lang.Integer$valueOf$int$3$Return;

  inline$java.lang.Integer$valueOf$int$3$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r3 := inline$java.lang.Integer$valueOf$int$3$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$java.lang.Integer$valueOf$int$3$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18$3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18$3:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r2;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r3;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1, fixed.$type]
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block66;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block66:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block67;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block67:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block68:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block67;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block66;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r4 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18$4;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18$4:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon34_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon34_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon34_Else:
    assume {:partition} !(fixed.$heap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r4, fixed.$type]
   <: fixed.java.lang.Integer);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon34_Then:
    assume {:partition} fixed.$heap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r4, fixed.$type]
   <: fixed.java.lang.Integer;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon21;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon21:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r5 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r4;
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon35_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon35_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon35_Else:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r5 == fixed.$null;
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_7 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_7;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon35_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r5 != fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon24;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon24:
    goto inline$java.lang.Integer$intValue$$1$Entry;

  inline$java.lang.Integer$intValue$$1$Entry:
    inline$java.lang.Integer$intValue$$1$$this := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$r5;
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
    goto inline$java.lang.Integer$intValue$$1$block6;

  inline$java.lang.Integer$intValue$$1$block6:
    goto inline$java.lang.Integer$intValue$$1$Return;

  inline$java.lang.Integer$intValue$$1$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i5 := inline$java.lang.Integer$intValue$$1$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$java.lang.Integer$intValue$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon24$1;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon24$1:
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i6 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i5);
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i6;
    assert {:sourceloc "AesEaxJce.java", 15, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon36_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon36_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon36_Else:
    assume {:partition} !(15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_8 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_8;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon36_Then:
    assume {:partition} 15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon27;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon27:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1][15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b7]];
    assert {:sourceloc "AesEaxJce.java", 16, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block14;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block14:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon12_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12_last:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return:
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$anon3$1;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$anon3$1:
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_i1 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_i1
   + 1;
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$anon3_dummy;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$anon4_Else:
    assume {:partition} inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$in_i0
   > inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_i1;
    assert {:sourceloc "AesEaxJce.java", 33, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$anon3;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$anon3_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$Return;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$exit:
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$Return;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$Return:
    out_$exception := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_$exception;
    out_i1 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_i1;
    out_r1 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block15$0$out_r1;
    goto anon3_dummy$1;

  anon3_dummy$1:
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

procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies fixed.$heap;
  free ensures $exception
   == _uf_fixed.java.lang.Boolean$$la$init$ra$$boolean_$exception($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.boolean$java.lang.Boolean$value0));
  free ensures fixed.$heap
   == _uf_fixed.java.lang.Boolean$$la$init$ra$$boolean_fixed.$heap($this, 
    $in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.boolean$java.lang.Boolean$value0));



procedure {:prefix "unsafe"} unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);
  free ensures $exception == _uf_fixed.java.lang.Object$$la$init$ra$$_$exception($this);



procedure {:inline 1} unsafe.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;
  free ensures $return
   == _uf_fixed.java.lang.Boolean$valueOf$boolean_$return($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.boolean$java.lang.Boolean$value0));
  free ensures $exception
   == _uf_fixed.java.lang.Boolean$valueOf$boolean_$exception($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.boolean$java.lang.Boolean$value0));
  free ensures fixed.$objIndex
   == _uf_fixed.java.lang.Boolean$valueOf$boolean_fixed.$objIndex($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.boolean$java.lang.Boolean$value0));
  free ensures fixed.$heap
   == _uf_fixed.java.lang.Boolean$valueOf$boolean_fixed.$heap($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.boolean$java.lang.Boolean$value0));



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Integer$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies fixed.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Integer$valueOf$int($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Integer$intValue$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Integer$compareTo$java.lang.Integer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Integer$compareTo$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "unsafe"} unsafe.AesEaxJce$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$($in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap, fixed.$arrSizeHeap, fixed.$intArrHeap;



procedure {:prefix "unsafe"} unsafe.AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: ref, $exception: ref);
  modifies fixed.$objIndex, fixed.$arrSizeHeap, fixed.$intArrHeap, fixed.$heap;



procedure {:prefix "unsafe"} unsafe.AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12(in_$return: ref, 
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
  modifies fixed.$intArrHeap, fixed.$objIndex, fixed.$heap;



procedure {:prefix "unsafe"} unsafe.AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17(in_$exception: ref, in_r0: ref, in_i1: int, in_i0: int, in_r1: ref)
   returns (out_$exception: ref, out_i1: int, out_r1: ref);
  modifies fixed.$objIndex, fixed.$arrSizeHeap, fixed.$intArrHeap, fixed.$heap;



implementation unsafe.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var z0: int;
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
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
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[r0, fixed.boolean$java.lang.Boolean$value0 := z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation {:inline 1} unsafe.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var $r0: ref;
  var z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$return, fixed.$type] <: fixed.java.lang.Boolean;
    $exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call $fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    $r0 := $fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this := $r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0 := z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$java.lang.Object$$la$init$ra$$$0$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    $exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    $return := $r0;
    goto block2;

  block2:
    return;
}



implementation unsafe.java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref)
{
  var $z0: int;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    $z0 := fixed.$heap[r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    $return := $z0;
    goto block3;

  block3:
    return;
}



implementation unsafe.java.lang.Integer$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var i0: int;
  var r0: ref;
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
    goto block4;

  block4:
    return;
}



implementation unsafe.java.lang.Integer$valueOf$int($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var $r0: ref;
  var i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$0$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$0$r0: ref;
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
    havoc inline$java.lang.Integer$$la$init$ra$$int$0$i0, inline$java.lang.Integer$$la$init$ra$$int$0$r0, inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
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
    goto inline$java.lang.Integer$$la$init$ra$$int$0$block4;

  inline$java.lang.Integer$$la$init$ra$$int$0$block4:
    goto inline$java.lang.Integer$$la$init$ra$$int$0$Return;

  inline$java.lang.Integer$$la$init$ra$$int$0$Return:
    $exception := inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    $return := $r0;
    goto block5;

  block5:
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
    goto block6;

  block6:
    return;
}



implementation unsafe.java.lang.Integer$compareTo$java.lang.Integer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var $i0: int;
  var $i1: int;
  var $i2: int;
  var $i3: int;
  var $fakelocal_0: ref;
  var r1: ref;
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
    goto block9;

  block9:
    return;

  anon11_Then:
    assume {:partition} $i1 <= $i0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  block7:
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



implementation unsafe.java.lang.Integer$compareTo$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var $i0: int;
  var r1: ref;
  var $fakelocal_0: ref;
  var r0: ref;
  var $r2: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1: ref;
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
    havoc inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1, inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception;
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
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block9;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block9:
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$Return;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon11_Then:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1
   <= inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block7;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block7:
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
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block9;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon12_Then:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3
   >= inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block8;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block8:
    assert {:sourceloc "Integer.java", 27, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return := 0;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block9;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$Return:
    $i0 := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return;
    $exception := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception;
    goto anon3$1;

  anon3$1:
    assert {:sourceloc "Integer.java", 5, -1, -1, -1} true;
    $return := $i0;
    goto block10;

  block10:
    return;
}



implementation unsafe.AesEaxJce$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.AesEaxJce;
    assume {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "AesEaxJce.java", 2, -1, -1, -1} true;
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
    assert {:sourceloc "AesEaxJce.java", 2, -1, -1, -1} true;
    goto block11;

  block11:
    return;
}



implementation unsafe.AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$($in_parameter__0: ref) returns ($return: ref, $exception: ref)
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
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "AesEaxJce.java", 7, -1, -1, -1} true;
    call $fakelocal_0 := fixed.$new(fixed.$intArrayType);
    fixed.$arrSizeHeap := fixed.$arrSizeHeap[$fakelocal_0 := 16];
    r1 := $fakelocal_0;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    i15 := 0;
    goto block12;

  block12:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return := $return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception := $exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3 := $fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2 := $fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9 := $s9;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1 := $fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1 := r1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11 := $i11;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0 := r0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12 := $i12;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10 := $s10;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13 := $i13;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8 := $b8;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14 := $b14;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7 := $i7;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15 := i15;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6 := $b6;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$block12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$block12:
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon25_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon25_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon25_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14]];
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10 := fixed.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon25_Else:
    assume {:partition} 15 > inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$exit:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return:
    $return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return;
    $exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    $fakelocal_3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3;
    $fakelocal_2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2;
    $s9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9;
    $fakelocal_1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1;
    $i11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11;
    $i12 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12;
    $s10 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10;
    $i13 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13;
    $b8 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8;
    $b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14;
    $i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7;
    i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15;
    $b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6;
    goto block12$1;

  block12$1:
    goto block12_last;

  anon25_Else:
    assume {:partition} 15 > i15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} !(i15 < fixed.$arrSizeHeap[r0] && i15 >= 0);
    call $fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := fixed.$null;
    $exception := $fakelocal_1;
    return;

  anon26_Then:
    assume {:partition} i15 < fixed.$arrSizeHeap[r0] && i15 >= 0;
    $exception := $exception;
    goto anon6;

  anon6:
    $b6 := fixed.$intArrHeap[r0][i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $i11 := fixed.$shlInt($b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $i7 := i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} !($i7 < fixed.$arrSizeHeap[r0] && $i7 >= 0);
    call $fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := fixed.$null;
    $exception := $fakelocal_2;
    return;

  anon27_Then:
    assume {:partition} $i7 < fixed.$arrSizeHeap[r0] && $i7 >= 0;
    $exception := $exception;
    goto anon9;

  anon9:
    $b8 := fixed.$intArrHeap[r0][$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $s9 := fixed.$bitAnd($b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $s10 := fixed.$ushrInt($s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $i12 := fixed.$xorInt($i11, $s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $i13 := fixed.$bitAnd($i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $b14 := $i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} !(i15 < fixed.$arrSizeHeap[r1] && i15 >= 0);
    call $fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := fixed.$null;
    $exception := $fakelocal_3;
    return;

  anon28_Then:
    assume {:partition} i15 < fixed.$arrSizeHeap[r1] && i15 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[r1 := fixed.$intArrHeap[r1][i15 := $b14]];
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
    assume {:partition} !(15 < fixed.$arrSizeHeap[r0] && 15 >= 0);
    call $fakelocal_4 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := fixed.$null;
    $exception := $fakelocal_4;
    return;

  anon29_Then:
    assume {:partition} 15 < fixed.$arrSizeHeap[r0] && 15 >= 0;
    $exception := $exception;
    goto anon15;

  anon15:
    $b0 := fixed.$intArrHeap[r0][15];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    $i3 := fixed.$shlInt($b0, 1);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(0 < fixed.$arrSizeHeap[r0] && 0 >= 0);
    call $fakelocal_5 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := fixed.$null;
    $exception := $fakelocal_5;
    return;

  anon30_Then:
    assume {:partition} 0 < fixed.$arrSizeHeap[r0] && 0 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $b1 := fixed.$intArrHeap[r0][0];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    $s2 := fixed.$bitAnd($b1, 128);
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
    $i4 := fixed.$xorInt($i3, $s16);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    $b5 := $i4;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !(15 < fixed.$arrSizeHeap[r1] && 15 >= 0);
    call $fakelocal_6 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := fixed.$null;
    $exception := $fakelocal_6;
    return;

  anon32_Then:
    assume {:partition} 15 < fixed.$arrSizeHeap[r1] && 15 >= 0;
    $exception := $exception;
    goto anon24;

  anon24:
    fixed.$intArrHeap := fixed.$intArrHeap[r1 := fixed.$intArrHeap[r1][15 := $b5]];
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



implementation unsafe.AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: ref, $exception: ref)
{
  var r0: ref;
  var i1: int;
  var i0: int;
  var r1: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_$exception: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_r0: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_i1: int;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_i0: int;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_r1: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_$exception: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_i1: int;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_r1: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$arrSizeHeap: [ref]int;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$heap: $heap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b5: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i3: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s16: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b6: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$in_parameter__0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$arrSizeHeap: [ref]int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$heap: $heap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap: $heap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b5: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i3: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s16: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b6: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$in_parameter__0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$arrSizeHeap: [ref]int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$heap: $heap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i7: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b6: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__1;
    assert {:sourceloc "AesEaxJce.java", 30, -1, -1, -1} true;
    r1 := fixed.$null;
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} true;
    i1 := 0;
    goto block17;

  block17:
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$Entry;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$Entry:
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_$exception := $exception;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_r0 := r0;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_i1 := i1;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_i0 := i0;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_r1 := r1;
    havoc inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_$exception, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_i1, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_r1;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$arrSizeHeap := fixed.$arrSizeHeap;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$entry;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$entry:
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_$exception, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_i1, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_r1 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_$exception, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_i1, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_r1;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$block17;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$block17:
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon4_Then, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon4_Else;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon4_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_i1
   >= inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_i0;
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} {:comment "thenblock"} true;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_$exception, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_i1, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_r1 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_$exception, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_i1, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_r1;
    fixed.$objIndex, fixed.$arrSizeHeap, fixed.$intArrHeap, fixed.$heap := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$objIndex, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$arrSizeHeap, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$intArrHeap, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$heap;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$Return;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 32, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$in_parameter__0 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_r0;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$arrSizeHeap := fixed.$arrSizeHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon0;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := fixed.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$in_parameter__0;
    assert {:sourceloc "AesEaxJce.java", 7, -1, -1, -1} true;
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0 := fixed.$new(fixed.$intArrayType);
    fixed.$arrSizeHeap := fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0 := 16];
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 := 0;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s9;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i11;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i12;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s10;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b14;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b6;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$block12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$block12:
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon25_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon25_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon25_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14]];
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10 := fixed.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon25_Else:
    assume {:partition} 15 > inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$exit:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i12 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s10 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12$1;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12$1:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12_last;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon25_Else:
    assume {:partition} 15 > inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon26_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon26_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon26_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon26_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b6 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i11 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon27_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon27_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon27_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon27_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s9 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s10 := fixed.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i12 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i11, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b14]];
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon25_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 >= 15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block13;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block13:
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon29_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon29_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon29_Else:
    assume {:partition} !(15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon29_Then:
    assume {:partition} 15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon15;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon15:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][15];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i3 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0, 1);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Else:
    assume {:partition} !(0 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 0 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Then:
    assume {:partition} 0 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 0 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][0];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1, 128);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon31_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon31_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon31_Else:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2 == 0;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon21;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon21:
    assert {:sourceloc "AesEaxJce.java", 14, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s16 := 0;
    assert {:sourceloc "AesEaxJce.java", 14, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block15;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block15:
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i3, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s16);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b5 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Else:
    assume {:partition} !(15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Then:
    assume {:partition} 15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon24;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon24:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1][15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b5]];
    assert {:sourceloc "AesEaxJce.java", 14, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block16;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block16:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon31_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2 != 0;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block14;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block14:
    assert {:sourceloc "AesEaxJce.java", 14, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s16 := 135;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block15;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon12_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12_last:
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon25_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon25_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return:
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon3$1;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon3$1:
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_i1 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_i1
   + 1;
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon3_dummy;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon4_Else:
    assume {:partition} inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_i0
   > inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_i1;
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon3;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon3_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$Return;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$exit:
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$Return;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$Return:
    $exception := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_$exception;
    i1 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_i1;
    r1 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_r1;
    goto block17$1;

  block17$1:
    goto block17_last;

  anon4_Else:
    assume {:partition} i0 > i1;
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "AesEaxJce.java", 32, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$in_parameter__0 := r0;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$arrSizeHeap := fixed.$arrSizeHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon0;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := fixed.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$in_parameter__0;
    assert {:sourceloc "AesEaxJce.java", 7, -1, -1, -1} true;
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0 := fixed.$new(fixed.$intArrayType);
    fixed.$arrSizeHeap := fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0 := 16];
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 := 0;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s9;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i11;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i12 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i12;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s10 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s10;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b14;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b6;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$block12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$block12:
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon25_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon25_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon25_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 >= 15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14]];
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10 := fixed.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon27_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon27_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon27_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon27_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon26_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon26_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon26_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon26_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon25_Else:
    assume {:partition} 15 > inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$exit:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i12 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s10 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12$1;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12$1:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12_last;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon25_Else:
    assume {:partition} 15 > inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon26_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon26_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon26_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon26_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b6 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i11 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon27_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon27_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon27_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon27_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s9 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s10 := fixed.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i12 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i11, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b14]];
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon25_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 >= 15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block13;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block13:
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon29_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon29_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon29_Else:
    assume {:partition} !(15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon29_Then:
    assume {:partition} 15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon15;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon15:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][15];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i3 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0, 1);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Else:
    assume {:partition} !(0 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 0 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Then:
    assume {:partition} 0 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 0 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][0];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1, 128);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon31_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon31_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon31_Else:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2 == 0;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon21;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon21:
    assert {:sourceloc "AesEaxJce.java", 14, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s16 := 0;
    assert {:sourceloc "AesEaxJce.java", 14, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block15;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block15:
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i3, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s16);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b5 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Else:
    assume {:partition} !(15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Then:
    assume {:partition} 15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon24;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon24:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1][15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b5]];
    assert {:sourceloc "AesEaxJce.java", 14, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block16;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block16:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon31_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2 != 0;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block14;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block14:
    assert {:sourceloc "AesEaxJce.java", 14, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s16 := 135;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block15;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon12_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12_last:
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon25_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon25_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return:
    r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return;
    $exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto anon3$1;

  anon3$1:
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



implementation unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := fixed.$null;
    return;
}



implementation unsafe.AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12(in_$return: ref, 
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
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap: $heap_type;

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
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := old(fixed.$intArrHeap), old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[in_r1 := fixed.$intArrHeap[in_r1][out_i15 := out_$b14]];
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    out_i15 := out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto anon12_dummy;

  anon28_Then:
    assume {:partition} out_i15 < fixed.$arrSizeHeap[in_r1] && out_i15 >= 0;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    out_$b8 := fixed.$intArrHeap[in_r0][out_$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$s9 := fixed.$bitAnd(out_$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$s10 := fixed.$ushrInt(out_$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$i12 := fixed.$xorInt(out_$i11, out_$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$i13 := fixed.$bitAnd(out_$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$b14 := out_$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} !(out_i15 < fixed.$arrSizeHeap[in_r1] && out_i15 >= 0);
    call out_$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := fixed.$null;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$fakelocal_3, out_$fakelocal_2, out_$s9, out_$fakelocal_1, out_$i11, out_$i12, out_$s10, out_$i13, out_$b8, out_$b14, out_$i7, out_i15, out_$b6 := in_$return, in_$exception, in_$fakelocal_3, in_$fakelocal_2, in_$s9, in_$fakelocal_1, in_$i11, in_$i12, in_$s10, in_$i13, in_$b8, in_$b14, in_$i7, in_i15, in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := old(fixed.$intArrHeap), old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon27_Then:
    assume {:partition} out_$i7 < fixed.$arrSizeHeap[in_r0] && out_$i7 >= 0;
    out_$exception := out_$exception;
    goto anon9;

  anon6:
    out_$b6 := fixed.$intArrHeap[in_r0][out_i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$i11 := fixed.$shlInt(out_$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$i7 := out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} !(out_$i7 < fixed.$arrSizeHeap[in_r0] && out_$i7 >= 0);
    call out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := fixed.$null;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$fakelocal_3, out_$fakelocal_2, out_$s9, out_$fakelocal_1, out_$i11, out_$i12, out_$s10, out_$i13, out_$b8, out_$b14, out_$i7, out_i15, out_$b6 := in_$return, in_$exception, in_$fakelocal_3, in_$fakelocal_2, in_$s9, in_$fakelocal_1, in_$i11, in_$i12, in_$s10, in_$i13, in_$b8, in_$b14, in_$i7, in_i15, in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := old(fixed.$intArrHeap), old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon26_Then:
    assume {:partition} out_i15 < fixed.$arrSizeHeap[in_r0] && out_i15 >= 0;
    out_$exception := out_$exception;
    goto anon6;

  anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} !(out_i15 < fixed.$arrSizeHeap[in_r0] && out_i15 >= 0);
    call out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := fixed.$null;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$fakelocal_3, out_$fakelocal_2, out_$s9, out_$fakelocal_1, out_$i11, out_$i12, out_$s10, out_$i13, out_$b8, out_$b14, out_$i7, out_i15, out_$b6 := in_$return, in_$exception, in_$fakelocal_3, in_$fakelocal_2, in_$s9, in_$fakelocal_1, in_$i11, in_$i12, in_$s10, in_$i13, in_$b8, in_$b14, in_$i7, in_i15, in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := old(fixed.$intArrHeap), old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon25_Else:
    assume {:partition} 15 > out_i15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon12_dummy:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return := out_$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception := out_$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3 := out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2 := out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9 := out_$s9;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1 := out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1 := in_r1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11 := out_$i11;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0 := in_r0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12 := out_$i12;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10 := out_$s10;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13 := out_$i13;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8 := out_$b8;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14 := out_$b14;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7 := out_$i7;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15 := out_i15;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6 := out_$b6;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$block12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$block12:
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon25_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon25_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon25_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14]];
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10 := fixed.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon25_Else:
    assume {:partition} 15 > inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$exit:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return:
    out_$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return;
    out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    out_$fakelocal_3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3;
    out_$fakelocal_2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2;
    out_$s9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9;
    out_$fakelocal_1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1;
    out_$i11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11;
    out_$i12 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12;
    out_$s10 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10;
    out_$i13 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13;
    out_$b8 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8;
    out_$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14;
    out_$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7;
    out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15;
    out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6;
    goto anon12_dummy$1;

  anon12_dummy$1:
    return;

  exit:
    return;
}



implementation unsafe.AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17(in_$exception: ref, in_r0: ref, in_i1: int, in_i0: int, in_r1: ref)
   returns (out_$exception: ref, out_i1: int, out_r1: ref)
{
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b5: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i3: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s16: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b6: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$in_parameter__0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$arrSizeHeap: [ref]int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$heap: $heap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap: $heap_type;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_$exception: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_r0: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_i1: int;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_i0: int;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_r1: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_$exception: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_i1: int;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_r1: ref;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$arrSizeHeap: [ref]int;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$heap: $heap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b5: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i3: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s16: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b6: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$in_parameter__0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$arrSizeHeap: [ref]int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$heap: $heap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i7: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b6: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1: ref;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap: intArrHeap_type;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex: int;
  var inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap: $heap_type;

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
    fixed.$objIndex, fixed.$arrSizeHeap, fixed.$intArrHeap, fixed.$heap := old(fixed.$objIndex), old(fixed.$arrSizeHeap), old(fixed.$intArrHeap), old(fixed.$heap);
    return;

  anon3:
    assert {:sourceloc "AesEaxJce.java", 32, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$in_parameter__0 := in_r0;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$arrSizeHeap := fixed.$arrSizeHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon0;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := fixed.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$in_parameter__0;
    assert {:sourceloc "AesEaxJce.java", 7, -1, -1, -1} true;
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0 := fixed.$new(fixed.$intArrayType);
    fixed.$arrSizeHeap := fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0 := 16];
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 := 0;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s9;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i11;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i12;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s10;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b14;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b6;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$block12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$block12:
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon25_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon25_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon25_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14]];
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10 := fixed.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon25_Else:
    assume {:partition} 15 > inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$exit:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i12 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s10 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12$1;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12$1:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12_last;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon25_Else:
    assume {:partition} 15 > inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon26_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon26_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon26_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon26_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b6 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i11 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon27_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon27_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon27_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon27_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s9 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s10 := fixed.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i12 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i11, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b14]];
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon25_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 >= 15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block13;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block13:
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon29_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon29_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon29_Else:
    assume {:partition} !(15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon29_Then:
    assume {:partition} 15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon15;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon15:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][15];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i3 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0, 1);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Else:
    assume {:partition} !(0 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 0 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Then:
    assume {:partition} 0 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 0 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][0];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1, 128);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon31_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon31_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon31_Else:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2 == 0;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon21;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon21:
    assert {:sourceloc "AesEaxJce.java", 14, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s16 := 0;
    assert {:sourceloc "AesEaxJce.java", 14, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block15;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block15:
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i3, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s16);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b5 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Else:
    assume {:partition} !(15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Then:
    assume {:partition} 15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon24;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon24:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1][15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b5]];
    assert {:sourceloc "AesEaxJce.java", 14, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block16;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block16:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon31_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2 != 0;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block14;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block14:
    assert {:sourceloc "AesEaxJce.java", 14, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s16 := 135;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block15;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon12_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$block12_last:
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon25_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon25_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return:
    out_r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return;
    out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto anon3$1;

  anon3$1:
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} true;
    out_i1 := out_i1 + 1;
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} true;
    goto anon3_dummy;

  anon4_Else:
    assume {:partition} in_i0 > out_i1;
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3_dummy:
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$Entry;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$Entry:
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_$exception := out_$exception;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_r0 := in_r0;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_i1 := out_i1;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_i0 := in_i0;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_r1 := out_r1;
    havoc inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_$exception, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_i1, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_r1;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$arrSizeHeap := fixed.$arrSizeHeap;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$entry;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$entry:
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_$exception, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_i1, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_r1 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_$exception, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_i1, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_r1;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$block17;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$block17:
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon4_Then, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon4_Else;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon4_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_i1
   >= inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_i0;
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} {:comment "thenblock"} true;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_$exception, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_i1, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_r1 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_$exception, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_i1, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_r1;
    fixed.$objIndex, fixed.$arrSizeHeap, fixed.$intArrHeap, fixed.$heap := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$objIndex, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$arrSizeHeap, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$intArrHeap, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$heap;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$Return;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 32, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$in_parameter__0 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_r0;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$arrSizeHeap := fixed.$arrSizeHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon0;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := fixed.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$in_parameter__0;
    assert {:sourceloc "AesEaxJce.java", 7, -1, -1, -1} true;
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0 := fixed.$new(fixed.$intArrayType);
    fixed.$arrSizeHeap := fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0 := 16];
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 := 0;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s9;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i11;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i12 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i12;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s10 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s10;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b14;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b6;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap := fixed.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex := fixed.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap := fixed.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$block12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$block12:
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon25_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon25_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon25_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 >= 15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14]];
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10 := fixed.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon27_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon27_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon27_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon27_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon26_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon26_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon26_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon26_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b6;
    fixed.$intArrHeap, fixed.$objIndex, fixed.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon25_Else:
    assume {:partition} 15 > inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$exit:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s9 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i11 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i12 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s10 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12$1;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12$1:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12_last;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon25_Else:
    assume {:partition} 15 > inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon3;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon26_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon26_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon26_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon26_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b6 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i11 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon27_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon27_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon27_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon27_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s9 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s10 := fixed.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i12 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i11, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15
     < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b14]];
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon25_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 >= 15;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block13;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block13:
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon29_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon29_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon29_Else:
    assume {:partition} !(15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon29_Then:
    assume {:partition} 15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon15;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon15:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][15];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i3 := fixed.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0, 1);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Else:
    assume {:partition} !(0 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 0 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Then:
    assume {:partition} 0 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 0 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][0];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2 := fixed.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1, 128);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon31_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon31_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon31_Else:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2 == 0;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon21;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon21:
    assert {:sourceloc "AesEaxJce.java", 14, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s16 := 0;
    assert {:sourceloc "AesEaxJce.java", 14, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block15;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block15:
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4 := fixed.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i3, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s16);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b5 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Else:
    assume {:partition} !(15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := fixed.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Then:
    assume {:partition} 15 < fixed.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon24;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon24:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1 := fixed.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1][15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b5]];
    assert {:sourceloc "AesEaxJce.java", 14, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block16;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block16:
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon31_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2 != 0;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block14;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block14:
    assert {:sourceloc "AesEaxJce.java", 14, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s16 := 135;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block15;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon12_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$block12_last:
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon25_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon25_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return:
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_r1 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon3$1;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon3$1:
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_i1 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_i1
   + 1;
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon3_dummy;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon4_Else:
    assume {:partition} inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_i0
   > inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_i1;
    assert {:sourceloc "AesEaxJce.java", 31, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon3;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon3_dummy:
    assume false;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$Return;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$exit:
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$Return;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$Return:
    out_$exception := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_$exception;
    out_i1 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_i1;
    out_r1 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$out_r1;
    goto anon3_dummy$1;

  anon3_dummy$1:
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

function _uf_fixed.java.lang.Boolean$$la$init$ra$$boolean_$exception(arg_0: ref, 
    arg_1: int, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: Field int)
   : ref;

function _uf_fixed.java.lang.Boolean$$la$init$ra$$boolean_fixed.$heap(arg_0: ref, 
    arg_1: int, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: Field int)
   : $heap_type;

function _uf_unsafe.java.lang.Boolean$$la$init$ra$$boolean_$exception(arg_0: ref, 
    arg_1: int, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: Field int)
   : ref;

function _uf_unsafe.java.lang.Boolean$$la$init$ra$$boolean_fixed.$heap(arg_0: ref, 
    arg_1: int, 
    arg_2: $heap_type, 
    arg_3: [ref]int, 
    arg_4: [ref]int, 
    arg_5: Field int)
   : $heap_type;

function _uf_fixed.java.lang.Object$$la$init$ra$$_$exception(arg_0: ref) : ref;

function _uf_unsafe.java.lang.Object$$la$init$ra$$_$exception(arg_0: ref) : ref;

function _uf_fixed.java.lang.Boolean$valueOf$boolean_$return(arg_0: int, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: int, 
    arg_5: Field int)
   : ref;

function _uf_fixed.java.lang.Boolean$valueOf$boolean_$exception(arg_0: int, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: int, 
    arg_5: Field int)
   : ref;

function _uf_fixed.java.lang.Boolean$valueOf$boolean_fixed.$objIndex(arg_0: int, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: int, 
    arg_5: Field int)
   : int;

function _uf_fixed.java.lang.Boolean$valueOf$boolean_fixed.$heap(arg_0: int, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: int, 
    arg_5: Field int)
   : $heap_type;

function _uf_unsafe.java.lang.Boolean$valueOf$boolean_$return(arg_0: int, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: int, 
    arg_5: Field int)
   : ref;

function _uf_unsafe.java.lang.Boolean$valueOf$boolean_$exception(arg_0: int, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: int, 
    arg_5: Field int)
   : ref;

function _uf_unsafe.java.lang.Boolean$valueOf$boolean_fixed.$objIndex(arg_0: int, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: int, 
    arg_5: Field int)
   : int;

function _uf_unsafe.java.lang.Boolean$valueOf$boolean_fixed.$heap(arg_0: int, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: int, 
    arg_5: Field int)
   : $heap_type;

var Output_of_unsafe.java.lang.Boolean$valueOf$boolean_$return: ref;

var Output_of_fixed.java.lang.Boolean$valueOf$boolean_$return: ref;

var Output_of_unsafe.java.lang.Boolean$valueOf$boolean_$exception: ref;

var Output_of_fixed.java.lang.Boolean$valueOf$boolean_$exception: ref;

var Output_of_unsafe.java.lang.Boolean$valueOf$boolean_fixed.$objIndex: int;

var Output_of_fixed.java.lang.Boolean$valueOf$boolean_fixed.$objIndex: int;

var Output_of_unsafe.java.lang.Boolean$valueOf$boolean_fixed.$heap: $heap_type;

var Output_of_fixed.java.lang.Boolean$valueOf$boolean_fixed.$heap: $heap_type;

procedure PROC_.java.lang.Boolean$valueOf$boolean_EQ_unsafe__xx__fixed($in_parameter__0: int)
   returns (AA_TEMP30: bool, AA_TEMP31: bool, AA_TEMP32: bool, AA_TEMP33: bool);
  modifies fixed.$objIndex, fixed.$heap, Output_of_unsafe.java.lang.Boolean$valueOf$boolean_$return, Output_of_fixed.java.lang.Boolean$valueOf$boolean_$return, Output_of_unsafe.java.lang.Boolean$valueOf$boolean_$exception, Output_of_fixed.java.lang.Boolean$valueOf$boolean_$exception, Output_of_unsafe.java.lang.Boolean$valueOf$boolean_fixed.$objIndex, Output_of_fixed.java.lang.Boolean$valueOf$boolean_fixed.$objIndex, Output_of_unsafe.java.lang.Boolean$valueOf$boolean_fixed.$heap, Output_of_fixed.java.lang.Boolean$valueOf$boolean_fixed.$heap;
  ensures AA_TEMP33 && AA_TEMP32 && AA_TEMP31 && AA_TEMP30;



implementation PROC_.java.lang.Boolean$valueOf$boolean_EQ_unsafe__xx__fixed($in_parameter__0: int)
   returns (AA_TEMP30: bool, AA_TEMP31: bool, AA_TEMP32: bool, AA_TEMP33: bool)
{
  var AA_TEMP20: ref;
  var AA_TEMP21: ref;
  var AA_TEMP10: int;
  var AA_TEMP11: $heap_type;
  var AA_TEMP00: int;
  var AA_TEMP01: $heap_type;
  var $return: ref;
  var $exception: ref;
  var inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$fakelocal_0: ref;
  var inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$r0: ref;
  var inline$unsafe.java.lang.Boolean$valueOf$boolean$0$z0: int;
  var inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0: int;
  var inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0: ref;
  var inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this: ref;
  var inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0: int;
  var inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception: ref;
  var inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap: $heap_type;
  var inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;
  var inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$in_parameter__0: int;
  var inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$return: ref;
  var inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$exception: ref;
  var inline$unsafe.java.lang.Boolean$valueOf$boolean$0$fixed.$objIndex: int;
  var inline$unsafe.java.lang.Boolean$valueOf$boolean$0$fixed.$heap: $heap_type;
  var inline$fixed.java.lang.Boolean$valueOf$boolean$0$$fakelocal_0: ref;
  var inline$fixed.java.lang.Boolean$valueOf$boolean$0$z0: int;
  var inline$fixed.java.lang.Boolean$valueOf$boolean$0$$r0: ref;
  var inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0: int;
  var inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0: ref;
  var inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this: ref;
  var inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0: int;
  var inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception: ref;
  var inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap: $heap_type;
  var inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;
  var inline$fixed.java.lang.Boolean$valueOf$boolean$0$$in_parameter__0: int;
  var inline$fixed.java.lang.Boolean$valueOf$boolean$0$$return: ref;
  var inline$fixed.java.lang.Boolean$valueOf$boolean$0$$exception: ref;
  var inline$fixed.java.lang.Boolean$valueOf$boolean$0$fixed.$objIndex: int;
  var inline$fixed.java.lang.Boolean$valueOf$boolean$0$fixed.$heap: $heap_type;

  AA_INSTR_EQ_BODY:
    AA_TEMP00 := fixed.$objIndex;
    AA_TEMP01 := fixed.$heap;
    goto inline$unsafe.java.lang.Boolean$valueOf$boolean$0$Entry;

  inline$unsafe.java.lang.Boolean$valueOf$boolean$0$Entry:
    inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$in_parameter__0 := $in_parameter__0;
    havoc inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$fakelocal_0, inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$r0, inline$unsafe.java.lang.Boolean$valueOf$boolean$0$z0, inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0, inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this, inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0, inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception, inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap, inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$$this, inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$$exception, inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$return, inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$exception;
    inline$unsafe.java.lang.Boolean$valueOf$boolean$0$fixed.$objIndex := fixed.$objIndex;
    inline$unsafe.java.lang.Boolean$valueOf$boolean$0$fixed.$heap := fixed.$heap;
    goto inline$unsafe.java.lang.Boolean$valueOf$boolean$0$anon0;

  inline$unsafe.java.lang.Boolean$valueOf$boolean$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$unsafe.java.lang.Boolean$valueOf$boolean$0$z0 := inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$r0 := inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry;

  inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry:
    inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this := inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$r0;
    inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0 := inline$unsafe.java.lang.Boolean$valueOf$boolean$0$z0;
    havoc inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0, inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap := fixed.$heap;
    goto inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0;

  inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this
   != fixed.$null;
    inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0 := inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0 := inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$$this := inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0;
    havoc inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$Return:
    inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception := inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0$1;

  inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, fixed.boolean$java.lang.Boolean$value0 := inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$block1;

  inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$block1:
    goto inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$exception := inline$unsafe.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto inline$unsafe.java.lang.Boolean$valueOf$boolean$0$anon0$1;

  inline$unsafe.java.lang.Boolean$valueOf$boolean$0$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$return := inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$r0;
    goto inline$unsafe.java.lang.Boolean$valueOf$boolean$0$block2;

  inline$unsafe.java.lang.Boolean$valueOf$boolean$0$block2:
    goto inline$unsafe.java.lang.Boolean$valueOf$boolean$0$Return;

  inline$unsafe.java.lang.Boolean$valueOf$boolean$0$Return:
    assume true;
    assume true;
    assume true;
    assume true;
    $return := inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$return;
    $exception := inline$unsafe.java.lang.Boolean$valueOf$boolean$0$$exception;
    goto AA_INSTR_EQ_BODY$1;

  AA_INSTR_EQ_BODY$1:
    AA_TEMP10 := fixed.$objIndex;
    AA_TEMP11 := fixed.$heap;
    fixed.$objIndex := AA_TEMP00;
    fixed.$heap := AA_TEMP01;
    AA_TEMP20 := $return;
    AA_TEMP21 := $exception;
    goto inline$fixed.java.lang.Boolean$valueOf$boolean$0$Entry;

  inline$fixed.java.lang.Boolean$valueOf$boolean$0$Entry:
    inline$fixed.java.lang.Boolean$valueOf$boolean$0$$in_parameter__0 := $in_parameter__0;
    havoc inline$fixed.java.lang.Boolean$valueOf$boolean$0$$fakelocal_0, inline$fixed.java.lang.Boolean$valueOf$boolean$0$z0, inline$fixed.java.lang.Boolean$valueOf$boolean$0$$r0, inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0, inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this, inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0, inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception, inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap, inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$$this, inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$$exception, inline$fixed.java.lang.Boolean$valueOf$boolean$0$$return, inline$fixed.java.lang.Boolean$valueOf$boolean$0$$exception;
    inline$fixed.java.lang.Boolean$valueOf$boolean$0$fixed.$objIndex := fixed.$objIndex;
    inline$fixed.java.lang.Boolean$valueOf$boolean$0$fixed.$heap := fixed.$heap;
    goto inline$fixed.java.lang.Boolean$valueOf$boolean$0$anon0;

  inline$fixed.java.lang.Boolean$valueOf$boolean$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$fixed.java.lang.Boolean$valueOf$boolean$0$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$fixed.java.lang.Boolean$valueOf$boolean$0$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$fixed.java.lang.Boolean$valueOf$boolean$0$z0 := inline$fixed.java.lang.Boolean$valueOf$boolean$0$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$fixed.java.lang.Boolean$valueOf$boolean$0$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$fixed.java.lang.Boolean$valueOf$boolean$0$$r0 := inline$fixed.java.lang.Boolean$valueOf$boolean$0$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry;

  inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry:
    inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this := inline$fixed.java.lang.Boolean$valueOf$boolean$0$$r0;
    inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0 := inline$fixed.java.lang.Boolean$valueOf$boolean$0$z0;
    havoc inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0, inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap := fixed.$heap;
    goto inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0;

  inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this
   != fixed.$null;
    inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0 := inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0 := inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$$this := inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0;
    havoc inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$Return:
    inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception := inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0$1;

  inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, fixed.boolean$java.lang.Boolean$value0 := inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$block1;

  inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$block1:
    goto inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    inline$fixed.java.lang.Boolean$valueOf$boolean$0$$exception := inline$fixed.java.lang.Boolean$valueOf$boolean$0$inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto inline$fixed.java.lang.Boolean$valueOf$boolean$0$anon0$1;

  inline$fixed.java.lang.Boolean$valueOf$boolean$0$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$fixed.java.lang.Boolean$valueOf$boolean$0$$return := inline$fixed.java.lang.Boolean$valueOf$boolean$0$$r0;
    goto inline$fixed.java.lang.Boolean$valueOf$boolean$0$block2;

  inline$fixed.java.lang.Boolean$valueOf$boolean$0$block2:
    goto inline$fixed.java.lang.Boolean$valueOf$boolean$0$Return;

  inline$fixed.java.lang.Boolean$valueOf$boolean$0$Return:
    assume true;
    assume true;
    assume true;
    assume true;
    $return := inline$fixed.java.lang.Boolean$valueOf$boolean$0$$return;
    $exception := inline$fixed.java.lang.Boolean$valueOf$boolean$0$$exception;
    goto AA_INSTR_EQ_BODY$2;

  AA_INSTR_EQ_BODY$2:
    Output_of_unsafe.java.lang.Boolean$valueOf$boolean_$return := AA_TEMP20;
    Output_of_fixed.java.lang.Boolean$valueOf$boolean_$return := $return;
    Output_of_unsafe.java.lang.Boolean$valueOf$boolean_$exception := AA_TEMP21;
    Output_of_fixed.java.lang.Boolean$valueOf$boolean_$exception := $exception;
    Output_of_unsafe.java.lang.Boolean$valueOf$boolean_fixed.$objIndex := AA_TEMP10;
    Output_of_fixed.java.lang.Boolean$valueOf$boolean_fixed.$objIndex := fixed.$objIndex;
    Output_of_unsafe.java.lang.Boolean$valueOf$boolean_fixed.$heap := AA_TEMP11;
    Output_of_fixed.java.lang.Boolean$valueOf$boolean_fixed.$heap := fixed.$heap;
    havoc AA_TEMP30, AA_TEMP31, AA_TEMP32, AA_TEMP33;
    AA_TEMP30, AA_TEMP31, AA_TEMP32, AA_TEMP33 := AA_TEMP30 || AA_TEMP20 == $return, AA_TEMP31 || AA_TEMP21 == $exception, AA_TEMP32 || fixed.$objIndex == fixed.$objIndex, AA_TEMP33
   || (forall<_ty> r: ref, f: Field _ty :: 
    fixed.$heap[r, f] == AA_TEMP11[r, f] || !old(fixed.$heap[r, fixed.$alloc]));
    return;
}


