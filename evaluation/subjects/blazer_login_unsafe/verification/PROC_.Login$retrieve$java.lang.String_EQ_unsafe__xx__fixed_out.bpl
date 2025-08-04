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

const unique fixed.$type: Field javaType;

const unique fixed.$alloc: Field bool;

const unique fixed.$null: ref;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique fixed.java.lang.Object: javaType extends complete;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique fixed.java.lang.Boolean: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique fixed.Login: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique fixed.java.io.Serializable: javaType extends complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique fixed.java.lang.Comparable: javaType extends complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique fixed.java.lang.CharSequence: javaType extends complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique fixed.java.lang.String: javaType extends unique fixed.java.lang.Object, fixed.java.io.Serializable, fixed.java.lang.Comparable, fixed.java.lang.CharSequence complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique fixed.java.lang.Throwable: javaType extends unique fixed.java.lang.Object, fixed.java.io.Serializable complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique fixed.java.lang.Exception: javaType extends unique fixed.java.lang.Throwable complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique fixed.java.lang.RuntimeException: javaType extends unique fixed.java.lang.Exception complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique fixed.java.lang.NullPointerException: javaType extends unique fixed.java.lang.RuntimeException complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique fixed.java.lang.IndexOutOfBoundsException: javaType extends unique fixed.java.lang.RuntimeException complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique fixed.java.lang.ArrayIndexOutOfBoundsException: javaType extends unique fixed.java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique fixed.sg.edu.nus.comp.tsunami.safe.Safe: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique fixed.java.lang.ClassCastException: javaType extends unique fixed.java.lang.RuntimeException complete;

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
  free ensures $obj != fixed.$null;
  free ensures fixed.$objIndex == old(fixed.$objIndex) + 1;
  free ensures $obj == fixed.$intToRef(old(fixed.$objIndex));
  free ensures fixed.$heap
   == old(fixed.$heap)[$obj, fixed.$alloc := true][$obj, fixed.$type := obj_type];
  free ensures !old(fixed.$heap[$obj, fixed.$alloc]);



procedure {:prefix "fixed"} fixed.java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  free ensures fixed.$heap[$other, fixed.$type] == fixed.$heap[$this, fixed.$type];
  free ensures $other != fixed.$null;
  free ensures fixed.$heap[$other, fixed.$alloc] <==> true;



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



procedure {:prefix "fixed"} fixed.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
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
  free ensures $return
   == _uf_fixed.java.lang.Boolean$booleanValue$_$return($this, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.boolean$java.lang.Boolean$value0));
  free ensures $exception
   == _uf_fixed.java.lang.Boolean$booleanValue$_$exception($this, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.boolean$java.lang.Boolean$value0));



procedure {:prefix "fixed"} fixed.Login$$la$init$ra$$($this: ref) returns ($exception: ref);
  free ensures $exception
   == _uf_fixed.Login$$la$init$ra$$_$exception($this, old(fixed.$heap), old(fixed.$arrSizeHeap), old(fixed.$stringSizeHeap));



procedure {:prefix "fixed"} fixed.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: int, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;
  free ensures $return
   == _uf_fixed.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_$return($in_parameter__0, 
    $in_parameter__1, 
    $in_parameter__2, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap), 
    old(fixed.boolean$java.lang.Boolean$value0));
  free ensures $exception
   == _uf_fixed.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_$exception($in_parameter__0, 
    $in_parameter__1, 
    $in_parameter__2, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap), 
    old(fixed.boolean$java.lang.Boolean$value0));
  free ensures fixed.$objIndex
   == _uf_fixed.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_fixed.$objIndex($in_parameter__0, 
    $in_parameter__1, 
    $in_parameter__2, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap), 
    old(fixed.boolean$java.lang.Boolean$value0));
  free ensures fixed.$heap
   == _uf_fixed.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_fixed.$heap($in_parameter__0, 
    $in_parameter__1, 
    $in_parameter__2, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap), 
    old(fixed.boolean$java.lang.Boolean$value0));



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);



procedure {:inline 1} fixed.Login$retrieve$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap, fixed.$arrSizeHeap, fixed.$intArrHeap;
  free ensures $return
   == _uf_fixed.Login$retrieve$java.lang.String_$return($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$intArrayType), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap));
  free ensures $exception
   == _uf_fixed.Login$retrieve$java.lang.String_$exception($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$intArrayType), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap));
  free ensures fixed.$objIndex
   == _uf_fixed.Login$retrieve$java.lang.String_fixed.$objIndex($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$intArrayType), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap));
  free ensures fixed.$heap
   == _uf_fixed.Login$retrieve$java.lang.String_fixed.$heap($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$intArrayType), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap));
  free ensures fixed.$arrSizeHeap
   == _uf_fixed.Login$retrieve$java.lang.String_fixed.$arrSizeHeap($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$intArrayType), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap));
  free ensures fixed.$intArrHeap
   == _uf_fixed.Login$retrieve$java.lang.String_fixed.$intArrHeap($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$intArrayType), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap));



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



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
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



procedure {:prefix "fixed"} fixed.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_1: ref, 
    in_z4: int, 
    in_$r15: ref, 
    in_$i1: int, 
    in_$l5: int, 
    in_$fakelocal_7: ref, 
    in_z3: int, 
    in_$r12: ref, 
    in_$fakelocal_3: ref, 
    in_$r16: ref, 
    in_r0: ref, 
    in_$r18: ref, 
    in_$b2: int, 
    in_$b3: int, 
    in_$r19: ref, 
    in_$fakelocal_5: ref, 
    in_$fakelocal_2: ref, 
    in_i6: int, 
    in_$l4: int, 
    in_r1: ref, 
    in_$fakelocal_6: ref, 
    in_$r17: ref, 
    in_z0: int, 
    in_$r13: ref, 
    in_$r11: ref, 
    in_$fakelocal_4: ref, 
    in_$fakelocal_0: ref, 
    in_$r20: ref, 
    in_$i0: int, 
    in_$r14: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_1: ref, 
    out_z4: int, 
    out_$r15: ref, 
    out_$i1: int, 
    out_$l5: int, 
    out_$fakelocal_7: ref, 
    out_z3: int, 
    out_$r12: ref, 
    out_$fakelocal_3: ref, 
    out_$r16: ref, 
    out_$r18: ref, 
    out_$b2: int, 
    out_$b3: int, 
    out_$r19: ref, 
    out_$fakelocal_5: ref, 
    out_$fakelocal_2: ref, 
    out_i6: int, 
    out_$l4: int, 
    out_$fakelocal_6: ref, 
    out_$r17: ref, 
    out_z0: int, 
    out_$r13: ref, 
    out_$r11: ref, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_0: ref, 
    out_$r20: ref, 
    out_$i0: int, 
    out_$r14: ref);
  modifies fixed.$objIndex, fixed.$heap;



implementation fixed.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var r0: ref;
  var z0: int;
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



implementation fixed.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var $r0: ref;
  var z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0: int;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
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



implementation fixed.Login$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Login.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.Login;
    assume {:sourceloc "Login.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Login.java", 3, -1, -1, -1} true;
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
    assert {:sourceloc "Login.java", 3, -1, -1, -1} true;
    goto block4;

  block4:
    return;
}



