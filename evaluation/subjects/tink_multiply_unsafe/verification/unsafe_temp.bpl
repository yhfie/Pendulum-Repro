var unsafe.$heap: $heap_type;

var unsafe.$intArrayType: javaType;

var unsafe.$charArrayType: javaType;

var unsafe.$boolArrayType: javaType;

var unsafe.$byteArrayType: javaType;

var unsafe.$longArrayType: javaType;

var unsafe.$arrSizeHeap: [ref]int;

var unsafe.$stringSizeHeap: [ref]int;

var unsafe.$boolArrHeap: boolArrHeap_type;

var unsafe.$refArrHeap: refArrHeap_type;

var unsafe.$realArrHeap: realArrHeap_type;

var unsafe.$intArrHeap: intArrHeap_type;

var unsafe.$objIndex: int;

var unsafe.boolean$java.lang.Boolean$value0: Field int;

var unsafe.int$java.lang.Integer$value0: Field int;

const unique unsafe.$type: Field javaType;

const unique unsafe.$alloc: Field bool;

const unique unsafe.$null: ref;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique unsafe.java.lang.Object: javaType extends complete;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique unsafe.java.lang.Boolean: javaType extends unique unsafe.java.lang.Object complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.io.Serializable: javaType extends complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.lang.Comparable: javaType extends complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.lang.Integer: javaType extends unique unsafe.java.lang.Object, unsafe.java.io.Serializable, unsafe.java.lang.Comparable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.lang.Throwable: javaType extends unique unsafe.java.lang.Object, unsafe.java.io.Serializable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.lang.Exception: javaType extends unique unsafe.java.lang.Throwable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.lang.RuntimeException: javaType extends unique unsafe.java.lang.Exception complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.lang.NullPointerException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.lang.ClassCastException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} unique unsafe.AesEaxJce: javaType extends unique unsafe.java.lang.Object complete;

const {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} unique unsafe.java.lang.IndexOutOfBoundsException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} unique unsafe.java.lang.ArrayIndexOutOfBoundsException: javaType extends unique unsafe.java.lang.IndexOutOfBoundsException complete;

function unsafe.$arrayType(t: javaType) : javaType;

function unsafe.$intToReal(x: int) : real;

function unsafe.$intToBool(x: int) : bool;

function unsafe.$refToBool(x: ref) : bool;

function unsafe.$boolToInt(x: bool) : int;

function unsafe.$cmpBool(x: bool, y: bool) : int;

function unsafe.$cmpRef(x: ref, y: ref) : int;

function unsafe.$cmpReal(x: real, y: real) : int;

function unsafe.$cmpInt(x: int, y: int) : int;

function unsafe.$bitOr(x: int, y: int) : int;

function unsafe.$bitAnd(x: int, y: int) : int;

function unsafe.$xorInt(x: int, y: int) : int;

function unsafe.$shlInt(x: int, y: int) : int;

function unsafe.$ushrInt(x: int, y: int) : int;

function unsafe.$shrInt(x: int, y: int) : int;

function unsafe.$mulInt(x: int, y: int) : int;

function unsafe.$divInt(x: int, y: int) : int;

function unsafe.$modInt(x: int, y: int) : int;

function unsafe.$intToRef(id: int) : ref;

axiom (forall x: int :: 
  { unsafe.$intToBool(x): bool } 
  unsafe.$intToBool(x): bool <==> (if x == 0 then false else true));

axiom (forall x: ref :: 
  { unsafe.$refToBool(x): bool } 
  unsafe.$refToBool(x): bool <==> (if x == unsafe.$null then false else true));

axiom (forall x: bool :: 
  { unsafe.$boolToInt(x): int } 
  unsafe.$boolToInt(x): int == (if x <==> true then 1 else 0));

axiom (forall x: real, y: real :: 
  { unsafe.$cmpReal(x, y): int } 
  unsafe.$cmpReal(x, y): int == (if x > y then 1 else (if x < y then -1 else 0)));

axiom (forall x: int, y: int :: 
  { unsafe.$cmpInt(x, y): int } 
  unsafe.$cmpInt(x, y): int == (if x > y then 1 else (if x < y then -1 else 0)));

axiom (forall index: int :: unsafe.$intToRef(index) != unsafe.$null);

axiom (forall i1: int, i2: int :: 
  i1 == i2 <==> unsafe.$intToRef(i1) == unsafe.$intToRef(i2));

