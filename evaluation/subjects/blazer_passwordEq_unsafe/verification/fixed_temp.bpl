type ref;

type javaType;

type Field _;

type $heap_type = <$GenericType__0>[ref,Field $GenericType__0]$GenericType__0;

type boolArrHeap_type = [ref][int]bool;

type refArrHeap_type = [ref][int]ref;

type realArrHeap_type = [ref][int]int;

type intArrHeap_type = [ref][int]int;

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

var fixed.char$lp$$rp$$java.lang.String$chars259: Field ref;

var fixed.boolean$java.lang.Boolean$value0: Field int;

const unique fixed.$type: Field javaType;

const unique fixed.$alloc: Field bool;

const unique fixed.$null: ref;

const {:sourceloc "Math.java", -1, -1, -1, -1} unique fixed.java.lang.Object: javaType extends complete;

const {:sourceloc "Math.java", -1, -1, -1, -1} unique fixed.java.lang.Math: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique fixed.java.lang.String: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique fixed.java.io.Serializable: javaType extends complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique fixed.java.lang.Throwable: javaType extends unique fixed.java.lang.Object, fixed.java.io.Serializable complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique fixed.java.lang.Exception: javaType extends unique fixed.java.lang.Throwable complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique fixed.java.lang.RuntimeException: javaType extends unique fixed.java.lang.Exception complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique fixed.java.lang.IndexOutOfBoundsException: javaType extends unique fixed.java.lang.RuntimeException complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique fixed.java.lang.ArrayIndexOutOfBoundsException: javaType extends unique fixed.java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique fixed.java.lang.Boolean: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "Safe.java", -1, -1, -1, -1} unique fixed.sg.edu.nus.comp.tsunami.safe.Safe: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "User.java", -1, -1, -1, -1} unique fixed.User: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "User.java", -1, -1, -1, -1} unique fixed.java.lang.Comparable: javaType extends complete;

const {:sourceloc "User.java", -1, -1, -1, -1} unique fixed.java.lang.CharSequence: javaType extends complete;

const {:sourceloc "User.java", -1, -1, -1, -1} unique fixed.java.lang.ClassCastException: javaType extends unique fixed.java.lang.RuntimeException complete;

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
  free ensures $obj != fixed.$null;
  free ensures fixed.$heap
   == old(fixed.$heap)[$obj, fixed.$alloc := true][$obj, fixed.$type := obj_type];
  free ensures !old(fixed.$heap[$obj, fixed.$alloc]);



procedure {:prefix "fixed"} fixed.java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  free ensures fixed.$heap[$other, fixed.$type] == fixed.$heap[$this, fixed.$type];
  free ensures fixed.$heap[$other, fixed.$alloc] <==> true;
  free ensures $other != fixed.$null;



procedure {:prefix "fixed"} fixed.int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure {:prefix "fixed"} fixed.java.lang.Math$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "fixed"} fixed.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "fixed"} fixed.java.lang.Math$min$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.java.lang.String$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "fixed"} fixed.java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "fixed"} fixed.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies fixed.$heap;



procedure {:prefix "fixed"} fixed.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "fixed"} fixed.java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



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



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);



procedure {:prefix "fixed"} fixed.User$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "fixed"} fixed.User$passwordsEqual_unsafe$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "fixed"} fixed.User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63(in_$return: int, 
    in_$exception: ref, 
    in_$r12: ref, 
    in_$fakelocal_5: ref, 
    in_$r7: ref, 
    in_$r9: ref, 
    in_i7: int, 
    in_i2: int, 
    in_$r19: ref, 
    in_$fakelocal_2: ref, 
    in_$r13: ref, 
    in_z0: int, 
    in_$r6: ref, 
    in_r0: ref, 
    in_$r17: ref, 
    in_$c3: int, 
    in_z2: int, 
    in_$r8: ref, 
    in_z5: int, 
    in_$fakelocal_3: ref, 
    in_$r10: ref, 
    in_$c5: int, 
    in_$fakelocal_1: ref, 
    in_$r15: ref, 
    in_$l6: int, 
    in_$l4: int, 
    in_$r11: ref, 
    in_$fakelocal_0: ref, 
    in_$fakelocal_4: ref, 
    in_$r14: ref, 
    in_$r16: ref, 
    in_z3: int, 
    in_r1: ref, 
    in_$r18: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$r12: ref, 
    out_$fakelocal_5: ref, 
    out_$r7: ref, 
    out_$r9: ref, 
    out_i7: int, 
    out_$r19: ref, 
    out_$fakelocal_2: ref, 
    out_$r13: ref, 
    out_z0: int, 
    out_$r6: ref, 
    out_$r17: ref, 
    out_$c3: int, 
    out_z2: int, 
    out_$r8: ref, 
    out_z5: int, 
    out_$fakelocal_3: ref, 
    out_$r10: ref, 
    out_$c5: int, 
    out_$fakelocal_1: ref, 
    out_$r15: ref, 
    out_$l6: int, 
    out_$l4: int, 
    out_$r11: ref, 
    out_$fakelocal_0: ref, 
    out_$fakelocal_4: ref, 
    out_$r14: ref, 
    out_$r16: ref, 
    out_z3: int, 
    out_$r18: ref);
  modifies fixed.$objIndex, fixed.$heap;



implementation fixed.java.lang.Math$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Math.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.Math;
    assume {:sourceloc "Math.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "Math.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Math.java", 3, -1, -1, -1} true;
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
    assert {:sourceloc "Math.java", 3, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation fixed.java.lang.Math$min$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var i0: int;
  var i1: int;
  var $i2: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
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



implementation fixed.java.lang.String$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "String.java", 3, -1, -1, -1} true;
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
    assert {:sourceloc "String.java", 3, -1, -1, -1} true;
    goto block5;

  block5:
    return;
}



implementation fixed.java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $r1: ref;
  var $c1: int;
  var i0: int;
  var $fakelocal_0: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    $r1 := fixed.$heap[r0, fixed.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} !(i0 < fixed.$arrSizeHeap[$r1] && i0 >= 0);
    call $fakelocal_0 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon4_Then:
    assume {:partition} i0 < fixed.$arrSizeHeap[$r1] && i0 >= 0;
    $exception := $exception;
    goto anon3;

  anon3:
    $c1 := fixed.$intArrHeap[$r1][i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    $return := $c1;
    goto block6;

  block6:
    return;
}



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
    goto block7;

  block7:
    return;
}



implementation fixed.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var z0: int;
  var $r0: ref;
  var $fakelocal_0: ref;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    $exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    $return := $r0;
    goto block8;

  block8:
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
    goto block9;

  block9:
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
    goto block10;

  block10:
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
    goto block11;

  block11:
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 1;
    goto block12;

  block12:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    $return := z1;
    goto block13;

  block13:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block12;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block11;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
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
    assert {:sourceloc "Safe.java", 12, -1, -1, -1} true;
    $z2 := fixed.$bitAnd(z0, z1);
    assert {:sourceloc "Safe.java", 12, -1, -1, -1} true;
    $return := $z2;
    goto block14;

  block14:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var z1: int;
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
    goto block15;

  block15:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b3: int;
  var l1: int;
  var z0: int;
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
    goto block16;

  block16:
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
    goto block17;

  block17:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    $return := z0;
    goto block18;

  block18:
    return;

  anon8_Then:
    assume {:partition} $b3 > 0;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block17;

  anon7_Then:
    assume {:partition} $b2 <= 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l0: int;
  var l1: int;
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
    goto block19;

  block19:
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
    goto block20;

  block20:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    $return := z0;
    goto block21;

  block21:
    return;

  anon8_Then:
    assume {:partition} $b3 < 0;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block20;

  anon7_Then:
    assume {:partition} $b2 >= 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block19;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var l0: int;
  var l1: int;
  var $b3: int;
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
    goto block22;

  block22:
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
    goto block23;

  block23:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    $return := z0;
    goto block24;

  block24:
    return;

  anon8_Then:
    assume {:partition} $b3 >= 0;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block23;

  anon7_Then:
    assume {:partition} $b2 < 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
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
    goto block25;

  block25:
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
    goto block26;

  block26:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    $return := z0;
    goto block27;

  block27:
    return;

  anon8_Then:
    assume {:partition} $b3 <= 0;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block26;

  anon7_Then:
    assume {:partition} $b2 > 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block25;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var $b3: int;
  var z0: int;
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
    goto block28;

  block28:
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
    goto block29;

  block29:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    $return := z0;
    goto block30;

  block30:
    return;

  anon8_Then:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block29;

  anon7_Then:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto block28;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
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
    goto block31;

  block31:
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
    goto block32;

  block32:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    $return := z0;
    goto block33;

  block33:
    return;

  anon8_Then:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto block32;

  anon7_Then:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block31;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b1: int;
  var z0: int;
  var $b0: int;
  var d0: int;
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
    goto block34;

  block34:
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
    goto block35;

  block35:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    $return := z0;
    goto block36;

  block36:
    return;

  anon8_Then:
    assume {:partition} $b1 > 0;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "thenblock"} true;
    goto block35;

  anon7_Then:
    assume {:partition} $b0 <= 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "thenblock"} true;
    goto block34;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b0: int;
  var d0: int;
  var d1: int;
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
    goto block37;

  block37:
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
    goto block38;

  block38:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    $return := z0;
    goto block39;

  block39:
    return;

  anon8_Then:
    assume {:partition} $b1 < 0;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block38;

  anon7_Then:
    assume {:partition} $b0 >= 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block37;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d1: int;
  var z0: int;
  var $b0: int;
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
    goto block40;

  block40:
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
    goto block41;

  block41:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    $return := z0;
    goto block42;

  block42:
    return;

  anon8_Then:
    assume {:partition} $b1 >= 0;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block41;

  anon7_Then:
    assume {:partition} $b0 < 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block40;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b1: int;
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
    goto block43;

  block43:
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
    goto block44;

  block44:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    $return := z0;
    goto block45;

  block45:
    return;

  anon8_Then:
    assume {:partition} $b1 <= 0;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "thenblock"} true;
    goto block44;

  anon7_Then:
    assume {:partition} $b0 > 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block43;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var z0: int;
  var $b0: int;
  var $b1: int;
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
    goto block46;

  block46:
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
    goto block47;

  block47:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    $return := z0;
    goto block48;

  block48:
    return;

  anon8_Then:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "thenblock"} true;
    goto block47;

  anon7_Then:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "thenblock"} true;
    goto block46;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d1: int;
  var z0: int;
  var d0: int;
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
    goto block49;

  block49:
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
    goto block50;

  block50:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    $return := z0;
    goto block51;

  block51:
    return;

  anon8_Then:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "thenblock"} true;
    goto block50;

  anon7_Then:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "thenblock"} true;
    goto block49;
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
    goto block52;

  block52:
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 0;
    goto block53;

  block53:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    $return := z0;
    goto block54;

  block54:
    return;

  anon8_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block53;

  anon7_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block52;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r0: ref;
  var z0: int;
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
    goto block55;

  block55:
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 0;
    goto block56;

  block56:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    $return := z0;
    goto block57;

  block57:
    return;

  anon8_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block56;

  anon7_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block55;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var r2: ref;
  var z0: int;
  var r0: ref;
  var r1: ref;

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
    goto block58;

  block58:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r1;
    goto block59;

  block59:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    $return := r2;
    goto block60;

  block60:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block59;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block58;
}



implementation fixed.User$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "User.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.User;
    assume {:sourceloc "User.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "User.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "User.java", 3, -1, -1, -1} true;
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
    assert {:sourceloc "User.java", 3, -1, -1, -1} true;
    goto block61;

  block61:
    return;
}