implementation fixed.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: int, $exception: ref)
{
  var $fakelocal_1: ref;
  var z4: int;
  var $fakelocal_10: ref;
  var $r15: ref;
  var $i1: int;
  var $l5: int;
  var $fakelocal_7: ref;
  var $r5: ref;
  var $fakelocal_9: ref;
  var z3: int;
  var $r4: ref;
  var $r12: ref;
  var $fakelocal_3: ref;
  var $r16: ref;
  var r0: ref;
  var $r18: ref;
  var $b2: int;
  var $r8: ref;
  var r2: ref;
  var $b3: int;
  var $r19: ref;
  var $fakelocal_5: ref;
  var $z2: int;
  var $fakelocal_2: ref;
  var $r3: ref;
  var $r10: ref;
  var i6: int;
  var $l4: int;
  var r1: ref;
  var $fakelocal_6: ref;
  var $r17: ref;
  var z0: int;
  var $r13: ref;
  var $r6: ref;
  var $r11: ref;
  var $r9: ref;
  var $fakelocal_4: ref;
  var $fakelocal_8: ref;
  var $fakelocal_0: ref;
  var $r20: ref;
  var $fakelocal_11: ref;
  var $z1: int;
  var $i0: int;
  var $r14: ref;
  var $r7: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap: $heap_type;
  var inline$java.lang.Boolean$booleanValue$$0$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$0$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$0$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$0$$return: int;
  var inline$java.lang.Boolean$booleanValue$$0$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$1$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$1$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$1$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$1$$return: int;
  var inline$java.lang.Boolean$booleanValue$$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$1$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$1$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$2$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$3$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$3$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$4$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$4$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$5$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$5$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$6$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$6$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$7$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$7$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$2$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$2$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$2$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$2$$return: int;
  var inline$java.lang.Boolean$booleanValue$$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$8$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$8$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$9$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$9$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$3$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$3$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$3$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$3$$return: int;
  var inline$java.lang.Boolean$booleanValue$$3$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$10$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$10$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$10$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$10$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$10$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$11$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$11$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$11$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$11$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$11$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$4$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$4$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$4$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$4$$return: int;
  var inline$java.lang.Boolean$booleanValue$$4$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$12$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$12$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$12$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$12$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$12$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$13$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$13$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$13$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$13$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$13$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$5$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$5$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$5$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$5$$return: int;
  var inline$java.lang.Boolean$booleanValue$$5$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$in_parameter__2, fixed.$type] <: fixed.java.lang.String;
    $exception := fixed.$null;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__2;
    assert {:sourceloc "Login.java", 10, -1, -1, -1} true;
    z3 := 0;
    assert {:sourceloc "Login.java", 11, -1, -1, -1} true;
    z4 := 0;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} r0 == fixed.$null;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Login.java", 13, -1, -1, -1} true;
    $return := 0;
    goto block10;

  block10:
    return;

  anon46_Then:
    assume {:partition} r0 != fixed.$null;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    goto block5;

  block5:
    assert {:sourceloc "Login.java", 16, -1, -1, -1} true;
    i6 := 0;
    goto block6;

  block6:
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Entry;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Entry:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return := $return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception := $exception;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1 := $fakelocal_1;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4 := z4;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15 := $r15;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1 := $i1;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5 := $l5;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7 := $fakelocal_7;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3 := z3;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12 := $r12;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3 := $fakelocal_3;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16 := $r16;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0 := r0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18 := $r18;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2 := $b2;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3 := $b3;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19 := $r19;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5 := $fakelocal_5;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2 := $fakelocal_2;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6 := i6;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4 := $l4;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1 := r1;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6 := $fakelocal_6;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17 := $r17;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0 := z0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13 := $r13;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11 := $r11;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4 := $fakelocal_4;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0 := $fakelocal_0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20 := $r20;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0 := $i0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14 := $r14;
    havoc inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex := fixed.$objIndex;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap := fixed.$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$entry;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$entry:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block6;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block6:
    assert {:sourceloc "Login.java", 16, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon47_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon47_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon47_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1
   == fixed.$null;
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0 := fixed.$new(fixed.java.lang.NullPointerException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block9:
    assert {:sourceloc "Login.java", 16, -1, -1, -1} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
   + 1;
    assert {:sourceloc "Login.java", 16, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block9_dummy;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon33:
    goto inline$java.lang.Boolean$booleanValue$$0$Entry;

  inline$java.lang.Boolean$booleanValue$$0$Entry:
    inline$java.lang.Boolean$booleanValue$$0$$this := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20;
    havoc inline$java.lang.Boolean$booleanValue$$0$$z0, inline$java.lang.Boolean$booleanValue$$0$r0, inline$java.lang.Boolean$booleanValue$$0$$return, inline$java.lang.Boolean$booleanValue$$0$$exception;
    goto inline$java.lang.Boolean$booleanValue$$0$anon0;

  inline$java.lang.Boolean$booleanValue$$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$0$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$0$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$0$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$0$r0 := inline$java.lang.Boolean$booleanValue$$0$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$0$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$0$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$0$$return := inline$java.lang.Boolean$booleanValue$$0$$z0;
    goto inline$java.lang.Boolean$booleanValue$$0$block3;

  inline$java.lang.Boolean$booleanValue$$0$block3:
    goto inline$java.lang.Boolean$booleanValue$$0$Return;

  inline$java.lang.Boolean$booleanValue$$0$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4 := inline$java.lang.Boolean$booleanValue$$0$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$java.lang.Boolean$booleanValue$$0$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon33$1;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon33$1:
    assert {:sourceloc "Login.java", 26, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block9;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon56_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20
   != fixed.$null;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon33;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon30:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19;
    assert {:sourceloc "Login.java", 23, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon56_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon56_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon56_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20
   == fixed.$null;
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon55_Then:
    assume {:partition} fixed.$heap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon30;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27:
    goto inline$java.lang.Boolean$booleanValue$$1$Entry;

  inline$java.lang.Boolean$booleanValue$$1$Entry:
    inline$java.lang.Boolean$booleanValue$$1$$this := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16;
    havoc inline$java.lang.Boolean$booleanValue$$1$$z0, inline$java.lang.Boolean$booleanValue$$1$r0, inline$java.lang.Boolean$booleanValue$$1$$return, inline$java.lang.Boolean$booleanValue$$1$$exception;
    goto inline$java.lang.Boolean$booleanValue$$1$anon0;

  inline$java.lang.Boolean$booleanValue$$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$1$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$1$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$1$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$1$r0 := inline$java.lang.Boolean$booleanValue$$1$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$1$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$1$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$1$$return := inline$java.lang.Boolean$booleanValue$$1$$z0;
    goto inline$java.lang.Boolean$booleanValue$$1$block3;

  inline$java.lang.Boolean$booleanValue$$1$block3:
    goto inline$java.lang.Boolean$booleanValue$$1$Return;

  inline$java.lang.Boolean$booleanValue$$1$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3 := inline$java.lang.Boolean$booleanValue$$1$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$java.lang.Boolean$booleanValue$$1$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27$1;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27$1:
    assert {:sourceloc "Login.java", 23, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$0$Entry;

  inline$java.lang.Boolean$valueOf$boolean$0$Entry:
    inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$0$$r0, inline$java.lang.Boolean$valueOf$boolean$0$z0, inline$java.lang.Boolean$valueOf$boolean$0$$return, inline$java.lang.Boolean$valueOf$boolean$0$$exception;
    inline$java.lang.Boolean$valueOf$boolean$0$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$0$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$0$anon0;

  inline$java.lang.Boolean$valueOf$boolean$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$0$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$0$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$0$z0 := inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$0$$r0 := inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this := inline$java.lang.Boolean$valueOf$boolean$0$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$0$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
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
    inline$java.lang.Boolean$valueOf$boolean$0$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$0$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$0$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$0$$return := inline$java.lang.Boolean$valueOf$boolean$0$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$0$block2;

  inline$java.lang.Boolean$valueOf$boolean$0$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$0$Return;

  inline$java.lang.Boolean$valueOf$boolean$0$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17 := inline$java.lang.Boolean$valueOf$boolean$0$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$0$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27$2;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27$2:
    assert {:sourceloc "Login.java", 23, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$1$Entry;

  inline$java.lang.Boolean$valueOf$boolean$1$Entry:
    inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$1$$r0, inline$java.lang.Boolean$valueOf$boolean$1$z0, inline$java.lang.Boolean$valueOf$boolean$1$$return, inline$java.lang.Boolean$valueOf$boolean$1$$exception;
    inline$java.lang.Boolean$valueOf$boolean$1$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$1$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$1$anon0;

  inline$java.lang.Boolean$valueOf$boolean$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$1$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$1$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$1$z0 := inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$1$$r0 := inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this := inline$java.lang.Boolean$valueOf$boolean$1$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$1$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$1$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$1$Entry;

  inline$java.lang.Object$$la$init$ra$$$1$Entry:
    inline$java.lang.Object$$la$init$ra$$$1$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$1$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$1$anon0;

  inline$java.lang.Object$$la$init$ra$$$1$anon0:
    inline$java.lang.Object$$la$init$ra$$$1$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$1$Return;

  inline$java.lang.Object$$la$init$ra$$$1$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception := inline$java.lang.Object$$la$init$ra$$$1$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$Return:
    inline$java.lang.Boolean$valueOf$boolean$1$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$1$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$1$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$1$$return := inline$java.lang.Boolean$valueOf$boolean$1$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$1$block2;

  inline$java.lang.Boolean$valueOf$boolean$1$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$1$Return;

  inline$java.lang.Boolean$valueOf$boolean$1$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18 := inline$java.lang.Boolean$valueOf$boolean$1$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$1$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27$3;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27$3:
    assert {:sourceloc "Login.java", 23, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block60:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block61:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block62;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block62:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27$4;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27$4:
    assert {:sourceloc "Login.java", 23, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon55_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon55_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon55_Else:
    assume {:partition} !(fixed.$heap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon54_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16
   != fixed.$null;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon24:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15;
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon54_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon54_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon54_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16
   == fixed.$null;
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon53_Then:
    assume {:partition} fixed.$heap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon24;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3 := fixed.$intArrHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0][inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6];
    assert {:sourceloc "Login.java", 20, -1, -1, -1} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3;
    assert {:sourceloc "Login.java", 20, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1;
    assert {:sourceloc "Safe.java", 55, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0 := 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 != 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon3:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block33;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block33:
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 == 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon6:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block34;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block34:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block35;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block35:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block34;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block33;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$1;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$1:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$2$Entry;

  inline$java.lang.Boolean$valueOf$boolean$2$Entry:
    inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3;
    havoc inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$2$$r0, inline$java.lang.Boolean$valueOf$boolean$2$z0, inline$java.lang.Boolean$valueOf$boolean$2$$return, inline$java.lang.Boolean$valueOf$boolean$2$$exception;
    inline$java.lang.Boolean$valueOf$boolean$2$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$2$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$2$anon0;

  inline$java.lang.Boolean$valueOf$boolean$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$2$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$2$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$2$z0 := inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$2$$r0 := inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this := inline$java.lang.Boolean$valueOf$boolean$2$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$2$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$2$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$2$Entry;

  inline$java.lang.Object$$la$init$ra$$$2$Entry:
    inline$java.lang.Object$$la$init$ra$$$2$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$2$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$2$anon0;

  inline$java.lang.Object$$la$init$ra$$$2$anon0:
    inline$java.lang.Object$$la$init$ra$$$2$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$2$Return;

  inline$java.lang.Object$$la$init$ra$$$2$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception := inline$java.lang.Object$$la$init$ra$$$2$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$Return:
    inline$java.lang.Boolean$valueOf$boolean$2$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$2$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$2$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$2$$return := inline$java.lang.Boolean$valueOf$boolean$2$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$2$block2;

  inline$java.lang.Boolean$valueOf$boolean$2$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$2$Return;

  inline$java.lang.Boolean$valueOf$boolean$2$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11 := inline$java.lang.Boolean$valueOf$boolean$2$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$2$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$2;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$2:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$3$Entry;

  inline$java.lang.Boolean$valueOf$boolean$3$Entry:
    inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0 := 0;
    havoc inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$3$$r0, inline$java.lang.Boolean$valueOf$boolean$3$z0, inline$java.lang.Boolean$valueOf$boolean$3$$return, inline$java.lang.Boolean$valueOf$boolean$3$$exception;
    inline$java.lang.Boolean$valueOf$boolean$3$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$3$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$3$anon0;

  inline$java.lang.Boolean$valueOf$boolean$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$3$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$3$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$3$z0 := inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$3$$r0 := inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this := inline$java.lang.Boolean$valueOf$boolean$3$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$3$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$3$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$3$Entry;

  inline$java.lang.Object$$la$init$ra$$$3$Entry:
    inline$java.lang.Object$$la$init$ra$$$3$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$3$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$3$anon0;

  inline$java.lang.Object$$la$init$ra$$$3$anon0:
    inline$java.lang.Object$$la$init$ra$$$3$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$3$Return;

  inline$java.lang.Object$$la$init$ra$$$3$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception := inline$java.lang.Object$$la$init$ra$$$3$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$Return:
    inline$java.lang.Boolean$valueOf$boolean$3$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$3$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$3$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$3$$return := inline$java.lang.Boolean$valueOf$boolean$3$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$3$block2;

  inline$java.lang.Boolean$valueOf$boolean$3$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$3$Return;

  inline$java.lang.Boolean$valueOf$boolean$3$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12 := inline$java.lang.Boolean$valueOf$boolean$3$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$3$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$3;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$3:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block60:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block61:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block62;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block62:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$4;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$4:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$4$Entry;

  inline$java.lang.Boolean$valueOf$boolean$4$Entry:
    inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3;
    havoc inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$4$$r0, inline$java.lang.Boolean$valueOf$boolean$4$z0, inline$java.lang.Boolean$valueOf$boolean$4$$return, inline$java.lang.Boolean$valueOf$boolean$4$$exception;
    inline$java.lang.Boolean$valueOf$boolean$4$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$4$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$4$anon0;

  inline$java.lang.Boolean$valueOf$boolean$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$4$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$4$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$4$z0 := inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$4$$r0 := inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this := inline$java.lang.Boolean$valueOf$boolean$4$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$4$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$4$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$4$Entry;

  inline$java.lang.Object$$la$init$ra$$$4$Entry:
    inline$java.lang.Object$$la$init$ra$$$4$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$4$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$4$anon0;

  inline$java.lang.Object$$la$init$ra$$$4$anon0:
    inline$java.lang.Object$$la$init$ra$$$4$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$4$Return;

  inline$java.lang.Object$$la$init$ra$$$4$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception := inline$java.lang.Object$$la$init$ra$$$4$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$Return:
    inline$java.lang.Boolean$valueOf$boolean$4$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$4$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$4$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$4$$return := inline$java.lang.Boolean$valueOf$boolean$4$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$4$block2;

  inline$java.lang.Boolean$valueOf$boolean$4$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$4$Return;

  inline$java.lang.Boolean$valueOf$boolean$4$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$java.lang.Boolean$valueOf$boolean$4$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$4$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$5;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$5:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1, fixed.$type]
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block60:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block61:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block62;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block62:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$6;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$6:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon53_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon53_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon53_Else:
    assume {:partition} !(fixed.$heap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon52_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
     < fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
     >= 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon18:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2 := fixed.$intArrHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1][inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6];
    assert {:sourceloc "Login.java", 20, -1, -1, -1} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2;
    assert {:sourceloc "Login.java", 20, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon52_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon52_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon52_Else:
    assume {:partition} !(inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
     < fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
     >= 0);
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon51_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
     < fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
     >= 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon18;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon15:
    assert {:sourceloc "Login.java", 20, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon51_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon51_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon51_Else:
    assume {:partition} !(inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
     < fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
     >= 0);
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon50_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1
   > inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6;
    assert {:sourceloc "Login.java", 17, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon15;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon12:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0];
    assert {:sourceloc "Login.java", 17, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon50_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon50_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon50_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
   >= inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1;
    assert {:sourceloc "Login.java", 17, -1, -1, -1} {:comment "thenblock"} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon49_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0
   != fixed.$null;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon12;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon9:
    assert {:sourceloc "Login.java", 17, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon49_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon49_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon49_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0
   == fixed.$null;
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.NullPointerException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon48_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0
   > inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6;
    assert {:sourceloc "Login.java", 16, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon9;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon6:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0 := fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1];
    assert {:sourceloc "Login.java", 16, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon48_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon48_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon48_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
   >= inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0;
    assert {:sourceloc "Login.java", 16, -1, -1, -1} {:comment "thenblock"} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon47_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1
   != fixed.$null;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon6;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block9_dummy:
    assume false;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$exit:
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return:
    $return := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return;
    $exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    $fakelocal_1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1;
    z4 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4;
    $r15 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15;
    $i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1;
    $l5 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5;
    $fakelocal_7 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7;
    z3 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3;
    $r12 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12;
    $fakelocal_3 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3;
    $r16 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16;
    $r18 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18;
    $b2 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2;
    $b3 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3;
    $r19 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19;
    $fakelocal_5 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5;
    $fakelocal_2 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2;
    i6 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6;
    $l4 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4;
    $fakelocal_6 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6;
    $r17 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17;
    z0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0;
    $r13 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13;
    $r11 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11;
    $fakelocal_4 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4;
    $fakelocal_0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0;
    $r20 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20;
    $i0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0;
    $r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14;
    goto block6$1;

  block6$1:
    goto block6_last;

  anon47_Else:
    assume {:partition} r1 == fixed.$null;
    call $fakelocal_0 := fixed.$new(fixed.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon47_Then:
    assume {:partition} r1 != fixed.$null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i0 := fixed.$arrSizeHeap[r1];
    assert {:sourceloc "Login.java", 16, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} $i0 > i6;
    assert {:sourceloc "Login.java", 16, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "Login.java", 17, -1, -1, -1} true;
    goto anon49_Then, anon49_Else;

  anon49_Else:
    assume {:partition} r0 == fixed.$null;
    call $fakelocal_1 := fixed.$new(fixed.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon49_Then:
    assume {:partition} r0 != fixed.$null;
    $exception := $exception;
    goto anon12;

  anon12:
    $i1 := fixed.$arrSizeHeap[r0];
    assert {:sourceloc "Login.java", 17, -1, -1, -1} true;
    goto anon50_Then, anon50_Else;

  anon50_Else:
    assume {:partition} $i1 > i6;
    assert {:sourceloc "Login.java", 17, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "Login.java", 20, -1, -1, -1} true;
    goto anon51_Then, anon51_Else;

  anon51_Else:
    assume {:partition} !(i6 < fixed.$arrSizeHeap[r1] && i6 >= 0);
    call $fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon51_Then:
    assume {:partition} i6 < fixed.$arrSizeHeap[r1] && i6 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $b2 := fixed.$intArrHeap[r1][i6];
    assert {:sourceloc "Login.java", 20, -1, -1, -1} true;
    $l5 := $b2;
    assert {:sourceloc "Login.java", 20, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} !(i6 < fixed.$arrSizeHeap[r0] && i6 >= 0);
    call $fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon52_Then:
    assume {:partition} i6 < fixed.$arrSizeHeap[r0] && i6 >= 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $b3 := fixed.$intArrHeap[r0][i6];
    assert {:sourceloc "Login.java", 20, -1, -1, -1} true;
    $l4 := $b3;
    assert {:sourceloc "Login.java", 20, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__0 := $l5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__1 := $l4;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__1;
    assert {:sourceloc "Safe.java", 55, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0 := 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1);
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2 != 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon3:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block33;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block33:
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1);
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3 == 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon6:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block34;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block34:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block35;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block35:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block34;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block33;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Return:
    z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception;
    goto anon21$1;

  anon21$1:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$5$Entry;

  inline$java.lang.Boolean$valueOf$boolean$5$Entry:
    inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0 := z3;
    havoc inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$5$$r0, inline$java.lang.Boolean$valueOf$boolean$5$z0, inline$java.lang.Boolean$valueOf$boolean$5$$return, inline$java.lang.Boolean$valueOf$boolean$5$$exception;
    inline$java.lang.Boolean$valueOf$boolean$5$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$5$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$5$anon0;

  inline$java.lang.Boolean$valueOf$boolean$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$5$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$5$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$5$z0 := inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$5$$r0 := inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this := inline$java.lang.Boolean$valueOf$boolean$5$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$5$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$5$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$5$Entry;

  inline$java.lang.Object$$la$init$ra$$$5$Entry:
    inline$java.lang.Object$$la$init$ra$$$5$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$5$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$5$anon0;

  inline$java.lang.Object$$la$init$ra$$$5$anon0:
    inline$java.lang.Object$$la$init$ra$$$5$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$5$Return;

  inline$java.lang.Object$$la$init$ra$$$5$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception := inline$java.lang.Object$$la$init$ra$$$5$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$Return:
    inline$java.lang.Boolean$valueOf$boolean$5$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$5$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$5$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$5$$return := inline$java.lang.Boolean$valueOf$boolean$5$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$5$block2;

  inline$java.lang.Boolean$valueOf$boolean$5$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$5$Return;

  inline$java.lang.Boolean$valueOf$boolean$5$Return:
    $r11 := inline$java.lang.Boolean$valueOf$boolean$5$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$5$$exception;
    goto anon21$2;

  anon21$2:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$6$Entry;

  inline$java.lang.Boolean$valueOf$boolean$6$Entry:
    inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0 := 0;
    havoc inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$6$$r0, inline$java.lang.Boolean$valueOf$boolean$6$z0, inline$java.lang.Boolean$valueOf$boolean$6$$return, inline$java.lang.Boolean$valueOf$boolean$6$$exception;
    inline$java.lang.Boolean$valueOf$boolean$6$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$6$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$6$anon0;

  inline$java.lang.Boolean$valueOf$boolean$6$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$6$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$6$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$6$z0 := inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$6$$r0 := inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this := inline$java.lang.Boolean$valueOf$boolean$6$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$6$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$6$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$6$Entry;

  inline$java.lang.Object$$la$init$ra$$$6$Entry:
    inline$java.lang.Object$$la$init$ra$$$6$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$6$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$6$anon0;

  inline$java.lang.Object$$la$init$ra$$$6$anon0:
    inline$java.lang.Object$$la$init$ra$$$6$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$6$Return;

  inline$java.lang.Object$$la$init$ra$$$6$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception := inline$java.lang.Object$$la$init$ra$$$6$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$Return:
    inline$java.lang.Boolean$valueOf$boolean$6$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$6$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$6$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$6$$return := inline$java.lang.Boolean$valueOf$boolean$6$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$6$block2;

  inline$java.lang.Boolean$valueOf$boolean$6$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$6$Return;

  inline$java.lang.Boolean$valueOf$boolean$6$Return:
    $r12 := inline$java.lang.Boolean$valueOf$boolean$6$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$6$$exception;
    goto anon21$3;

  anon21$3:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0 := z4;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1 := $r11;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2 := $r12;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block60:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block61:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block62;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block62:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Return:
    $r13 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception;
    goto anon21$4;

  anon21$4:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$7$Entry;

  inline$java.lang.Boolean$valueOf$boolean$7$Entry:
    inline$java.lang.Boolean$valueOf$boolean$7$$in_parameter__0 := z3;
    havoc inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$7$$r0, inline$java.lang.Boolean$valueOf$boolean$7$z0, inline$java.lang.Boolean$valueOf$boolean$7$$return, inline$java.lang.Boolean$valueOf$boolean$7$$exception;
    inline$java.lang.Boolean$valueOf$boolean$7$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$7$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$7$anon0;

  inline$java.lang.Boolean$valueOf$boolean$7$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$7$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$7$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$7$z0 := inline$java.lang.Boolean$valueOf$boolean$7$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$7$$r0 := inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this := inline$java.lang.Boolean$valueOf$boolean$7$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$7$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$7$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$7$Entry;

  inline$java.lang.Object$$la$init$ra$$$7$Entry:
    inline$java.lang.Object$$la$init$ra$$$7$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$7$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$7$anon0;

  inline$java.lang.Object$$la$init$ra$$$7$anon0:
    inline$java.lang.Object$$la$init$ra$$$7$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$7$Return;

  inline$java.lang.Object$$la$init$ra$$$7$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception := inline$java.lang.Object$$la$init$ra$$$7$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$Return:
    inline$java.lang.Boolean$valueOf$boolean$7$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$7$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$7$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$7$$return := inline$java.lang.Boolean$valueOf$boolean$7$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$7$block2;

  inline$java.lang.Boolean$valueOf$boolean$7$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$7$Return;

  inline$java.lang.Boolean$valueOf$boolean$7$Return:
    $r14 := inline$java.lang.Boolean$valueOf$boolean$7$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$7$$exception;
    goto anon21$5;

  anon21$5:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__0 := z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1 := $r13;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2 := $r14;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block60:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block61:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block62;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block62:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Return:
    $r15 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception;
    goto anon21$6;

  anon21$6:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} !(fixed.$heap[$r15, fixed.$type] <: fixed.java.lang.Boolean);
    call $fakelocal_4 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon53_Then:
    assume {:partition} fixed.$heap[$r15, fixed.$type] <: fixed.java.lang.Boolean;
    $exception := $exception;
    goto anon24;

  anon24:
    $r16 := $r15;
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto anon54_Then, anon54_Else;

  anon54_Else:
    assume {:partition} $r16 == fixed.$null;
    call $fakelocal_5 := fixed.$new(fixed.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon54_Then:
    assume {:partition} $r16 != fixed.$null;
    $exception := $exception;
    goto anon27;

  anon27:
    goto inline$java.lang.Boolean$booleanValue$$2$Entry;

  inline$java.lang.Boolean$booleanValue$$2$Entry:
    inline$java.lang.Boolean$booleanValue$$2$$this := $r16;
    havoc inline$java.lang.Boolean$booleanValue$$2$$z0, inline$java.lang.Boolean$booleanValue$$2$r0, inline$java.lang.Boolean$booleanValue$$2$$return, inline$java.lang.Boolean$booleanValue$$2$$exception;
    goto inline$java.lang.Boolean$booleanValue$$2$anon0;

  inline$java.lang.Boolean$booleanValue$$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$2$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$2$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$2$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$2$r0 := inline$java.lang.Boolean$booleanValue$$2$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$2$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$2$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$2$$return := inline$java.lang.Boolean$booleanValue$$2$$z0;
    goto inline$java.lang.Boolean$booleanValue$$2$block3;

  inline$java.lang.Boolean$booleanValue$$2$block3:
    goto inline$java.lang.Boolean$booleanValue$$2$Return;

  inline$java.lang.Boolean$booleanValue$$2$Return:
    z3 := inline$java.lang.Boolean$booleanValue$$2$$return;
    $exception := inline$java.lang.Boolean$booleanValue$$2$$exception;
    goto anon27$1;

  anon27$1:
    assert {:sourceloc "Login.java", 23, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$8$Entry;

  inline$java.lang.Boolean$valueOf$boolean$8$Entry:
    inline$java.lang.Boolean$valueOf$boolean$8$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$8$$r0, inline$java.lang.Boolean$valueOf$boolean$8$z0, inline$java.lang.Boolean$valueOf$boolean$8$$return, inline$java.lang.Boolean$valueOf$boolean$8$$exception;
    inline$java.lang.Boolean$valueOf$boolean$8$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$8$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$8$anon0;

  inline$java.lang.Boolean$valueOf$boolean$8$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$8$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$8$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$8$z0 := inline$java.lang.Boolean$valueOf$boolean$8$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$8$$r0 := inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this := inline$java.lang.Boolean$valueOf$boolean$8$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$8$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$8$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$8$Entry;

  inline$java.lang.Object$$la$init$ra$$$8$Entry:
    inline$java.lang.Object$$la$init$ra$$$8$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$8$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$8$anon0;

  inline$java.lang.Object$$la$init$ra$$$8$anon0:
    inline$java.lang.Object$$la$init$ra$$$8$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$8$Return;

  inline$java.lang.Object$$la$init$ra$$$8$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception := inline$java.lang.Object$$la$init$ra$$$8$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$Return:
    inline$java.lang.Boolean$valueOf$boolean$8$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$8$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$8$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$8$$return := inline$java.lang.Boolean$valueOf$boolean$8$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$8$block2;

  inline$java.lang.Boolean$valueOf$boolean$8$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$8$Return;

  inline$java.lang.Boolean$valueOf$boolean$8$Return:
    $r17 := inline$java.lang.Boolean$valueOf$boolean$8$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$8$$exception;
    goto anon27$2;

  anon27$2:
    assert {:sourceloc "Login.java", 23, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$9$Entry;

  inline$java.lang.Boolean$valueOf$boolean$9$Entry:
    inline$java.lang.Boolean$valueOf$boolean$9$$in_parameter__0 := z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$9$$r0, inline$java.lang.Boolean$valueOf$boolean$9$z0, inline$java.lang.Boolean$valueOf$boolean$9$$return, inline$java.lang.Boolean$valueOf$boolean$9$$exception;
    inline$java.lang.Boolean$valueOf$boolean$9$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$9$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$9$anon0;

  inline$java.lang.Boolean$valueOf$boolean$9$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$9$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$9$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$9$z0 := inline$java.lang.Boolean$valueOf$boolean$9$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$9$$r0 := inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this := inline$java.lang.Boolean$valueOf$boolean$9$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$9$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$9$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$9$Entry;

  inline$java.lang.Object$$la$init$ra$$$9$Entry:
    inline$java.lang.Object$$la$init$ra$$$9$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$9$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$9$anon0;

  inline$java.lang.Object$$la$init$ra$$$9$anon0:
    inline$java.lang.Object$$la$init$ra$$$9$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$9$Return;

  inline$java.lang.Object$$la$init$ra$$$9$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception := inline$java.lang.Object$$la$init$ra$$$9$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$Return:
    inline$java.lang.Boolean$valueOf$boolean$9$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$9$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$9$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$9$$return := inline$java.lang.Boolean$valueOf$boolean$9$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$9$block2;

  inline$java.lang.Boolean$valueOf$boolean$9$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$9$Return;

  inline$java.lang.Boolean$valueOf$boolean$9$Return:
    $r18 := inline$java.lang.Boolean$valueOf$boolean$9$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$9$$exception;
    goto anon27$3;

  anon27$3:
    assert {:sourceloc "Login.java", 23, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__0 := z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1 := $r17;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2 := $r18;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block60:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block61:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block62;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block62:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Return:
    $r19 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception;
    goto anon27$4;

  anon27$4:
    assert {:sourceloc "Login.java", 23, -1, -1, -1} true;
    goto anon55_Then, anon55_Else;

  anon55_Else:
    assume {:partition} !(fixed.$heap[$r19, fixed.$type] <: fixed.java.lang.Boolean);
    call $fakelocal_6 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon55_Then:
    assume {:partition} fixed.$heap[$r19, fixed.$type] <: fixed.java.lang.Boolean;
    $exception := $exception;
    goto anon30;

  anon30:
    $r20 := $r19;
    assert {:sourceloc "Login.java", 23, -1, -1, -1} true;
    goto anon56_Then, anon56_Else;

  anon56_Else:
    assume {:partition} $r20 == fixed.$null;
    call $fakelocal_7 := fixed.$new(fixed.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_7;
    return;

  anon56_Then:
    assume {:partition} $r20 != fixed.$null;
    $exception := $exception;
    goto anon33;

  anon33:
    goto inline$java.lang.Boolean$booleanValue$$3$Entry;

  inline$java.lang.Boolean$booleanValue$$3$Entry:
    inline$java.lang.Boolean$booleanValue$$3$$this := $r20;
    havoc inline$java.lang.Boolean$booleanValue$$3$$z0, inline$java.lang.Boolean$booleanValue$$3$r0, inline$java.lang.Boolean$booleanValue$$3$$return, inline$java.lang.Boolean$booleanValue$$3$$exception;
    goto inline$java.lang.Boolean$booleanValue$$3$anon0;

  inline$java.lang.Boolean$booleanValue$$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$3$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$3$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$3$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$3$r0 := inline$java.lang.Boolean$booleanValue$$3$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$3$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$3$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$3$$return := inline$java.lang.Boolean$booleanValue$$3$$z0;
    goto inline$java.lang.Boolean$booleanValue$$3$block3;

  inline$java.lang.Boolean$booleanValue$$3$block3:
    goto inline$java.lang.Boolean$booleanValue$$3$Return;

  inline$java.lang.Boolean$booleanValue$$3$Return:
    z4 := inline$java.lang.Boolean$booleanValue$$3$$return;
    $exception := inline$java.lang.Boolean$booleanValue$$3$$exception;
    goto anon33$1;

  anon33$1:
    assert {:sourceloc "Login.java", 26, -1, -1, -1} true;
    goto block9;

  block9:
    assert {:sourceloc "Login.java", 16, -1, -1, -1} true;
    i6 := i6 + 1;
    assert {:sourceloc "Login.java", 16, -1, -1, -1} true;
    goto block9_dummy;

  anon50_Then:
    assume {:partition} i6 >= $i1;
    assert {:sourceloc "Login.java", 17, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "Login.java", 29, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$10$Entry;

  inline$java.lang.Boolean$valueOf$boolean$10$Entry:
    inline$java.lang.Boolean$valueOf$boolean$10$$in_parameter__0 := z3;
    havoc inline$java.lang.Boolean$valueOf$boolean$10$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$10$$r0, inline$java.lang.Boolean$valueOf$boolean$10$z0, inline$java.lang.Boolean$valueOf$boolean$10$$return, inline$java.lang.Boolean$valueOf$boolean$10$$exception;
    inline$java.lang.Boolean$valueOf$boolean$10$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$10$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$10$anon0;

  inline$java.lang.Boolean$valueOf$boolean$10$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$10$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$10$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$10$z0 := inline$java.lang.Boolean$valueOf$boolean$10$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$10$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$10$$r0 := inline$java.lang.Boolean$valueOf$boolean$10$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$10$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$10$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$$this := inline$java.lang.Boolean$valueOf$boolean$10$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$10$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$10$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$10$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$10$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$10$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$10$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$10$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$10$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$10$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$10$Entry;

  inline$java.lang.Object$$la$init$ra$$$10$Entry:
    inline$java.lang.Object$$la$init$ra$$$10$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$10$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$10$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$10$anon0;

  inline$java.lang.Object$$la$init$ra$$$10$anon0:
    inline$java.lang.Object$$la$init$ra$$$10$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$10$Return;

  inline$java.lang.Object$$la$init$ra$$$10$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception := inline$java.lang.Object$$la$init$ra$$$10$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$10$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$10$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$10$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$10$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$10$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$10$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$10$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$10$Return:
    inline$java.lang.Boolean$valueOf$boolean$10$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$10$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$10$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$10$$return := inline$java.lang.Boolean$valueOf$boolean$10$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$10$block2;

  inline$java.lang.Boolean$valueOf$boolean$10$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$10$Return;

  inline$java.lang.Boolean$valueOf$boolean$10$Return:
    $r7 := inline$java.lang.Boolean$valueOf$boolean$10$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$10$$exception;
    goto block8$1;

  block8$1:
    assert {:sourceloc "Login.java", 29, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$11$Entry;

  inline$java.lang.Boolean$valueOf$boolean$11$Entry:
    inline$java.lang.Boolean$valueOf$boolean$11$$in_parameter__0 := 0;
    havoc inline$java.lang.Boolean$valueOf$boolean$11$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$11$$r0, inline$java.lang.Boolean$valueOf$boolean$11$z0, inline$java.lang.Boolean$valueOf$boolean$11$$return, inline$java.lang.Boolean$valueOf$boolean$11$$exception;
    inline$java.lang.Boolean$valueOf$boolean$11$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$11$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$11$anon0;

  inline$java.lang.Boolean$valueOf$boolean$11$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$11$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$11$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$11$z0 := inline$java.lang.Boolean$valueOf$boolean$11$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$11$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$11$$r0 := inline$java.lang.Boolean$valueOf$boolean$11$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$11$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$11$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$$this := inline$java.lang.Boolean$valueOf$boolean$11$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$11$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$11$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$11$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$11$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$11$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$11$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$11$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$11$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$11$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$11$Entry;

  inline$java.lang.Object$$la$init$ra$$$11$Entry:
    inline$java.lang.Object$$la$init$ra$$$11$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$11$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$11$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$11$anon0;

  inline$java.lang.Object$$la$init$ra$$$11$anon0:
    inline$java.lang.Object$$la$init$ra$$$11$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$11$Return;

  inline$java.lang.Object$$la$init$ra$$$11$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception := inline$java.lang.Object$$la$init$ra$$$11$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$11$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$11$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$11$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$11$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$11$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$11$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$11$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$11$Return:
    inline$java.lang.Boolean$valueOf$boolean$11$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$11$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$11$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$11$$return := inline$java.lang.Boolean$valueOf$boolean$11$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$11$block2;

  inline$java.lang.Boolean$valueOf$boolean$11$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$11$Return;

  inline$java.lang.Boolean$valueOf$boolean$11$Return:
    $r8 := inline$java.lang.Boolean$valueOf$boolean$11$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$11$$exception;
    goto block8$2;

  block8$2:
    assert {:sourceloc "Login.java", 29, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__0 := z4;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__1 := $r7;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__2 := $r8;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block60:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block61:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block62;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block62:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$Return:
    $r9 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$exception;
    goto block8$3;

  block8$3:
    assert {:sourceloc "Login.java", 29, -1, -1, -1} true;
    goto anon57_Then, anon57_Else;

  anon57_Else:
    assume {:partition} !(fixed.$heap[$r9, fixed.$type] <: fixed.java.lang.Boolean);
    call $fakelocal_8 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_8;
    return;

  anon57_Then:
    assume {:partition} fixed.$heap[$r9, fixed.$type] <: fixed.java.lang.Boolean;
    $exception := $exception;
    goto anon36;

  anon36:
    $r10 := $r9;
    assert {:sourceloc "Login.java", 29, -1, -1, -1} true;
    goto anon58_Then, anon58_Else;

  anon58_Else:
    assume {:partition} $r10 == fixed.$null;
    call $fakelocal_9 := fixed.$new(fixed.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_9;
    return;

  anon58_Then:
    assume {:partition} $r10 != fixed.$null;
    $exception := $exception;
    goto anon39;

  anon39:
    goto inline$java.lang.Boolean$booleanValue$$4$Entry;

  inline$java.lang.Boolean$booleanValue$$4$Entry:
    inline$java.lang.Boolean$booleanValue$$4$$this := $r10;
    havoc inline$java.lang.Boolean$booleanValue$$4$$z0, inline$java.lang.Boolean$booleanValue$$4$r0, inline$java.lang.Boolean$booleanValue$$4$$return, inline$java.lang.Boolean$booleanValue$$4$$exception;
    goto inline$java.lang.Boolean$booleanValue$$4$anon0;

  inline$java.lang.Boolean$booleanValue$$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$4$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$4$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$4$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$4$r0 := inline$java.lang.Boolean$booleanValue$$4$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$4$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$4$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$4$$return := inline$java.lang.Boolean$booleanValue$$4$$z0;
    goto inline$java.lang.Boolean$booleanValue$$4$block3;

  inline$java.lang.Boolean$booleanValue$$4$block3:
    goto inline$java.lang.Boolean$booleanValue$$4$Return;

  inline$java.lang.Boolean$booleanValue$$4$Return:
    $z2 := inline$java.lang.Boolean$booleanValue$$4$$return;
    $exception := inline$java.lang.Boolean$booleanValue$$4$$exception;
    goto anon39$1;

  anon39$1:
    assert {:sourceloc "Login.java", 29, -1, -1, -1} true;
    $return := $z2;
    goto block10;

  anon48_Then:
    assume {:partition} i6 >= $i0;
    assert {:sourceloc "Login.java", 16, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  block7:
    assert {:sourceloc "Login.java", 33, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$12$Entry;

  inline$java.lang.Boolean$valueOf$boolean$12$Entry:
    inline$java.lang.Boolean$valueOf$boolean$12$$in_parameter__0 := z3;
    havoc inline$java.lang.Boolean$valueOf$boolean$12$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$12$$r0, inline$java.lang.Boolean$valueOf$boolean$12$z0, inline$java.lang.Boolean$valueOf$boolean$12$$return, inline$java.lang.Boolean$valueOf$boolean$12$$exception;
    inline$java.lang.Boolean$valueOf$boolean$12$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$12$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$12$anon0;

  inline$java.lang.Boolean$valueOf$boolean$12$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$12$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$12$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$12$z0 := inline$java.lang.Boolean$valueOf$boolean$12$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$12$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$12$$r0 := inline$java.lang.Boolean$valueOf$boolean$12$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$12$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$12$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$$this := inline$java.lang.Boolean$valueOf$boolean$12$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$12$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$12$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$12$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$12$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$12$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$12$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$12$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$12$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$12$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$12$Entry;

  inline$java.lang.Object$$la$init$ra$$$12$Entry:
    inline$java.lang.Object$$la$init$ra$$$12$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$12$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$12$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$12$anon0;

  inline$java.lang.Object$$la$init$ra$$$12$anon0:
    inline$java.lang.Object$$la$init$ra$$$12$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$12$Return;

  inline$java.lang.Object$$la$init$ra$$$12$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception := inline$java.lang.Object$$la$init$ra$$$12$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$12$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$12$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$12$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$12$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$12$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$12$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$12$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$12$Return:
    inline$java.lang.Boolean$valueOf$boolean$12$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$12$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$12$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$12$$return := inline$java.lang.Boolean$valueOf$boolean$12$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$12$block2;

  inline$java.lang.Boolean$valueOf$boolean$12$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$12$Return;

  inline$java.lang.Boolean$valueOf$boolean$12$Return:
    $r3 := inline$java.lang.Boolean$valueOf$boolean$12$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$12$$exception;
    goto block7$1;

  block7$1:
    assert {:sourceloc "Login.java", 33, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$13$Entry;

  inline$java.lang.Boolean$valueOf$boolean$13$Entry:
    inline$java.lang.Boolean$valueOf$boolean$13$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$13$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$13$$r0, inline$java.lang.Boolean$valueOf$boolean$13$z0, inline$java.lang.Boolean$valueOf$boolean$13$$return, inline$java.lang.Boolean$valueOf$boolean$13$$exception;
    inline$java.lang.Boolean$valueOf$boolean$13$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$13$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$13$anon0;

  inline$java.lang.Boolean$valueOf$boolean$13$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$13$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$13$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$13$z0 := inline$java.lang.Boolean$valueOf$boolean$13$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$13$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$13$$r0 := inline$java.lang.Boolean$valueOf$boolean$13$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$13$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$13$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$$this := inline$java.lang.Boolean$valueOf$boolean$13$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$13$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$13$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$13$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$13$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$13$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$13$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$13$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$13$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$13$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$13$Entry;

  inline$java.lang.Object$$la$init$ra$$$13$Entry:
    inline$java.lang.Object$$la$init$ra$$$13$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$13$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$13$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$13$anon0;

  inline$java.lang.Object$$la$init$ra$$$13$anon0:
    inline$java.lang.Object$$la$init$ra$$$13$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$13$Return;

  inline$java.lang.Object$$la$init$ra$$$13$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception := inline$java.lang.Object$$la$init$ra$$$13$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$13$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$13$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$13$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$13$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$13$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$13$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$13$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$13$Return:
    inline$java.lang.Boolean$valueOf$boolean$13$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$13$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$13$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$13$$return := inline$java.lang.Boolean$valueOf$boolean$13$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$13$block2;

  inline$java.lang.Boolean$valueOf$boolean$13$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$13$Return;

  inline$java.lang.Boolean$valueOf$boolean$13$Return:
    $r4 := inline$java.lang.Boolean$valueOf$boolean$13$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$13$$exception;
    goto block7$2;

  block7$2:
    assert {:sourceloc "Login.java", 33, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__0 := z4;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__1 := $r3;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__2 := $r4;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block60:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block61:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block62;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block62:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$Return:
    $r5 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$exception;
    goto block7$3;

  block7$3:
    assert {:sourceloc "Login.java", 33, -1, -1, -1} true;
    goto anon59_Then, anon59_Else;

  anon59_Else:
    assume {:partition} !(fixed.$heap[$r5, fixed.$type] <: fixed.java.lang.Boolean);
    call $fakelocal_10 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_10;
    return;

  anon59_Then:
    assume {:partition} fixed.$heap[$r5, fixed.$type] <: fixed.java.lang.Boolean;
    $exception := $exception;
    goto anon42;

  anon42:
    $r6 := $r5;
    assert {:sourceloc "Login.java", 33, -1, -1, -1} true;
    goto anon60_Then, anon60_Else;

  anon60_Else:
    assume {:partition} $r6 == fixed.$null;
    call $fakelocal_11 := fixed.$new(fixed.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_11;
    return;

  anon60_Then:
    assume {:partition} $r6 != fixed.$null;
    $exception := $exception;
    goto anon45;

  anon45:
    goto inline$java.lang.Boolean$booleanValue$$5$Entry;

  inline$java.lang.Boolean$booleanValue$$5$Entry:
    inline$java.lang.Boolean$booleanValue$$5$$this := $r6;
    havoc inline$java.lang.Boolean$booleanValue$$5$$z0, inline$java.lang.Boolean$booleanValue$$5$r0, inline$java.lang.Boolean$booleanValue$$5$$return, inline$java.lang.Boolean$booleanValue$$5$$exception;
    goto inline$java.lang.Boolean$booleanValue$$5$anon0;

  inline$java.lang.Boolean$booleanValue$$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$5$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$5$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$5$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$5$r0 := inline$java.lang.Boolean$booleanValue$$5$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$5$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$5$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$5$$return := inline$java.lang.Boolean$booleanValue$$5$$z0;
    goto inline$java.lang.Boolean$booleanValue$$5$block3;

  inline$java.lang.Boolean$booleanValue$$5$block3:
    goto inline$java.lang.Boolean$booleanValue$$5$Return;

  inline$java.lang.Boolean$booleanValue$$5$Return:
    $z1 := inline$java.lang.Boolean$booleanValue$$5$$return;
    $exception := inline$java.lang.Boolean$booleanValue$$5$$exception;
    goto anon45$1;

  anon45$1:
    assert {:sourceloc "Login.java", 33, -1, -1, -1} true;
    $return := $z1;
    goto block10;

  block9_dummy:
    assume false;
    return;

  block6_last:
    assert {:sourceloc "Login.java", 16, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;
}



implementation {:inline 1} fixed.Login$retrieve$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var $fakelocal_3: ref;
  var $fakelocal_4: ref;
  var r1: ref;
  var $fakelocal_0: ref;
  var r0: ref;
  var $fakelocal_2: ref;
  var $r2: ref;
  var $fakelocal_1: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$in_parameter__0, fixed.$type] <: fixed.java.lang.String;
    $exception := fixed.$null;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Login.java", 64, -1, -1, -1} true;
    call $fakelocal_0 := fixed.$new(fixed.$intArrayType);
    fixed.$arrSizeHeap := fixed.$arrSizeHeap[$fakelocal_0 := 4];
    $r2 := $fakelocal_0;
    assert {:sourceloc "Login.java", 64, -1, -1, -1} true;
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(0 < fixed.$arrSizeHeap[$r2] && 0 >= 0);
    call $fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := fixed.$null;
    $exception := $fakelocal_1;
    return;

  anon13_Then:
    assume {:partition} 0 < fixed.$arrSizeHeap[$r2] && 0 >= 0;
    $exception := $exception;
    goto anon3;

  anon3:
    fixed.$intArrHeap := fixed.$intArrHeap[$r2 := fixed.$intArrHeap[$r2][0 := 10]];
    assert {:sourceloc "Login.java", 64, -1, -1, -1} true;
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !(1 < fixed.$arrSizeHeap[$r2] && 1 >= 0);
    call $fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := fixed.$null;
    $exception := $fakelocal_2;
    return;

  anon14_Then:
    assume {:partition} 1 < fixed.$arrSizeHeap[$r2] && 1 >= 0;
    $exception := $exception;
    goto anon6;

  anon6:
    fixed.$intArrHeap := fixed.$intArrHeap[$r2 := fixed.$intArrHeap[$r2][1 := 3]];
    assert {:sourceloc "Login.java", 64, -1, -1, -1} true;
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !(2 < fixed.$arrSizeHeap[$r2] && 2 >= 0);
    call $fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := fixed.$null;
    $exception := $fakelocal_3;
    return;

  anon15_Then:
    assume {:partition} 2 < fixed.$arrSizeHeap[$r2] && 2 >= 0;
    $exception := $exception;
    goto anon9;

  anon9:
    fixed.$intArrHeap := fixed.$intArrHeap[$r2 := fixed.$intArrHeap[$r2][2 := 15]];
    assert {:sourceloc "Login.java", 64, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !(3 < fixed.$arrSizeHeap[$r2] && 3 >= 0);
    call $fakelocal_4 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := fixed.$null;
    $exception := $fakelocal_4;
    return;

  anon16_Then:
    assume {:partition} 3 < fixed.$arrSizeHeap[$r2] && 3 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[$r2 := fixed.$intArrHeap[$r2][3 := 1]];
    assert {:sourceloc "Login.java", 64, -1, -1, -1} true;
    r1 := $r2;
    assert {:sourceloc "Login.java", 65, -1, -1, -1} true;
    $return := r1;
    goto block11;

  block11:
    return;
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
    goto block12;

  block12:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var z1: int;
  var z0: int;

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
    goto block13;

  block13:
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 1;
    goto block14;

  block14:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    $return := z1;
    goto block15;

  block15:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block14;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block13;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
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
    assert {:sourceloc "Safe.java", 12, -1, -1, -1} true;
    $z2 := fixed.$bitAnd(z0, z1);
    assert {:sourceloc "Safe.java", 12, -1, -1, -1} true;
    $return := $z2;
    goto block16;

  block16:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
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
    assert {:sourceloc "Safe.java", 16, -1, -1, -1} true;
    $z2 := fixed.$bitOr(z0, z1);
    assert {:sourceloc "Safe.java", 16, -1, -1, -1} true;
    $return := $z2;
    goto block17;

  block17:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b3: int;
  var l0: int;
  var z0: int;
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
    goto block18;

  block18:
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
    goto block19;

  block19:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    $return := z0;
    goto block20;

  block20:
    return;

  anon8_Then:
    assume {:partition} $b3 > 0;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block19;

  anon7_Then:
    assume {:partition} $b2 <= 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    goto block18;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b3: int;
  var z0: int;
  var $b2: int;
  var l0: int;
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
    goto block21;

  block21:
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
    goto block22;

  block22:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    $return := z0;
    goto block23;

  block23:
    return;

  anon8_Then:
    assume {:partition} $b3 < 0;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;

  anon7_Then:
    assume {:partition} $b2 >= 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block21;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var l0: int;
  var l1: int;
  var z0: int;
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
    goto block24;

  block24:
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
    goto block25;

  block25:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    $return := z0;
    goto block26;

  block26:
    return;

  anon8_Then:
    assume {:partition} $b3 >= 0;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block25;

  anon7_Then:
    assume {:partition} $b2 < 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block24;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l1: int;
  var z0: int;
  var $b3: int;
  var $b2: int;
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
    goto block27;

  block27:
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
    goto block28;

  block28:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    $return := z0;
    goto block29;

  block29:
    return;

  anon8_Then:
    assume {:partition} $b3 <= 0;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block28;

  anon7_Then:
    assume {:partition} $b2 > 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block27;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b3: int;
  var $b2: int;
  var l1: int;
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
    goto block30;

  block30:
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
    goto block31;

  block31:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    $return := z0;
    goto block32;

  block32:
    return;

  anon8_Then:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block31;

  anon7_Then:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto block30;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var z0: int;
  var l0: int;
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
    goto block33;

  block33:
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
    goto block34;

  block34:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    $return := z0;
    goto block35;

  block35:
    return;

  anon8_Then:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto block34;

  anon7_Then:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block33;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b1: int;
  var z0: int;
  var $b0: int;
  var d1: int;
  var d0: int;

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
    goto block36;

  block36:
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
    goto block37;

  block37:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    $return := z0;
    goto block38;

  block38:
    return;

  anon8_Then:
    assume {:partition} $b1 > 0;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "thenblock"} true;
    goto block37;

  anon7_Then:
    assume {:partition} $b0 <= 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "thenblock"} true;
    goto block36;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b0: int;
  var d0: int;
  var $b1: int;
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
    goto block39;

  block39:
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
    goto block40;

  block40:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    $return := z0;
    goto block41;

  block41:
    return;

  anon8_Then:
    assume {:partition} $b1 < 0;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block40;

  anon7_Then:
    assume {:partition} $b0 >= 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block39;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var d1: int;
  var $b0: int;
  var $b1: int;
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
    goto block42;

  block42:
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
    goto block43;

  block43:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    $return := z0;
    goto block44;

  block44:
    return;

  anon8_Then:
    assume {:partition} $b1 >= 0;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block43;

  anon7_Then:
    assume {:partition} $b0 < 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block42;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b1: int;
  var d1: int;
  var $b0: int;
  var z0: int;
  var d0: int;

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
    goto block45;

  block45:
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
    goto block46;

  block46:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    $return := z0;
    goto block47;

  block47:
    return;

  anon8_Then:
    assume {:partition} $b1 <= 0;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "thenblock"} true;
    goto block46;

  anon7_Then:
    assume {:partition} $b0 > 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block45;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var $b1: int;
  var $b0: int;
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
    goto block48;

  block48:
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
    goto block49;

  block49:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    $return := z0;
    goto block50;

  block50:
    return;

  anon8_Then:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "thenblock"} true;
    goto block49;

  anon7_Then:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "thenblock"} true;
    goto block48;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b0: int;
  var d1: int;
  var $b1: int;
  var d0: int;

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
    goto block51;

  block51:
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
    goto block52;

  block52:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    $return := z0;
    goto block53;

  block53:
    return;

  anon8_Then:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "thenblock"} true;
    goto block52;

  anon7_Then:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "thenblock"} true;
    goto block51;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
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
    goto block54;

  block54:
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 0;
    goto block55;

  block55:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    $return := z0;
    goto block56;

  block56:
    return;

  anon8_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block55;

  anon7_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block54;
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
    assume fixed.$heap[$in_parameter__0, fixed.$type] <: fixed.java.lang.Object;
    assume fixed.$heap[$in_parameter__1, fixed.$type] <: fixed.java.lang.Object;
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
    goto block57;

  block57:
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 0;
    goto block58;

  block58:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    $return := z0;
    goto block59;

  block59:
    return;

  anon8_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block58;

  anon7_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block57;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var z0: int;
  var r2: ref;
  var r1: ref;
  var r0: ref;

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
    goto block60;

  block60:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r1;
    goto block61;

  block61:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    $return := r2;
    goto block62;

  block62:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block61;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block60;
}



implementation fixed.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := fixed.$null;
    return;
}



implementation fixed.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_1: ref, 
    in_z4: int, 
    in_$r15: ref, 
    in_$i1: int, 
    in_$l5: int, 
    in_$fakelocal_7: ref, 
    in_z3: int, 
    in_$r12: ref, 
    in_$fakelocal_3: ref, 
    in_$r16: ref, 
    in_r0: ref, 
    in_$r18: ref, 
    in_$b2: int, 
    in_$b3: int, 
    in_$r19: ref, 
    in_$fakelocal_5: ref, 
    in_$fakelocal_2: ref, 
    in_i6: int, 
    in_$l4: int, 
    in_r1: ref, 
    in_$fakelocal_6: ref, 
    in_$r17: ref, 
    in_z0: int, 
    in_$r13: ref, 
    in_$r11: ref, 
    in_$fakelocal_4: ref, 
    in_$fakelocal_0: ref, 
    in_$r20: ref, 
    in_$i0: int, 
    in_$r14: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_1: ref, 
    out_z4: int, 
    out_$r15: ref, 
    out_$i1: int, 
    out_$l5: int, 
    out_$fakelocal_7: ref, 
    out_z3: int, 
    out_$r12: ref, 
    out_$fakelocal_3: ref, 
    out_$r16: ref, 
    out_$r18: ref, 
    out_$b2: int, 
    out_$b3: int, 
    out_$r19: ref, 
    out_$fakelocal_5: ref, 
    out_$fakelocal_2: ref, 
    out_i6: int, 
    out_$l4: int, 
    out_$fakelocal_6: ref, 
    out_$r17: ref, 
    out_z0: int, 
    out_$r13: ref, 
    out_$r11: ref, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_0: ref, 
    out_$r20: ref, 
    out_$i0: int, 
    out_$r14: ref)
{
  var inline$java.lang.Boolean$booleanValue$$0$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$0$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$0$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$0$$return: int;
  var inline$java.lang.Boolean$booleanValue$$0$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$1$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$1$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$1$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$1$$return: int;
  var inline$java.lang.Boolean$booleanValue$$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$1$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$1$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$2$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$3$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$3$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$4$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$4$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap: $heap_type;
  var inline$java.lang.Boolean$booleanValue$$2$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$2$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$2$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$2$$return: int;
  var inline$java.lang.Boolean$booleanValue$$2$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$3$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$3$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$3$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$3$$return: int;
  var inline$java.lang.Boolean$booleanValue$$3$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$5$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$5$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$6$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$6$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$7$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$7$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$8$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$8$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$9$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$9$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception: ref;

  entry:
    out_$return, out_$exception, out_$fakelocal_1, out_z4, out_$r15, out_$i1, out_$l5, out_$fakelocal_7, out_z3, out_$r12, out_$fakelocal_3, out_$r16, out_$r18, out_$b2, out_$b3, out_$r19, out_$fakelocal_5, out_$fakelocal_2, out_i6, out_$l4, out_$fakelocal_6, out_$r17, out_z0, out_$r13, out_$r11, out_$fakelocal_4, out_$fakelocal_0, out_$r20, out_$i0, out_$r14 := in_$return, in_$exception, in_$fakelocal_1, in_z4, in_$r15, in_$i1, in_$l5, in_$fakelocal_7, in_z3, in_$r12, in_$fakelocal_3, in_$r16, in_$r18, in_$b2, in_$b3, in_$r19, in_$fakelocal_5, in_$fakelocal_2, in_i6, in_$l4, in_$fakelocal_6, in_$r17, in_z0, in_$r13, in_$r11, in_$fakelocal_4, in_$fakelocal_0, in_$r20, in_$i0, in_$r14;
    goto block6;

  block6:
    assert {:sourceloc "Login.java", 16, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} in_r1 == fixed.$null;
    call out_$fakelocal_0 := fixed.$new(fixed.java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_0;
    out_$return, out_$exception, out_$fakelocal_1, out_z4, out_$r15, out_$i1, out_$l5, out_$fakelocal_7, out_z3, out_$r12, out_$fakelocal_3, out_$r16, out_$r18, out_$b2, out_$b3, out_$r19, out_$fakelocal_5, out_$fakelocal_2, out_i6, out_$l4, out_$fakelocal_6, out_$r17, out_z0, out_$r13, out_$r11, out_$fakelocal_4, out_$fakelocal_0, out_$r20, out_$i0, out_$r14 := in_$return, in_$exception, in_$fakelocal_1, in_z4, in_$r15, in_$i1, in_$l5, in_$fakelocal_7, in_z3, in_$r12, in_$fakelocal_3, in_$r16, in_$r18, in_$b2, in_$b3, in_$r19, in_$fakelocal_5, in_$fakelocal_2, in_i6, in_$l4, in_$fakelocal_6, in_$r17, in_z0, in_$r13, in_$r11, in_$fakelocal_4, in_$fakelocal_0, in_$r20, in_$i0, in_$r14;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  block9:
    assert {:sourceloc "Login.java", 16, -1, -1, -1} true;
    out_i6 := out_i6 + 1;
    assert {:sourceloc "Login.java", 16, -1, -1, -1} true;
    goto block9_dummy;

  anon33:
    goto inline$java.lang.Boolean$booleanValue$$0$Entry;

  inline$java.lang.Boolean$booleanValue$$0$Entry:
    inline$java.lang.Boolean$booleanValue$$0$$this := out_$r20;
    havoc inline$java.lang.Boolean$booleanValue$$0$$z0, inline$java.lang.Boolean$booleanValue$$0$r0, inline$java.lang.Boolean$booleanValue$$0$$return, inline$java.lang.Boolean$booleanValue$$0$$exception;
    goto inline$java.lang.Boolean$booleanValue$$0$anon0;

  inline$java.lang.Boolean$booleanValue$$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$0$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$0$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$0$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$0$r0 := inline$java.lang.Boolean$booleanValue$$0$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$0$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$0$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$0$$return := inline$java.lang.Boolean$booleanValue$$0$$z0;
    goto inline$java.lang.Boolean$booleanValue$$0$block3;

  inline$java.lang.Boolean$booleanValue$$0$block3:
    goto inline$java.lang.Boolean$booleanValue$$0$Return;

  inline$java.lang.Boolean$booleanValue$$0$Return:
    out_z4 := inline$java.lang.Boolean$booleanValue$$0$$return;
    out_$exception := inline$java.lang.Boolean$booleanValue$$0$$exception;
    goto anon33$1;

  anon33$1:
    assert {:sourceloc "Login.java", 26, -1, -1, -1} true;
    goto block9;

  anon56_Then:
    assume {:partition} out_$r20 != fixed.$null;
    out_$exception := out_$exception;
    goto anon33;

  anon30:
    out_$r20 := out_$r19;
    assert {:sourceloc "Login.java", 23, -1, -1, -1} true;
    goto anon56_Then, anon56_Else;

  anon56_Else:
    assume {:partition} out_$r20 == fixed.$null;
    call out_$fakelocal_7 := fixed.$new(fixed.java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_7;
    out_$return, out_$exception, out_$fakelocal_1, out_z4, out_$r15, out_$i1, out_$l5, out_$fakelocal_7, out_z3, out_$r12, out_$fakelocal_3, out_$r16, out_$r18, out_$b2, out_$b3, out_$r19, out_$fakelocal_5, out_$fakelocal_2, out_i6, out_$l4, out_$fakelocal_6, out_$r17, out_z0, out_$r13, out_$r11, out_$fakelocal_4, out_$fakelocal_0, out_$r20, out_$i0, out_$r14 := in_$return, in_$exception, in_$fakelocal_1, in_z4, in_$r15, in_$i1, in_$l5, in_$fakelocal_7, in_z3, in_$r12, in_$fakelocal_3, in_$r16, in_$r18, in_$b2, in_$b3, in_$r19, in_$fakelocal_5, in_$fakelocal_2, in_i6, in_$l4, in_$fakelocal_6, in_$r17, in_z0, in_$r13, in_$r11, in_$fakelocal_4, in_$fakelocal_0, in_$r20, in_$i0, in_$r14;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon55_Then:
    assume {:partition} fixed.$heap[out_$r19, fixed.$type] <: fixed.java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon30;

  anon27:
    goto inline$java.lang.Boolean$booleanValue$$1$Entry;

  inline$java.lang.Boolean$booleanValue$$1$Entry:
    inline$java.lang.Boolean$booleanValue$$1$$this := out_$r16;
    havoc inline$java.lang.Boolean$booleanValue$$1$$z0, inline$java.lang.Boolean$booleanValue$$1$r0, inline$java.lang.Boolean$booleanValue$$1$$return, inline$java.lang.Boolean$booleanValue$$1$$exception;
    goto inline$java.lang.Boolean$booleanValue$$1$anon0;

  inline$java.lang.Boolean$booleanValue$$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$1$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$1$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$1$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$1$r0 := inline$java.lang.Boolean$booleanValue$$1$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$1$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$1$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$1$$return := inline$java.lang.Boolean$booleanValue$$1$$z0;
    goto inline$java.lang.Boolean$booleanValue$$1$block3;

  inline$java.lang.Boolean$booleanValue$$1$block3:
    goto inline$java.lang.Boolean$booleanValue$$1$Return;

  inline$java.lang.Boolean$booleanValue$$1$Return:
    out_z3 := inline$java.lang.Boolean$booleanValue$$1$$return;
    out_$exception := inline$java.lang.Boolean$booleanValue$$1$$exception;
    goto anon27$1;

  anon27$1:
    assert {:sourceloc "Login.java", 23, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$0$Entry;

  inline$java.lang.Boolean$valueOf$boolean$0$Entry:
    inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$0$$r0, inline$java.lang.Boolean$valueOf$boolean$0$z0, inline$java.lang.Boolean$valueOf$boolean$0$$return, inline$java.lang.Boolean$valueOf$boolean$0$$exception;
    inline$java.lang.Boolean$valueOf$boolean$0$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$0$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$0$anon0;

  inline$java.lang.Boolean$valueOf$boolean$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$0$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$0$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$0$z0 := inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$0$$r0 := inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this := inline$java.lang.Boolean$valueOf$boolean$0$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$0$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
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
    inline$java.lang.Boolean$valueOf$boolean$0$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$0$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$0$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$0$$return := inline$java.lang.Boolean$valueOf$boolean$0$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$0$block2;

  inline$java.lang.Boolean$valueOf$boolean$0$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$0$Return;

  inline$java.lang.Boolean$valueOf$boolean$0$Return:
    out_$r17 := inline$java.lang.Boolean$valueOf$boolean$0$$return;
    out_$exception := inline$java.lang.Boolean$valueOf$boolean$0$$exception;
    goto anon27$2;

  anon27$2:
    assert {:sourceloc "Login.java", 23, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$1$Entry;

  inline$java.lang.Boolean$valueOf$boolean$1$Entry:
    inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0 := out_z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$1$$r0, inline$java.lang.Boolean$valueOf$boolean$1$z0, inline$java.lang.Boolean$valueOf$boolean$1$$return, inline$java.lang.Boolean$valueOf$boolean$1$$exception;
    inline$java.lang.Boolean$valueOf$boolean$1$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$1$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$1$anon0;

  inline$java.lang.Boolean$valueOf$boolean$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$1$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$1$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$1$z0 := inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$1$$r0 := inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this := inline$java.lang.Boolean$valueOf$boolean$1$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$1$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$1$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$1$Entry;

  inline$java.lang.Object$$la$init$ra$$$1$Entry:
    inline$java.lang.Object$$la$init$ra$$$1$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$1$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$1$anon0;

  inline$java.lang.Object$$la$init$ra$$$1$anon0:
    inline$java.lang.Object$$la$init$ra$$$1$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$1$Return;

  inline$java.lang.Object$$la$init$ra$$$1$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception := inline$java.lang.Object$$la$init$ra$$$1$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$Return:
    inline$java.lang.Boolean$valueOf$boolean$1$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$1$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$1$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$1$$return := inline$java.lang.Boolean$valueOf$boolean$1$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$1$block2;

  inline$java.lang.Boolean$valueOf$boolean$1$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$1$Return;

  inline$java.lang.Boolean$valueOf$boolean$1$Return:
    out_$r18 := inline$java.lang.Boolean$valueOf$boolean$1$$return;
    out_$exception := inline$java.lang.Boolean$valueOf$boolean$1$$exception;
    goto anon27$3;

  anon27$3:
    assert {:sourceloc "Login.java", 23, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0 := out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1 := out_$r17;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2 := out_$r18;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block60:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block61:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block62;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block62:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return:
    out_$r19 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return;
    out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto anon27$4;

  anon27$4:
    assert {:sourceloc "Login.java", 23, -1, -1, -1} true;
    goto anon55_Then, anon55_Else;

  anon55_Else:
    assume {:partition} !(fixed.$heap[out_$r19, fixed.$type] <: fixed.java.lang.Boolean);
    call out_$fakelocal_6 := fixed.$new(fixed.java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_6;
    out_$return, out_$exception, out_$fakelocal_1, out_z4, out_$r15, out_$i1, out_$l5, out_$fakelocal_7, out_z3, out_$r12, out_$fakelocal_3, out_$r16, out_$r18, out_$b2, out_$b3, out_$r19, out_$fakelocal_5, out_$fakelocal_2, out_i6, out_$l4, out_$fakelocal_6, out_$r17, out_z0, out_$r13, out_$r11, out_$fakelocal_4, out_$fakelocal_0, out_$r20, out_$i0, out_$r14 := in_$return, in_$exception, in_$fakelocal_1, in_z4, in_$r15, in_$i1, in_$l5, in_$fakelocal_7, in_z3, in_$r12, in_$fakelocal_3, in_$r16, in_$r18, in_$b2, in_$b3, in_$r19, in_$fakelocal_5, in_$fakelocal_2, in_i6, in_$l4, in_$fakelocal_6, in_$r17, in_z0, in_$r13, in_$r11, in_$fakelocal_4, in_$fakelocal_0, in_$r20, in_$i0, in_$r14;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon54_Then:
    assume {:partition} out_$r16 != fixed.$null;
    out_$exception := out_$exception;
    goto anon27;

  anon24:
    out_$r16 := out_$r15;
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto anon54_Then, anon54_Else;

  anon54_Else:
    assume {:partition} out_$r16 == fixed.$null;
    call out_$fakelocal_5 := fixed.$new(fixed.java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$fakelocal_1, out_z4, out_$r15, out_$i1, out_$l5, out_$fakelocal_7, out_z3, out_$r12, out_$fakelocal_3, out_$r16, out_$r18, out_$b2, out_$b3, out_$r19, out_$fakelocal_5, out_$fakelocal_2, out_i6, out_$l4, out_$fakelocal_6, out_$r17, out_z0, out_$r13, out_$r11, out_$fakelocal_4, out_$fakelocal_0, out_$r20, out_$i0, out_$r14 := in_$return, in_$exception, in_$fakelocal_1, in_z4, in_$r15, in_$i1, in_$l5, in_$fakelocal_7, in_z3, in_$r12, in_$fakelocal_3, in_$r16, in_$r18, in_$b2, in_$b3, in_$r19, in_$fakelocal_5, in_$fakelocal_2, in_i6, in_$l4, in_$fakelocal_6, in_$r17, in_z0, in_$r13, in_$r11, in_$fakelocal_4, in_$fakelocal_0, in_$r20, in_$i0, in_$r14;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon53_Then:
    assume {:partition} fixed.$heap[out_$r15, fixed.$type] <: fixed.java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon24;

  anon21:
    out_$b3 := fixed.$intArrHeap[in_r0][out_i6];
    assert {:sourceloc "Login.java", 20, -1, -1, -1} true;
    out_$l4 := out_$b3;
    assert {:sourceloc "Login.java", 20, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0 := out_$l5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1 := out_$l4;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1;
    assert {:sourceloc "Safe.java", 55, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0 := 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 != 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon3:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block33;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block33:
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 == 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon6:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block34;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block34:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block35;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block35:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block34;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block33;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Return:
    out_z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return;
    out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception;
    goto anon21$1;

  anon21$1:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$2$Entry;

  inline$java.lang.Boolean$valueOf$boolean$2$Entry:
    inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0 := out_z3;
    havoc inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$2$$r0, inline$java.lang.Boolean$valueOf$boolean$2$z0, inline$java.lang.Boolean$valueOf$boolean$2$$return, inline$java.lang.Boolean$valueOf$boolean$2$$exception;
    inline$java.lang.Boolean$valueOf$boolean$2$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$2$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$2$anon0;

  inline$java.lang.Boolean$valueOf$boolean$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$2$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$2$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$2$z0 := inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$2$$r0 := inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this := inline$java.lang.Boolean$valueOf$boolean$2$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$2$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$2$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$2$Entry;

  inline$java.lang.Object$$la$init$ra$$$2$Entry:
    inline$java.lang.Object$$la$init$ra$$$2$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$2$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$2$anon0;

  inline$java.lang.Object$$la$init$ra$$$2$anon0:
    inline$java.lang.Object$$la$init$ra$$$2$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$2$Return;

  inline$java.lang.Object$$la$init$ra$$$2$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception := inline$java.lang.Object$$la$init$ra$$$2$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$Return:
    inline$java.lang.Boolean$valueOf$boolean$2$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$2$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$2$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$2$$return := inline$java.lang.Boolean$valueOf$boolean$2$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$2$block2;

  inline$java.lang.Boolean$valueOf$boolean$2$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$2$Return;

  inline$java.lang.Boolean$valueOf$boolean$2$Return:
    out_$r11 := inline$java.lang.Boolean$valueOf$boolean$2$$return;
    out_$exception := inline$java.lang.Boolean$valueOf$boolean$2$$exception;
    goto anon21$2;

  anon21$2:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$3$Entry;

  inline$java.lang.Boolean$valueOf$boolean$3$Entry:
    inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0 := 0;
    havoc inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$3$$r0, inline$java.lang.Boolean$valueOf$boolean$3$z0, inline$java.lang.Boolean$valueOf$boolean$3$$return, inline$java.lang.Boolean$valueOf$boolean$3$$exception;
    inline$java.lang.Boolean$valueOf$boolean$3$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$3$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$3$anon0;

  inline$java.lang.Boolean$valueOf$boolean$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$3$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$3$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$3$z0 := inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$3$$r0 := inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this := inline$java.lang.Boolean$valueOf$boolean$3$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$3$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$3$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$3$Entry;

  inline$java.lang.Object$$la$init$ra$$$3$Entry:
    inline$java.lang.Object$$la$init$ra$$$3$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$3$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$3$anon0;

  inline$java.lang.Object$$la$init$ra$$$3$anon0:
    inline$java.lang.Object$$la$init$ra$$$3$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$3$Return;

  inline$java.lang.Object$$la$init$ra$$$3$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception := inline$java.lang.Object$$la$init$ra$$$3$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$Return:
    inline$java.lang.Boolean$valueOf$boolean$3$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$3$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$3$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$3$$return := inline$java.lang.Boolean$valueOf$boolean$3$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$3$block2;

  inline$java.lang.Boolean$valueOf$boolean$3$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$3$Return;

  inline$java.lang.Boolean$valueOf$boolean$3$Return:
    out_$r12 := inline$java.lang.Boolean$valueOf$boolean$3$$return;
    out_$exception := inline$java.lang.Boolean$valueOf$boolean$3$$exception;
    goto anon21$3;

  anon21$3:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0 := out_z4;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1 := out_$r11;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2 := out_$r12;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block60:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block61:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block62;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block62:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return:
    out_$r13 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return;
    out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto anon21$4;

  anon21$4:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$4$Entry;

  inline$java.lang.Boolean$valueOf$boolean$4$Entry:
    inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0 := out_z3;
    havoc inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$4$$r0, inline$java.lang.Boolean$valueOf$boolean$4$z0, inline$java.lang.Boolean$valueOf$boolean$4$$return, inline$java.lang.Boolean$valueOf$boolean$4$$exception;
    inline$java.lang.Boolean$valueOf$boolean$4$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$4$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$4$anon0;

  inline$java.lang.Boolean$valueOf$boolean$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$4$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$4$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$4$z0 := inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$4$$r0 := inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this := inline$java.lang.Boolean$valueOf$boolean$4$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$4$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$4$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$4$Entry;

  inline$java.lang.Object$$la$init$ra$$$4$Entry:
    inline$java.lang.Object$$la$init$ra$$$4$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$4$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$4$anon0;

  inline$java.lang.Object$$la$init$ra$$$4$anon0:
    inline$java.lang.Object$$la$init$ra$$$4$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$4$Return;

  inline$java.lang.Object$$la$init$ra$$$4$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception := inline$java.lang.Object$$la$init$ra$$$4$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$Return:
    inline$java.lang.Boolean$valueOf$boolean$4$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$4$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$4$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$4$$return := inline$java.lang.Boolean$valueOf$boolean$4$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$4$block2;

  inline$java.lang.Boolean$valueOf$boolean$4$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$4$Return;

  inline$java.lang.Boolean$valueOf$boolean$4$Return:
    out_$r14 := inline$java.lang.Boolean$valueOf$boolean$4$$return;
    out_$exception := inline$java.lang.Boolean$valueOf$boolean$4$$exception;
    goto anon21$5;

  anon21$5:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0 := out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1 := out_$r13;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2 := out_$r14;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1, fixed.$type]
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block60:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block61:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block62;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block62:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Return:
    out_$r15 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return;
    out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception;
    goto anon21$6;

  anon21$6:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} !(fixed.$heap[out_$r15, fixed.$type] <: fixed.java.lang.Boolean);
    call out_$fakelocal_4 := fixed.$new(fixed.java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$fakelocal_1, out_z4, out_$r15, out_$i1, out_$l5, out_$fakelocal_7, out_z3, out_$r12, out_$fakelocal_3, out_$r16, out_$r18, out_$b2, out_$b3, out_$r19, out_$fakelocal_5, out_$fakelocal_2, out_i6, out_$l4, out_$fakelocal_6, out_$r17, out_z0, out_$r13, out_$r11, out_$fakelocal_4, out_$fakelocal_0, out_$r20, out_$i0, out_$r14 := in_$return, in_$exception, in_$fakelocal_1, in_z4, in_$r15, in_$i1, in_$l5, in_$fakelocal_7, in_z3, in_$r12, in_$fakelocal_3, in_$r16, in_$r18, in_$b2, in_$b3, in_$r19, in_$fakelocal_5, in_$fakelocal_2, in_i6, in_$l4, in_$fakelocal_6, in_$r17, in_z0, in_$r13, in_$r11, in_$fakelocal_4, in_$fakelocal_0, in_$r20, in_$i0, in_$r14;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon52_Then:
    assume {:partition} out_i6 < fixed.$arrSizeHeap[in_r0] && out_i6 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    out_$b2 := fixed.$intArrHeap[in_r1][out_i6];
    assert {:sourceloc "Login.java", 20, -1, -1, -1} true;
    out_$l5 := out_$b2;
    assert {:sourceloc "Login.java", 20, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} !(out_i6 < fixed.$arrSizeHeap[in_r0] && out_i6 >= 0);
    call out_$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$fakelocal_1, out_z4, out_$r15, out_$i1, out_$l5, out_$fakelocal_7, out_z3, out_$r12, out_$fakelocal_3, out_$r16, out_$r18, out_$b2, out_$b3, out_$r19, out_$fakelocal_5, out_$fakelocal_2, out_i6, out_$l4, out_$fakelocal_6, out_$r17, out_z0, out_$r13, out_$r11, out_$fakelocal_4, out_$fakelocal_0, out_$r20, out_$i0, out_$r14 := in_$return, in_$exception, in_$fakelocal_1, in_z4, in_$r15, in_$i1, in_$l5, in_$fakelocal_7, in_z3, in_$r12, in_$fakelocal_3, in_$r16, in_$r18, in_$b2, in_$b3, in_$r19, in_$fakelocal_5, in_$fakelocal_2, in_i6, in_$l4, in_$fakelocal_6, in_$r17, in_z0, in_$r13, in_$r11, in_$fakelocal_4, in_$fakelocal_0, in_$r20, in_$i0, in_$r14;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon51_Then:
    assume {:partition} out_i6 < fixed.$arrSizeHeap[in_r1] && out_i6 >= 0;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    assert {:sourceloc "Login.java", 20, -1, -1, -1} true;
    goto anon51_Then, anon51_Else;

  anon51_Else:
    assume {:partition} !(out_i6 < fixed.$arrSizeHeap[in_r1] && out_i6 >= 0);
    call out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$fakelocal_1, out_z4, out_$r15, out_$i1, out_$l5, out_$fakelocal_7, out_z3, out_$r12, out_$fakelocal_3, out_$r16, out_$r18, out_$b2, out_$b3, out_$r19, out_$fakelocal_5, out_$fakelocal_2, out_i6, out_$l4, out_$fakelocal_6, out_$r17, out_z0, out_$r13, out_$r11, out_$fakelocal_4, out_$fakelocal_0, out_$r20, out_$i0, out_$r14 := in_$return, in_$exception, in_$fakelocal_1, in_z4, in_$r15, in_$i1, in_$l5, in_$fakelocal_7, in_z3, in_$r12, in_$fakelocal_3, in_$r16, in_$r18, in_$b2, in_$b3, in_$r19, in_$fakelocal_5, in_$fakelocal_2, in_i6, in_$l4, in_$fakelocal_6, in_$r17, in_z0, in_$r13, in_$r11, in_$fakelocal_4, in_$fakelocal_0, in_$r20, in_$i0, in_$r14;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon50_Else:
    assume {:partition} out_$i1 > out_i6;
    assert {:sourceloc "Login.java", 17, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon12:
    out_$i1 := fixed.$arrSizeHeap[in_r0];
    assert {:sourceloc "Login.java", 17, -1, -1, -1} true;
    goto anon50_Then, anon50_Else;

  anon50_Then:
    assume {:partition} out_i6 >= out_$i1;
    assert {:sourceloc "Login.java", 17, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_1, out_z4, out_$r15, out_$i1, out_$l5, out_$fakelocal_7, out_z3, out_$r12, out_$fakelocal_3, out_$r16, out_$r18, out_$b2, out_$b3, out_$r19, out_$fakelocal_5, out_$fakelocal_2, out_i6, out_$l4, out_$fakelocal_6, out_$r17, out_z0, out_$r13, out_$r11, out_$fakelocal_4, out_$fakelocal_0, out_$r20, out_$i0, out_$r14 := in_$return, in_$exception, in_$fakelocal_1, in_z4, in_$r15, in_$i1, in_$l5, in_$fakelocal_7, in_z3, in_$r12, in_$fakelocal_3, in_$r16, in_$r18, in_$b2, in_$b3, in_$r19, in_$fakelocal_5, in_$fakelocal_2, in_i6, in_$l4, in_$fakelocal_6, in_$r17, in_z0, in_$r13, in_$r11, in_$fakelocal_4, in_$fakelocal_0, in_$r20, in_$i0, in_$r14;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon49_Then:
    assume {:partition} in_r0 != fixed.$null;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    assert {:sourceloc "Login.java", 17, -1, -1, -1} true;
    goto anon49_Then, anon49_Else;

  anon49_Else:
    assume {:partition} in_r0 == fixed.$null;
    call out_$fakelocal_1 := fixed.$new(fixed.java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$fakelocal_1, out_z4, out_$r15, out_$i1, out_$l5, out_$fakelocal_7, out_z3, out_$r12, out_$fakelocal_3, out_$r16, out_$r18, out_$b2, out_$b3, out_$r19, out_$fakelocal_5, out_$fakelocal_2, out_i6, out_$l4, out_$fakelocal_6, out_$r17, out_z0, out_$r13, out_$r11, out_$fakelocal_4, out_$fakelocal_0, out_$r20, out_$i0, out_$r14 := in_$return, in_$exception, in_$fakelocal_1, in_z4, in_$r15, in_$i1, in_$l5, in_$fakelocal_7, in_z3, in_$r12, in_$fakelocal_3, in_$r16, in_$r18, in_$b2, in_$b3, in_$r19, in_$fakelocal_5, in_$fakelocal_2, in_i6, in_$l4, in_$fakelocal_6, in_$r17, in_z0, in_$r13, in_$r11, in_$fakelocal_4, in_$fakelocal_0, in_$r20, in_$i0, in_$r14;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon48_Else:
    assume {:partition} out_$i0 > out_i6;
    assert {:sourceloc "Login.java", 16, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon6:
    out_$i0 := fixed.$arrSizeHeap[in_r1];
    assert {:sourceloc "Login.java", 16, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Then:
    assume {:partition} out_i6 >= out_$i0;
    assert {:sourceloc "Login.java", 16, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_1, out_z4, out_$r15, out_$i1, out_$l5, out_$fakelocal_7, out_z3, out_$r12, out_$fakelocal_3, out_$r16, out_$r18, out_$b2, out_$b3, out_$r19, out_$fakelocal_5, out_$fakelocal_2, out_i6, out_$l4, out_$fakelocal_6, out_$r17, out_z0, out_$r13, out_$r11, out_$fakelocal_4, out_$fakelocal_0, out_$r20, out_$i0, out_$r14 := in_$return, in_$exception, in_$fakelocal_1, in_z4, in_$r15, in_$i1, in_$l5, in_$fakelocal_7, in_z3, in_$r12, in_$fakelocal_3, in_$r16, in_$r18, in_$b2, in_$b3, in_$r19, in_$fakelocal_5, in_$fakelocal_2, in_i6, in_$l4, in_$fakelocal_6, in_$r17, in_z0, in_$r13, in_$r11, in_$fakelocal_4, in_$fakelocal_0, in_$r20, in_$i0, in_$r14;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon47_Then:
    assume {:partition} in_r1 != fixed.$null;
    out_$exception := out_$exception;
    goto anon6;

  block9_dummy:
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Entry;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Entry:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return := out_$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception := out_$exception;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1 := out_$fakelocal_1;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4 := out_z4;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15 := out_$r15;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1 := out_$i1;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5 := out_$l5;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7 := out_$fakelocal_7;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3 := out_z3;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12 := out_$r12;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3 := out_$fakelocal_3;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16 := out_$r16;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0 := in_r0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18 := out_$r18;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2 := out_$b2;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3 := out_$b3;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19 := out_$r19;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5 := out_$fakelocal_5;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2 := out_$fakelocal_2;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6 := out_i6;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4 := out_$l4;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1 := in_r1;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6 := out_$fakelocal_6;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17 := out_$r17;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0 := out_z0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13 := out_$r13;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11 := out_$r11;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4 := out_$fakelocal_4;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0 := out_$fakelocal_0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20 := out_$r20;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0 := out_$i0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14 := out_$r14;
    havoc inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex := fixed.$objIndex;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap := fixed.$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$entry;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$entry:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block6;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block6:
    assert {:sourceloc "Login.java", 16, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon47_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon47_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon47_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1
   == fixed.$null;
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0 := fixed.$new(fixed.java.lang.NullPointerException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block9:
    assert {:sourceloc "Login.java", 16, -1, -1, -1} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
   + 1;
    assert {:sourceloc "Login.java", 16, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block9_dummy;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon33:
    goto inline$java.lang.Boolean$booleanValue$$2$Entry;

  inline$java.lang.Boolean$booleanValue$$2$Entry:
    inline$java.lang.Boolean$booleanValue$$2$$this := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20;
    havoc inline$java.lang.Boolean$booleanValue$$2$$z0, inline$java.lang.Boolean$booleanValue$$2$r0, inline$java.lang.Boolean$booleanValue$$2$$return, inline$java.lang.Boolean$booleanValue$$2$$exception;
    goto inline$java.lang.Boolean$booleanValue$$2$anon0;

  inline$java.lang.Boolean$booleanValue$$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$2$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$2$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$2$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$2$r0 := inline$java.lang.Boolean$booleanValue$$2$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$2$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$2$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$2$$return := inline$java.lang.Boolean$booleanValue$$2$$z0;
    goto inline$java.lang.Boolean$booleanValue$$2$block3;

  inline$java.lang.Boolean$booleanValue$$2$block3:
    goto inline$java.lang.Boolean$booleanValue$$2$Return;

  inline$java.lang.Boolean$booleanValue$$2$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4 := inline$java.lang.Boolean$booleanValue$$2$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$java.lang.Boolean$booleanValue$$2$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon33$1;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon33$1:
    assert {:sourceloc "Login.java", 26, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block9;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon56_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20
   != fixed.$null;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon33;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon30:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19;
    assert {:sourceloc "Login.java", 23, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon56_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon56_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon56_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20
   == fixed.$null;
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon55_Then:
    assume {:partition} fixed.$heap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon30;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27:
    goto inline$java.lang.Boolean$booleanValue$$3$Entry;

  inline$java.lang.Boolean$booleanValue$$3$Entry:
    inline$java.lang.Boolean$booleanValue$$3$$this := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16;
    havoc inline$java.lang.Boolean$booleanValue$$3$$z0, inline$java.lang.Boolean$booleanValue$$3$r0, inline$java.lang.Boolean$booleanValue$$3$$return, inline$java.lang.Boolean$booleanValue$$3$$exception;
    goto inline$java.lang.Boolean$booleanValue$$3$anon0;

  inline$java.lang.Boolean$booleanValue$$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$3$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$3$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$3$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$3$r0 := inline$java.lang.Boolean$booleanValue$$3$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$3$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$3$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$3$$return := inline$java.lang.Boolean$booleanValue$$3$$z0;
    goto inline$java.lang.Boolean$booleanValue$$3$block3;

  inline$java.lang.Boolean$booleanValue$$3$block3:
    goto inline$java.lang.Boolean$booleanValue$$3$Return;

  inline$java.lang.Boolean$booleanValue$$3$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3 := inline$java.lang.Boolean$booleanValue$$3$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$java.lang.Boolean$booleanValue$$3$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27$1;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27$1:
    assert {:sourceloc "Login.java", 23, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$5$Entry;

  inline$java.lang.Boolean$valueOf$boolean$5$Entry:
    inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$5$$r0, inline$java.lang.Boolean$valueOf$boolean$5$z0, inline$java.lang.Boolean$valueOf$boolean$5$$return, inline$java.lang.Boolean$valueOf$boolean$5$$exception;
    inline$java.lang.Boolean$valueOf$boolean$5$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$5$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$5$anon0;

  inline$java.lang.Boolean$valueOf$boolean$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$5$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$5$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$5$z0 := inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$5$$r0 := inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this := inline$java.lang.Boolean$valueOf$boolean$5$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$5$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$5$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$5$Entry;

  inline$java.lang.Object$$la$init$ra$$$5$Entry:
    inline$java.lang.Object$$la$init$ra$$$5$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$5$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$5$anon0;

  inline$java.lang.Object$$la$init$ra$$$5$anon0:
    inline$java.lang.Object$$la$init$ra$$$5$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$5$Return;

  inline$java.lang.Object$$la$init$ra$$$5$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception := inline$java.lang.Object$$la$init$ra$$$5$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$Return:
    inline$java.lang.Boolean$valueOf$boolean$5$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$5$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$5$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$5$$return := inline$java.lang.Boolean$valueOf$boolean$5$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$5$block2;

  inline$java.lang.Boolean$valueOf$boolean$5$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$5$Return;

  inline$java.lang.Boolean$valueOf$boolean$5$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17 := inline$java.lang.Boolean$valueOf$boolean$5$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$5$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27$2;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27$2:
    assert {:sourceloc "Login.java", 23, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$6$Entry;

  inline$java.lang.Boolean$valueOf$boolean$6$Entry:
    inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$6$$r0, inline$java.lang.Boolean$valueOf$boolean$6$z0, inline$java.lang.Boolean$valueOf$boolean$6$$return, inline$java.lang.Boolean$valueOf$boolean$6$$exception;
    inline$java.lang.Boolean$valueOf$boolean$6$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$6$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$6$anon0;

  inline$java.lang.Boolean$valueOf$boolean$6$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$6$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$6$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$6$z0 := inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$6$$r0 := inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this := inline$java.lang.Boolean$valueOf$boolean$6$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$6$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$6$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$6$Entry;

  inline$java.lang.Object$$la$init$ra$$$6$Entry:
    inline$java.lang.Object$$la$init$ra$$$6$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$6$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$6$anon0;

  inline$java.lang.Object$$la$init$ra$$$6$anon0:
    inline$java.lang.Object$$la$init$ra$$$6$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$6$Return;

  inline$java.lang.Object$$la$init$ra$$$6$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception := inline$java.lang.Object$$la$init$ra$$$6$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$Return:
    inline$java.lang.Boolean$valueOf$boolean$6$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$6$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$6$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$6$$return := inline$java.lang.Boolean$valueOf$boolean$6$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$6$block2;

  inline$java.lang.Boolean$valueOf$boolean$6$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$6$Return;

  inline$java.lang.Boolean$valueOf$boolean$6$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18 := inline$java.lang.Boolean$valueOf$boolean$6$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$6$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27$3;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27$3:
    assert {:sourceloc "Login.java", 23, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block60:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block61:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block62;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block62:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27$4;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27$4:
    assert {:sourceloc "Login.java", 23, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon55_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon55_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon55_Else:
    assume {:partition} !(fixed.$heap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon54_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16
   != fixed.$null;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon24:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15;
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon54_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon54_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon54_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16
   == fixed.$null;
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon53_Then:
    assume {:partition} fixed.$heap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon24;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3 := fixed.$intArrHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0][inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6];
    assert {:sourceloc "Login.java", 20, -1, -1, -1} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3;
    assert {:sourceloc "Login.java", 20, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__1;
    assert {:sourceloc "Safe.java", 55, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0 := 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1);
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2 != 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon3:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block33;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block33:
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1);
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3 == 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon6:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block34;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block34:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block35;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block35:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block34;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block33;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$1;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$1:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$7$Entry;

  inline$java.lang.Boolean$valueOf$boolean$7$Entry:
    inline$java.lang.Boolean$valueOf$boolean$7$$in_parameter__0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3;
    havoc inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$7$$r0, inline$java.lang.Boolean$valueOf$boolean$7$z0, inline$java.lang.Boolean$valueOf$boolean$7$$return, inline$java.lang.Boolean$valueOf$boolean$7$$exception;
    inline$java.lang.Boolean$valueOf$boolean$7$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$7$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$7$anon0;

  inline$java.lang.Boolean$valueOf$boolean$7$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$7$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$7$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$7$z0 := inline$java.lang.Boolean$valueOf$boolean$7$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$7$$r0 := inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this := inline$java.lang.Boolean$valueOf$boolean$7$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$7$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$7$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$7$Entry;

  inline$java.lang.Object$$la$init$ra$$$7$Entry:
    inline$java.lang.Object$$la$init$ra$$$7$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$7$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$7$anon0;

  inline$java.lang.Object$$la$init$ra$$$7$anon0:
    inline$java.lang.Object$$la$init$ra$$$7$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$7$Return;

  inline$java.lang.Object$$la$init$ra$$$7$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception := inline$java.lang.Object$$la$init$ra$$$7$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$Return:
    inline$java.lang.Boolean$valueOf$boolean$7$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$7$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$7$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$7$$return := inline$java.lang.Boolean$valueOf$boolean$7$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$7$block2;

  inline$java.lang.Boolean$valueOf$boolean$7$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$7$Return;

  inline$java.lang.Boolean$valueOf$boolean$7$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11 := inline$java.lang.Boolean$valueOf$boolean$7$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$7$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$2;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$2:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$8$Entry;

  inline$java.lang.Boolean$valueOf$boolean$8$Entry:
    inline$java.lang.Boolean$valueOf$boolean$8$$in_parameter__0 := 0;
    havoc inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$8$$r0, inline$java.lang.Boolean$valueOf$boolean$8$z0, inline$java.lang.Boolean$valueOf$boolean$8$$return, inline$java.lang.Boolean$valueOf$boolean$8$$exception;
    inline$java.lang.Boolean$valueOf$boolean$8$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$8$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$8$anon0;

  inline$java.lang.Boolean$valueOf$boolean$8$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$8$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$8$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$8$z0 := inline$java.lang.Boolean$valueOf$boolean$8$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$8$$r0 := inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this := inline$java.lang.Boolean$valueOf$boolean$8$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$8$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$8$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$8$Entry;

  inline$java.lang.Object$$la$init$ra$$$8$Entry:
    inline$java.lang.Object$$la$init$ra$$$8$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$8$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$8$anon0;

  inline$java.lang.Object$$la$init$ra$$$8$anon0:
    inline$java.lang.Object$$la$init$ra$$$8$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$8$Return;

  inline$java.lang.Object$$la$init$ra$$$8$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception := inline$java.lang.Object$$la$init$ra$$$8$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$Return:
    inline$java.lang.Boolean$valueOf$boolean$8$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$8$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$8$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$8$$return := inline$java.lang.Boolean$valueOf$boolean$8$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$8$block2;

  inline$java.lang.Boolean$valueOf$boolean$8$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$8$Return;

  inline$java.lang.Boolean$valueOf$boolean$8$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12 := inline$java.lang.Boolean$valueOf$boolean$8$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$8$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$3;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$3:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block60:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block61:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block62;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block62:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$4;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$4:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$9$Entry;

  inline$java.lang.Boolean$valueOf$boolean$9$Entry:
    inline$java.lang.Boolean$valueOf$boolean$9$$in_parameter__0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3;
    havoc inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$9$$r0, inline$java.lang.Boolean$valueOf$boolean$9$z0, inline$java.lang.Boolean$valueOf$boolean$9$$return, inline$java.lang.Boolean$valueOf$boolean$9$$exception;
    inline$java.lang.Boolean$valueOf$boolean$9$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$9$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$9$anon0;

  inline$java.lang.Boolean$valueOf$boolean$9$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$9$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$9$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$9$z0 := inline$java.lang.Boolean$valueOf$boolean$9$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$9$$r0 := inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this := inline$java.lang.Boolean$valueOf$boolean$9$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$9$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$9$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$9$Entry;

  inline$java.lang.Object$$la$init$ra$$$9$Entry:
    inline$java.lang.Object$$la$init$ra$$$9$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$9$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$9$anon0;

  inline$java.lang.Object$$la$init$ra$$$9$anon0:
    inline$java.lang.Object$$la$init$ra$$$9$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$9$Return;

  inline$java.lang.Object$$la$init$ra$$$9$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception := inline$java.lang.Object$$la$init$ra$$$9$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$block1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$block1:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$Return:
    inline$java.lang.Boolean$valueOf$boolean$9$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$9$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$9$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$9$$return := inline$java.lang.Boolean$valueOf$boolean$9$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$9$block2;

  inline$java.lang.Boolean$valueOf$boolean$9$block2:
    goto inline$java.lang.Boolean$valueOf$boolean$9$Return;

  inline$java.lang.Boolean$valueOf$boolean$9$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$java.lang.Boolean$valueOf$boolean$9$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$9$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$5;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$5:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block60:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block61:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block62;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block62:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block61;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Return:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$6;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21$6:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon53_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon53_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon53_Else:
    assume {:partition} !(fixed.$heap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon52_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
     < fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
     >= 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon18:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2 := fixed.$intArrHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1][inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6];
    assert {:sourceloc "Login.java", 20, -1, -1, -1} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2;
    assert {:sourceloc "Login.java", 20, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon52_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon52_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon52_Else:
    assume {:partition} !(inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
     < fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
     >= 0);
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon51_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
     < fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
     >= 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon18;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon15:
    assert {:sourceloc "Login.java", 20, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon51_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon51_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon51_Else:
    assume {:partition} !(inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
     < fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
     >= 0);
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon50_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1
   > inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6;
    assert {:sourceloc "Login.java", 17, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon15;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon12:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0];
    assert {:sourceloc "Login.java", 17, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon50_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon50_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon50_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
   >= inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1;
    assert {:sourceloc "Login.java", 17, -1, -1, -1} {:comment "thenblock"} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon49_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0
   != fixed.$null;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon12;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon9:
    assert {:sourceloc "Login.java", 17, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon49_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon49_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon49_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0
   == fixed.$null;
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.NullPointerException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon48_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0
   > inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6;
    assert {:sourceloc "Login.java", 16, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon9;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon6:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0 := fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1];
    assert {:sourceloc "Login.java", 16, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon48_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon48_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon48_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6
   >= inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0;
    assert {:sourceloc "Login.java", 16, -1, -1, -1} {:comment "thenblock"} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r15, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_7, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r12, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r16, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r18, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r19, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_5, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$l4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_6, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r17, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_z0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r13, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r11, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r20, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$r14;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon47_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1
   != fixed.$null;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon6;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block9_dummy:
    assume false;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$exit:
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return:
    out_$return := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return;
    out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    out_$fakelocal_1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1;
    out_z4 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z4;
    out_$r15 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r15;
    out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1;
    out_$l5 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l5;
    out_$fakelocal_7 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_7;
    out_z3 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z3;
    out_$r12 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r12;
    out_$fakelocal_3 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3;
    out_$r16 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r16;
    out_$r18 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r18;
    out_$b2 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2;
    out_$b3 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3;
    out_$r19 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r19;
    out_$fakelocal_5 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_5;
    out_$fakelocal_2 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2;
    out_i6 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i6;
    out_$l4 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$l4;
    out_$fakelocal_6 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_6;
    out_$r17 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r17;
    out_z0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_z0;
    out_$r13 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r13;
    out_$r11 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r11;
    out_$fakelocal_4 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_4;
    out_$fakelocal_0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0;
    out_$r20 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r20;
    out_$i0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0;
    out_$r14 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$r14;
    goto block9_dummy$1;

  block9_dummy$1:
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



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
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
  free ensures $return
   == _uf_fixed.java.lang.Boolean$booleanValue$_$return($this, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.boolean$java.lang.Boolean$value0));
  free ensures $exception
   == _uf_fixed.java.lang.Boolean$booleanValue$_$exception($this, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.boolean$java.lang.Boolean$value0));



procedure {:prefix "unsafe"} unsafe.Login$$la$init$ra$$($this: ref) returns ($exception: ref);
  free ensures $exception
   == _uf_fixed.Login$$la$init$ra$$_$exception($this, old(fixed.$heap), old(fixed.$arrSizeHeap), old(fixed.$stringSizeHeap));



procedure {:prefix "unsafe"} unsafe.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: int, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;
  free ensures $return
   == _uf_fixed.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_$return($in_parameter__0, 
    $in_parameter__1, 
    $in_parameter__2, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap), 
    old(fixed.boolean$java.lang.Boolean$value0));
  free ensures $exception
   == _uf_fixed.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_$exception($in_parameter__0, 
    $in_parameter__1, 
    $in_parameter__2, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap), 
    old(fixed.boolean$java.lang.Boolean$value0));
  free ensures fixed.$objIndex
   == _uf_fixed.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_fixed.$objIndex($in_parameter__0, 
    $in_parameter__1, 
    $in_parameter__2, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap), 
    old(fixed.boolean$java.lang.Boolean$value0));
  free ensures fixed.$heap
   == _uf_fixed.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_fixed.$heap($in_parameter__0, 
    $in_parameter__1, 
    $in_parameter__2, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap), 
    old(fixed.boolean$java.lang.Boolean$value0));



procedure {:inline 1} unsafe.Login$retrieve$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap, fixed.$arrSizeHeap, fixed.$intArrHeap;
  free ensures $return
   == _uf_fixed.Login$retrieve$java.lang.String_$return($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$intArrayType), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap));
  free ensures $exception
   == _uf_fixed.Login$retrieve$java.lang.String_$exception($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$intArrayType), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap));
  free ensures fixed.$objIndex
   == _uf_fixed.Login$retrieve$java.lang.String_fixed.$objIndex($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$intArrayType), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap));
  free ensures fixed.$heap
   == _uf_fixed.Login$retrieve$java.lang.String_fixed.$heap($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$intArrayType), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap));
  free ensures fixed.$arrSizeHeap
   == _uf_fixed.Login$retrieve$java.lang.String_fixed.$arrSizeHeap($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$intArrayType), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap));
  free ensures fixed.$intArrHeap
   == _uf_fixed.Login$retrieve$java.lang.String_fixed.$intArrHeap($in_parameter__0, 
    old(fixed.$heap), 
    old(fixed.$arrSizeHeap), 
    old(fixed.$stringSizeHeap), 
    old(fixed.$intArrayType), 
    old(fixed.$objIndex), 
    old(fixed.$intArrHeap));



procedure {:prefix "unsafe"} unsafe.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6(in_$return: int, 
    in_$exception: ref, 
    in_r0: ref, 
    in_$fakelocal_3: ref, 
    in_$b3: int, 
    in_r1: ref, 
    in_$b2: int, 
    in_$fakelocal_0: ref, 
    in_$fakelocal_1: ref, 
    in_$fakelocal_2: ref, 
    in_$i0: int, 
    in_i4: int, 
    in_$i1: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_3: ref, 
    out_$b3: int, 
    out_$b2: int, 
    out_$fakelocal_0: ref, 
    out_$fakelocal_1: ref, 
    out_$fakelocal_2: ref, 
    out_$i0: int, 
    out_i4: int, 
    out_$i1: int);
  modifies fixed.$objIndex, fixed.$heap;



implementation unsafe.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var r0: ref;
  var z0: int;
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



implementation unsafe.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var z0: int;
  var $fakelocal_0: ref;
  var $r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0: int;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
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



implementation unsafe.Login$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Login.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.Login;
    assume {:sourceloc "Login.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Login.java", 1, -1, -1, -1} true;
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
    assert {:sourceloc "Login.java", 1, -1, -1, -1} true;
    goto block4;

  block4:
    return;
}



implementation unsafe.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $fakelocal_3: ref;
  var $b3: int;
  var r2: ref;
  var r1: ref;
  var $b2: int;
  var $fakelocal_0: ref;
  var $fakelocal_1: ref;
  var $fakelocal_2: ref;
  var $i0: int;
  var i4: int;
  var $i1: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$in_parameter__2, fixed.$type] <: fixed.java.lang.String;
    $exception := fixed.$null;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__2;
    assert {:sourceloc "Login.java", 8, -1, -1, -1} true;
    goto anon25_Then, anon25_Else;

  anon25_Else:
    assume {:partition} r0 == fixed.$null;
    assert {:sourceloc "Login.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Login.java", 9, -1, -1, -1} true;
    $return := 0;
    goto block10;

  block10:
    return;

  anon25_Then:
    assume {:partition} r0 != fixed.$null;
    assert {:sourceloc "Login.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    goto block5;

  block5:
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    i4 := 0;
    goto block6;

  block6:
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Entry;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Entry:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return := $return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception := $exception;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0 := r0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3 := $fakelocal_3;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3 := $b3;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1 := r1;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2 := $b2;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0 := $fakelocal_0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1 := $fakelocal_1;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2 := $fakelocal_2;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0 := $i0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4 := i4;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1 := $i1;
    havoc inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex := fixed.$objIndex;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap := fixed.$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$entry;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$entry:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block6;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block6:
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon26_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon26_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon26_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1
   == fixed.$null;
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0 := fixed.$new(fixed.java.lang.NullPointerException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block9:
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
   + 1;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block9_dummy;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon32_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3
   == inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2;
    assert {:sourceloc "Login.java", 14, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block9;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2 := fixed.$intArrHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0][inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4];
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon32_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon32_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon32_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3
   != inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2;
    assert {:sourceloc "Login.java", 14, -1, -1, -1} {:comment "elseblock"} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon31_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     < fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     >= 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon18:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3 := fixed.$intArrHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1][inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4];
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon31_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon31_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon31_Else:
    assume {:partition} !(inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     < fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     >= 0);
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon30_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     < fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     >= 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon18;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon15:
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon30_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon30_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon30_Else:
    assume {:partition} !(inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     < fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     >= 0);
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon29_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1
   > inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4;
    assert {:sourceloc "Login.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon15;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon12:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0];
    assert {:sourceloc "Login.java", 13, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon29_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon29_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon29_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
   >= inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1;
    assert {:sourceloc "Login.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon28_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0
   != fixed.$null;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon12;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon9:
    assert {:sourceloc "Login.java", 13, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon28_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon28_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon28_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0
   == fixed.$null;
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.NullPointerException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0
   > inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon9;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon6:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0 := fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1];
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
   >= inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon26_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1
   != fixed.$null;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon6;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block9_dummy:
    assume false;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$exit:
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return:
    $return := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return;
    $exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    $fakelocal_3 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3;
    $b3 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3;
    $b2 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2;
    $fakelocal_0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0;
    $fakelocal_1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1;
    $fakelocal_2 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2;
    $i0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0;
    i4 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4;
    $i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1;
    goto block6$1;

  block6$1:
    goto block6_last;

  anon26_Else:
    assume {:partition} r1 == fixed.$null;
    call $fakelocal_0 := fixed.$new(fixed.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon26_Then:
    assume {:partition} r1 != fixed.$null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i0 := fixed.$arrSizeHeap[r1];
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} $i0 > i4;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "Login.java", 13, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} r0 == fixed.$null;
    call $fakelocal_1 := fixed.$new(fixed.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon28_Then:
    assume {:partition} r0 != fixed.$null;
    $exception := $exception;
    goto anon12;

  anon12:
    $i1 := fixed.$arrSizeHeap[r0];
    assert {:sourceloc "Login.java", 13, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} $i1 > i4;
    assert {:sourceloc "Login.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(i4 < fixed.$arrSizeHeap[r1] && i4 >= 0);
    call $fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon30_Then:
    assume {:partition} i4 < fixed.$arrSizeHeap[r1] && i4 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $b3 := fixed.$intArrHeap[r1][i4];
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(i4 < fixed.$arrSizeHeap[r0] && i4 >= 0);
    call $fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon31_Then:
    assume {:partition} i4 < fixed.$arrSizeHeap[r0] && i4 >= 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $b2 := fixed.$intArrHeap[r0][i4];
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} $b3 != $b2;
    assert {:sourceloc "Login.java", 14, -1, -1, -1} {:comment "elseblock"} true;
    goto anon24;

  anon24:
    assert {:sourceloc "Login.java", 15, -1, -1, -1} true;
    $return := 0;
    goto block10;

  anon32_Then:
    assume {:partition} $b3 == $b2;
    assert {:sourceloc "Login.java", 14, -1, -1, -1} {:comment "thenblock"} true;
    goto block9;

  block9:
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    i4 := i4 + 1;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto block9_dummy;

  anon29_Then:
    assume {:partition} i4 >= $i1;
    assert {:sourceloc "Login.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "Login.java", 18, -1, -1, -1} true;
    $return := 0;
    goto block10;

  anon27_Then:
    assume {:partition} i4 >= $i0;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  block7:
    assert {:sourceloc "Login.java", 22, -1, -1, -1} true;
    $return := 1;
    goto block10;

  block9_dummy:
    assume false;
    return;

  block6_last:
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;
}



implementation {:inline 1} unsafe.Login$retrieve$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r0: ref;
  var $fakelocal_1: ref;
  var $fakelocal_4: ref;
  var $fakelocal_3: ref;
  var r1: ref;
  var $fakelocal_2: ref;
  var $r2: ref;
  var $fakelocal_0: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$in_parameter__0, fixed.$type] <: fixed.java.lang.String;
    $exception := fixed.$null;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    call $fakelocal_0 := fixed.$new(fixed.$intArrayType);
    fixed.$arrSizeHeap := fixed.$arrSizeHeap[$fakelocal_0 := 4];
    $r2 := $fakelocal_0;
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(0 < fixed.$arrSizeHeap[$r2] && 0 >= 0);
    call $fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := fixed.$null;
    $exception := $fakelocal_1;
    return;

  anon13_Then:
    assume {:partition} 0 < fixed.$arrSizeHeap[$r2] && 0 >= 0;
    $exception := $exception;
    goto anon3;

  anon3:
    fixed.$intArrHeap := fixed.$intArrHeap[$r2 := fixed.$intArrHeap[$r2][0 := 10]];
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !(1 < fixed.$arrSizeHeap[$r2] && 1 >= 0);
    call $fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := fixed.$null;
    $exception := $fakelocal_2;
    return;

  anon14_Then:
    assume {:partition} 1 < fixed.$arrSizeHeap[$r2] && 1 >= 0;
    $exception := $exception;
    goto anon6;

  anon6:
    fixed.$intArrHeap := fixed.$intArrHeap[$r2 := fixed.$intArrHeap[$r2][1 := 3]];
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !(2 < fixed.$arrSizeHeap[$r2] && 2 >= 0);
    call $fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := fixed.$null;
    $exception := $fakelocal_3;
    return;

  anon15_Then:
    assume {:partition} 2 < fixed.$arrSizeHeap[$r2] && 2 >= 0;
    $exception := $exception;
    goto anon9;

  anon9:
    fixed.$intArrHeap := fixed.$intArrHeap[$r2 := fixed.$intArrHeap[$r2][2 := 15]];
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !(3 < fixed.$arrSizeHeap[$r2] && 3 >= 0);
    call $fakelocal_4 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := fixed.$null;
    $exception := $fakelocal_4;
    return;

  anon16_Then:
    assume {:partition} 3 < fixed.$arrSizeHeap[$r2] && 3 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[$r2 := fixed.$intArrHeap[$r2][3 := 1]];
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    r1 := $r2;
    assert {:sourceloc "Login.java", 54, -1, -1, -1} true;
    $return := r1;
    goto block11;

  block11:
    return;
}



implementation unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := fixed.$null;
    return;
}



implementation unsafe.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6(in_$return: int, 
    in_$exception: ref, 
    in_r0: ref, 
    in_$fakelocal_3: ref, 
    in_$b3: int, 
    in_r1: ref, 
    in_$b2: int, 
    in_$fakelocal_0: ref, 
    in_$fakelocal_1: ref, 
    in_$fakelocal_2: ref, 
    in_$i0: int, 
    in_i4: int, 
    in_$i1: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_3: ref, 
    out_$b3: int, 
    out_$b2: int, 
    out_$fakelocal_0: ref, 
    out_$fakelocal_1: ref, 
    out_$fakelocal_2: ref, 
    out_$i0: int, 
    out_i4: int, 
    out_$i1: int)
{
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2: ref;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex: int;
  var inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap: $heap_type;

  entry:
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    goto block6;

  block6:
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} in_r1 == fixed.$null;
    call out_$fakelocal_0 := fixed.$new(fixed.java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_0;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  block9:
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    out_i4 := out_i4 + 1;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto block9_dummy;

  anon32_Then:
    assume {:partition} out_$b3 == out_$b2;
    assert {:sourceloc "Login.java", 14, -1, -1, -1} {:comment "thenblock"} true;
    goto block9;

  anon21:
    out_$b2 := fixed.$intArrHeap[in_r0][out_i4];
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} out_$b3 != out_$b2;
    assert {:sourceloc "Login.java", 14, -1, -1, -1} {:comment "elseblock"} true;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon31_Then:
    assume {:partition} out_i4 < fixed.$arrSizeHeap[in_r0] && out_i4 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    out_$b3 := fixed.$intArrHeap[in_r1][out_i4];
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(out_i4 < fixed.$arrSizeHeap[in_r0] && out_i4 >= 0);
    call out_$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon30_Then:
    assume {:partition} out_i4 < fixed.$arrSizeHeap[in_r1] && out_i4 >= 0;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(out_i4 < fixed.$arrSizeHeap[in_r1] && out_i4 >= 0);
    call out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon29_Else:
    assume {:partition} out_$i1 > out_i4;
    assert {:sourceloc "Login.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon12:
    out_$i1 := fixed.$arrSizeHeap[in_r0];
    assert {:sourceloc "Login.java", 13, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Then:
    assume {:partition} out_i4 >= out_$i1;
    assert {:sourceloc "Login.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon28_Then:
    assume {:partition} in_r0 != fixed.$null;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    assert {:sourceloc "Login.java", 13, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} in_r0 == fixed.$null;
    call out_$fakelocal_1 := fixed.$new(fixed.java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon27_Else:
    assume {:partition} out_$i0 > out_i4;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon6:
    out_$i0 := fixed.$arrSizeHeap[in_r1];
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Then:
    assume {:partition} out_i4 >= out_$i0;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon26_Then:
    assume {:partition} in_r1 != fixed.$null;
    out_$exception := out_$exception;
    goto anon6;

  block9_dummy:
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Entry;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Entry:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return := out_$return;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception := out_$exception;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0 := in_r0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3 := out_$fakelocal_3;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3 := out_$b3;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1 := in_r1;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2 := out_$b2;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0 := out_$fakelocal_0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1 := out_$fakelocal_1;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2 := out_$fakelocal_2;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0 := out_$i0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4 := out_i4;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1 := out_$i1;
    havoc inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex := fixed.$objIndex;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap := fixed.$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$entry;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$entry:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block6;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block6:
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon26_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon26_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon26_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1
   == fixed.$null;
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0 := fixed.$new(fixed.java.lang.NullPointerException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block9:
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
   + 1;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block9_dummy;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon32_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3
   == inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2;
    assert {:sourceloc "Login.java", 14, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block9;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2 := fixed.$intArrHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0][inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4];
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon32_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon32_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon32_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3
   != inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2;
    assert {:sourceloc "Login.java", 14, -1, -1, -1} {:comment "elseblock"} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon31_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     < fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     >= 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon18:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3 := fixed.$intArrHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1][inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4];
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon31_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon31_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon31_Else:
    assume {:partition} !(inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     < fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     >= 0);
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon30_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     < fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     >= 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon18;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon15:
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon30_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon30_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon30_Else:
    assume {:partition} !(inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     < fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     >= 0);
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon29_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1
   > inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4;
    assert {:sourceloc "Login.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon15;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon12:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0];
    assert {:sourceloc "Login.java", 13, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon29_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon29_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon29_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
   >= inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1;
    assert {:sourceloc "Login.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon28_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0
   != fixed.$null;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon12;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon9:
    assert {:sourceloc "Login.java", 13, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon28_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon28_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon28_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0
   == fixed.$null;
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.NullPointerException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0
   > inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon9;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon6:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0 := fixed.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1];
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
   >= inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    fixed.$objIndex, fixed.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon26_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1
   != fixed.$null;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon6;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block9_dummy:
    assume false;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$exit:
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return:
    out_$return := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return;
    out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    out_$fakelocal_3 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3;
    out_$b3 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3;
    out_$b2 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2;
    out_$fakelocal_0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0;
    out_$fakelocal_1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1;
    out_$fakelocal_2 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2;
    out_$i0 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0;
    out_i4 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4;
    out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1;
    goto block9_dummy$1;

  block9_dummy$1:
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

function _uf_fixed.java.lang.Boolean$booleanValue$_$return(arg_0: ref, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: Field int)
   : int;

function _uf_fixed.java.lang.Boolean$booleanValue$_$exception(arg_0: ref, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: Field int)
   : ref;

function _uf_unsafe.java.lang.Boolean$booleanValue$_$return(arg_0: ref, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: Field int)
   : int;

function _uf_unsafe.java.lang.Boolean$booleanValue$_$exception(arg_0: ref, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: Field int)
   : ref;

function _uf_fixed.Login$$la$init$ra$$_$exception(arg_0: ref, arg_1: $heap_type, arg_2: [ref]int, arg_3: [ref]int) : ref;

function _uf_unsafe.Login$$la$init$ra$$_$exception(arg_0: ref, arg_1: $heap_type, arg_2: [ref]int, arg_3: [ref]int) : ref;

var Output_of_unsafe.Login$$la$init$ra$$_$exception: ref;

var Output_of_fixed.Login$$la$init$ra$$_$exception: ref;

function _uf_fixed.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_$return(arg_0: ref, 
    arg_1: ref, 
    arg_2: ref, 
    arg_3: $heap_type, 
    arg_4: [ref]int, 
    arg_5: [ref]int, 
    arg_6: int, 
    arg_7: intArrHeap_type, 
    arg_8: Field int)
   : int;

function _uf_fixed.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_$exception(arg_0: ref, 
    arg_1: ref, 
    arg_2: ref, 
    arg_3: $heap_type, 
    arg_4: [ref]int, 
    arg_5: [ref]int, 
    arg_6: int, 
    arg_7: intArrHeap_type, 
    arg_8: Field int)
   : ref;

function _uf_fixed.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_fixed.$objIndex(arg_0: ref, 
    arg_1: ref, 
    arg_2: ref, 
    arg_3: $heap_type, 
    arg_4: [ref]int, 
    arg_5: [ref]int, 
    arg_6: int, 
    arg_7: intArrHeap_type, 
    arg_8: Field int)
   : int;

function _uf_fixed.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_fixed.$heap(arg_0: ref, 
    arg_1: ref, 
    arg_2: ref, 
    arg_3: $heap_type, 
    arg_4: [ref]int, 
    arg_5: [ref]int, 
    arg_6: int, 
    arg_7: intArrHeap_type, 
    arg_8: Field int)
   : $heap_type;

function _uf_unsafe.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_$return(arg_0: ref, 
    arg_1: ref, 
    arg_2: ref, 
    arg_3: $heap_type, 
    arg_4: [ref]int, 
    arg_5: [ref]int, 
    arg_6: int, 
    arg_7: intArrHeap_type, 
    arg_8: Field int)
   : int;

function _uf_unsafe.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_$exception(arg_0: ref, 
    arg_1: ref, 
    arg_2: ref, 
    arg_3: $heap_type, 
    arg_4: [ref]int, 
    arg_5: [ref]int, 
    arg_6: int, 
    arg_7: intArrHeap_type, 
    arg_8: Field int)
   : ref;

function _uf_unsafe.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_fixed.$objIndex(arg_0: ref, 
    arg_1: ref, 
    arg_2: ref, 
    arg_3: $heap_type, 
    arg_4: [ref]int, 
    arg_5: [ref]int, 
    arg_6: int, 
    arg_7: intArrHeap_type, 
    arg_8: Field int)
   : int;

function _uf_unsafe.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_fixed.$heap(arg_0: ref, 
    arg_1: ref, 
    arg_2: ref, 
    arg_3: $heap_type, 
    arg_4: [ref]int, 
    arg_5: [ref]int, 
    arg_6: int, 
    arg_7: intArrHeap_type, 
    arg_8: Field int)
   : $heap_type;

var Output_of_unsafe.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_$return: int;

var Output_of_fixed.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_$return: int;

var Output_of_unsafe.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_$exception: ref;

var Output_of_fixed.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_$exception: ref;

var Output_of_unsafe.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_fixed.$objIndex: int;

var Output_of_fixed.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_fixed.$objIndex: int;

var Output_of_unsafe.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_fixed.$heap: $heap_type;

var Output_of_fixed.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_fixed.$heap: $heap_type;

function _uf_fixed.Login$retrieve$java.lang.String_$return(arg_0: ref, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: javaType, 
    arg_5: int, 
    arg_6: intArrHeap_type)
   : ref;

function _uf_fixed.Login$retrieve$java.lang.String_$exception(arg_0: ref, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: javaType, 
    arg_5: int, 
    arg_6: intArrHeap_type)
   : ref;

function _uf_fixed.Login$retrieve$java.lang.String_fixed.$objIndex(arg_0: ref, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: javaType, 
    arg_5: int, 
    arg_6: intArrHeap_type)
   : int;

function _uf_fixed.Login$retrieve$java.lang.String_fixed.$heap(arg_0: ref, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: javaType, 
    arg_5: int, 
    arg_6: intArrHeap_type)
   : $heap_type;

function _uf_fixed.Login$retrieve$java.lang.String_fixed.$arrSizeHeap(arg_0: ref, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: javaType, 
    arg_5: int, 
    arg_6: intArrHeap_type)
   : [ref]int;

function _uf_fixed.Login$retrieve$java.lang.String_fixed.$intArrHeap(arg_0: ref, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: javaType, 
    arg_5: int, 
    arg_6: intArrHeap_type)
   : intArrHeap_type;

function _uf_unsafe.Login$retrieve$java.lang.String_$return(arg_0: ref, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: javaType, 
    arg_5: int, 
    arg_6: intArrHeap_type)
   : ref;

function _uf_unsafe.Login$retrieve$java.lang.String_$exception(arg_0: ref, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: javaType, 
    arg_5: int, 
    arg_6: intArrHeap_type)
   : ref;

function _uf_unsafe.Login$retrieve$java.lang.String_fixed.$objIndex(arg_0: ref, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: javaType, 
    arg_5: int, 
    arg_6: intArrHeap_type)
   : int;

function _uf_unsafe.Login$retrieve$java.lang.String_fixed.$heap(arg_0: ref, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: javaType, 
    arg_5: int, 
    arg_6: intArrHeap_type)
   : $heap_type;

function _uf_unsafe.Login$retrieve$java.lang.String_fixed.$arrSizeHeap(arg_0: ref, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: javaType, 
    arg_5: int, 
    arg_6: intArrHeap_type)
   : [ref]int;

function _uf_unsafe.Login$retrieve$java.lang.String_fixed.$intArrHeap(arg_0: ref, 
    arg_1: $heap_type, 
    arg_2: [ref]int, 
    arg_3: [ref]int, 
    arg_4: javaType, 
    arg_5: int, 
    arg_6: intArrHeap_type)
   : intArrHeap_type;

var Output_of_unsafe.Login$retrieve$java.lang.String_$return: ref;

var Output_of_fixed.Login$retrieve$java.lang.String_$return: ref;

var Output_of_unsafe.Login$retrieve$java.lang.String_$exception: ref;

var Output_of_fixed.Login$retrieve$java.lang.String_$exception: ref;

var Output_of_unsafe.Login$retrieve$java.lang.String_fixed.$objIndex: int;

var Output_of_fixed.Login$retrieve$java.lang.String_fixed.$objIndex: int;

var Output_of_unsafe.Login$retrieve$java.lang.String_fixed.$heap: $heap_type;

var Output_of_fixed.Login$retrieve$java.lang.String_fixed.$heap: $heap_type;

var Output_of_unsafe.Login$retrieve$java.lang.String_fixed.$arrSizeHeap: [ref]int;

var Output_of_fixed.Login$retrieve$java.lang.String_fixed.$arrSizeHeap: [ref]int;

var Output_of_unsafe.Login$retrieve$java.lang.String_fixed.$intArrHeap: intArrHeap_type;

var Output_of_fixed.Login$retrieve$java.lang.String_fixed.$intArrHeap: intArrHeap_type;

procedure PROC_.Login$retrieve$java.lang.String_EQ_unsafe__xx__fixed($in_parameter__0: ref)
   returns (AA_TEMP130: bool, 
    AA_TEMP131: bool, 
    AA_TEMP132: bool, 
    AA_TEMP133: bool, 
    AA_TEMP134: bool, 
    AA_TEMP135: bool);
  modifies fixed.$objIndex, fixed.$heap, fixed.$arrSizeHeap, fixed.$intArrHeap, Output_of_unsafe.Login$retrieve$java.lang.String_$return, Output_of_fixed.Login$retrieve$java.lang.String_$return, Output_of_unsafe.Login$retrieve$java.lang.String_$exception, Output_of_fixed.Login$retrieve$java.lang.String_$exception, Output_of_unsafe.Login$retrieve$java.lang.String_fixed.$objIndex, Output_of_fixed.Login$retrieve$java.lang.String_fixed.$objIndex, Output_of_unsafe.Login$retrieve$java.lang.String_fixed.$heap, Output_of_fixed.Login$retrieve$java.lang.String_fixed.$heap, Output_of_unsafe.Login$retrieve$java.lang.String_fixed.$arrSizeHeap, Output_of_fixed.Login$retrieve$java.lang.String_fixed.$arrSizeHeap, Output_of_unsafe.Login$retrieve$java.lang.String_fixed.$intArrHeap, Output_of_fixed.Login$retrieve$java.lang.String_fixed.$intArrHeap;
  ensures AA_TEMP135 && AA_TEMP134 && AA_TEMP133 && AA_TEMP132 && AA_TEMP131 && AA_TEMP130;



implementation PROC_.Login$retrieve$java.lang.String_EQ_unsafe__xx__fixed($in_parameter__0: ref)
   returns (AA_TEMP130: bool, 
    AA_TEMP131: bool, 
    AA_TEMP132: bool, 
    AA_TEMP133: bool, 
    AA_TEMP134: bool, 
    AA_TEMP135: bool)
{
  var AA_TEMP120: ref;
  var AA_TEMP121: ref;
  var AA_TEMP110: int;
  var AA_TEMP111: $heap_type;
  var AA_TEMP112: [ref]int;
  var AA_TEMP113: intArrHeap_type;
  var AA_TEMP100: int;
  var AA_TEMP101: $heap_type;
  var AA_TEMP102: [ref]int;
  var AA_TEMP103: intArrHeap_type;
  var $return: ref;
  var $exception: ref;
  var inline$unsafe.Login$retrieve$java.lang.String$0$r0: ref;
  var inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_1: ref;
  var inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_4: ref;
  var inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_3: ref;
  var inline$unsafe.Login$retrieve$java.lang.String$0$r1: ref;
  var inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_2: ref;
  var inline$unsafe.Login$retrieve$java.lang.String$0$$r2: ref;
  var inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_0: ref;
  var inline$unsafe.Login$retrieve$java.lang.String$0$$in_parameter__0: ref;
  var inline$unsafe.Login$retrieve$java.lang.String$0$$return: ref;
  var inline$unsafe.Login$retrieve$java.lang.String$0$$exception: ref;
  var inline$unsafe.Login$retrieve$java.lang.String$0$fixed.$objIndex: int;
  var inline$unsafe.Login$retrieve$java.lang.String$0$fixed.$heap: $heap_type;
  var inline$unsafe.Login$retrieve$java.lang.String$0$fixed.$arrSizeHeap: [ref]int;
  var inline$unsafe.Login$retrieve$java.lang.String$0$fixed.$intArrHeap: intArrHeap_type;
  var inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_3: ref;
  var inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_4: ref;
  var inline$fixed.Login$retrieve$java.lang.String$0$r1: ref;
  var inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_0: ref;
  var inline$fixed.Login$retrieve$java.lang.String$0$r0: ref;
  var inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_2: ref;
  var inline$fixed.Login$retrieve$java.lang.String$0$$r2: ref;
  var inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_1: ref;
  var inline$fixed.Login$retrieve$java.lang.String$0$$in_parameter__0: ref;
  var inline$fixed.Login$retrieve$java.lang.String$0$$return: ref;
  var inline$fixed.Login$retrieve$java.lang.String$0$$exception: ref;
  var inline$fixed.Login$retrieve$java.lang.String$0$fixed.$objIndex: int;
  var inline$fixed.Login$retrieve$java.lang.String$0$fixed.$heap: $heap_type;
  var inline$fixed.Login$retrieve$java.lang.String$0$fixed.$arrSizeHeap: [ref]int;
  var inline$fixed.Login$retrieve$java.lang.String$0$fixed.$intArrHeap: intArrHeap_type;

  AA_INSTR_EQ_BODY:
    AA_TEMP100 := fixed.$objIndex;
    AA_TEMP101 := fixed.$heap;
    AA_TEMP102 := fixed.$arrSizeHeap;
    AA_TEMP103 := fixed.$intArrHeap;
    goto inline$unsafe.Login$retrieve$java.lang.String$0$Entry;

  inline$unsafe.Login$retrieve$java.lang.String$0$Entry:
    inline$unsafe.Login$retrieve$java.lang.String$0$$in_parameter__0 := $in_parameter__0;
    havoc inline$unsafe.Login$retrieve$java.lang.String$0$r0, inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_1, inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_4, inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_3, inline$unsafe.Login$retrieve$java.lang.String$0$r1, inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_2, inline$unsafe.Login$retrieve$java.lang.String$0$$r2, inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_0, inline$unsafe.Login$retrieve$java.lang.String$0$$return, inline$unsafe.Login$retrieve$java.lang.String$0$$exception;
    inline$unsafe.Login$retrieve$java.lang.String$0$fixed.$objIndex := fixed.$objIndex;
    inline$unsafe.Login$retrieve$java.lang.String$0$fixed.$heap := fixed.$heap;
    inline$unsafe.Login$retrieve$java.lang.String$0$fixed.$arrSizeHeap := fixed.$arrSizeHeap;
    inline$unsafe.Login$retrieve$java.lang.String$0$fixed.$intArrHeap := fixed.$intArrHeap;
    goto inline$unsafe.Login$retrieve$java.lang.String$0$anon0;

  inline$unsafe.Login$retrieve$java.lang.String$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$unsafe.Login$retrieve$java.lang.String$0$$in_parameter__0, fixed.$type]
   <: fixed.java.lang.String;
    inline$unsafe.Login$retrieve$java.lang.String$0$$exception := fixed.$null;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    inline$unsafe.Login$retrieve$java.lang.String$0$r0 := inline$unsafe.Login$retrieve$java.lang.String$0$$in_parameter__0;
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    call inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_0 := fixed.$new(fixed.$intArrayType);
    fixed.$arrSizeHeap := fixed.$arrSizeHeap[inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_0 := 4];
    inline$unsafe.Login$retrieve$java.lang.String$0$$r2 := inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_0;
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    goto inline$unsafe.Login$retrieve$java.lang.String$0$anon13_Then, inline$unsafe.Login$retrieve$java.lang.String$0$anon13_Else;

  inline$unsafe.Login$retrieve$java.lang.String$0$anon13_Else:
    assume {:partition} !(0 < fixed.$arrSizeHeap[inline$unsafe.Login$retrieve$java.lang.String$0$$r2]
   && 0 >= 0);
    call inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$unsafe.Login$retrieve$java.lang.String$0$$return := fixed.$null;
    inline$unsafe.Login$retrieve$java.lang.String$0$$exception := inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_1;
    goto inline$unsafe.Login$retrieve$java.lang.String$0$Return;

  inline$unsafe.Login$retrieve$java.lang.String$0$anon13_Then:
    assume {:partition} 0 < fixed.$arrSizeHeap[inline$unsafe.Login$retrieve$java.lang.String$0$$r2]
   && 0 >= 0;
    inline$unsafe.Login$retrieve$java.lang.String$0$$exception := inline$unsafe.Login$retrieve$java.lang.String$0$$exception;
    goto inline$unsafe.Login$retrieve$java.lang.String$0$anon3;

  inline$unsafe.Login$retrieve$java.lang.String$0$anon3:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$unsafe.Login$retrieve$java.lang.String$0$$r2 := fixed.$intArrHeap[inline$unsafe.Login$retrieve$java.lang.String$0$$r2][0 := 10]];
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    goto inline$unsafe.Login$retrieve$java.lang.String$0$anon14_Then, inline$unsafe.Login$retrieve$java.lang.String$0$anon14_Else;

  inline$unsafe.Login$retrieve$java.lang.String$0$anon14_Else:
    assume {:partition} !(1 < fixed.$arrSizeHeap[inline$unsafe.Login$retrieve$java.lang.String$0$$r2]
   && 1 >= 0);
    call inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$unsafe.Login$retrieve$java.lang.String$0$$return := fixed.$null;
    inline$unsafe.Login$retrieve$java.lang.String$0$$exception := inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_2;
    goto inline$unsafe.Login$retrieve$java.lang.String$0$Return;

  inline$unsafe.Login$retrieve$java.lang.String$0$anon14_Then:
    assume {:partition} 1 < fixed.$arrSizeHeap[inline$unsafe.Login$retrieve$java.lang.String$0$$r2]
   && 1 >= 0;
    inline$unsafe.Login$retrieve$java.lang.String$0$$exception := inline$unsafe.Login$retrieve$java.lang.String$0$$exception;
    goto inline$unsafe.Login$retrieve$java.lang.String$0$anon6;

  inline$unsafe.Login$retrieve$java.lang.String$0$anon6:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$unsafe.Login$retrieve$java.lang.String$0$$r2 := fixed.$intArrHeap[inline$unsafe.Login$retrieve$java.lang.String$0$$r2][1 := 3]];
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    goto inline$unsafe.Login$retrieve$java.lang.String$0$anon15_Then, inline$unsafe.Login$retrieve$java.lang.String$0$anon15_Else;

  inline$unsafe.Login$retrieve$java.lang.String$0$anon15_Else:
    assume {:partition} !(2 < fixed.$arrSizeHeap[inline$unsafe.Login$retrieve$java.lang.String$0$$r2]
   && 2 >= 0);
    call inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$unsafe.Login$retrieve$java.lang.String$0$$return := fixed.$null;
    inline$unsafe.Login$retrieve$java.lang.String$0$$exception := inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_3;
    goto inline$unsafe.Login$retrieve$java.lang.String$0$Return;

  inline$unsafe.Login$retrieve$java.lang.String$0$anon15_Then:
    assume {:partition} 2 < fixed.$arrSizeHeap[inline$unsafe.Login$retrieve$java.lang.String$0$$r2]
   && 2 >= 0;
    inline$unsafe.Login$retrieve$java.lang.String$0$$exception := inline$unsafe.Login$retrieve$java.lang.String$0$$exception;
    goto inline$unsafe.Login$retrieve$java.lang.String$0$anon9;

  inline$unsafe.Login$retrieve$java.lang.String$0$anon9:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$unsafe.Login$retrieve$java.lang.String$0$$r2 := fixed.$intArrHeap[inline$unsafe.Login$retrieve$java.lang.String$0$$r2][2 := 15]];
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    goto inline$unsafe.Login$retrieve$java.lang.String$0$anon16_Then, inline$unsafe.Login$retrieve$java.lang.String$0$anon16_Else;

  inline$unsafe.Login$retrieve$java.lang.String$0$anon16_Else:
    assume {:partition} !(3 < fixed.$arrSizeHeap[inline$unsafe.Login$retrieve$java.lang.String$0$$r2]
   && 3 >= 0);
    call inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_4 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$unsafe.Login$retrieve$java.lang.String$0$$return := fixed.$null;
    inline$unsafe.Login$retrieve$java.lang.String$0$$exception := inline$unsafe.Login$retrieve$java.lang.String$0$$fakelocal_4;
    goto inline$unsafe.Login$retrieve$java.lang.String$0$Return;

  inline$unsafe.Login$retrieve$java.lang.String$0$anon16_Then:
    assume {:partition} 3 < fixed.$arrSizeHeap[inline$unsafe.Login$retrieve$java.lang.String$0$$r2]
   && 3 >= 0;
    inline$unsafe.Login$retrieve$java.lang.String$0$$exception := inline$unsafe.Login$retrieve$java.lang.String$0$$exception;
    goto inline$unsafe.Login$retrieve$java.lang.String$0$anon12;

  inline$unsafe.Login$retrieve$java.lang.String$0$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$unsafe.Login$retrieve$java.lang.String$0$$r2 := fixed.$intArrHeap[inline$unsafe.Login$retrieve$java.lang.String$0$$r2][3 := 1]];
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    inline$unsafe.Login$retrieve$java.lang.String$0$r1 := inline$unsafe.Login$retrieve$java.lang.String$0$$r2;
    assert {:sourceloc "Login.java", 54, -1, -1, -1} true;
    inline$unsafe.Login$retrieve$java.lang.String$0$$return := inline$unsafe.Login$retrieve$java.lang.String$0$r1;
    goto inline$unsafe.Login$retrieve$java.lang.String$0$block11;

  inline$unsafe.Login$retrieve$java.lang.String$0$block11:
    goto inline$unsafe.Login$retrieve$java.lang.String$0$Return;

  inline$unsafe.Login$retrieve$java.lang.String$0$Return:
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    $return := inline$unsafe.Login$retrieve$java.lang.String$0$$return;
    $exception := inline$unsafe.Login$retrieve$java.lang.String$0$$exception;
    goto AA_INSTR_EQ_BODY$1;

  AA_INSTR_EQ_BODY$1:
    AA_TEMP110 := fixed.$objIndex;
    AA_TEMP111 := fixed.$heap;
    AA_TEMP112 := fixed.$arrSizeHeap;
    AA_TEMP113 := fixed.$intArrHeap;
    fixed.$objIndex := AA_TEMP100;
    fixed.$heap := AA_TEMP101;
    fixed.$arrSizeHeap := AA_TEMP102;
    fixed.$intArrHeap := AA_TEMP103;
    AA_TEMP120 := $return;
    AA_TEMP121 := $exception;
    goto inline$fixed.Login$retrieve$java.lang.String$0$Entry;

  inline$fixed.Login$retrieve$java.lang.String$0$Entry:
    inline$fixed.Login$retrieve$java.lang.String$0$$in_parameter__0 := $in_parameter__0;
    havoc inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_3, inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_4, inline$fixed.Login$retrieve$java.lang.String$0$r1, inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_0, inline$fixed.Login$retrieve$java.lang.String$0$r0, inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_2, inline$fixed.Login$retrieve$java.lang.String$0$$r2, inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_1, inline$fixed.Login$retrieve$java.lang.String$0$$return, inline$fixed.Login$retrieve$java.lang.String$0$$exception;
    inline$fixed.Login$retrieve$java.lang.String$0$fixed.$objIndex := fixed.$objIndex;
    inline$fixed.Login$retrieve$java.lang.String$0$fixed.$heap := fixed.$heap;
    inline$fixed.Login$retrieve$java.lang.String$0$fixed.$arrSizeHeap := fixed.$arrSizeHeap;
    inline$fixed.Login$retrieve$java.lang.String$0$fixed.$intArrHeap := fixed.$intArrHeap;
    goto inline$fixed.Login$retrieve$java.lang.String$0$anon0;

  inline$fixed.Login$retrieve$java.lang.String$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$fixed.Login$retrieve$java.lang.String$0$$in_parameter__0, fixed.$type]
   <: fixed.java.lang.String;
    inline$fixed.Login$retrieve$java.lang.String$0$$exception := fixed.$null;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    inline$fixed.Login$retrieve$java.lang.String$0$r0 := inline$fixed.Login$retrieve$java.lang.String$0$$in_parameter__0;
    assert {:sourceloc "Login.java", 64, -1, -1, -1} true;
    call inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_0 := fixed.$new(fixed.$intArrayType);
    fixed.$arrSizeHeap := fixed.$arrSizeHeap[inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_0 := 4];
    inline$fixed.Login$retrieve$java.lang.String$0$$r2 := inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_0;
    assert {:sourceloc "Login.java", 64, -1, -1, -1} true;
    goto inline$fixed.Login$retrieve$java.lang.String$0$anon13_Then, inline$fixed.Login$retrieve$java.lang.String$0$anon13_Else;

  inline$fixed.Login$retrieve$java.lang.String$0$anon13_Else:
    assume {:partition} !(0 < fixed.$arrSizeHeap[inline$fixed.Login$retrieve$java.lang.String$0$$r2]
   && 0 >= 0);
    call inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$fixed.Login$retrieve$java.lang.String$0$$return := fixed.$null;
    inline$fixed.Login$retrieve$java.lang.String$0$$exception := inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_1;
    goto inline$fixed.Login$retrieve$java.lang.String$0$Return;

  inline$fixed.Login$retrieve$java.lang.String$0$anon13_Then:
    assume {:partition} 0 < fixed.$arrSizeHeap[inline$fixed.Login$retrieve$java.lang.String$0$$r2]
   && 0 >= 0;
    inline$fixed.Login$retrieve$java.lang.String$0$$exception := inline$fixed.Login$retrieve$java.lang.String$0$$exception;
    goto inline$fixed.Login$retrieve$java.lang.String$0$anon3;

  inline$fixed.Login$retrieve$java.lang.String$0$anon3:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$fixed.Login$retrieve$java.lang.String$0$$r2 := fixed.$intArrHeap[inline$fixed.Login$retrieve$java.lang.String$0$$r2][0 := 10]];
    assert {:sourceloc "Login.java", 64, -1, -1, -1} true;
    goto inline$fixed.Login$retrieve$java.lang.String$0$anon14_Then, inline$fixed.Login$retrieve$java.lang.String$0$anon14_Else;

  inline$fixed.Login$retrieve$java.lang.String$0$anon14_Else:
    assume {:partition} !(1 < fixed.$arrSizeHeap[inline$fixed.Login$retrieve$java.lang.String$0$$r2]
   && 1 >= 0);
    call inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$fixed.Login$retrieve$java.lang.String$0$$return := fixed.$null;
    inline$fixed.Login$retrieve$java.lang.String$0$$exception := inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_2;
    goto inline$fixed.Login$retrieve$java.lang.String$0$Return;

  inline$fixed.Login$retrieve$java.lang.String$0$anon14_Then:
    assume {:partition} 1 < fixed.$arrSizeHeap[inline$fixed.Login$retrieve$java.lang.String$0$$r2]
   && 1 >= 0;
    inline$fixed.Login$retrieve$java.lang.String$0$$exception := inline$fixed.Login$retrieve$java.lang.String$0$$exception;
    goto inline$fixed.Login$retrieve$java.lang.String$0$anon6;

  inline$fixed.Login$retrieve$java.lang.String$0$anon6:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$fixed.Login$retrieve$java.lang.String$0$$r2 := fixed.$intArrHeap[inline$fixed.Login$retrieve$java.lang.String$0$$r2][1 := 3]];
    assert {:sourceloc "Login.java", 64, -1, -1, -1} true;
    goto inline$fixed.Login$retrieve$java.lang.String$0$anon15_Then, inline$fixed.Login$retrieve$java.lang.String$0$anon15_Else;

  inline$fixed.Login$retrieve$java.lang.String$0$anon15_Else:
    assume {:partition} !(2 < fixed.$arrSizeHeap[inline$fixed.Login$retrieve$java.lang.String$0$$r2]
   && 2 >= 0);
    call inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$fixed.Login$retrieve$java.lang.String$0$$return := fixed.$null;
    inline$fixed.Login$retrieve$java.lang.String$0$$exception := inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_3;
    goto inline$fixed.Login$retrieve$java.lang.String$0$Return;

  inline$fixed.Login$retrieve$java.lang.String$0$anon15_Then:
    assume {:partition} 2 < fixed.$arrSizeHeap[inline$fixed.Login$retrieve$java.lang.String$0$$r2]
   && 2 >= 0;
    inline$fixed.Login$retrieve$java.lang.String$0$$exception := inline$fixed.Login$retrieve$java.lang.String$0$$exception;
    goto inline$fixed.Login$retrieve$java.lang.String$0$anon9;

  inline$fixed.Login$retrieve$java.lang.String$0$anon9:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$fixed.Login$retrieve$java.lang.String$0$$r2 := fixed.$intArrHeap[inline$fixed.Login$retrieve$java.lang.String$0$$r2][2 := 15]];
    assert {:sourceloc "Login.java", 64, -1, -1, -1} true;
    goto inline$fixed.Login$retrieve$java.lang.String$0$anon16_Then, inline$fixed.Login$retrieve$java.lang.String$0$anon16_Else;

  inline$fixed.Login$retrieve$java.lang.String$0$anon16_Else:
    assume {:partition} !(3 < fixed.$arrSizeHeap[inline$fixed.Login$retrieve$java.lang.String$0$$r2]
   && 3 >= 0);
    call inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_4 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$fixed.Login$retrieve$java.lang.String$0$$return := fixed.$null;
    inline$fixed.Login$retrieve$java.lang.String$0$$exception := inline$fixed.Login$retrieve$java.lang.String$0$$fakelocal_4;
    goto inline$fixed.Login$retrieve$java.lang.String$0$Return;

  inline$fixed.Login$retrieve$java.lang.String$0$anon16_Then:
    assume {:partition} 3 < fixed.$arrSizeHeap[inline$fixed.Login$retrieve$java.lang.String$0$$r2]
   && 3 >= 0;
    inline$fixed.Login$retrieve$java.lang.String$0$$exception := inline$fixed.Login$retrieve$java.lang.String$0$$exception;
    goto inline$fixed.Login$retrieve$java.lang.String$0$anon12;

  inline$fixed.Login$retrieve$java.lang.String$0$anon12:
    fixed.$intArrHeap := fixed.$intArrHeap[inline$fixed.Login$retrieve$java.lang.String$0$$r2 := fixed.$intArrHeap[inline$fixed.Login$retrieve$java.lang.String$0$$r2][3 := 1]];
    assert {:sourceloc "Login.java", 64, -1, -1, -1} true;
    inline$fixed.Login$retrieve$java.lang.String$0$r1 := inline$fixed.Login$retrieve$java.lang.String$0$$r2;
    assert {:sourceloc "Login.java", 65, -1, -1, -1} true;
    inline$fixed.Login$retrieve$java.lang.String$0$$return := inline$fixed.Login$retrieve$java.lang.String$0$r1;
    goto inline$fixed.Login$retrieve$java.lang.String$0$block11;

  inline$fixed.Login$retrieve$java.lang.String$0$block11:
    goto inline$fixed.Login$retrieve$java.lang.String$0$Return;

  inline$fixed.Login$retrieve$java.lang.String$0$Return:
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    $return := inline$fixed.Login$retrieve$java.lang.String$0$$return;
    $exception := inline$fixed.Login$retrieve$java.lang.String$0$$exception;
    goto AA_INSTR_EQ_BODY$2;

  AA_INSTR_EQ_BODY$2:
    Output_of_unsafe.Login$retrieve$java.lang.String_$return := AA_TEMP120;
    Output_of_fixed.Login$retrieve$java.lang.String_$return := $return;
    Output_of_unsafe.Login$retrieve$java.lang.String_$exception := AA_TEMP121;
    Output_of_fixed.Login$retrieve$java.lang.String_$exception := $exception;
    Output_of_unsafe.Login$retrieve$java.lang.String_fixed.$objIndex := AA_TEMP110;
    Output_of_fixed.Login$retrieve$java.lang.String_fixed.$objIndex := fixed.$objIndex;
    Output_of_unsafe.Login$retrieve$java.lang.String_fixed.$heap := AA_TEMP111;
    Output_of_fixed.Login$retrieve$java.lang.String_fixed.$heap := fixed.$heap;
    Output_of_unsafe.Login$retrieve$java.lang.String_fixed.$arrSizeHeap := AA_TEMP112;
    Output_of_fixed.Login$retrieve$java.lang.String_fixed.$arrSizeHeap := fixed.$arrSizeHeap;
    Output_of_unsafe.Login$retrieve$java.lang.String_fixed.$intArrHeap := AA_TEMP113;
    Output_of_fixed.Login$retrieve$java.lang.String_fixed.$intArrHeap := fixed.$intArrHeap;
    havoc AA_TEMP130, AA_TEMP131, AA_TEMP132, AA_TEMP133, AA_TEMP134, AA_TEMP135;
    AA_TEMP130, AA_TEMP131, AA_TEMP132, AA_TEMP133, AA_TEMP134, AA_TEMP135 := AA_TEMP130 || AA_TEMP120 == $return, AA_TEMP131 || AA_TEMP121 == $exception, AA_TEMP132 || fixed.$objIndex == fixed.$objIndex, AA_TEMP133
   || (forall<_ty> r: ref, f: Field _ty :: 
    fixed.$heap[r, f] == AA_TEMP111[r, f] || !old(fixed.$heap[r, fixed.$alloc])), AA_TEMP134
   || 
  AA_TEMP112 == fixed.$arrSizeHeap
   || (forall _x0: ref :: AA_TEMP112[_x0] == fixed.$arrSizeHeap[_x0]), AA_TEMP135 || AA_TEMP113 == fixed.$intArrHeap;
    return;
}