procedure {:prefix "unsafe"} unsafe.$new(obj_type: javaType) returns ($obj: ref);
  modifies unsafe.$objIndex, unsafe.$heap;
  free ensures $obj == unsafe.$intToRef(old(unsafe.$objIndex));
  free ensures !old(unsafe.$heap[$obj, unsafe.$alloc]);
  free ensures unsafe.$heap
   == old(unsafe.$heap)[$obj, unsafe.$alloc := true][$obj, unsafe.$type := obj_type];
  free ensures $obj != unsafe.$null;
  free ensures unsafe.$objIndex == old(unsafe.$objIndex) + 1;



procedure {:prefix "unsafe"} unsafe.java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  free ensures unsafe.$heap[$other, unsafe.$alloc] <==> true;
  free ensures unsafe.$heap[$other, unsafe.$type] == unsafe.$heap[$this, unsafe.$type];
  free ensures $other != unsafe.$null;



procedure {:prefix "unsafe"} unsafe.int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Integer$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Integer$valueOf$int($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Integer$intValue$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Integer$compareTo$java.lang.Integer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Integer$compareTo$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.AesEaxJce$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$($in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$arrSizeHeap, unsafe.$intArrHeap, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: ref, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$arrSizeHeap, unsafe.$intArrHeap, unsafe.$heap;



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
  modifies unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17(in_$exception: ref, in_r0: ref, in_i1: int, in_i0: int, in_r1: ref)
   returns (out_$exception: ref, out_i1: int, out_r1: ref);
  modifies unsafe.$objIndex, unsafe.$arrSizeHeap, unsafe.$intArrHeap, unsafe.$heap;



implementation unsafe.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var z0: int;
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type] <: unsafe.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
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
    inline$java.lang.Object$$la$init$ra$$$0$$exception := unsafe.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    $exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    unsafe.$heap := unsafe.$heap[r0, unsafe.boolean$java.lang.Boolean$value0 := z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation unsafe.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
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
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume unsafe.$heap[$return, unsafe.$type] <: unsafe.java.lang.Boolean;
    $exception := unsafe.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.Boolean);
    $r0 := $fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this := $r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0 := z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap := unsafe.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} unsafe.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this, unsafe.$type]
   <: unsafe.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this != unsafe.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception := unsafe.$null;
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
    inline$java.lang.Object$$la$init$ra$$$0$$exception := unsafe.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    unsafe.$heap := unsafe.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, unsafe.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0];
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
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type] <: unsafe.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    $z0 := unsafe.$heap[r0, unsafe.boolean$java.lang.Boolean$value0];
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
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type] <: unsafe.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
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
    inline$java.lang.Object$$la$init$ra$$$0$$exception := unsafe.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    $exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Integer.java", 9, -1, -1, -1} true;
    unsafe.$heap := unsafe.$heap[r0, unsafe.int$java.lang.Integer$value0 := i0];
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
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume unsafe.$heap[$return, unsafe.$type] <: unsafe.java.lang.Integer;
    $exception := unsafe.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.Integer);
    $r0 := $fakelocal_0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$Entry;

  inline$java.lang.Integer$$la$init$ra$$int$0$Entry:
    inline$java.lang.Integer$$la$init$ra$$int$0$$this := $r0;
    inline$java.lang.Integer$$la$init$ra$$int$0$$in_parameter__0 := i0;
    havoc inline$java.lang.Integer$$la$init$ra$$int$0$i0, inline$java.lang.Integer$$la$init$ra$$int$0$r0, inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
    inline$java.lang.Integer$$la$init$ra$$int$0$$heap := unsafe.$heap;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$anon0;

  inline$java.lang.Integer$$la$init$ra$$int$0$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} unsafe.$heap[inline$java.lang.Integer$$la$init$ra$$int$0$$this, unsafe.$type]
   <: unsafe.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$$la$init$ra$$int$0$$this != unsafe.$null;
    inline$java.lang.Integer$$la$init$ra$$int$0$$exception := unsafe.$null;
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
    inline$java.lang.Object$$la$init$ra$$$0$$exception := unsafe.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    inline$java.lang.Integer$$la$init$ra$$int$0$$exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$anon0$1;

  inline$java.lang.Integer$$la$init$ra$$int$0$anon0$1:
    assert {:sourceloc "Integer.java", 9, -1, -1, -1} true;
    unsafe.$heap := unsafe.$heap[inline$java.lang.Integer$$la$init$ra$$int$0$r0, unsafe.int$java.lang.Integer$value0 := inline$java.lang.Integer$$la$init$ra$$int$0$i0];
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
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type] <: unsafe.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    $i0 := unsafe.$heap[r0, unsafe.int$java.lang.Integer$value0];
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
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type] <: unsafe.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != unsafe.$null;
    assume unsafe.$heap[$in_parameter__0, unsafe.$type] <: unsafe.java.lang.Integer;
    $exception := unsafe.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    $i1 := unsafe.$heap[r0, unsafe.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} r1 == unsafe.$null;
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon10_Then:
    assume {:partition} r1 != unsafe.$null;
    $exception := $exception;
    goto anon3;

  anon3:
    $i0 := unsafe.$heap[r1, unsafe.int$java.lang.Integer$value0];
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
    $i3 := unsafe.$heap[r0, unsafe.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    $i2 := unsafe.$heap[r1, unsafe.int$java.lang.Integer$value0];
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
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type] <: unsafe.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != unsafe.$null;
    assume unsafe.$heap[$in_parameter__0, unsafe.$type] <: unsafe.java.lang.Object;
    $exception := unsafe.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 5, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} !(unsafe.$heap[r1, unsafe.$type] <: unsafe.java.lang.Integer);
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon4_Then:
    assume {:partition} unsafe.$heap[r1, unsafe.$type] <: unsafe.java.lang.Integer;
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
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$objIndex := unsafe.$objIndex;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$heap := unsafe.$heap;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon0;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} unsafe.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$$this, unsafe.$type]
   <: unsafe.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$this != unsafe.$null;
    assume unsafe.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$$in_parameter__0, unsafe.$type]
   <: unsafe.java.lang.Integer;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception := unsafe.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0 := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1 := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$in_parameter__0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1 := unsafe.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0, unsafe.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon10_Then, inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon10_Else;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon10_Else:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1 == unsafe.$null;
    call inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return := 0;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$Return;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon10_Then:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1 != unsafe.$null;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon3;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon3:
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0 := unsafe.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1, unsafe.int$java.lang.Integer$value0];
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
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3 := unsafe.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0, unsafe.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2 := unsafe.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1, unsafe.int$java.lang.Integer$value0];
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
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type] <: unsafe.AesEaxJce;
    assume {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "AesEaxJce.java", 2, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$java.lang.Object$$la$init$ra$$$0$$this := r0;
    havoc inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$java.lang.Object$$la$init$ra$$$0$$exception := unsafe.$null;
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
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    $exception := unsafe.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "AesEaxJce.java", 7, -1, -1, -1} true;
    call $fakelocal_0 := unsafe.$new(unsafe.$intArrayType);
    unsafe.$arrSizeHeap := unsafe.$arrSizeHeap[$fakelocal_0 := 16];
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
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap := unsafe.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex := unsafe.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap := unsafe.$heap;
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
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14]];
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10 := unsafe.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12 := unsafe.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11 := unsafe.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
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
    assume {:partition} !(i15 < unsafe.$arrSizeHeap[r0] && i15 >= 0);
    call $fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := unsafe.$null;
    $exception := $fakelocal_1;
    return;

  anon26_Then:
    assume {:partition} i15 < unsafe.$arrSizeHeap[r0] && i15 >= 0;
    $exception := $exception;
    goto anon6;

  anon6:
    $b6 := unsafe.$intArrHeap[r0][i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $i11 := unsafe.$shlInt($b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $i7 := i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} !($i7 < unsafe.$arrSizeHeap[r0] && $i7 >= 0);
    call $fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := unsafe.$null;
    $exception := $fakelocal_2;
    return;

  anon27_Then:
    assume {:partition} $i7 < unsafe.$arrSizeHeap[r0] && $i7 >= 0;
    $exception := $exception;
    goto anon9;

  anon9:
    $b8 := unsafe.$intArrHeap[r0][$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $s9 := unsafe.$bitAnd($b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $s10 := unsafe.$ushrInt($s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $i12 := unsafe.$xorInt($i11, $s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $i13 := unsafe.$bitAnd($i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    $b14 := $i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} !(i15 < unsafe.$arrSizeHeap[r1] && i15 >= 0);
    call $fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := unsafe.$null;
    $exception := $fakelocal_3;
    return;

  anon28_Then:
    assume {:partition} i15 < unsafe.$arrSizeHeap[r1] && i15 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    unsafe.$intArrHeap := unsafe.$intArrHeap[r1 := unsafe.$intArrHeap[r1][i15 := $b14]];
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
    assume {:partition} !(15 < unsafe.$arrSizeHeap[r0] && 15 >= 0);
    call $fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := unsafe.$null;
    $exception := $fakelocal_4;
    return;

  anon29_Then:
    assume {:partition} 15 < unsafe.$arrSizeHeap[r0] && 15 >= 0;
    $exception := $exception;
    goto anon15;

  anon15:
    $b0 := unsafe.$intArrHeap[r0][15];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    $i3 := unsafe.$shlInt($b0, 1);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(0 < unsafe.$arrSizeHeap[r0] && 0 >= 0);
    call $fakelocal_5 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := unsafe.$null;
    $exception := $fakelocal_5;
    return;

  anon30_Then:
    assume {:partition} 0 < unsafe.$arrSizeHeap[r0] && 0 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $b1 := unsafe.$intArrHeap[r0][0];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    $s2 := unsafe.$bitAnd($b1, 128);
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
    $i4 := unsafe.$xorInt($i3, $s16);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    $b5 := $i4;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !(15 < unsafe.$arrSizeHeap[r1] && 15 >= 0);
    call $fakelocal_6 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := unsafe.$null;
    $exception := $fakelocal_6;
    return;

  anon32_Then:
    assume {:partition} 15 < unsafe.$arrSizeHeap[r1] && 15 >= 0;
    $exception := $exception;
    goto anon24;

  anon24:
    unsafe.$intArrHeap := unsafe.$intArrHeap[r1 := unsafe.$intArrHeap[r1][15 := $b5]];
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
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    $exception := unsafe.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__1;
    assert {:sourceloc "AesEaxJce.java", 30, -1, -1, -1} true;
    r1 := unsafe.$null;
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
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$objIndex := unsafe.$objIndex;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$arrSizeHeap := unsafe.$arrSizeHeap;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$intArrHeap := unsafe.$intArrHeap;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$heap := unsafe.$heap;
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
    unsafe.$objIndex, unsafe.$arrSizeHeap, unsafe.$intArrHeap, unsafe.$heap := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$objIndex, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$arrSizeHeap, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$intArrHeap, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$heap;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$Return;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 32, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$in_parameter__0 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_r0;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$objIndex := unsafe.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$arrSizeHeap := unsafe.$arrSizeHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$intArrHeap := unsafe.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$heap := unsafe.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon0;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := unsafe.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$in_parameter__0;
    assert {:sourceloc "AesEaxJce.java", 7, -1, -1, -1} true;
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0 := unsafe.$new(unsafe.$intArrayType);
    unsafe.$arrSizeHeap := unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0 := 16];
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
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap := unsafe.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex := unsafe.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap := unsafe.$heap;
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
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14]];
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10 := unsafe.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12 := unsafe.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11 := unsafe.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
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
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon26_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b6 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i11 := unsafe.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon27_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon27_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon27_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon27_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s9 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s10 := unsafe.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i12 := unsafe.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i11, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon12:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b14]];
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
    assume {:partition} !(15 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon29_Then:
    assume {:partition} 15 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon15;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon15:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][15];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i3 := unsafe.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0, 1);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Else:
    assume {:partition} !(0 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 0 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Then:
    assume {:partition} 0 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 0 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][0];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1, 128);
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
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4 := unsafe.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i3, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s16);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b5 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Else:
    assume {:partition} !(15 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Then:
    assume {:partition} 15 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon24;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon24:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1][15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b5]];
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
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$objIndex := unsafe.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$arrSizeHeap := unsafe.$arrSizeHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$intArrHeap := unsafe.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$heap := unsafe.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon0;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := unsafe.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$in_parameter__0;
    assert {:sourceloc "AesEaxJce.java", 7, -1, -1, -1} true;
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0 := unsafe.$new(unsafe.$intArrayType);
    unsafe.$arrSizeHeap := unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0 := 16];
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
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap := unsafe.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex := unsafe.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap := unsafe.$heap;
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
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14]];
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10 := unsafe.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12 := unsafe.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon27_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11 := unsafe.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon27_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon27_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon27_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon26_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon26_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon26_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon26_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
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
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon26_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b6 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i11 := unsafe.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon27_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon27_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon27_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon27_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s9 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s10 := unsafe.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i12 := unsafe.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i11, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon12:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b14]];
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
    assume {:partition} !(15 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon29_Then:
    assume {:partition} 15 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon15;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon15:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][15];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i3 := unsafe.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0, 1);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Else:
    assume {:partition} !(0 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 0 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Then:
    assume {:partition} 0 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 0 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][0];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1, 128);
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
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4 := unsafe.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i3, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s16);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b5 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Else:
    assume {:partition} !(15 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Then:
    assume {:partition} 15 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon24;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon24:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1][15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b5]];
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
    $exception := unsafe.$null;
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
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon12:
    unsafe.$intArrHeap := unsafe.$intArrHeap[in_r1 := unsafe.$intArrHeap[in_r1][out_i15 := out_$b14]];
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    out_i15 := out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto anon12_dummy;

  anon28_Then:
    assume {:partition} out_i15 < unsafe.$arrSizeHeap[in_r1] && out_i15 >= 0;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    out_$b8 := unsafe.$intArrHeap[in_r0][out_$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$s9 := unsafe.$bitAnd(out_$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$s10 := unsafe.$ushrInt(out_$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$i12 := unsafe.$xorInt(out_$i11, out_$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$i13 := unsafe.$bitAnd(out_$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$b14 := out_$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} !(out_i15 < unsafe.$arrSizeHeap[in_r1] && out_i15 >= 0);
    call out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := unsafe.$null;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$fakelocal_3, out_$fakelocal_2, out_$s9, out_$fakelocal_1, out_$i11, out_$i12, out_$s10, out_$i13, out_$b8, out_$b14, out_$i7, out_i15, out_$b6 := in_$return, in_$exception, in_$fakelocal_3, in_$fakelocal_2, in_$s9, in_$fakelocal_1, in_$i11, in_$i12, in_$s10, in_$i13, in_$b8, in_$b14, in_$i7, in_i15, in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon27_Then:
    assume {:partition} out_$i7 < unsafe.$arrSizeHeap[in_r0] && out_$i7 >= 0;
    out_$exception := out_$exception;
    goto anon9;

  anon6:
    out_$b6 := unsafe.$intArrHeap[in_r0][out_i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$i11 := unsafe.$shlInt(out_$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    out_$i7 := out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} !(out_$i7 < unsafe.$arrSizeHeap[in_r0] && out_$i7 >= 0);
    call out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := unsafe.$null;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$fakelocal_3, out_$fakelocal_2, out_$s9, out_$fakelocal_1, out_$i11, out_$i12, out_$s10, out_$i13, out_$b8, out_$b14, out_$i7, out_i15, out_$b6 := in_$return, in_$exception, in_$fakelocal_3, in_$fakelocal_2, in_$s9, in_$fakelocal_1, in_$i11, in_$i12, in_$s10, in_$i13, in_$b8, in_$b14, in_$i7, in_i15, in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon26_Then:
    assume {:partition} out_i15 < unsafe.$arrSizeHeap[in_r0] && out_i15 >= 0;
    out_$exception := out_$exception;
    goto anon6;

  anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} !(out_i15 < unsafe.$arrSizeHeap[in_r0] && out_i15 >= 0);
    call out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := unsafe.$null;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$fakelocal_3, out_$fakelocal_2, out_$s9, out_$fakelocal_1, out_$i11, out_$i12, out_$s10, out_$i13, out_$b8, out_$b14, out_$i7, out_i15, out_$b6 := in_$return, in_$exception, in_$fakelocal_3, in_$fakelocal_2, in_$s9, in_$fakelocal_1, in_$i11, in_$i12, in_$s10, in_$i13, in_$b8, in_$b14, in_$i7, in_i15, in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
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
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap := unsafe.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex := unsafe.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap := unsafe.$heap;
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
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14]];
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10 := unsafe.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12 := unsafe.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11 := unsafe.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
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
    unsafe.$objIndex, unsafe.$arrSizeHeap, unsafe.$intArrHeap, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$arrSizeHeap), old(unsafe.$intArrHeap), old(unsafe.$heap);
    return;

  anon3:
    assert {:sourceloc "AesEaxJce.java", 32, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$in_parameter__0 := in_r0;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$objIndex := unsafe.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$arrSizeHeap := unsafe.$arrSizeHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$intArrHeap := unsafe.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$heap := unsafe.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon0;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := unsafe.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$in_parameter__0;
    assert {:sourceloc "AesEaxJce.java", 7, -1, -1, -1} true;
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0 := unsafe.$new(unsafe.$intArrayType);
    unsafe.$arrSizeHeap := unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_0 := 16];
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
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap := unsafe.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex := unsafe.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap := unsafe.$heap;
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
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14]];
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10 := unsafe.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12 := unsafe.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon28_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11 := unsafe.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon27_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$anon26_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$0$$heap;
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
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_1;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon26_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b6 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i11 := unsafe.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon27_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon27_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon27_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_2;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon27_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s9 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s10 := unsafe.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i12 := unsafe.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i11, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_3;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon12:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b14]];
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
    assume {:partition} !(15 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_4;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon29_Then:
    assume {:partition} 15 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon15;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon15:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][15];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i3 := unsafe.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b0, 1);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Else:
    assume {:partition} !(0 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 0 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_5;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon30_Then:
    assume {:partition} 0 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0]
   && 0 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon18:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r0][0];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s2 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b1, 128);
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
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4 := unsafe.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i3, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$s16);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b5 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$i4;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Else:
    assume {:partition} !(15 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$fakelocal_6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon32_Then:
    assume {:partition} 15 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon24;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$anon24:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$r1][15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$0$$b5]];
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
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$objIndex := unsafe.$objIndex;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$arrSizeHeap := unsafe.$arrSizeHeap;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$intArrHeap := unsafe.$intArrHeap;
    inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$heap := unsafe.$heap;
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
    unsafe.$objIndex, unsafe.$arrSizeHeap, unsafe.$intArrHeap, unsafe.$heap := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$objIndex, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$arrSizeHeap, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$intArrHeap, inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$$heap;
    goto inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$Return;

  inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$anon3:
    assert {:sourceloc "AesEaxJce.java", 32, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Entry;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Entry:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$in_parameter__0 := inline$AesEaxJce$multiplyByX_exp_unsafe$byte$lp$$rp$_int_loop_block17$0$in_r0;
    havoc inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s16, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b6, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$objIndex := unsafe.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$arrSizeHeap := unsafe.$arrSizeHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$intArrHeap := unsafe.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$heap := unsafe.$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon0;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := unsafe.$null;
    assert {:sourceloc "AesEaxJce.java", -1, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$in_parameter__0;
    assert {:sourceloc "AesEaxJce.java", 7, -1, -1, -1} true;
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0 := unsafe.$new(unsafe.$intArrayType);
    unsafe.$arrSizeHeap := unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_0 := 16];
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
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap := unsafe.$intArrHeap;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex := unsafe.$objIndex;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap := unsafe.$heap;
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
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14]];
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 8, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12_dummy;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10 := unsafe.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12 := unsafe.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon28_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon27_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11 := unsafe.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon27_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon27_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon27_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon26_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon3:
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon26_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon26_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$anon26_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$out_$b6 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$return, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$exception, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_3, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_2, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s9, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$fakelocal_1, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i11, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i12, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$s10, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i13, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b8, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b14, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$i7, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_i15, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$in_$b6;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$intArrHeap, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$objIndex, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$_loop_block12$1$$heap;
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
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_1;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon26_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon6;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon6:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b6 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i11 := unsafe.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b6, 1);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 + 1;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon27_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon27_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon27_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_2;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon27_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon9;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon9:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i7];
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s9 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b8, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s10 := unsafe.$ushrInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s9, 7);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i12 := unsafe.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i11, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s10);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i12, 255);
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b14 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i13;
    assert {:sourceloc "AesEaxJce.java", 10, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Else:
    assume {:partition} !(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_3;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon28_Then:
    assume {:partition} inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15
     < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon12;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon12:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1][inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$i15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b14]];
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
    assume {:partition} !(15 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_4;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon29_Then:
    assume {:partition} 15 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon15;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon15:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][15];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i3 := unsafe.$shlInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b0, 1);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Else:
    assume {:partition} !(0 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 0 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_5;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon30_Then:
    assume {:partition} 0 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0]
   && 0 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon18:
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r0][0];
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s2 := unsafe.$bitAnd(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b1, 128);
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
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4 := unsafe.$xorInt(inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i3, 
  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$s16);
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b5 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$i4;
    assert {:sourceloc "AesEaxJce.java", 13, -1, -1, -1} true;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Then, inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Else;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Else:
    assume {:partition} !(15 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && 15 >= 0);
    call inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$return := unsafe.$null;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$fakelocal_6;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$Return;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon32_Then:
    assume {:partition} 15 < unsafe.$arrSizeHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1]
   && 15 >= 0;
    inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$exception;
    goto inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon24;

  inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$anon24:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1 := unsafe.$intArrHeap[inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$r1][15 := inline$AesEaxJce$multiplyByX_unsafe$byte$lp$$rp$$1$$b5]];
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