implementation fixed.User$passwordsEqual_unsafe$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $r12: ref;
  var $fakelocal_5: ref;
  var $r7: ref;
  var $r9: ref;
  var $r3: ref;
  var $r4: ref;
  var i7: int;
  var i2: int;
  var z4: int;
  var $r19: ref;
  var $fakelocal_2: ref;
  var $r13: ref;
  var z0: int;
  var $r6: ref;
  var r0: ref;
  var $r17: ref;
  var $z1: int;
  var $c3: int;
  var i0: int;
  var z2: int;
  var i1: int;
  var $r8: ref;
  var z5: int;
  var $r2: ref;
  var $fakelocal_3: ref;
  var $r10: ref;
  var $c5: int;
  var $fakelocal_1: ref;
  var $r15: ref;
  var $r5: ref;
  var $l6: int;
  var $l4: int;
  var $r11: ref;
  var $fakelocal_7: ref;
  var $fakelocal_6: ref;
  var $fakelocal_0: ref;
  var $fakelocal_4: ref;
  var $r14: ref;
  var $r16: ref;
  var z3: int;
  var r1: ref;
  var $r18: ref;
  var inline$java.lang.Math$min$int_int$0$i0: int;
  var inline$java.lang.Math$min$int_int$0$i1: int;
  var inline$java.lang.Math$min$int_int$0$$i2: int;
  var inline$java.lang.Math$min$int_int$0$$in_parameter__0: int;
  var inline$java.lang.Math$min$int_int$0$$in_parameter__1: int;
  var inline$java.lang.Math$min$int_int$0$$return: int;
  var inline$java.lang.Math$min$int_int$0$$exception: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$return: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$exception: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r12: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_5: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r7: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r9: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i7: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i2: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r19: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_2: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r13: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z0: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r6: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_r0: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r17: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c3: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z2: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r8: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z5: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_3: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r10: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c5: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_1: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r15: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l6: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l4: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r11: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_0: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_4: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r14: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r16: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z3: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_r1: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r18: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$objIndex: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$heap: $heap_type;
  var inline$java.lang.Boolean$booleanValue$$0$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$0$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$0$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$0$$return: int;
  var inline$java.lang.Boolean$booleanValue$$0$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$1$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$1$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$1$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$1$$return: int;
  var inline$java.lang.Boolean$booleanValue$$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$1$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$1$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$2$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$2$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$2$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$2$$return: int;
  var inline$java.lang.Boolean$booleanValue$$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$2$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$3$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$3$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception: ref;
  var inline$java.lang.String$charAt$int$0$r0: ref;
  var inline$java.lang.String$charAt$int$0$$r1: ref;
  var inline$java.lang.String$charAt$int$0$$c1: int;
  var inline$java.lang.String$charAt$int$0$i0: int;
  var inline$java.lang.String$charAt$int$0$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$0$$this: ref;
  var inline$java.lang.String$charAt$int$0$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$0$$return: int;
  var inline$java.lang.String$charAt$int$0$$exception: ref;
  var inline$java.lang.String$charAt$int$0$$objIndex: int;
  var inline$java.lang.String$charAt$int$0$$heap: $heap_type;
  var inline$java.lang.String$charAt$int$1$r0: ref;
  var inline$java.lang.String$charAt$int$1$$r1: ref;
  var inline$java.lang.String$charAt$int$1$$c1: int;
  var inline$java.lang.String$charAt$int$1$i0: int;
  var inline$java.lang.String$charAt$int$1$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$1$$this: ref;
  var inline$java.lang.String$charAt$int$1$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$1$$return: int;
  var inline$java.lang.String$charAt$int$1$$exception: ref;
  var inline$java.lang.String$charAt$int$1$$objIndex: int;
  var inline$java.lang.String$charAt$int$1$$heap: $heap_type;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$4$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$4$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$5$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$5$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$6$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$6$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception: ref;
  var inline$java.lang.String$charAt$int$2$r0: ref;
  var inline$java.lang.String$charAt$int$2$$r1: ref;
  var inline$java.lang.String$charAt$int$2$$c1: int;
  var inline$java.lang.String$charAt$int$2$i0: int;
  var inline$java.lang.String$charAt$int$2$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$2$$this: ref;
  var inline$java.lang.String$charAt$int$2$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$2$$return: int;
  var inline$java.lang.String$charAt$int$2$$exception: ref;
  var inline$java.lang.String$charAt$int$2$$objIndex: int;
  var inline$java.lang.String$charAt$int$2$$heap: $heap_type;
  var inline$java.lang.String$charAt$int$3$r0: ref;
  var inline$java.lang.String$charAt$int$3$$r1: ref;
  var inline$java.lang.String$charAt$int$3$$c1: int;
  var inline$java.lang.String$charAt$int$3$i0: int;
  var inline$java.lang.String$charAt$int$3$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$3$$this: ref;
  var inline$java.lang.String$charAt$int$3$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$3$$return: int;
  var inline$java.lang.String$charAt$int$3$$exception: ref;
  var inline$java.lang.String$charAt$int$3$$objIndex: int;
  var inline$java.lang.String$charAt$int$3$$heap: $heap_type;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$7$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$7$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$8$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$8$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$9$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$9$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$3$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$3$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$3$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$3$$return: int;
  var inline$java.lang.Boolean$booleanValue$$3$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$10$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$10$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$10$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$10$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$10$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$11$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$11$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$11$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$11$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$11$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$4$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$4$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$4$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$4$$return: int;
  var inline$java.lang.Boolean$booleanValue$$4$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$12$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$12$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$12$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$12$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$12$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$13$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$13$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$13$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$13$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$13$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$5$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$5$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$5$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$5$$return: int;
  var inline$java.lang.Boolean$booleanValue$$5$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$14$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$14$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$14$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$14$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$14$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$14$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$14$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$14$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$14$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$14$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$14$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$14$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$14$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$14$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$14$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$14$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$15$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$15$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$15$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$15$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$15$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$15$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$15$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$15$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$15$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$15$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$15$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$15$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$15$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$15$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$15$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$15$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$6$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$6$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$6$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$6$$return: int;
  var inline$java.lang.Boolean$booleanValue$$6$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$in_parameter__1, fixed.$type] <: fixed.java.lang.String;
    assume fixed.$heap[$in_parameter__0, fixed.$type] <: fixed.java.lang.String;
    $exception := fixed.$null;
    assert {:sourceloc "User.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "User.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "User.java", 29, -1, -1, -1} true;
    z2 := 0;
    assert {:sourceloc "User.java", 30, -1, -1, -1} true;
    z3 := 0;
    assert {:sourceloc "User.java", 31, -1, -1, -1} true;
    z4 := 1;
    assert {:sourceloc "User.java", 32, -1, -1, -1} true;
    z5 := 1;
    assert {:sourceloc "User.java", 33, -1, -1, -1} true;
    i0 := fixed.$stringSizeHeap[r0];
    assert {:sourceloc "User.java", 34, -1, -1, -1} true;
    i1 := fixed.$stringSizeHeap[r1];
    assert {:sourceloc "User.java", 35, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} i0 != i1;
    assert {:sourceloc "User.java", 35, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "User.java", 36, -1, -1, -1} true;
    z4 := 0;
    goto block62;

  block62:
    assert {:sourceloc "User.java", 38, -1, -1, -1} true;
    goto inline$java.lang.Math$min$int_int$0$Entry;

  inline$java.lang.Math$min$int_int$0$Entry:
    inline$java.lang.Math$min$int_int$0$$in_parameter__0 := i0;
    inline$java.lang.Math$min$int_int$0$$in_parameter__1 := i1;
    havoc inline$java.lang.Math$min$int_int$0$i0, inline$java.lang.Math$min$int_int$0$i1, inline$java.lang.Math$min$int_int$0$$i2, inline$java.lang.Math$min$int_int$0$$return, inline$java.lang.Math$min$int_int$0$$exception;
    goto inline$java.lang.Math$min$int_int$0$anon0;

  inline$java.lang.Math$min$int_int$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$java.lang.Math$min$int_int$0$$exception := fixed.$null;
    assert {:sourceloc "Math.java", -1, -1, -1, -1} true;
    inline$java.lang.Math$min$int_int$0$i0 := inline$java.lang.Math$min$int_int$0$$in_parameter__0;
    assert {:sourceloc "Math.java", -1, -1, -1, -1} true;
    inline$java.lang.Math$min$int_int$0$i1 := inline$java.lang.Math$min$int_int$0$$in_parameter__1;
    assert {:sourceloc "Math.java", 5, -1, -1, -1} true;
    goto inline$java.lang.Math$min$int_int$0$anon4_Then, inline$java.lang.Math$min$int_int$0$anon4_Else;

  inline$java.lang.Math$min$int_int$0$anon4_Else:
    assume {:partition} inline$java.lang.Math$min$int_int$0$i1 > inline$java.lang.Math$min$int_int$0$i0;
    assert {:sourceloc "Math.java", 5, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.Math$min$int_int$0$anon3;

  inline$java.lang.Math$min$int_int$0$anon3:
    assert {:sourceloc "Math.java", 5, -1, -1, -1} true;
    inline$java.lang.Math$min$int_int$0$$i2 := inline$java.lang.Math$min$int_int$0$i0;
    assert {:sourceloc "Math.java", 5, -1, -1, -1} true;
    goto inline$java.lang.Math$min$int_int$0$block3;

  inline$java.lang.Math$min$int_int$0$block3:
    assert {:sourceloc "Math.java", 5, -1, -1, -1} true;
    inline$java.lang.Math$min$int_int$0$$return := inline$java.lang.Math$min$int_int$0$$i2;
    goto inline$java.lang.Math$min$int_int$0$block4;

  inline$java.lang.Math$min$int_int$0$block4:
    goto inline$java.lang.Math$min$int_int$0$Return;

  inline$java.lang.Math$min$int_int$0$anon4_Then:
    assume {:partition} inline$java.lang.Math$min$int_int$0$i0 >= inline$java.lang.Math$min$int_int$0$i1;
    assert {:sourceloc "Math.java", 5, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$java.lang.Math$min$int_int$0$block2;

  inline$java.lang.Math$min$int_int$0$block2:
    assert {:sourceloc "Math.java", 5, -1, -1, -1} true;
    inline$java.lang.Math$min$int_int$0$$i2 := inline$java.lang.Math$min$int_int$0$i1;
    goto inline$java.lang.Math$min$int_int$0$block3;

  inline$java.lang.Math$min$int_int$0$Return:
    i2 := inline$java.lang.Math$min$int_int$0$$return;
    $exception := inline$java.lang.Math$min$int_int$0$$exception;
    goto block62$1;

  block62$1:
    assert {:sourceloc "User.java", 39, -1, -1, -1} true;
    i7 := 0;
    goto block63;

  block63:
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Entry;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Entry:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$return := $return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$exception := $exception;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r12 := $r12;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_5 := $fakelocal_5;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r7 := $r7;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r9 := $r9;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i7 := i7;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i2 := i2;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r19 := $r19;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_2 := $fakelocal_2;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r13 := $r13;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z0 := z0;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r6 := $r6;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_r0 := r0;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r17 := $r17;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c3 := $c3;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z2 := z2;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r8 := $r8;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z5 := z5;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_3 := $fakelocal_3;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r10 := $r10;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c5 := $c5;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_1 := $fakelocal_1;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r15 := $r15;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l6 := $l6;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l4 := $l4;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r11 := $r11;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_0 := $fakelocal_0;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_4 := $fakelocal_4;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r14 := $r14;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r16 := $r16;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z3 := z3;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_r1 := r1;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r18 := $r18;
    havoc inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$objIndex := fixed.$objIndex;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$heap := fixed.$heap;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$entry;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$entry:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r18;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$block63;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$block63:
    assert {:sourceloc "User.java", 39, -1, -1, -1} true;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon32_Then, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon32_Else;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon32_Then:
    assume {:partition} inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7
   >= inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i2;
    assert {:sourceloc "User.java", 39, -1, -1, -1} {:comment "thenblock"} true;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r18;
    fixed.$objIndex, fixed.$heap := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$objIndex, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$heap;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Return;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon24:
    goto inline$java.lang.Boolean$booleanValue$$0$Entry;

  inline$java.lang.Boolean$booleanValue$$0$Entry:
    inline$java.lang.Boolean$booleanValue$$0$$this := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19;
    havoc inline$java.lang.Boolean$booleanValue$$0$r0, inline$java.lang.Boolean$booleanValue$$0$$z0, inline$java.lang.Boolean$booleanValue$$0$$return, inline$java.lang.Boolean$booleanValue$$0$$exception;
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
    goto inline$java.lang.Boolean$booleanValue$$0$block9;

  inline$java.lang.Boolean$booleanValue$$0$block9:
    goto inline$java.lang.Boolean$booleanValue$$0$Return;

  inline$java.lang.Boolean$booleanValue$$0$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5 := inline$java.lang.Boolean$booleanValue$$0$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.Boolean$booleanValue$$0$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon24$1;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon24$1:
    assert {:sourceloc "User.java", 39, -1, -1, -1} true;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7
   + 1;
    assert {:sourceloc "User.java", 39, -1, -1, -1} true;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon24_dummy;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon38_Then:
    assume {:partition} inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19
   != fixed.$null;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon24;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon21:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18;
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon38_Then, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon38_Else;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon38_Else:
    assume {:partition} inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19
   == fixed.$null;
    call inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return := 0;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r18;
    fixed.$objIndex, fixed.$heap := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$objIndex, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$heap;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Return;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon37_Then:
    assume {:partition} fixed.$heap[inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon21;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon18:
    goto inline$java.lang.Boolean$booleanValue$$1$Entry;

  inline$java.lang.Boolean$booleanValue$$1$Entry:
    inline$java.lang.Boolean$booleanValue$$1$$this := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15;
    havoc inline$java.lang.Boolean$booleanValue$$1$r0, inline$java.lang.Boolean$booleanValue$$1$$z0, inline$java.lang.Boolean$booleanValue$$1$$return, inline$java.lang.Boolean$booleanValue$$1$$exception;
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
    goto inline$java.lang.Boolean$booleanValue$$1$block9;

  inline$java.lang.Boolean$booleanValue$$1$block9:
    goto inline$java.lang.Boolean$booleanValue$$1$Return;

  inline$java.lang.Boolean$booleanValue$$1$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3 := inline$java.lang.Boolean$booleanValue$$1$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.Boolean$booleanValue$$1$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon18$1;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon18$1:
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$0$Entry;

  inline$java.lang.Boolean$valueOf$boolean$0$Entry:
    inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5;
    havoc inline$java.lang.Boolean$valueOf$boolean$0$z0, inline$java.lang.Boolean$valueOf$boolean$0$$r0, inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$0$$return, inline$java.lang.Boolean$valueOf$boolean$0$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    inline$java.lang.Boolean$valueOf$boolean$0$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$0$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$0$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$0$$return := inline$java.lang.Boolean$valueOf$boolean$0$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$0$block8;

  inline$java.lang.Boolean$valueOf$boolean$0$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$0$Return;

  inline$java.lang.Boolean$valueOf$boolean$0$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16 := inline$java.lang.Boolean$valueOf$boolean$0$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$0$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon18$2;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon18$2:
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$1$Entry;

  inline$java.lang.Boolean$valueOf$boolean$1$Entry:
    inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$1$z0, inline$java.lang.Boolean$valueOf$boolean$1$$r0, inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$1$$return, inline$java.lang.Boolean$valueOf$boolean$1$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$Return:
    inline$java.lang.Boolean$valueOf$boolean$1$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$1$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$1$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$1$$return := inline$java.lang.Boolean$valueOf$boolean$1$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$1$block8;

  inline$java.lang.Boolean$valueOf$boolean$1$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$1$Return;

  inline$java.lang.Boolean$valueOf$boolean$1$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17 := inline$java.lang.Boolean$valueOf$boolean$1$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$1$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon18$3;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon18$3:
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block58:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block59:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block60:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon18$4;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon18$4:
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon37_Then, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon37_Else;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon37_Else:
    assume {:partition} !(fixed.$heap[inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return := 0;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r18;
    fixed.$objIndex, fixed.$heap := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$objIndex, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$heap;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Return;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon36_Then:
    assume {:partition} inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15
   != fixed.$null;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon18;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon15:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14;
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon36_Then, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon36_Else;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon36_Else:
    assume {:partition} inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15
   == fixed.$null;
    call inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return := 0;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r18;
    fixed.$objIndex, fixed.$heap := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$objIndex, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$heap;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Return;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon35_Then:
    assume {:partition} fixed.$heap[inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon15;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon12:
    goto inline$java.lang.Boolean$booleanValue$$2$Entry;

  inline$java.lang.Boolean$booleanValue$$2$Entry:
    inline$java.lang.Boolean$booleanValue$$2$$this := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11;
    havoc inline$java.lang.Boolean$booleanValue$$2$r0, inline$java.lang.Boolean$booleanValue$$2$$z0, inline$java.lang.Boolean$booleanValue$$2$$return, inline$java.lang.Boolean$booleanValue$$2$$exception;
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
    goto inline$java.lang.Boolean$booleanValue$$2$block9;

  inline$java.lang.Boolean$booleanValue$$2$block9:
    goto inline$java.lang.Boolean$booleanValue$$2$Return;

  inline$java.lang.Boolean$booleanValue$$2$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2 := inline$java.lang.Boolean$booleanValue$$2$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.Boolean$booleanValue$$2$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon12$1;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon12$1:
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$2$Entry;

  inline$java.lang.Boolean$valueOf$boolean$2$Entry:
    inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$2$z0, inline$java.lang.Boolean$valueOf$boolean$2$$r0, inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$2$$return, inline$java.lang.Boolean$valueOf$boolean$2$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$Return:
    inline$java.lang.Boolean$valueOf$boolean$2$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$2$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$2$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$2$$return := inline$java.lang.Boolean$valueOf$boolean$2$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$2$block8;

  inline$java.lang.Boolean$valueOf$boolean$2$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$2$Return;

  inline$java.lang.Boolean$valueOf$boolean$2$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12 := inline$java.lang.Boolean$valueOf$boolean$2$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$2$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon12$2;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon12$2:
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$3$Entry;

  inline$java.lang.Boolean$valueOf$boolean$3$Entry:
    inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3;
    havoc inline$java.lang.Boolean$valueOf$boolean$3$z0, inline$java.lang.Boolean$valueOf$boolean$3$$r0, inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$3$$return, inline$java.lang.Boolean$valueOf$boolean$3$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$Return:
    inline$java.lang.Boolean$valueOf$boolean$3$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$3$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$3$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$3$$return := inline$java.lang.Boolean$valueOf$boolean$3$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$3$block8;

  inline$java.lang.Boolean$valueOf$boolean$3$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$3$Return;

  inline$java.lang.Boolean$valueOf$boolean$3$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13 := inline$java.lang.Boolean$valueOf$boolean$3$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$3$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon12$3;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon12$3:
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block58:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block59:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block60:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon12$4;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon12$4:
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon35_Then, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon35_Else;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon35_Else:
    assume {:partition} !(fixed.$heap[inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return := 0;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r18;
    fixed.$objIndex, fixed.$heap := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$objIndex, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$heap;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Return;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon34_Then:
    assume {:partition} inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11
   != fixed.$null;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon12;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon9:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10;
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon34_Then, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon34_Else;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon34_Else:
    assume {:partition} inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11
   == fixed.$null;
    call inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return := 0;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r18;
    fixed.$objIndex, fixed.$heap := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$objIndex, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$heap;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Return;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon33_Then:
    assume {:partition} fixed.$heap[inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon9;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6:
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$0$Entry;

  inline$java.lang.String$charAt$int$0$Entry:
    inline$java.lang.String$charAt$int$0$$this := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_r0;
    inline$java.lang.String$charAt$int$0$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7;
    havoc inline$java.lang.String$charAt$int$0$r0, inline$java.lang.String$charAt$int$0$$r1, inline$java.lang.String$charAt$int$0$$c1, inline$java.lang.String$charAt$int$0$i0, inline$java.lang.String$charAt$int$0$$fakelocal_0, inline$java.lang.String$charAt$int$0$$return, inline$java.lang.String$charAt$int$0$$exception;
    inline$java.lang.String$charAt$int$0$$objIndex := fixed.$objIndex;
    inline$java.lang.String$charAt$int$0$$heap := fixed.$heap;
    goto inline$java.lang.String$charAt$int$0$anon0;

  inline$java.lang.String$charAt$int$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.String$charAt$int$0$$this, fixed.$type]
   <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$0$$this != fixed.$null;
    inline$java.lang.String$charAt$int$0$$exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$r0 := inline$java.lang.String$charAt$int$0$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$i0 := inline$java.lang.String$charAt$int$0$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$$r1 := fixed.$heap[inline$java.lang.String$charAt$int$0$r0, fixed.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$0$anon4_Then, inline$java.lang.String$charAt$int$0$anon4_Else;

  inline$java.lang.String$charAt$int$0$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$0$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$0$$r1]
   && inline$java.lang.String$charAt$int$0$i0 >= 0);
    call inline$java.lang.String$charAt$int$0$$fakelocal_0 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$0$$return := 0;
    inline$java.lang.String$charAt$int$0$$exception := inline$java.lang.String$charAt$int$0$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$0$Return;

  inline$java.lang.String$charAt$int$0$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$0$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$0$$r1]
   && inline$java.lang.String$charAt$int$0$i0 >= 0;
    inline$java.lang.String$charAt$int$0$$exception := inline$java.lang.String$charAt$int$0$$exception;
    goto inline$java.lang.String$charAt$int$0$anon3;

  inline$java.lang.String$charAt$int$0$anon3:
    inline$java.lang.String$charAt$int$0$$c1 := fixed.$intArrHeap[inline$java.lang.String$charAt$int$0$$r1][inline$java.lang.String$charAt$int$0$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$$return := inline$java.lang.String$charAt$int$0$$c1;
    goto inline$java.lang.String$charAt$int$0$block6;

  inline$java.lang.String$charAt$int$0$block6:
    goto inline$java.lang.String$charAt$int$0$Return;

  inline$java.lang.String$charAt$int$0$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3 := inline$java.lang.String$charAt$int$0$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.String$charAt$int$0$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$1;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$1:
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3;
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$1$Entry;

  inline$java.lang.String$charAt$int$1$Entry:
    inline$java.lang.String$charAt$int$1$$this := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_r1;
    inline$java.lang.String$charAt$int$1$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7;
    havoc inline$java.lang.String$charAt$int$1$r0, inline$java.lang.String$charAt$int$1$$r1, inline$java.lang.String$charAt$int$1$$c1, inline$java.lang.String$charAt$int$1$i0, inline$java.lang.String$charAt$int$1$$fakelocal_0, inline$java.lang.String$charAt$int$1$$return, inline$java.lang.String$charAt$int$1$$exception;
    inline$java.lang.String$charAt$int$1$$objIndex := fixed.$objIndex;
    inline$java.lang.String$charAt$int$1$$heap := fixed.$heap;
    goto inline$java.lang.String$charAt$int$1$anon0;

  inline$java.lang.String$charAt$int$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.String$charAt$int$1$$this, fixed.$type]
   <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$1$$this != fixed.$null;
    inline$java.lang.String$charAt$int$1$$exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$r0 := inline$java.lang.String$charAt$int$1$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$i0 := inline$java.lang.String$charAt$int$1$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$$r1 := fixed.$heap[inline$java.lang.String$charAt$int$1$r0, fixed.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$1$anon4_Then, inline$java.lang.String$charAt$int$1$anon4_Else;

  inline$java.lang.String$charAt$int$1$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$1$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$1$$r1]
   && inline$java.lang.String$charAt$int$1$i0 >= 0);
    call inline$java.lang.String$charAt$int$1$$fakelocal_0 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$1$$return := 0;
    inline$java.lang.String$charAt$int$1$$exception := inline$java.lang.String$charAt$int$1$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$1$Return;

  inline$java.lang.String$charAt$int$1$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$1$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$1$$r1]
   && inline$java.lang.String$charAt$int$1$i0 >= 0;
    inline$java.lang.String$charAt$int$1$$exception := inline$java.lang.String$charAt$int$1$$exception;
    goto inline$java.lang.String$charAt$int$1$anon3;

  inline$java.lang.String$charAt$int$1$anon3:
    inline$java.lang.String$charAt$int$1$$c1 := fixed.$intArrHeap[inline$java.lang.String$charAt$int$1$$r1][inline$java.lang.String$charAt$int$1$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$$return := inline$java.lang.String$charAt$int$1$$c1;
    goto inline$java.lang.String$charAt$int$1$block6;

  inline$java.lang.String$charAt$int$1$block6:
    goto inline$java.lang.String$charAt$int$1$Return;

  inline$java.lang.String$charAt$int$1$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5 := inline$java.lang.String$charAt$int$1$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.String$charAt$int$1$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$2;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$2:
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5;
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception;
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block31;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block31:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block32;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block32:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block33;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block33:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block32;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block31;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$3;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$3:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$4$Entry;

  inline$java.lang.Boolean$valueOf$boolean$4$Entry:
    inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2;
    havoc inline$java.lang.Boolean$valueOf$boolean$4$z0, inline$java.lang.Boolean$valueOf$boolean$4$$r0, inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$4$$return, inline$java.lang.Boolean$valueOf$boolean$4$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$Return:
    inline$java.lang.Boolean$valueOf$boolean$4$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$4$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$4$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$4$$return := inline$java.lang.Boolean$valueOf$boolean$4$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$4$block8;

  inline$java.lang.Boolean$valueOf$boolean$4$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$4$Return;

  inline$java.lang.Boolean$valueOf$boolean$4$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6 := inline$java.lang.Boolean$valueOf$boolean$4$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$4$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$4;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$4:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$5$Entry;

  inline$java.lang.Boolean$valueOf$boolean$5$Entry:
    inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0 := 0;
    havoc inline$java.lang.Boolean$valueOf$boolean$5$z0, inline$java.lang.Boolean$valueOf$boolean$5$$r0, inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$5$$return, inline$java.lang.Boolean$valueOf$boolean$5$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$Return:
    inline$java.lang.Boolean$valueOf$boolean$5$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$5$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$5$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$5$$return := inline$java.lang.Boolean$valueOf$boolean$5$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$5$block8;

  inline$java.lang.Boolean$valueOf$boolean$5$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$5$Return;

  inline$java.lang.Boolean$valueOf$boolean$5$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7 := inline$java.lang.Boolean$valueOf$boolean$5$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$5$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$5;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$5:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception;
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block58:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block59:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block60:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$6;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$6:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$6$Entry;

  inline$java.lang.Boolean$valueOf$boolean$6$Entry:
    inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2;
    havoc inline$java.lang.Boolean$valueOf$boolean$6$z0, inline$java.lang.Boolean$valueOf$boolean$6$$r0, inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$6$$return, inline$java.lang.Boolean$valueOf$boolean$6$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$Return:
    inline$java.lang.Boolean$valueOf$boolean$6$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$6$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$6$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$6$$return := inline$java.lang.Boolean$valueOf$boolean$6$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$6$block8;

  inline$java.lang.Boolean$valueOf$boolean$6$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$6$Return;

  inline$java.lang.Boolean$valueOf$boolean$6$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9 := inline$java.lang.Boolean$valueOf$boolean$6$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$6$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$7;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$7:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2, fixed.$type]
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block58:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block59:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block60:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$8;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$8:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon33_Then, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon33_Else;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon33_Else:
    assume {:partition} !(fixed.$heap[inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return := 0;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r18;
    fixed.$objIndex, fixed.$heap := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$objIndex, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$heap;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Return;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon32_Else:
    assume {:partition} inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i2
   > inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7;
    assert {:sourceloc "User.java", 39, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon24_dummy:
    assume false;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Return;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$exit:
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Return;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Return:
    $return := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return;
    $exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception;
    $r12 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12;
    $fakelocal_5 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5;
    $r7 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7;
    $r9 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9;
    i7 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7;
    $r19 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19;
    $fakelocal_2 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2;
    $r13 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13;
    z0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0;
    $r6 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6;
    $r17 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17;
    $c3 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3;
    z2 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2;
    $r8 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8;
    z5 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5;
    $fakelocal_3 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3;
    $r10 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10;
    $c5 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5;
    $fakelocal_1 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1;
    $r15 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15;
    $l6 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6;
    $l4 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4;
    $r11 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11;
    $fakelocal_0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0;
    $fakelocal_4 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4;
    $r14 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14;
    $r16 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16;
    z3 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3;
    $r18 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18;
    goto block63$1;

  block63$1:
    goto block63_last;

  anon32_Else:
    assume {:partition} i2 > i7;
    assert {:sourceloc "User.java", 39, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$2$Entry;

  inline$java.lang.String$charAt$int$2$Entry:
    inline$java.lang.String$charAt$int$2$$this := r0;
    inline$java.lang.String$charAt$int$2$$in_parameter__0 := i7;
    havoc inline$java.lang.String$charAt$int$2$r0, inline$java.lang.String$charAt$int$2$$r1, inline$java.lang.String$charAt$int$2$$c1, inline$java.lang.String$charAt$int$2$i0, inline$java.lang.String$charAt$int$2$$fakelocal_0, inline$java.lang.String$charAt$int$2$$return, inline$java.lang.String$charAt$int$2$$exception;
    inline$java.lang.String$charAt$int$2$$objIndex := fixed.$objIndex;
    inline$java.lang.String$charAt$int$2$$heap := fixed.$heap;
    goto inline$java.lang.String$charAt$int$2$anon0;

  inline$java.lang.String$charAt$int$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.String$charAt$int$2$$this, fixed.$type]
   <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$2$$this != fixed.$null;
    inline$java.lang.String$charAt$int$2$$exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$r0 := inline$java.lang.String$charAt$int$2$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$i0 := inline$java.lang.String$charAt$int$2$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$$r1 := fixed.$heap[inline$java.lang.String$charAt$int$2$r0, fixed.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$2$anon4_Then, inline$java.lang.String$charAt$int$2$anon4_Else;

  inline$java.lang.String$charAt$int$2$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$2$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$2$$r1]
   && inline$java.lang.String$charAt$int$2$i0 >= 0);
    call inline$java.lang.String$charAt$int$2$$fakelocal_0 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$2$$return := 0;
    inline$java.lang.String$charAt$int$2$$exception := inline$java.lang.String$charAt$int$2$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$2$Return;

  inline$java.lang.String$charAt$int$2$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$2$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$2$$r1]
   && inline$java.lang.String$charAt$int$2$i0 >= 0;
    inline$java.lang.String$charAt$int$2$$exception := inline$java.lang.String$charAt$int$2$$exception;
    goto inline$java.lang.String$charAt$int$2$anon3;

  inline$java.lang.String$charAt$int$2$anon3:
    inline$java.lang.String$charAt$int$2$$c1 := fixed.$intArrHeap[inline$java.lang.String$charAt$int$2$$r1][inline$java.lang.String$charAt$int$2$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$$return := inline$java.lang.String$charAt$int$2$$c1;
    goto inline$java.lang.String$charAt$int$2$block6;

  inline$java.lang.String$charAt$int$2$block6:
    goto inline$java.lang.String$charAt$int$2$Return;

  inline$java.lang.String$charAt$int$2$Return:
    $c3 := inline$java.lang.String$charAt$int$2$$return;
    $exception := inline$java.lang.String$charAt$int$2$$exception;
    goto anon6$1;

  anon6$1:
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    $l4 := $c3;
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$3$Entry;

  inline$java.lang.String$charAt$int$3$Entry:
    inline$java.lang.String$charAt$int$3$$this := r1;
    inline$java.lang.String$charAt$int$3$$in_parameter__0 := i7;
    havoc inline$java.lang.String$charAt$int$3$r0, inline$java.lang.String$charAt$int$3$$r1, inline$java.lang.String$charAt$int$3$$c1, inline$java.lang.String$charAt$int$3$i0, inline$java.lang.String$charAt$int$3$$fakelocal_0, inline$java.lang.String$charAt$int$3$$return, inline$java.lang.String$charAt$int$3$$exception;
    inline$java.lang.String$charAt$int$3$$objIndex := fixed.$objIndex;
    inline$java.lang.String$charAt$int$3$$heap := fixed.$heap;
    goto inline$java.lang.String$charAt$int$3$anon0;

  inline$java.lang.String$charAt$int$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.String$charAt$int$3$$this, fixed.$type]
   <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$3$$this != fixed.$null;
    inline$java.lang.String$charAt$int$3$$exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$r0 := inline$java.lang.String$charAt$int$3$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$i0 := inline$java.lang.String$charAt$int$3$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$$r1 := fixed.$heap[inline$java.lang.String$charAt$int$3$r0, fixed.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$3$anon4_Then, inline$java.lang.String$charAt$int$3$anon4_Else;

  inline$java.lang.String$charAt$int$3$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$3$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$3$$r1]
   && inline$java.lang.String$charAt$int$3$i0 >= 0);
    call inline$java.lang.String$charAt$int$3$$fakelocal_0 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$3$$return := 0;
    inline$java.lang.String$charAt$int$3$$exception := inline$java.lang.String$charAt$int$3$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$3$Return;

  inline$java.lang.String$charAt$int$3$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$3$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$3$$r1]
   && inline$java.lang.String$charAt$int$3$i0 >= 0;
    inline$java.lang.String$charAt$int$3$$exception := inline$java.lang.String$charAt$int$3$$exception;
    goto inline$java.lang.String$charAt$int$3$anon3;

  inline$java.lang.String$charAt$int$3$anon3:
    inline$java.lang.String$charAt$int$3$$c1 := fixed.$intArrHeap[inline$java.lang.String$charAt$int$3$$r1][inline$java.lang.String$charAt$int$3$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$$return := inline$java.lang.String$charAt$int$3$$c1;
    goto inline$java.lang.String$charAt$int$3$block6;

  inline$java.lang.String$charAt$int$3$block6:
    goto inline$java.lang.String$charAt$int$3$Return;

  inline$java.lang.String$charAt$int$3$Return:
    $c5 := inline$java.lang.String$charAt$int$3$$return;
    $exception := inline$java.lang.String$charAt$int$3$$exception;
    goto anon6$2;

  anon6$2:
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    $l6 := $c5;
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__0 := $l4;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__1 := $l6;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception;
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block31;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block31:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block32;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block32:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block33;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block33:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block32;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block31;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Return:
    z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception;
    goto anon6$3;

  anon6$3:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$7$Entry;

  inline$java.lang.Boolean$valueOf$boolean$7$Entry:
    inline$java.lang.Boolean$valueOf$boolean$7$$in_parameter__0 := z2;
    havoc inline$java.lang.Boolean$valueOf$boolean$7$z0, inline$java.lang.Boolean$valueOf$boolean$7$$r0, inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$7$$return, inline$java.lang.Boolean$valueOf$boolean$7$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$Return:
    inline$java.lang.Boolean$valueOf$boolean$7$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$7$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$7$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$7$$return := inline$java.lang.Boolean$valueOf$boolean$7$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$7$block8;

  inline$java.lang.Boolean$valueOf$boolean$7$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$7$Return;

  inline$java.lang.Boolean$valueOf$boolean$7$Return:
    $r6 := inline$java.lang.Boolean$valueOf$boolean$7$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$7$$exception;
    goto anon6$4;

  anon6$4:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$8$Entry;

  inline$java.lang.Boolean$valueOf$boolean$8$Entry:
    inline$java.lang.Boolean$valueOf$boolean$8$$in_parameter__0 := 0;
    havoc inline$java.lang.Boolean$valueOf$boolean$8$z0, inline$java.lang.Boolean$valueOf$boolean$8$$r0, inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$8$$return, inline$java.lang.Boolean$valueOf$boolean$8$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$Return:
    inline$java.lang.Boolean$valueOf$boolean$8$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$8$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$8$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$8$$return := inline$java.lang.Boolean$valueOf$boolean$8$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$8$block8;

  inline$java.lang.Boolean$valueOf$boolean$8$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$8$Return;

  inline$java.lang.Boolean$valueOf$boolean$8$Return:
    $r7 := inline$java.lang.Boolean$valueOf$boolean$8$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$8$$exception;
    goto anon6$5;

  anon6$5:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__0 := z3;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1 := $r6;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2 := $r7;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2, fixed.$type]
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block58:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block59:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block60:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Return:
    $r8 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception;
    goto anon6$6;

  anon6$6:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$9$Entry;

  inline$java.lang.Boolean$valueOf$boolean$9$Entry:
    inline$java.lang.Boolean$valueOf$boolean$9$$in_parameter__0 := z2;
    havoc inline$java.lang.Boolean$valueOf$boolean$9$z0, inline$java.lang.Boolean$valueOf$boolean$9$$r0, inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$9$$return, inline$java.lang.Boolean$valueOf$boolean$9$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$Return:
    inline$java.lang.Boolean$valueOf$boolean$9$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$9$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$9$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$9$$return := inline$java.lang.Boolean$valueOf$boolean$9$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$9$block8;

  inline$java.lang.Boolean$valueOf$boolean$9$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$9$Return;

  inline$java.lang.Boolean$valueOf$boolean$9$Return:
    $r9 := inline$java.lang.Boolean$valueOf$boolean$9$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$9$$exception;
    goto anon6$7;

  anon6$7:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__0 := z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1 := $r8;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2 := $r9;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2, fixed.$type]
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block58:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block59:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block60:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Return:
    $r10 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception;
    goto anon6$8;

  anon6$8:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !(fixed.$heap[$r10, fixed.$type] <: fixed.java.lang.Boolean);
    call $fakelocal_0 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon33_Then:
    assume {:partition} fixed.$heap[$r10, fixed.$type] <: fixed.java.lang.Boolean;
    $exception := $exception;
    goto anon9;

  anon9:
    $r11 := $r10;
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} $r11 == fixed.$null;
    call $fakelocal_1 := fixed.$new(fixed.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon34_Then:
    assume {:partition} $r11 != fixed.$null;
    $exception := $exception;
    goto anon12;

  anon12:
    goto inline$java.lang.Boolean$booleanValue$$3$Entry;

  inline$java.lang.Boolean$booleanValue$$3$Entry:
    inline$java.lang.Boolean$booleanValue$$3$$this := $r11;
    havoc inline$java.lang.Boolean$booleanValue$$3$r0, inline$java.lang.Boolean$booleanValue$$3$$z0, inline$java.lang.Boolean$booleanValue$$3$$return, inline$java.lang.Boolean$booleanValue$$3$$exception;
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
    goto inline$java.lang.Boolean$booleanValue$$3$block9;

  inline$java.lang.Boolean$booleanValue$$3$block9:
    goto inline$java.lang.Boolean$booleanValue$$3$Return;

  inline$java.lang.Boolean$booleanValue$$3$Return:
    z2 := inline$java.lang.Boolean$booleanValue$$3$$return;
    $exception := inline$java.lang.Boolean$booleanValue$$3$$exception;
    goto anon12$1;

  anon12$1:
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$10$Entry;

  inline$java.lang.Boolean$valueOf$boolean$10$Entry:
    inline$java.lang.Boolean$valueOf$boolean$10$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$10$z0, inline$java.lang.Boolean$valueOf$boolean$10$$r0, inline$java.lang.Boolean$valueOf$boolean$10$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$10$$return, inline$java.lang.Boolean$valueOf$boolean$10$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$10$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$10$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$10$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$10$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$10$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$10$Return:
    inline$java.lang.Boolean$valueOf$boolean$10$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$10$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$10$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$10$$return := inline$java.lang.Boolean$valueOf$boolean$10$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$10$block8;

  inline$java.lang.Boolean$valueOf$boolean$10$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$10$Return;

  inline$java.lang.Boolean$valueOf$boolean$10$Return:
    $r12 := inline$java.lang.Boolean$valueOf$boolean$10$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$10$$exception;
    goto anon12$2;

  anon12$2:
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$11$Entry;

  inline$java.lang.Boolean$valueOf$boolean$11$Entry:
    inline$java.lang.Boolean$valueOf$boolean$11$$in_parameter__0 := z3;
    havoc inline$java.lang.Boolean$valueOf$boolean$11$z0, inline$java.lang.Boolean$valueOf$boolean$11$$r0, inline$java.lang.Boolean$valueOf$boolean$11$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$11$$return, inline$java.lang.Boolean$valueOf$boolean$11$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$11$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$11$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$11$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$11$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$11$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$11$Return:
    inline$java.lang.Boolean$valueOf$boolean$11$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$11$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$11$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$11$$return := inline$java.lang.Boolean$valueOf$boolean$11$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$11$block8;

  inline$java.lang.Boolean$valueOf$boolean$11$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$11$Return;

  inline$java.lang.Boolean$valueOf$boolean$11$Return:
    $r13 := inline$java.lang.Boolean$valueOf$boolean$11$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$11$$exception;
    goto anon12$3;

  anon12$3:
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__0 := z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__1 := $r12;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__2 := $r13;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__2, fixed.$type]
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block58:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block59:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block60:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$Return:
    $r14 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$exception;
    goto anon12$4;

  anon12$4:
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} !(fixed.$heap[$r14, fixed.$type] <: fixed.java.lang.Boolean);
    call $fakelocal_2 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon35_Then:
    assume {:partition} fixed.$heap[$r14, fixed.$type] <: fixed.java.lang.Boolean;
    $exception := $exception;
    goto anon15;

  anon15:
    $r15 := $r14;
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} $r15 == fixed.$null;
    call $fakelocal_3 := fixed.$new(fixed.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon36_Then:
    assume {:partition} $r15 != fixed.$null;
    $exception := $exception;
    goto anon18;

  anon18:
    goto inline$java.lang.Boolean$booleanValue$$4$Entry;

  inline$java.lang.Boolean$booleanValue$$4$Entry:
    inline$java.lang.Boolean$booleanValue$$4$$this := $r15;
    havoc inline$java.lang.Boolean$booleanValue$$4$r0, inline$java.lang.Boolean$booleanValue$$4$$z0, inline$java.lang.Boolean$booleanValue$$4$$return, inline$java.lang.Boolean$booleanValue$$4$$exception;
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
    goto inline$java.lang.Boolean$booleanValue$$4$block9;

  inline$java.lang.Boolean$booleanValue$$4$block9:
    goto inline$java.lang.Boolean$booleanValue$$4$Return;

  inline$java.lang.Boolean$booleanValue$$4$Return:
    z3 := inline$java.lang.Boolean$booleanValue$$4$$return;
    $exception := inline$java.lang.Boolean$booleanValue$$4$$exception;
    goto anon18$1;

  anon18$1:
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$12$Entry;

  inline$java.lang.Boolean$valueOf$boolean$12$Entry:
    inline$java.lang.Boolean$valueOf$boolean$12$$in_parameter__0 := z5;
    havoc inline$java.lang.Boolean$valueOf$boolean$12$z0, inline$java.lang.Boolean$valueOf$boolean$12$$r0, inline$java.lang.Boolean$valueOf$boolean$12$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$12$$return, inline$java.lang.Boolean$valueOf$boolean$12$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$12$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$12$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$12$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$12$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$12$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$12$Return:
    inline$java.lang.Boolean$valueOf$boolean$12$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$12$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$12$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$12$$return := inline$java.lang.Boolean$valueOf$boolean$12$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$12$block8;

  inline$java.lang.Boolean$valueOf$boolean$12$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$12$Return;

  inline$java.lang.Boolean$valueOf$boolean$12$Return:
    $r16 := inline$java.lang.Boolean$valueOf$boolean$12$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$12$$exception;
    goto anon18$2;

  anon18$2:
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$13$Entry;

  inline$java.lang.Boolean$valueOf$boolean$13$Entry:
    inline$java.lang.Boolean$valueOf$boolean$13$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$13$z0, inline$java.lang.Boolean$valueOf$boolean$13$$r0, inline$java.lang.Boolean$valueOf$boolean$13$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$13$$return, inline$java.lang.Boolean$valueOf$boolean$13$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$13$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$13$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$13$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$13$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$13$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$13$Return:
    inline$java.lang.Boolean$valueOf$boolean$13$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$13$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$13$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$13$$return := inline$java.lang.Boolean$valueOf$boolean$13$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$13$block8;

  inline$java.lang.Boolean$valueOf$boolean$13$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$13$Return;

  inline$java.lang.Boolean$valueOf$boolean$13$Return:
    $r17 := inline$java.lang.Boolean$valueOf$boolean$13$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$13$$exception;
    goto anon18$3;

  anon18$3:
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__0 := z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__1 := $r16;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__2 := $r17;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__2, fixed.$type]
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block58:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block59:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block60:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$Return:
    $r18 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$exception;
    goto anon18$4;

  anon18$4:
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon37_Else:
    assume {:partition} !(fixed.$heap[$r18, fixed.$type] <: fixed.java.lang.Boolean);
    call $fakelocal_4 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon37_Then:
    assume {:partition} fixed.$heap[$r18, fixed.$type] <: fixed.java.lang.Boolean;
    $exception := $exception;
    goto anon21;

  anon21:
    $r19 := $r18;
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} $r19 == fixed.$null;
    call $fakelocal_5 := fixed.$new(fixed.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon38_Then:
    assume {:partition} $r19 != fixed.$null;
    $exception := $exception;
    goto anon24;

  anon24:
    goto inline$java.lang.Boolean$booleanValue$$5$Entry;

  inline$java.lang.Boolean$booleanValue$$5$Entry:
    inline$java.lang.Boolean$booleanValue$$5$$this := $r19;
    havoc inline$java.lang.Boolean$booleanValue$$5$r0, inline$java.lang.Boolean$booleanValue$$5$$z0, inline$java.lang.Boolean$booleanValue$$5$$return, inline$java.lang.Boolean$booleanValue$$5$$exception;
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
    goto inline$java.lang.Boolean$booleanValue$$5$block9;

  inline$java.lang.Boolean$booleanValue$$5$block9:
    goto inline$java.lang.Boolean$booleanValue$$5$Return;

  inline$java.lang.Boolean$booleanValue$$5$Return:
    z5 := inline$java.lang.Boolean$booleanValue$$5$$return;
    $exception := inline$java.lang.Boolean$booleanValue$$5$$exception;
    goto anon24$1;

  anon24$1:
    assert {:sourceloc "User.java", 39, -1, -1, -1} true;
    i7 := i7 + 1;
    assert {:sourceloc "User.java", 39, -1, -1, -1} true;
    goto anon24_dummy;

  anon32_Then:
    assume {:partition} i7 >= i2;
    assert {:sourceloc "User.java", 39, -1, -1, -1} {:comment "thenblock"} true;
    goto block64;

  block64:
    assert {:sourceloc "User.java", 52, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$14$Entry;

  inline$java.lang.Boolean$valueOf$boolean$14$Entry:
    inline$java.lang.Boolean$valueOf$boolean$14$$in_parameter__0 := z2;
    havoc inline$java.lang.Boolean$valueOf$boolean$14$z0, inline$java.lang.Boolean$valueOf$boolean$14$$r0, inline$java.lang.Boolean$valueOf$boolean$14$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$14$$return, inline$java.lang.Boolean$valueOf$boolean$14$$exception;
    inline$java.lang.Boolean$valueOf$boolean$14$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$14$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$14$anon0;

  inline$java.lang.Boolean$valueOf$boolean$14$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$14$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$14$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$14$z0 := inline$java.lang.Boolean$valueOf$boolean$14$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$14$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$14$$r0 := inline$java.lang.Boolean$valueOf$boolean$14$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$14$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$14$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$14$$this := inline$java.lang.Boolean$valueOf$boolean$14$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$14$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$14$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$14$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$14$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$14$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$14$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$14$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$14$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$14$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$14$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$14$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$14$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$14$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$14$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$14$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$14$Entry;

  inline$java.lang.Object$$la$init$ra$$$14$Entry:
    inline$java.lang.Object$$la$init$ra$$$14$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$14$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$14$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$14$anon0;

  inline$java.lang.Object$$la$init$ra$$$14$anon0:
    inline$java.lang.Object$$la$init$ra$$$14$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$14$Return;

  inline$java.lang.Object$$la$init$ra$$$14$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$14$$exception := inline$java.lang.Object$$la$init$ra$$$14$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$14$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$14$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$14$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$14$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$14$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$14$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$14$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$14$Return:
    inline$java.lang.Boolean$valueOf$boolean$14$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$14$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$14$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$14$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$14$$return := inline$java.lang.Boolean$valueOf$boolean$14$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$14$block8;

  inline$java.lang.Boolean$valueOf$boolean$14$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$14$Return;

  inline$java.lang.Boolean$valueOf$boolean$14$Return:
    $r2 := inline$java.lang.Boolean$valueOf$boolean$14$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$14$$exception;
    goto block64$1;

  block64$1:
    assert {:sourceloc "User.java", 52, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$15$Entry;

  inline$java.lang.Boolean$valueOf$boolean$15$Entry:
    inline$java.lang.Boolean$valueOf$boolean$15$$in_parameter__0 := z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$15$z0, inline$java.lang.Boolean$valueOf$boolean$15$$r0, inline$java.lang.Boolean$valueOf$boolean$15$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$15$$return, inline$java.lang.Boolean$valueOf$boolean$15$$exception;
    inline$java.lang.Boolean$valueOf$boolean$15$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$15$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$15$anon0;

  inline$java.lang.Boolean$valueOf$boolean$15$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$15$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$15$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$15$z0 := inline$java.lang.Boolean$valueOf$boolean$15$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$15$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$15$$r0 := inline$java.lang.Boolean$valueOf$boolean$15$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$15$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$15$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$15$$this := inline$java.lang.Boolean$valueOf$boolean$15$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$15$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$15$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$15$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$15$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$15$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$15$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$15$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$15$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$15$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$15$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$15$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$15$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$15$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$15$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$15$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$15$Entry;

  inline$java.lang.Object$$la$init$ra$$$15$Entry:
    inline$java.lang.Object$$la$init$ra$$$15$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$15$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$15$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$15$anon0;

  inline$java.lang.Object$$la$init$ra$$$15$anon0:
    inline$java.lang.Object$$la$init$ra$$$15$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$15$Return;

  inline$java.lang.Object$$la$init$ra$$$15$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$15$$exception := inline$java.lang.Object$$la$init$ra$$$15$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$15$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$15$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$15$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$15$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$15$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$15$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$15$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$15$Return:
    inline$java.lang.Boolean$valueOf$boolean$15$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$15$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$15$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$15$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$15$$return := inline$java.lang.Boolean$valueOf$boolean$15$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$15$block8;

  inline$java.lang.Boolean$valueOf$boolean$15$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$15$Return;

  inline$java.lang.Boolean$valueOf$boolean$15$Return:
    $r3 := inline$java.lang.Boolean$valueOf$boolean$15$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$15$$exception;
    goto block64$2;

  block64$2:
    assert {:sourceloc "User.java", 52, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$$in_parameter__0 := z3;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$$in_parameter__1 := $r2;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$$in_parameter__2 := $r3;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$block58:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$block59:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$block60:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$Return:
    $r4 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$8$$exception;
    goto block64$3;

  block64$3:
    assert {:sourceloc "User.java", 52, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} !(fixed.$heap[$r4, fixed.$type] <: fixed.java.lang.Boolean);
    call $fakelocal_6 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon39_Then:
    assume {:partition} fixed.$heap[$r4, fixed.$type] <: fixed.java.lang.Boolean;
    $exception := $exception;
    goto anon27;

  anon27:
    $r5 := $r4;
    assert {:sourceloc "User.java", 52, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Else:
    assume {:partition} $r5 == fixed.$null;
    call $fakelocal_7 := fixed.$new(fixed.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_7;
    return;

  anon40_Then:
    assume {:partition} $r5 != fixed.$null;
    $exception := $exception;
    goto anon30;

  anon30:
    goto inline$java.lang.Boolean$booleanValue$$6$Entry;

  inline$java.lang.Boolean$booleanValue$$6$Entry:
    inline$java.lang.Boolean$booleanValue$$6$$this := $r5;
    havoc inline$java.lang.Boolean$booleanValue$$6$r0, inline$java.lang.Boolean$booleanValue$$6$$z0, inline$java.lang.Boolean$booleanValue$$6$$return, inline$java.lang.Boolean$booleanValue$$6$$exception;
    goto inline$java.lang.Boolean$booleanValue$$6$anon0;

  inline$java.lang.Boolean$booleanValue$$6$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$6$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$6$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$6$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$6$r0 := inline$java.lang.Boolean$booleanValue$$6$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$6$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$6$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$6$$return := inline$java.lang.Boolean$booleanValue$$6$$z0;
    goto inline$java.lang.Boolean$booleanValue$$6$block9;

  inline$java.lang.Boolean$booleanValue$$6$block9:
    goto inline$java.lang.Boolean$booleanValue$$6$Return;

  inline$java.lang.Boolean$booleanValue$$6$Return:
    $z1 := inline$java.lang.Boolean$booleanValue$$6$$return;
    $exception := inline$java.lang.Boolean$booleanValue$$6$$exception;
    goto anon30$1;

  anon30$1:
    assert {:sourceloc "User.java", 52, -1, -1, -1} true;
    $return := $z1;
    goto block65;

  block65:
    return;

  anon31_Then:
    assume {:partition} i0 == i1;
    assert {:sourceloc "User.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block62;

  anon24_dummy:
    assume false;
    return;

  block63_last:
    assert {:sourceloc "User.java", 39, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;
}



implementation fixed.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := fixed.$null;
    return;
}



implementation fixed.User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63(in_$return: int, 
    in_$exception: ref, 
    in_$r12: ref, 
    in_$fakelocal_5: ref, 
    in_$r7: ref, 
    in_$r9: ref, 
    in_i7: int, 
    in_i2: int, 
    in_$r19: ref, 
    in_$fakelocal_2: ref, 
    in_$r13: ref, 
    in_z0: int, 
    in_$r6: ref, 
    in_r0: ref, 
    in_$r17: ref, 
    in_$c3: int, 
    in_z2: int, 
    in_$r8: ref, 
    in_z5: int, 
    in_$fakelocal_3: ref, 
    in_$r10: ref, 
    in_$c5: int, 
    in_$fakelocal_1: ref, 
    in_$r15: ref, 
    in_$l6: int, 
    in_$l4: int, 
    in_$r11: ref, 
    in_$fakelocal_0: ref, 
    in_$fakelocal_4: ref, 
    in_$r14: ref, 
    in_$r16: ref, 
    in_z3: int, 
    in_r1: ref, 
    in_$r18: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$r12: ref, 
    out_$fakelocal_5: ref, 
    out_$r7: ref, 
    out_$r9: ref, 
    out_i7: int, 
    out_$r19: ref, 
    out_$fakelocal_2: ref, 
    out_$r13: ref, 
    out_z0: int, 
    out_$r6: ref, 
    out_$r17: ref, 
    out_$c3: int, 
    out_z2: int, 
    out_$r8: ref, 
    out_z5: int, 
    out_$fakelocal_3: ref, 
    out_$r10: ref, 
    out_$c5: int, 
    out_$fakelocal_1: ref, 
    out_$r15: ref, 
    out_$l6: int, 
    out_$l4: int, 
    out_$r11: ref, 
    out_$fakelocal_0: ref, 
    out_$fakelocal_4: ref, 
    out_$r14: ref, 
    out_$r16: ref, 
    out_z3: int, 
    out_$r18: ref)
{
  var inline$java.lang.Boolean$booleanValue$$0$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$0$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$0$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$0$$return: int;
  var inline$java.lang.Boolean$booleanValue$$0$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$1$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$1$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$1$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$1$$return: int;
  var inline$java.lang.Boolean$booleanValue$$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$1$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$1$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$2$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$2$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$2$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$2$$return: int;
  var inline$java.lang.Boolean$booleanValue$$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$2$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$3$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$3$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception: ref;
  var inline$java.lang.String$charAt$int$0$r0: ref;
  var inline$java.lang.String$charAt$int$0$$r1: ref;
  var inline$java.lang.String$charAt$int$0$$c1: int;
  var inline$java.lang.String$charAt$int$0$i0: int;
  var inline$java.lang.String$charAt$int$0$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$0$$this: ref;
  var inline$java.lang.String$charAt$int$0$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$0$$return: int;
  var inline$java.lang.String$charAt$int$0$$exception: ref;
  var inline$java.lang.String$charAt$int$0$$objIndex: int;
  var inline$java.lang.String$charAt$int$0$$heap: $heap_type;
  var inline$java.lang.String$charAt$int$1$r0: ref;
  var inline$java.lang.String$charAt$int$1$$r1: ref;
  var inline$java.lang.String$charAt$int$1$$c1: int;
  var inline$java.lang.String$charAt$int$1$i0: int;
  var inline$java.lang.String$charAt$int$1$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$1$$this: ref;
  var inline$java.lang.String$charAt$int$1$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$1$$return: int;
  var inline$java.lang.String$charAt$int$1$$exception: ref;
  var inline$java.lang.String$charAt$int$1$$objIndex: int;
  var inline$java.lang.String$charAt$int$1$$heap: $heap_type;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$4$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$4$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$5$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$5$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$6$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$6$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$return: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$exception: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r12: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_5: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r7: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r9: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i7: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i2: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r19: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_2: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r13: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z0: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r6: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_r0: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r17: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c3: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z2: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r8: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z5: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_3: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r10: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c5: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_1: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r15: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l6: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l4: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r11: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_0: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_4: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r14: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r16: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z3: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_r1: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r18: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18: ref;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$objIndex: int;
  var inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$heap: $heap_type;
  var inline$java.lang.Boolean$booleanValue$$3$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$3$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$3$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$3$$return: int;
  var inline$java.lang.Boolean$booleanValue$$3$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$4$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$4$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$4$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$4$$return: int;
  var inline$java.lang.Boolean$booleanValue$$4$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$7$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$7$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$8$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$8$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$5$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$5$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$5$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$5$$return: int;
  var inline$java.lang.Boolean$booleanValue$$5$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$9$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$9$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$10$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$10$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$10$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$10$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$10$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception: ref;
  var inline$java.lang.String$charAt$int$2$r0: ref;
  var inline$java.lang.String$charAt$int$2$$r1: ref;
  var inline$java.lang.String$charAt$int$2$$c1: int;
  var inline$java.lang.String$charAt$int$2$i0: int;
  var inline$java.lang.String$charAt$int$2$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$2$$this: ref;
  var inline$java.lang.String$charAt$int$2$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$2$$return: int;
  var inline$java.lang.String$charAt$int$2$$exception: ref;
  var inline$java.lang.String$charAt$int$2$$objIndex: int;
  var inline$java.lang.String$charAt$int$2$$heap: $heap_type;
  var inline$java.lang.String$charAt$int$3$r0: ref;
  var inline$java.lang.String$charAt$int$3$$r1: ref;
  var inline$java.lang.String$charAt$int$3$$c1: int;
  var inline$java.lang.String$charAt$int$3$i0: int;
  var inline$java.lang.String$charAt$int$3$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$3$$this: ref;
  var inline$java.lang.String$charAt$int$3$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$3$$return: int;
  var inline$java.lang.String$charAt$int$3$$exception: ref;
  var inline$java.lang.String$charAt$int$3$$objIndex: int;
  var inline$java.lang.String$charAt$int$3$$heap: $heap_type;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$11$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$11$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$11$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$11$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$11$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$12$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$12$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$12$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$12$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$12$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$13$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$13$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$13$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$13$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$13$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$exception: ref;

  entry:
    out_$return, out_$exception, out_$r12, out_$fakelocal_5, out_$r7, out_$r9, out_i7, out_$r19, out_$fakelocal_2, out_$r13, out_z0, out_$r6, out_$r17, out_$c3, out_z2, out_$r8, out_z5, out_$fakelocal_3, out_$r10, out_$c5, out_$fakelocal_1, out_$r15, out_$l6, out_$l4, out_$r11, out_$fakelocal_0, out_$fakelocal_4, out_$r14, out_$r16, out_z3, out_$r18 := in_$return, in_$exception, in_$r12, in_$fakelocal_5, in_$r7, in_$r9, in_i7, in_$r19, in_$fakelocal_2, in_$r13, in_z0, in_$r6, in_$r17, in_$c3, in_z2, in_$r8, in_z5, in_$fakelocal_3, in_$r10, in_$c5, in_$fakelocal_1, in_$r15, in_$l6, in_$l4, in_$r11, in_$fakelocal_0, in_$fakelocal_4, in_$r14, in_$r16, in_z3, in_$r18;
    goto block63;

  block63:
    assert {:sourceloc "User.java", 39, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Then:
    assume {:partition} out_i7 >= in_i2;
    assert {:sourceloc "User.java", 39, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$r12, out_$fakelocal_5, out_$r7, out_$r9, out_i7, out_$r19, out_$fakelocal_2, out_$r13, out_z0, out_$r6, out_$r17, out_$c3, out_z2, out_$r8, out_z5, out_$fakelocal_3, out_$r10, out_$c5, out_$fakelocal_1, out_$r15, out_$l6, out_$l4, out_$r11, out_$fakelocal_0, out_$fakelocal_4, out_$r14, out_$r16, out_z3, out_$r18 := in_$return, in_$exception, in_$r12, in_$fakelocal_5, in_$r7, in_$r9, in_i7, in_$r19, in_$fakelocal_2, in_$r13, in_z0, in_$r6, in_$r17, in_$c3, in_z2, in_$r8, in_z5, in_$fakelocal_3, in_$r10, in_$c5, in_$fakelocal_1, in_$r15, in_$l6, in_$l4, in_$r11, in_$fakelocal_0, in_$fakelocal_4, in_$r14, in_$r16, in_z3, in_$r18;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon24:
    goto inline$java.lang.Boolean$booleanValue$$0$Entry;

  inline$java.lang.Boolean$booleanValue$$0$Entry:
    inline$java.lang.Boolean$booleanValue$$0$$this := out_$r19;
    havoc inline$java.lang.Boolean$booleanValue$$0$r0, inline$java.lang.Boolean$booleanValue$$0$$z0, inline$java.lang.Boolean$booleanValue$$0$$return, inline$java.lang.Boolean$booleanValue$$0$$exception;
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
    goto inline$java.lang.Boolean$booleanValue$$0$block9;

  inline$java.lang.Boolean$booleanValue$$0$block9:
    goto inline$java.lang.Boolean$booleanValue$$0$Return;

  inline$java.lang.Boolean$booleanValue$$0$Return:
    out_z5 := inline$java.lang.Boolean$booleanValue$$0$$return;
    out_$exception := inline$java.lang.Boolean$booleanValue$$0$$exception;
    goto anon24$1;

  anon24$1:
    assert {:sourceloc "User.java", 39, -1, -1, -1} true;
    out_i7 := out_i7 + 1;
    assert {:sourceloc "User.java", 39, -1, -1, -1} true;
    goto anon24_dummy;

  anon38_Then:
    assume {:partition} out_$r19 != fixed.$null;
    out_$exception := out_$exception;
    goto anon24;

  anon21:
    out_$r19 := out_$r18;
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} out_$r19 == fixed.$null;
    call out_$fakelocal_5 := fixed.$new(fixed.java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$r12, out_$fakelocal_5, out_$r7, out_$r9, out_i7, out_$r19, out_$fakelocal_2, out_$r13, out_z0, out_$r6, out_$r17, out_$c3, out_z2, out_$r8, out_z5, out_$fakelocal_3, out_$r10, out_$c5, out_$fakelocal_1, out_$r15, out_$l6, out_$l4, out_$r11, out_$fakelocal_0, out_$fakelocal_4, out_$r14, out_$r16, out_z3, out_$r18 := in_$return, in_$exception, in_$r12, in_$fakelocal_5, in_$r7, in_$r9, in_i7, in_$r19, in_$fakelocal_2, in_$r13, in_z0, in_$r6, in_$r17, in_$c3, in_z2, in_$r8, in_z5, in_$fakelocal_3, in_$r10, in_$c5, in_$fakelocal_1, in_$r15, in_$l6, in_$l4, in_$r11, in_$fakelocal_0, in_$fakelocal_4, in_$r14, in_$r16, in_z3, in_$r18;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon37_Then:
    assume {:partition} fixed.$heap[out_$r18, fixed.$type] <: fixed.java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    goto inline$java.lang.Boolean$booleanValue$$1$Entry;

  inline$java.lang.Boolean$booleanValue$$1$Entry:
    inline$java.lang.Boolean$booleanValue$$1$$this := out_$r15;
    havoc inline$java.lang.Boolean$booleanValue$$1$r0, inline$java.lang.Boolean$booleanValue$$1$$z0, inline$java.lang.Boolean$booleanValue$$1$$return, inline$java.lang.Boolean$booleanValue$$1$$exception;
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
    goto inline$java.lang.Boolean$booleanValue$$1$block9;

  inline$java.lang.Boolean$booleanValue$$1$block9:
    goto inline$java.lang.Boolean$booleanValue$$1$Return;

  inline$java.lang.Boolean$booleanValue$$1$Return:
    out_z3 := inline$java.lang.Boolean$booleanValue$$1$$return;
    out_$exception := inline$java.lang.Boolean$booleanValue$$1$$exception;
    goto anon18$1;

  anon18$1:
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$0$Entry;

  inline$java.lang.Boolean$valueOf$boolean$0$Entry:
    inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0 := out_z5;
    havoc inline$java.lang.Boolean$valueOf$boolean$0$z0, inline$java.lang.Boolean$valueOf$boolean$0$$r0, inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$0$$return, inline$java.lang.Boolean$valueOf$boolean$0$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    inline$java.lang.Boolean$valueOf$boolean$0$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$0$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$0$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$0$$return := inline$java.lang.Boolean$valueOf$boolean$0$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$0$block8;

  inline$java.lang.Boolean$valueOf$boolean$0$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$0$Return;

  inline$java.lang.Boolean$valueOf$boolean$0$Return:
    out_$r16 := inline$java.lang.Boolean$valueOf$boolean$0$$return;
    out_$exception := inline$java.lang.Boolean$valueOf$boolean$0$$exception;
    goto anon18$2;

  anon18$2:
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$1$Entry;

  inline$java.lang.Boolean$valueOf$boolean$1$Entry:
    inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$1$z0, inline$java.lang.Boolean$valueOf$boolean$1$$r0, inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$1$$return, inline$java.lang.Boolean$valueOf$boolean$1$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$Return:
    inline$java.lang.Boolean$valueOf$boolean$1$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$1$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$1$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$1$$return := inline$java.lang.Boolean$valueOf$boolean$1$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$1$block8;

  inline$java.lang.Boolean$valueOf$boolean$1$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$1$Return;

  inline$java.lang.Boolean$valueOf$boolean$1$Return:
    out_$r17 := inline$java.lang.Boolean$valueOf$boolean$1$$return;
    out_$exception := inline$java.lang.Boolean$valueOf$boolean$1$$exception;
    goto anon18$3;

  anon18$3:
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0 := out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1 := out_$r16;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2 := out_$r17;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block58:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block59:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block60:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return:
    out_$r18 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return;
    out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto anon18$4;

  anon18$4:
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon37_Else:
    assume {:partition} !(fixed.$heap[out_$r18, fixed.$type] <: fixed.java.lang.Boolean);
    call out_$fakelocal_4 := fixed.$new(fixed.java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$r12, out_$fakelocal_5, out_$r7, out_$r9, out_i7, out_$r19, out_$fakelocal_2, out_$r13, out_z0, out_$r6, out_$r17, out_$c3, out_z2, out_$r8, out_z5, out_$fakelocal_3, out_$r10, out_$c5, out_$fakelocal_1, out_$r15, out_$l6, out_$l4, out_$r11, out_$fakelocal_0, out_$fakelocal_4, out_$r14, out_$r16, out_z3, out_$r18 := in_$return, in_$exception, in_$r12, in_$fakelocal_5, in_$r7, in_$r9, in_i7, in_$r19, in_$fakelocal_2, in_$r13, in_z0, in_$r6, in_$r17, in_$c3, in_z2, in_$r8, in_z5, in_$fakelocal_3, in_$r10, in_$c5, in_$fakelocal_1, in_$r15, in_$l6, in_$l4, in_$r11, in_$fakelocal_0, in_$fakelocal_4, in_$r14, in_$r16, in_z3, in_$r18;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon36_Then:
    assume {:partition} out_$r15 != fixed.$null;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    out_$r15 := out_$r14;
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} out_$r15 == fixed.$null;
    call out_$fakelocal_3 := fixed.$new(fixed.java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$r12, out_$fakelocal_5, out_$r7, out_$r9, out_i7, out_$r19, out_$fakelocal_2, out_$r13, out_z0, out_$r6, out_$r17, out_$c3, out_z2, out_$r8, out_z5, out_$fakelocal_3, out_$r10, out_$c5, out_$fakelocal_1, out_$r15, out_$l6, out_$l4, out_$r11, out_$fakelocal_0, out_$fakelocal_4, out_$r14, out_$r16, out_z3, out_$r18 := in_$return, in_$exception, in_$r12, in_$fakelocal_5, in_$r7, in_$r9, in_i7, in_$r19, in_$fakelocal_2, in_$r13, in_z0, in_$r6, in_$r17, in_$c3, in_z2, in_$r8, in_z5, in_$fakelocal_3, in_$r10, in_$c5, in_$fakelocal_1, in_$r15, in_$l6, in_$l4, in_$r11, in_$fakelocal_0, in_$fakelocal_4, in_$r14, in_$r16, in_z3, in_$r18;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon35_Then:
    assume {:partition} fixed.$heap[out_$r14, fixed.$type] <: fixed.java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon15;

  anon12:
    goto inline$java.lang.Boolean$booleanValue$$2$Entry;

  inline$java.lang.Boolean$booleanValue$$2$Entry:
    inline$java.lang.Boolean$booleanValue$$2$$this := out_$r11;
    havoc inline$java.lang.Boolean$booleanValue$$2$r0, inline$java.lang.Boolean$booleanValue$$2$$z0, inline$java.lang.Boolean$booleanValue$$2$$return, inline$java.lang.Boolean$booleanValue$$2$$exception;
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
    goto inline$java.lang.Boolean$booleanValue$$2$block9;

  inline$java.lang.Boolean$booleanValue$$2$block9:
    goto inline$java.lang.Boolean$booleanValue$$2$Return;

  inline$java.lang.Boolean$booleanValue$$2$Return:
    out_z2 := inline$java.lang.Boolean$booleanValue$$2$$return;
    out_$exception := inline$java.lang.Boolean$booleanValue$$2$$exception;
    goto anon12$1;

  anon12$1:
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$2$Entry;

  inline$java.lang.Boolean$valueOf$boolean$2$Entry:
    inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$2$z0, inline$java.lang.Boolean$valueOf$boolean$2$$r0, inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$2$$return, inline$java.lang.Boolean$valueOf$boolean$2$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$Return:
    inline$java.lang.Boolean$valueOf$boolean$2$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$2$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$2$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$2$$return := inline$java.lang.Boolean$valueOf$boolean$2$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$2$block8;

  inline$java.lang.Boolean$valueOf$boolean$2$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$2$Return;

  inline$java.lang.Boolean$valueOf$boolean$2$Return:
    out_$r12 := inline$java.lang.Boolean$valueOf$boolean$2$$return;
    out_$exception := inline$java.lang.Boolean$valueOf$boolean$2$$exception;
    goto anon12$2;

  anon12$2:
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$3$Entry;

  inline$java.lang.Boolean$valueOf$boolean$3$Entry:
    inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0 := out_z3;
    havoc inline$java.lang.Boolean$valueOf$boolean$3$z0, inline$java.lang.Boolean$valueOf$boolean$3$$r0, inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$3$$return, inline$java.lang.Boolean$valueOf$boolean$3$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$Return:
    inline$java.lang.Boolean$valueOf$boolean$3$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$3$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$3$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$3$$return := inline$java.lang.Boolean$valueOf$boolean$3$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$3$block8;

  inline$java.lang.Boolean$valueOf$boolean$3$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$3$Return;

  inline$java.lang.Boolean$valueOf$boolean$3$Return:
    out_$r13 := inline$java.lang.Boolean$valueOf$boolean$3$$return;
    out_$exception := inline$java.lang.Boolean$valueOf$boolean$3$$exception;
    goto anon12$3;

  anon12$3:
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0 := out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1 := out_$r12;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2 := out_$r13;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block58:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block59:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block60:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return:
    out_$r14 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return;
    out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto anon12$4;

  anon12$4:
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} !(fixed.$heap[out_$r14, fixed.$type] <: fixed.java.lang.Boolean);
    call out_$fakelocal_2 := fixed.$new(fixed.java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$r12, out_$fakelocal_5, out_$r7, out_$r9, out_i7, out_$r19, out_$fakelocal_2, out_$r13, out_z0, out_$r6, out_$r17, out_$c3, out_z2, out_$r8, out_z5, out_$fakelocal_3, out_$r10, out_$c5, out_$fakelocal_1, out_$r15, out_$l6, out_$l4, out_$r11, out_$fakelocal_0, out_$fakelocal_4, out_$r14, out_$r16, out_z3, out_$r18 := in_$return, in_$exception, in_$r12, in_$fakelocal_5, in_$r7, in_$r9, in_i7, in_$r19, in_$fakelocal_2, in_$r13, in_z0, in_$r6, in_$r17, in_$c3, in_z2, in_$r8, in_z5, in_$fakelocal_3, in_$r10, in_$c5, in_$fakelocal_1, in_$r15, in_$l6, in_$l4, in_$r11, in_$fakelocal_0, in_$fakelocal_4, in_$r14, in_$r16, in_z3, in_$r18;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon34_Then:
    assume {:partition} out_$r11 != fixed.$null;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    out_$r11 := out_$r10;
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} out_$r11 == fixed.$null;
    call out_$fakelocal_1 := fixed.$new(fixed.java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$r12, out_$fakelocal_5, out_$r7, out_$r9, out_i7, out_$r19, out_$fakelocal_2, out_$r13, out_z0, out_$r6, out_$r17, out_$c3, out_z2, out_$r8, out_z5, out_$fakelocal_3, out_$r10, out_$c5, out_$fakelocal_1, out_$r15, out_$l6, out_$l4, out_$r11, out_$fakelocal_0, out_$fakelocal_4, out_$r14, out_$r16, out_z3, out_$r18 := in_$return, in_$exception, in_$r12, in_$fakelocal_5, in_$r7, in_$r9, in_i7, in_$r19, in_$fakelocal_2, in_$r13, in_z0, in_$r6, in_$r17, in_$c3, in_z2, in_$r8, in_z5, in_$fakelocal_3, in_$r10, in_$c5, in_$fakelocal_1, in_$r15, in_$l6, in_$l4, in_$r11, in_$fakelocal_0, in_$fakelocal_4, in_$r14, in_$r16, in_z3, in_$r18;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon33_Then:
    assume {:partition} fixed.$heap[out_$r10, fixed.$type] <: fixed.java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon9;

  anon6:
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$0$Entry;

  inline$java.lang.String$charAt$int$0$Entry:
    inline$java.lang.String$charAt$int$0$$this := in_r0;
    inline$java.lang.String$charAt$int$0$$in_parameter__0 := out_i7;
    havoc inline$java.lang.String$charAt$int$0$r0, inline$java.lang.String$charAt$int$0$$r1, inline$java.lang.String$charAt$int$0$$c1, inline$java.lang.String$charAt$int$0$i0, inline$java.lang.String$charAt$int$0$$fakelocal_0, inline$java.lang.String$charAt$int$0$$return, inline$java.lang.String$charAt$int$0$$exception;
    inline$java.lang.String$charAt$int$0$$objIndex := fixed.$objIndex;
    inline$java.lang.String$charAt$int$0$$heap := fixed.$heap;
    goto inline$java.lang.String$charAt$int$0$anon0;

  inline$java.lang.String$charAt$int$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.String$charAt$int$0$$this, fixed.$type]
   <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$0$$this != fixed.$null;
    inline$java.lang.String$charAt$int$0$$exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$r0 := inline$java.lang.String$charAt$int$0$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$i0 := inline$java.lang.String$charAt$int$0$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$$r1 := fixed.$heap[inline$java.lang.String$charAt$int$0$r0, fixed.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$0$anon4_Then, inline$java.lang.String$charAt$int$0$anon4_Else;

  inline$java.lang.String$charAt$int$0$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$0$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$0$$r1]
   && inline$java.lang.String$charAt$int$0$i0 >= 0);
    call inline$java.lang.String$charAt$int$0$$fakelocal_0 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$0$$return := 0;
    inline$java.lang.String$charAt$int$0$$exception := inline$java.lang.String$charAt$int$0$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$0$Return;

  inline$java.lang.String$charAt$int$0$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$0$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$0$$r1]
   && inline$java.lang.String$charAt$int$0$i0 >= 0;
    inline$java.lang.String$charAt$int$0$$exception := inline$java.lang.String$charAt$int$0$$exception;
    goto inline$java.lang.String$charAt$int$0$anon3;

  inline$java.lang.String$charAt$int$0$anon3:
    inline$java.lang.String$charAt$int$0$$c1 := fixed.$intArrHeap[inline$java.lang.String$charAt$int$0$$r1][inline$java.lang.String$charAt$int$0$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$$return := inline$java.lang.String$charAt$int$0$$c1;
    goto inline$java.lang.String$charAt$int$0$block6;

  inline$java.lang.String$charAt$int$0$block6:
    goto inline$java.lang.String$charAt$int$0$Return;

  inline$java.lang.String$charAt$int$0$Return:
    out_$c3 := inline$java.lang.String$charAt$int$0$$return;
    out_$exception := inline$java.lang.String$charAt$int$0$$exception;
    goto anon6$1;

  anon6$1:
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    out_$l4 := out_$c3;
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$1$Entry;

  inline$java.lang.String$charAt$int$1$Entry:
    inline$java.lang.String$charAt$int$1$$this := in_r1;
    inline$java.lang.String$charAt$int$1$$in_parameter__0 := out_i7;
    havoc inline$java.lang.String$charAt$int$1$r0, inline$java.lang.String$charAt$int$1$$r1, inline$java.lang.String$charAt$int$1$$c1, inline$java.lang.String$charAt$int$1$i0, inline$java.lang.String$charAt$int$1$$fakelocal_0, inline$java.lang.String$charAt$int$1$$return, inline$java.lang.String$charAt$int$1$$exception;
    inline$java.lang.String$charAt$int$1$$objIndex := fixed.$objIndex;
    inline$java.lang.String$charAt$int$1$$heap := fixed.$heap;
    goto inline$java.lang.String$charAt$int$1$anon0;

  inline$java.lang.String$charAt$int$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.String$charAt$int$1$$this, fixed.$type]
   <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$1$$this != fixed.$null;
    inline$java.lang.String$charAt$int$1$$exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$r0 := inline$java.lang.String$charAt$int$1$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$i0 := inline$java.lang.String$charAt$int$1$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$$r1 := fixed.$heap[inline$java.lang.String$charAt$int$1$r0, fixed.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$1$anon4_Then, inline$java.lang.String$charAt$int$1$anon4_Else;

  inline$java.lang.String$charAt$int$1$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$1$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$1$$r1]
   && inline$java.lang.String$charAt$int$1$i0 >= 0);
    call inline$java.lang.String$charAt$int$1$$fakelocal_0 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$1$$return := 0;
    inline$java.lang.String$charAt$int$1$$exception := inline$java.lang.String$charAt$int$1$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$1$Return;

  inline$java.lang.String$charAt$int$1$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$1$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$1$$r1]
   && inline$java.lang.String$charAt$int$1$i0 >= 0;
    inline$java.lang.String$charAt$int$1$$exception := inline$java.lang.String$charAt$int$1$$exception;
    goto inline$java.lang.String$charAt$int$1$anon3;

  inline$java.lang.String$charAt$int$1$anon3:
    inline$java.lang.String$charAt$int$1$$c1 := fixed.$intArrHeap[inline$java.lang.String$charAt$int$1$$r1][inline$java.lang.String$charAt$int$1$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$$return := inline$java.lang.String$charAt$int$1$$c1;
    goto inline$java.lang.String$charAt$int$1$block6;

  inline$java.lang.String$charAt$int$1$block6:
    goto inline$java.lang.String$charAt$int$1$Return;

  inline$java.lang.String$charAt$int$1$Return:
    out_$c5 := inline$java.lang.String$charAt$int$1$$return;
    out_$exception := inline$java.lang.String$charAt$int$1$$exception;
    goto anon6$2;

  anon6$2:
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    out_$l6 := out_$c5;
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0 := out_$l4;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1 := out_$l6;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception;
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block31;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block31:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block32;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block32:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block33;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block33:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block32;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block31;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Return:
    out_z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return;
    out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception;
    goto anon6$3;

  anon6$3:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$4$Entry;

  inline$java.lang.Boolean$valueOf$boolean$4$Entry:
    inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0 := out_z2;
    havoc inline$java.lang.Boolean$valueOf$boolean$4$z0, inline$java.lang.Boolean$valueOf$boolean$4$$r0, inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$4$$return, inline$java.lang.Boolean$valueOf$boolean$4$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$Return:
    inline$java.lang.Boolean$valueOf$boolean$4$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$4$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$4$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$4$$return := inline$java.lang.Boolean$valueOf$boolean$4$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$4$block8;

  inline$java.lang.Boolean$valueOf$boolean$4$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$4$Return;

  inline$java.lang.Boolean$valueOf$boolean$4$Return:
    out_$r6 := inline$java.lang.Boolean$valueOf$boolean$4$$return;
    out_$exception := inline$java.lang.Boolean$valueOf$boolean$4$$exception;
    goto anon6$4;

  anon6$4:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$5$Entry;

  inline$java.lang.Boolean$valueOf$boolean$5$Entry:
    inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0 := 0;
    havoc inline$java.lang.Boolean$valueOf$boolean$5$z0, inline$java.lang.Boolean$valueOf$boolean$5$$r0, inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$5$$return, inline$java.lang.Boolean$valueOf$boolean$5$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$Return:
    inline$java.lang.Boolean$valueOf$boolean$5$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$5$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$5$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$5$$return := inline$java.lang.Boolean$valueOf$boolean$5$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$5$block8;

  inline$java.lang.Boolean$valueOf$boolean$5$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$5$Return;

  inline$java.lang.Boolean$valueOf$boolean$5$Return:
    out_$r7 := inline$java.lang.Boolean$valueOf$boolean$5$$return;
    out_$exception := inline$java.lang.Boolean$valueOf$boolean$5$$exception;
    goto anon6$5;

  anon6$5:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0 := out_z3;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1 := out_$r6;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2 := out_$r7;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception;
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block58:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block59:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block60:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Return:
    out_$r8 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return;
    out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception;
    goto anon6$6;

  anon6$6:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$6$Entry;

  inline$java.lang.Boolean$valueOf$boolean$6$Entry:
    inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0 := out_z2;
    havoc inline$java.lang.Boolean$valueOf$boolean$6$z0, inline$java.lang.Boolean$valueOf$boolean$6$$r0, inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$6$$return, inline$java.lang.Boolean$valueOf$boolean$6$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$Return:
    inline$java.lang.Boolean$valueOf$boolean$6$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$6$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$6$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$6$$return := inline$java.lang.Boolean$valueOf$boolean$6$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$6$block8;

  inline$java.lang.Boolean$valueOf$boolean$6$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$6$Return;

  inline$java.lang.Boolean$valueOf$boolean$6$Return:
    out_$r9 := inline$java.lang.Boolean$valueOf$boolean$6$$return;
    out_$exception := inline$java.lang.Boolean$valueOf$boolean$6$$exception;
    goto anon6$7;

  anon6$7:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0 := out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1 := out_$r8;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2 := out_$r9;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2, fixed.$type]
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block58:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block59:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block60:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Return:
    out_$r10 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return;
    out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception;
    goto anon6$8;

  anon6$8:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !(fixed.$heap[out_$r10, fixed.$type] <: fixed.java.lang.Boolean);
    call out_$fakelocal_0 := fixed.$new(fixed.java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_0;
    out_$return, out_$exception, out_$r12, out_$fakelocal_5, out_$r7, out_$r9, out_i7, out_$r19, out_$fakelocal_2, out_$r13, out_z0, out_$r6, out_$r17, out_$c3, out_z2, out_$r8, out_z5, out_$fakelocal_3, out_$r10, out_$c5, out_$fakelocal_1, out_$r15, out_$l6, out_$l4, out_$r11, out_$fakelocal_0, out_$fakelocal_4, out_$r14, out_$r16, out_z3, out_$r18 := in_$return, in_$exception, in_$r12, in_$fakelocal_5, in_$r7, in_$r9, in_i7, in_$r19, in_$fakelocal_2, in_$r13, in_z0, in_$r6, in_$r17, in_$c3, in_z2, in_$r8, in_z5, in_$fakelocal_3, in_$r10, in_$c5, in_$fakelocal_1, in_$r15, in_$l6, in_$l4, in_$r11, in_$fakelocal_0, in_$fakelocal_4, in_$r14, in_$r16, in_z3, in_$r18;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon32_Else:
    assume {:partition} in_i2 > out_i7;
    assert {:sourceloc "User.java", 39, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon24_dummy:
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Entry;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Entry:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$return := out_$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$exception := out_$exception;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r12 := out_$r12;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_5 := out_$fakelocal_5;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r7 := out_$r7;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r9 := out_$r9;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i7 := out_i7;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i2 := in_i2;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r19 := out_$r19;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_2 := out_$fakelocal_2;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r13 := out_$r13;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z0 := out_z0;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r6 := out_$r6;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_r0 := in_r0;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r17 := out_$r17;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c3 := out_$c3;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z2 := out_z2;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r8 := out_$r8;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z5 := out_z5;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_3 := out_$fakelocal_3;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r10 := out_$r10;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c5 := out_$c5;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_1 := out_$fakelocal_1;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r15 := out_$r15;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l6 := out_$l6;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l4 := out_$l4;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r11 := out_$r11;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_0 := out_$fakelocal_0;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_4 := out_$fakelocal_4;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r14 := out_$r14;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r16 := out_$r16;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z3 := out_z3;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_r1 := in_r1;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r18 := out_$r18;
    havoc inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$objIndex := fixed.$objIndex;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$heap := fixed.$heap;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$entry;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$entry:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r18;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$block63;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$block63:
    assert {:sourceloc "User.java", 39, -1, -1, -1} true;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon32_Then, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon32_Else;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon32_Then:
    assume {:partition} inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7
   >= inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i2;
    assert {:sourceloc "User.java", 39, -1, -1, -1} {:comment "thenblock"} true;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r18;
    fixed.$objIndex, fixed.$heap := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$objIndex, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$heap;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Return;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon24:
    goto inline$java.lang.Boolean$booleanValue$$3$Entry;

  inline$java.lang.Boolean$booleanValue$$3$Entry:
    inline$java.lang.Boolean$booleanValue$$3$$this := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19;
    havoc inline$java.lang.Boolean$booleanValue$$3$r0, inline$java.lang.Boolean$booleanValue$$3$$z0, inline$java.lang.Boolean$booleanValue$$3$$return, inline$java.lang.Boolean$booleanValue$$3$$exception;
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
    goto inline$java.lang.Boolean$booleanValue$$3$block9;

  inline$java.lang.Boolean$booleanValue$$3$block9:
    goto inline$java.lang.Boolean$booleanValue$$3$Return;

  inline$java.lang.Boolean$booleanValue$$3$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5 := inline$java.lang.Boolean$booleanValue$$3$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.Boolean$booleanValue$$3$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon24$1;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon24$1:
    assert {:sourceloc "User.java", 39, -1, -1, -1} true;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7
   + 1;
    assert {:sourceloc "User.java", 39, -1, -1, -1} true;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon24_dummy;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon38_Then:
    assume {:partition} inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19
   != fixed.$null;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon24;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon21:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18;
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon38_Then, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon38_Else;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon38_Else:
    assume {:partition} inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19
   == fixed.$null;
    call inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return := 0;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r18;
    fixed.$objIndex, fixed.$heap := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$objIndex, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$heap;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Return;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon37_Then:
    assume {:partition} fixed.$heap[inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon21;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon18:
    goto inline$java.lang.Boolean$booleanValue$$4$Entry;

  inline$java.lang.Boolean$booleanValue$$4$Entry:
    inline$java.lang.Boolean$booleanValue$$4$$this := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15;
    havoc inline$java.lang.Boolean$booleanValue$$4$r0, inline$java.lang.Boolean$booleanValue$$4$$z0, inline$java.lang.Boolean$booleanValue$$4$$return, inline$java.lang.Boolean$booleanValue$$4$$exception;
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
    goto inline$java.lang.Boolean$booleanValue$$4$block9;

  inline$java.lang.Boolean$booleanValue$$4$block9:
    goto inline$java.lang.Boolean$booleanValue$$4$Return;

  inline$java.lang.Boolean$booleanValue$$4$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3 := inline$java.lang.Boolean$booleanValue$$4$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.Boolean$booleanValue$$4$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon18$1;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon18$1:
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$7$Entry;

  inline$java.lang.Boolean$valueOf$boolean$7$Entry:
    inline$java.lang.Boolean$valueOf$boolean$7$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5;
    havoc inline$java.lang.Boolean$valueOf$boolean$7$z0, inline$java.lang.Boolean$valueOf$boolean$7$$r0, inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$7$$return, inline$java.lang.Boolean$valueOf$boolean$7$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$Return:
    inline$java.lang.Boolean$valueOf$boolean$7$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$7$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$7$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$7$$return := inline$java.lang.Boolean$valueOf$boolean$7$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$7$block8;

  inline$java.lang.Boolean$valueOf$boolean$7$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$7$Return;

  inline$java.lang.Boolean$valueOf$boolean$7$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16 := inline$java.lang.Boolean$valueOf$boolean$7$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$7$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon18$2;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon18$2:
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$8$Entry;

  inline$java.lang.Boolean$valueOf$boolean$8$Entry:
    inline$java.lang.Boolean$valueOf$boolean$8$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$8$z0, inline$java.lang.Boolean$valueOf$boolean$8$$r0, inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$8$$return, inline$java.lang.Boolean$valueOf$boolean$8$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$Return:
    inline$java.lang.Boolean$valueOf$boolean$8$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$8$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$8$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$8$$return := inline$java.lang.Boolean$valueOf$boolean$8$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$8$block8;

  inline$java.lang.Boolean$valueOf$boolean$8$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$8$Return;

  inline$java.lang.Boolean$valueOf$boolean$8$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17 := inline$java.lang.Boolean$valueOf$boolean$8$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$8$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon18$3;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon18$3:
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2, fixed.$type]
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block58:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block59:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block60:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon18$4;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon18$4:
    assert {:sourceloc "User.java", 47, -1, -1, -1} true;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon37_Then, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon37_Else;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon37_Else:
    assume {:partition} !(fixed.$heap[inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return := 0;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r18;
    fixed.$objIndex, fixed.$heap := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$objIndex, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$heap;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Return;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon36_Then:
    assume {:partition} inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15
   != fixed.$null;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon18;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon15:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14;
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon36_Then, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon36_Else;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon36_Else:
    assume {:partition} inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15
   == fixed.$null;
    call inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return := 0;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r18;
    fixed.$objIndex, fixed.$heap := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$objIndex, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$heap;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Return;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon35_Then:
    assume {:partition} fixed.$heap[inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon15;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon12:
    goto inline$java.lang.Boolean$booleanValue$$5$Entry;

  inline$java.lang.Boolean$booleanValue$$5$Entry:
    inline$java.lang.Boolean$booleanValue$$5$$this := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11;
    havoc inline$java.lang.Boolean$booleanValue$$5$r0, inline$java.lang.Boolean$booleanValue$$5$$z0, inline$java.lang.Boolean$booleanValue$$5$$return, inline$java.lang.Boolean$booleanValue$$5$$exception;
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
    goto inline$java.lang.Boolean$booleanValue$$5$block9;

  inline$java.lang.Boolean$booleanValue$$5$block9:
    goto inline$java.lang.Boolean$booleanValue$$5$Return;

  inline$java.lang.Boolean$booleanValue$$5$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2 := inline$java.lang.Boolean$booleanValue$$5$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.Boolean$booleanValue$$5$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon12$1;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon12$1:
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$9$Entry;

  inline$java.lang.Boolean$valueOf$boolean$9$Entry:
    inline$java.lang.Boolean$valueOf$boolean$9$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$9$z0, inline$java.lang.Boolean$valueOf$boolean$9$$r0, inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$9$$return, inline$java.lang.Boolean$valueOf$boolean$9$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$Return:
    inline$java.lang.Boolean$valueOf$boolean$9$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$9$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$9$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$9$$return := inline$java.lang.Boolean$valueOf$boolean$9$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$9$block8;

  inline$java.lang.Boolean$valueOf$boolean$9$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$9$Return;

  inline$java.lang.Boolean$valueOf$boolean$9$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12 := inline$java.lang.Boolean$valueOf$boolean$9$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$9$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon12$2;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon12$2:
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$10$Entry;

  inline$java.lang.Boolean$valueOf$boolean$10$Entry:
    inline$java.lang.Boolean$valueOf$boolean$10$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3;
    havoc inline$java.lang.Boolean$valueOf$boolean$10$z0, inline$java.lang.Boolean$valueOf$boolean$10$$r0, inline$java.lang.Boolean$valueOf$boolean$10$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$10$$return, inline$java.lang.Boolean$valueOf$boolean$10$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$10$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$10$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$10$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$10$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$10$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$10$Return:
    inline$java.lang.Boolean$valueOf$boolean$10$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$10$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$10$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$10$$return := inline$java.lang.Boolean$valueOf$boolean$10$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$10$block8;

  inline$java.lang.Boolean$valueOf$boolean$10$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$10$Return;

  inline$java.lang.Boolean$valueOf$boolean$10$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13 := inline$java.lang.Boolean$valueOf$boolean$10$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$10$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon12$3;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon12$3:
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2, fixed.$type]
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block58:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block59:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block60:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon12$4;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon12$4:
    assert {:sourceloc "User.java", 45, -1, -1, -1} true;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon35_Then, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon35_Else;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon35_Else:
    assume {:partition} !(fixed.$heap[inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return := 0;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r18;
    fixed.$objIndex, fixed.$heap := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$objIndex, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$heap;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Return;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon34_Then:
    assume {:partition} inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11
   != fixed.$null;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon12;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon9:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10;
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon34_Then, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon34_Else;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon34_Else:
    assume {:partition} inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11
   == fixed.$null;
    call inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return := 0;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r18;
    fixed.$objIndex, fixed.$heap := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$objIndex, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$heap;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Return;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon33_Then:
    assume {:partition} fixed.$heap[inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon9;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6:
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$2$Entry;

  inline$java.lang.String$charAt$int$2$Entry:
    inline$java.lang.String$charAt$int$2$$this := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_r0;
    inline$java.lang.String$charAt$int$2$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7;
    havoc inline$java.lang.String$charAt$int$2$r0, inline$java.lang.String$charAt$int$2$$r1, inline$java.lang.String$charAt$int$2$$c1, inline$java.lang.String$charAt$int$2$i0, inline$java.lang.String$charAt$int$2$$fakelocal_0, inline$java.lang.String$charAt$int$2$$return, inline$java.lang.String$charAt$int$2$$exception;
    inline$java.lang.String$charAt$int$2$$objIndex := fixed.$objIndex;
    inline$java.lang.String$charAt$int$2$$heap := fixed.$heap;
    goto inline$java.lang.String$charAt$int$2$anon0;

  inline$java.lang.String$charAt$int$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.String$charAt$int$2$$this, fixed.$type]
   <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$2$$this != fixed.$null;
    inline$java.lang.String$charAt$int$2$$exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$r0 := inline$java.lang.String$charAt$int$2$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$i0 := inline$java.lang.String$charAt$int$2$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$$r1 := fixed.$heap[inline$java.lang.String$charAt$int$2$r0, fixed.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$2$anon4_Then, inline$java.lang.String$charAt$int$2$anon4_Else;

  inline$java.lang.String$charAt$int$2$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$2$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$2$$r1]
   && inline$java.lang.String$charAt$int$2$i0 >= 0);
    call inline$java.lang.String$charAt$int$2$$fakelocal_0 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$2$$return := 0;
    inline$java.lang.String$charAt$int$2$$exception := inline$java.lang.String$charAt$int$2$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$2$Return;

  inline$java.lang.String$charAt$int$2$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$2$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$2$$r1]
   && inline$java.lang.String$charAt$int$2$i0 >= 0;
    inline$java.lang.String$charAt$int$2$$exception := inline$java.lang.String$charAt$int$2$$exception;
    goto inline$java.lang.String$charAt$int$2$anon3;

  inline$java.lang.String$charAt$int$2$anon3:
    inline$java.lang.String$charAt$int$2$$c1 := fixed.$intArrHeap[inline$java.lang.String$charAt$int$2$$r1][inline$java.lang.String$charAt$int$2$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$$return := inline$java.lang.String$charAt$int$2$$c1;
    goto inline$java.lang.String$charAt$int$2$block6;

  inline$java.lang.String$charAt$int$2$block6:
    goto inline$java.lang.String$charAt$int$2$Return;

  inline$java.lang.String$charAt$int$2$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3 := inline$java.lang.String$charAt$int$2$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.String$charAt$int$2$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$1;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$1:
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3;
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$3$Entry;

  inline$java.lang.String$charAt$int$3$Entry:
    inline$java.lang.String$charAt$int$3$$this := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_r1;
    inline$java.lang.String$charAt$int$3$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7;
    havoc inline$java.lang.String$charAt$int$3$r0, inline$java.lang.String$charAt$int$3$$r1, inline$java.lang.String$charAt$int$3$$c1, inline$java.lang.String$charAt$int$3$i0, inline$java.lang.String$charAt$int$3$$fakelocal_0, inline$java.lang.String$charAt$int$3$$return, inline$java.lang.String$charAt$int$3$$exception;
    inline$java.lang.String$charAt$int$3$$objIndex := fixed.$objIndex;
    inline$java.lang.String$charAt$int$3$$heap := fixed.$heap;
    goto inline$java.lang.String$charAt$int$3$anon0;

  inline$java.lang.String$charAt$int$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.String$charAt$int$3$$this, fixed.$type]
   <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$3$$this != fixed.$null;
    inline$java.lang.String$charAt$int$3$$exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$r0 := inline$java.lang.String$charAt$int$3$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$i0 := inline$java.lang.String$charAt$int$3$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$$r1 := fixed.$heap[inline$java.lang.String$charAt$int$3$r0, fixed.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$3$anon4_Then, inline$java.lang.String$charAt$int$3$anon4_Else;

  inline$java.lang.String$charAt$int$3$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$3$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$3$$r1]
   && inline$java.lang.String$charAt$int$3$i0 >= 0);
    call inline$java.lang.String$charAt$int$3$$fakelocal_0 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$3$$return := 0;
    inline$java.lang.String$charAt$int$3$$exception := inline$java.lang.String$charAt$int$3$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$3$Return;

  inline$java.lang.String$charAt$int$3$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$3$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$3$$r1]
   && inline$java.lang.String$charAt$int$3$i0 >= 0;
    inline$java.lang.String$charAt$int$3$$exception := inline$java.lang.String$charAt$int$3$$exception;
    goto inline$java.lang.String$charAt$int$3$anon3;

  inline$java.lang.String$charAt$int$3$anon3:
    inline$java.lang.String$charAt$int$3$$c1 := fixed.$intArrHeap[inline$java.lang.String$charAt$int$3$$r1][inline$java.lang.String$charAt$int$3$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$$return := inline$java.lang.String$charAt$int$3$$c1;
    goto inline$java.lang.String$charAt$int$3$block6;

  inline$java.lang.String$charAt$int$3$block6:
    goto inline$java.lang.String$charAt$int$3$Return;

  inline$java.lang.String$charAt$int$3$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5 := inline$java.lang.String$charAt$int$3$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.String$charAt$int$3$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$2;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$2:
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5;
    assert {:sourceloc "User.java", 42, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__1 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception;
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block31;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block31:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block32;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block32:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block33;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block33:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block32;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block31;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$3;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$3:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$11$Entry;

  inline$java.lang.Boolean$valueOf$boolean$11$Entry:
    inline$java.lang.Boolean$valueOf$boolean$11$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2;
    havoc inline$java.lang.Boolean$valueOf$boolean$11$z0, inline$java.lang.Boolean$valueOf$boolean$11$$r0, inline$java.lang.Boolean$valueOf$boolean$11$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$11$$return, inline$java.lang.Boolean$valueOf$boolean$11$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$11$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$11$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$11$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$11$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$11$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$11$Return:
    inline$java.lang.Boolean$valueOf$boolean$11$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$11$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$11$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$11$$return := inline$java.lang.Boolean$valueOf$boolean$11$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$11$block8;

  inline$java.lang.Boolean$valueOf$boolean$11$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$11$Return;

  inline$java.lang.Boolean$valueOf$boolean$11$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6 := inline$java.lang.Boolean$valueOf$boolean$11$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$11$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$4;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$4:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$12$Entry;

  inline$java.lang.Boolean$valueOf$boolean$12$Entry:
    inline$java.lang.Boolean$valueOf$boolean$12$$in_parameter__0 := 0;
    havoc inline$java.lang.Boolean$valueOf$boolean$12$z0, inline$java.lang.Boolean$valueOf$boolean$12$$r0, inline$java.lang.Boolean$valueOf$boolean$12$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$12$$return, inline$java.lang.Boolean$valueOf$boolean$12$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$12$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$12$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$12$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$12$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$12$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$12$Return:
    inline$java.lang.Boolean$valueOf$boolean$12$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$12$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$12$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$12$$return := inline$java.lang.Boolean$valueOf$boolean$12$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$12$block8;

  inline$java.lang.Boolean$valueOf$boolean$12$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$12$Return;

  inline$java.lang.Boolean$valueOf$boolean$12$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7 := inline$java.lang.Boolean$valueOf$boolean$12$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$12$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$5;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$5:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__1 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__2 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__2, fixed.$type]
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block58:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block59:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block60:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$6;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$6:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$13$Entry;

  inline$java.lang.Boolean$valueOf$boolean$13$Entry:
    inline$java.lang.Boolean$valueOf$boolean$13$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2;
    havoc inline$java.lang.Boolean$valueOf$boolean$13$z0, inline$java.lang.Boolean$valueOf$boolean$13$$r0, inline$java.lang.Boolean$valueOf$boolean$13$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$13$$return, inline$java.lang.Boolean$valueOf$boolean$13$$exception;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$13$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$13$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$13$block7;

  inline$java.lang.Boolean$$la$init$ra$$boolean$13$block7:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$13$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$13$Return:
    inline$java.lang.Boolean$valueOf$boolean$13$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$13$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$13$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$13$$return := inline$java.lang.Boolean$valueOf$boolean$13$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$13$block8;

  inline$java.lang.Boolean$valueOf$boolean$13$block8:
    goto inline$java.lang.Boolean$valueOf$boolean$13$Return;

  inline$java.lang.Boolean$valueOf$boolean$13$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9 := inline$java.lang.Boolean$valueOf$boolean$13$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$13$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$7;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$7:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__1 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__2 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__2, fixed.$type]
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block58:
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
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block59:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block60;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block60:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block59;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block58;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$Return:
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$exception;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$8;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6$8:
    assert {:sourceloc "User.java", 44, -1, -1, -1} true;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon33_Then, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon33_Else;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon33_Else:
    assume {:partition} !(fixed.$heap[inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return := 0;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0;
    inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$return, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$exception, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r12, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r9, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i7, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r19, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r13, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r17, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z2, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r8, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r10, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$c5, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_1, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r15, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l6, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$l4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r11, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_0, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$fakelocal_4, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r14, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r16, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_z3, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_$r18;
    fixed.$objIndex, fixed.$heap := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$objIndex, inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$$heap;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Return;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon32_Else:
    assume {:partition} inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$in_i2
   > inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7;
    assert {:sourceloc "User.java", 39, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon6;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$anon24_dummy:
    assume false;
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Return;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$exit:
    goto inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Return;

  inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$Return:
    out_$return := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$return;
    out_$exception := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$exception;
    out_$r12 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r12;
    out_$fakelocal_5 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_5;
    out_$r7 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r7;
    out_$r9 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r9;
    out_i7 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_i7;
    out_$r19 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r19;
    out_$fakelocal_2 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_2;
    out_$r13 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r13;
    out_z0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z0;
    out_$r6 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r6;
    out_$r17 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r17;
    out_$c3 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c3;
    out_z2 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z2;
    out_$r8 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r8;
    out_z5 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z5;
    out_$fakelocal_3 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_3;
    out_$r10 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r10;
    out_$c5 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$c5;
    out_$fakelocal_1 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_1;
    out_$r15 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r15;
    out_$l6 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l6;
    out_$l4 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$l4;
    out_$r11 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r11;
    out_$fakelocal_0 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_0;
    out_$fakelocal_4 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$fakelocal_4;
    out_$r14 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r14;
    out_$r16 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r16;
    out_z3 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_z3;
    out_$r18 := inline$User$passwordsEqual_unsafe$java.lang.String_java.lang.String_loop_block63$0$out_$r18;
    goto anon24_dummy$1;

  anon24_dummy$1:
    return;

  exit:
    return;
}


