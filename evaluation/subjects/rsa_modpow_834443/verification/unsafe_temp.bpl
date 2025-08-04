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

var unsafe.char$lp$$rp$$java.lang.String$chars259: Field ref;

var unsafe.boolean$java.lang.Boolean$value0: Field int;

var unsafe.int$java.lang.Integer$value0: Field int;

const unique unsafe.$type: Field javaType;

const unique unsafe.$alloc: Field bool;

const unique unsafe.$null: ref;

const {:sourceloc "Math.java", -1, -1, -1, -1} unique unsafe.java.lang.Object: javaType extends complete;

const {:sourceloc "Math.java", -1, -1, -1, -1} unique unsafe.java.lang.Math: javaType extends unique unsafe.java.lang.Object complete;

const unique unsafe.$DoubleConst0: int extends complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique unsafe.java.lang.String: javaType extends unique unsafe.java.lang.Object complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique unsafe.java.io.Serializable: javaType extends complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique unsafe.java.lang.Throwable: javaType extends unique unsafe.java.lang.Object, unsafe.java.io.Serializable complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique unsafe.java.lang.Exception: javaType extends unique unsafe.java.lang.Throwable complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique unsafe.java.lang.RuntimeException: javaType extends unique unsafe.java.lang.Exception complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique unsafe.java.lang.IndexOutOfBoundsException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique unsafe.java.lang.ArrayIndexOutOfBoundsException: javaType extends unique unsafe.java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique unsafe.java.lang.Boolean: javaType extends unique unsafe.java.lang.Object complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.lang.Comparable: javaType extends complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.lang.Integer: javaType extends unique unsafe.java.lang.Object, unsafe.java.io.Serializable, unsafe.java.lang.Comparable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.lang.NullPointerException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.lang.ClassCastException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} unique unsafe.modpow.SimplifiedRSA: javaType extends unique unsafe.java.lang.Object complete;

const unique unsafe.$DoubleConst1: int extends complete;

const {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} unique unsafe.java.lang.ArithmeticException: javaType extends unique unsafe.java.lang.RuntimeException complete;

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

function unsafe.$realOp32241(x: int, y: int) : int;

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
  free ensures unsafe.$heap
   == old(unsafe.$heap)[$obj, unsafe.$alloc := true][$obj, unsafe.$type := obj_type];
  free ensures $obj == unsafe.$intToRef(old(unsafe.$objIndex));
  free ensures $obj != unsafe.$null;
  free ensures unsafe.$objIndex == old(unsafe.$objIndex) + 1;
  free ensures !old(unsafe.$heap[$obj, unsafe.$alloc]);



procedure {:prefix "unsafe"} unsafe.java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  free ensures unsafe.$heap[$other, unsafe.$alloc] <==> true;
  free ensures unsafe.$heap[$other, unsafe.$type] == unsafe.$heap[$this, unsafe.$type];
  free ensures $other != unsafe.$null;



procedure {:prefix "unsafe"} unsafe.int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure {:prefix "unsafe"} unsafe.java.lang.Math$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Math$min$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Math$log$double($in_parameter__0: int) returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.String$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies unsafe.$heap;



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



procedure {:prefix "unsafe"} unsafe.modpow.SimplifiedRSA$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int($in_parameter__0: int, 
    $in_parameter__1: int, 
    $in_parameter__2: int, 
    $in_parameter__3: int)
   returns ($return: int, $exception: ref);
  free requires $in_parameter__2 == 834443;
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19(in_$return: int, 
    in_$exception: ref, 
    in_i10: int, 
    in_$i6: int, 
    in_i11: int, 
    in_i8: int, 
    in_i12: int, 
    in_i9: int, 
    in_i3: int, 
    in_$i7: int, 
    in_$fakelocal_2: ref, 
    in_i4: int, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_0: ref, 
    in_i1: int, 
    in_$fakelocal_1: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_i10: int, 
    out_$i6: int, 
    out_i11: int, 
    out_i8: int, 
    out_i12: int, 
    out_i9: int, 
    out_$i7: int, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_0: ref, 
    out_$fakelocal_1: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



implementation unsafe.java.lang.Math$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Math.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type] <: unsafe.java.lang.Math;
    assume {:sourceloc "Math.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "Math.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Math.java", 3, -1, -1, -1} true;
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
    assert {:sourceloc "Math.java", 3, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation unsafe.java.lang.Math$min$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $i2: int;
  var i0: int;
  var i1: int;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    $exception := unsafe.$null;
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



implementation unsafe.java.lang.Math$log$double($in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var d0: int;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    $exception := unsafe.$null;
    assert {:sourceloc "Math.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Math.java", 10, -1, -1, -1} true;
    $return := unsafe.$DoubleConst0;
    goto block5;

  block5:
    return;
}



implementation unsafe.java.lang.String$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type] <: unsafe.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "String.java", 3, -1, -1, -1} true;
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
    assert {:sourceloc "String.java", 3, -1, -1, -1} true;
    goto block6;

  block6:
    return;
}



implementation unsafe.java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var $c1: int;
  var r0: ref;
  var i0: int;
  var $fakelocal_0: ref;
  var $r1: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type] <: unsafe.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    $r1 := unsafe.$heap[r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} !(i0 < unsafe.$arrSizeHeap[$r1] && i0 >= 0);
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon4_Then:
    assume {:partition} i0 < unsafe.$arrSizeHeap[$r1] && i0 >= 0;
    $exception := $exception;
    goto anon3;

  anon3:
    $c1 := unsafe.$intArrHeap[$r1][i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    $return := $c1;
    goto block7;

  block7:
    return;
}



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
    goto block8;

  block8:
    return;
}



implementation unsafe.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var z0: int;
  var $fakelocal_0: ref;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$block8;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$block8:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    $exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    $return := $r0;
    goto block9;

  block9:
    return;
}



implementation unsafe.java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $z0: int;

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
    goto block10;

  block10:
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
    goto block11;

  block11:
    return;
}



implementation unsafe.java.lang.Integer$valueOf$int($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $r0: ref;
  var i0: int;
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
    goto inline$java.lang.Integer$$la$init$ra$$int$0$block11;

  inline$java.lang.Integer$$la$init$ra$$int$0$block11:
    goto inline$java.lang.Integer$$la$init$ra$$int$0$Return;

  inline$java.lang.Integer$$la$init$ra$$int$0$Return:
    $exception := inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    $return := $r0;
    goto block12;

  block12:
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
    goto block13;

  block13:
    return;
}



implementation unsafe.java.lang.Integer$compareTo$java.lang.Integer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $i2: int;
  var $i0: int;
  var r1: ref;
  var $i3: int;
  var $fakelocal_0: ref;
  var $i1: int;

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
    goto block16;

  block16:
    return;

  anon11_Then:
    assume {:partition} $i1 <= $i0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
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
    goto block16;

  anon12_Then:
    assume {:partition} $i3 >= $i2;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  block15:
    assert {:sourceloc "Integer.java", 27, -1, -1, -1} true;
    $return := 0;
    goto block16;
}



implementation unsafe.java.lang.Integer$compareTo$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var r1: ref;
  var r0: ref;
  var $i0: int;
  var $r2: ref;
  var $fakelocal_0: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1: int;
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
    havoc inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception;
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
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block16;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block16:
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$Return;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon11_Then:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1
   <= inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block14;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block14:
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
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block16;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon12_Then:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3
   >= inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block15;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block15:
    assert {:sourceloc "Integer.java", 27, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return := 0;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block16;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$Return:
    $i0 := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return;
    $exception := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception;
    goto anon3$1;

  anon3$1:
    assert {:sourceloc "Integer.java", 5, -1, -1, -1} true;
    $return := $i0;
    goto block17;

  block17:
    return;
}



implementation unsafe.modpow.SimplifiedRSA$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type] <: unsafe.modpow.SimplifiedRSA;
    assume {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "SimplifiedRSA.java", 3, -1, -1, -1} true;
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
    assert {:sourceloc "SimplifiedRSA.java", 3, -1, -1, -1} true;
    goto block18;

  block18:
    return;
}



implementation unsafe.modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int($in_parameter__0: int, 
    $in_parameter__1: int, 
    $in_parameter__2: int, 
    $in_parameter__3: int)
   returns ($return: int, $exception: ref)
{
  var $d2: int;
  var i0: int;
  var i10: int;
  var $i6: int;
  var $d1: int;
  var i11: int;
  var i8: int;
  var i12: int;
  var i9: int;
  var i3: int;
  var $i7: int;
  var $fakelocal_2: ref;
  var i4: int;
  var $fakelocal_3: ref;
  var $i5: int;
  var $d3: int;
  var $fakelocal_0: ref;
  var $d0: int;
  var i2: int;
  var i1: int;
  var $fakelocal_1: ref;
  var inline$java.lang.Math$log$double$0$d0: int;
  var inline$java.lang.Math$log$double$0$$in_parameter__0: int;
  var inline$java.lang.Math$log$double$0$$return: int;
  var inline$java.lang.Math$log$double$0$$exception: ref;
  var inline$java.lang.Math$log$double$1$d0: int;
  var inline$java.lang.Math$log$double$1$$in_parameter__0: int;
  var inline$java.lang.Math$log$double$1$$return: int;
  var inline$java.lang.Math$log$double$1$$exception: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$return: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$exception: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i10: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i6: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i11: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i8: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i12: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i9: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i3: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i7: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_2: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i4: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_3: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_0: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_1: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$objIndex: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$heap: $heap_type;

  anon0:
    assume $in_parameter__2 == 834443;
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    $exception := unsafe.$null;
    assert {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} true;
    i8 := $in_parameter__1;
    assert {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__2;
    assert {:sourceloc "SimplifiedRSA.java", -1, -1, -1, -1} true;
    i2 := $in_parameter__3;
    assert {:sourceloc "SimplifiedRSA.java", 8, -1, -1, -1} true;
    i9 := 1;
    assert {:sourceloc "SimplifiedRSA.java", 9, -1, -1, -1} true;
    i3 := i0;
    assert {:sourceloc "SimplifiedRSA.java", 10, -1, -1, -1} true;
    i10 := 0;
    assert {:sourceloc "SimplifiedRSA.java", 12, -1, -1, -1} true;
    $i5 := i2 + 1;
    assert {:sourceloc "SimplifiedRSA.java", 12, -1, -1, -1} true;
    $d0 := $i5;
    assert {:sourceloc "SimplifiedRSA.java", 12, -1, -1, -1} true;
    goto inline$java.lang.Math$log$double$0$Entry;

  inline$java.lang.Math$log$double$0$Entry:
    inline$java.lang.Math$log$double$0$$in_parameter__0 := $d0;
    havoc inline$java.lang.Math$log$double$0$d0, inline$java.lang.Math$log$double$0$$return, inline$java.lang.Math$log$double$0$$exception;
    goto inline$java.lang.Math$log$double$0$anon0;

  inline$java.lang.Math$log$double$0$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    inline$java.lang.Math$log$double$0$$exception := unsafe.$null;
    assert {:sourceloc "Math.java", -1, -1, -1, -1} true;
    inline$java.lang.Math$log$double$0$d0 := inline$java.lang.Math$log$double$0$$in_parameter__0;
    assert {:sourceloc "Math.java", 10, -1, -1, -1} true;
    inline$java.lang.Math$log$double$0$$return := unsafe.$DoubleConst0;
    goto inline$java.lang.Math$log$double$0$block5;

  inline$java.lang.Math$log$double$0$block5:
    goto inline$java.lang.Math$log$double$0$Return;

  inline$java.lang.Math$log$double$0$Return:
    $d1 := inline$java.lang.Math$log$double$0$$return;
    $exception := inline$java.lang.Math$log$double$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "SimplifiedRSA.java", 12, -1, -1, -1} true;
    goto inline$java.lang.Math$log$double$1$Entry;

  inline$java.lang.Math$log$double$1$Entry:
    inline$java.lang.Math$log$double$1$$in_parameter__0 := unsafe.$DoubleConst1;
    havoc inline$java.lang.Math$log$double$1$d0, inline$java.lang.Math$log$double$1$$return, inline$java.lang.Math$log$double$1$$exception;
    goto inline$java.lang.Math$log$double$1$anon0;

  inline$java.lang.Math$log$double$1$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    inline$java.lang.Math$log$double$1$$exception := unsafe.$null;
    assert {:sourceloc "Math.java", -1, -1, -1, -1} true;
    inline$java.lang.Math$log$double$1$d0 := inline$java.lang.Math$log$double$1$$in_parameter__0;
    assert {:sourceloc "Math.java", 10, -1, -1, -1} true;
    inline$java.lang.Math$log$double$1$$return := unsafe.$DoubleConst0;
    goto inline$java.lang.Math$log$double$1$block5;

  inline$java.lang.Math$log$double$1$block5:
    goto inline$java.lang.Math$log$double$1$Return;

  inline$java.lang.Math$log$double$1$Return:
    $d2 := inline$java.lang.Math$log$double$1$$return;
    $exception := inline$java.lang.Math$log$double$1$$exception;
    goto anon0$2;

  anon0$2:
    assert {:sourceloc "SimplifiedRSA.java", 12, -1, -1, -1} true;
    $d3 := unsafe.$realOp32241($d1, $d2);
    assert {:sourceloc "SimplifiedRSA.java", 12, -1, -1, -1} true;
    i4 := $d3;
    assert {:sourceloc "SimplifiedRSA.java", 14, -1, -1, -1} true;
    i11 := 0;
    goto block19;

  block19:
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Entry;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Entry:
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$return := $return;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$exception := $exception;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i10 := i10;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i6 := $i6;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i11 := i11;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i8 := i8;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i12 := i12;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i9 := i9;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i3 := i3;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i7 := $i7;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_2 := $fakelocal_2;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i4 := i4;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_3 := $fakelocal_3;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_0 := $fakelocal_0;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1 := i1;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_1 := $fakelocal_1;
    havoc inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$objIndex := unsafe.$objIndex;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$heap := unsafe.$heap;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$entry;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$entry:
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_1;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$block19;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$block19:
    assert {:sourceloc "SimplifiedRSA.java", 15, -1, -1, -1} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon25_Then, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon25_Else;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon25_Then:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8
   <= 0;
    assert {:sourceloc "SimplifiedRSA.java", 15, -1, -1, -1} {:comment "thenblock"} true;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$objIndex, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$heap;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Return;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon32_Then:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11
   != inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i4;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon32_Then_dummy;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon21:
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8 := unsafe.$divInt(inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8, 
  2);
    assert {:sourceloc "SimplifiedRSA.java", 29, -1, -1, -1} true;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11
   + 1;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon32_Then, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon32_Else;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon32_Else:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11
   == inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i4;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} {:comment "elseblock"} true;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$objIndex, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$heap;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Return;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon31_Then:
    assume {:partition} 2 != 0;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon21;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon18:
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9 := unsafe.$modInt(inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7, 
  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1);
    assert {:sourceloc "SimplifiedRSA.java", 28, -1, -1, -1} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon31_Then, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon31_Else;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon31_Else:
    assume {:partition} 2 == 0;
    call inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return := 0;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$objIndex, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$heap;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Return;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon30_Then:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1
   != 0;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon18;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$block23:
    assert {:sourceloc "SimplifiedRSA.java", 27, -1, -1, -1} true;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7 := unsafe.$mulInt(inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10, 
  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10);
    assert {:sourceloc "SimplifiedRSA.java", 27, -1, -1, -1} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon30_Then, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon30_Else;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon30_Else:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1
   == 0;
    call inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return := 0;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$objIndex, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$heap;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Return;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon15:
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10 := unsafe.$modInt(inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12, 
  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1);
    assert {:sourceloc "SimplifiedRSA.java", 24, -1, -1, -1} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$block23;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$block21:
    assert {:sourceloc "SimplifiedRSA.java", 25, -1, -1, -1} true;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$block23;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon27_Then:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6
   != 1;
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$block21;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon6:
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6 := unsafe.$modInt(inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8, 
  2);
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon27_Then, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon27_Else;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon26_Then:
    assume {:partition} 2 != 0;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon6;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon3:
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon26_Then, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon26_Else;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon26_Else:
    assume {:partition} 2 == 0;
    call inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return := 0;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$objIndex, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$heap;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Return;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon25_Else:
    assume {:partition} 0
   < inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8;
    assert {:sourceloc "SimplifiedRSA.java", 15, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon3;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon29_Then:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1
   != 0;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon15;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$block22:
    assert {:sourceloc "SimplifiedRSA.java", 23, -1, -1, -1} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon29_Then, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon29_Else;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon29_Else:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1
   == 0;
    call inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return := 0;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$objIndex, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$heap;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Return;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon12:
    assert {:sourceloc "SimplifiedRSA.java", 21, -1, -1, -1} true;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12
   - inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$block22;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon28_Then:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12
   <= inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1;
    assert {:sourceloc "SimplifiedRSA.java", 20, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$block22;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon9:
    assert {:sourceloc "SimplifiedRSA.java", 19, -1, -1, -1} true;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12 := unsafe.$mulInt(inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9, 
  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i3);
    assert {:sourceloc "SimplifiedRSA.java", 20, -1, -1, -1} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon28_Then, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon28_Else;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon27_Else:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6
   == 1;
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon9;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon28_Else:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1
   < inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12;
    assert {:sourceloc "SimplifiedRSA.java", 20, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon12;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon32_Then_dummy:
    assume false;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Return;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$exit:
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Return;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Return:
    $return := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return;
    $exception := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception;
    i10 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10;
    $i6 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6;
    i11 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11;
    i8 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8;
    i12 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12;
    i9 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9;
    $i7 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7;
    $fakelocal_2 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2;
    $fakelocal_3 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3;
    $fakelocal_0 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0;
    $fakelocal_1 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1;
    goto block19$1;

  block19$1:
    goto block19_last;

  anon25_Else:
    assume {:partition} 0 < i8;
    assert {:sourceloc "SimplifiedRSA.java", 15, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} 2 == 0;
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon26_Then:
    assume {:partition} 2 != 0;
    $exception := $exception;
    goto anon6;

  anon6:
    $i6 := unsafe.$modInt(i8, 2);
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} $i6 == 1;
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "SimplifiedRSA.java", 19, -1, -1, -1} true;
    i12 := unsafe.$mulInt(i9, i3);
    assert {:sourceloc "SimplifiedRSA.java", 20, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} i1 < i12;
    assert {:sourceloc "SimplifiedRSA.java", 20, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "SimplifiedRSA.java", 21, -1, -1, -1} true;
    i12 := i12 - i1;
    goto block22;

  block22:
    assert {:sourceloc "SimplifiedRSA.java", 23, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} i1 == 0;
    call $fakelocal_1 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon29_Then:
    assume {:partition} i1 != 0;
    $exception := $exception;
    goto anon15;

  anon15:
    i10 := unsafe.$modInt(i12, i1);
    assert {:sourceloc "SimplifiedRSA.java", 24, -1, -1, -1} true;
    goto block23;

  block23:
    assert {:sourceloc "SimplifiedRSA.java", 27, -1, -1, -1} true;
    $i7 := unsafe.$mulInt(i10, i10);
    assert {:sourceloc "SimplifiedRSA.java", 27, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} i1 == 0;
    call $fakelocal_2 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon30_Then:
    assume {:partition} i1 != 0;
    $exception := $exception;
    goto anon18;

  anon18:
    i9 := unsafe.$modInt($i7, i1);
    assert {:sourceloc "SimplifiedRSA.java", 28, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} 2 == 0;
    call $fakelocal_3 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon31_Then:
    assume {:partition} 2 != 0;
    $exception := $exception;
    goto anon21;

  anon21:
    i8 := unsafe.$divInt(i8, 2);
    assert {:sourceloc "SimplifiedRSA.java", 29, -1, -1, -1} true;
    i11 := i11 + 1;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} i11 == i4;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} {:comment "elseblock"} true;
    goto anon24;

  anon24:
    assert {:sourceloc "SimplifiedRSA.java", 15, -1, -1, -1} true;
    goto block20;

  block20:
    assert {:sourceloc "SimplifiedRSA.java", 33, -1, -1, -1} true;
    $return := i10;
    goto block24;

  block24:
    return;

  anon32_Then:
    assume {:partition} i11 != i4;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} {:comment "thenblock"} true;
    goto anon32_Then_dummy;

  anon28_Then:
    assume {:partition} i12 <= i1;
    assert {:sourceloc "SimplifiedRSA.java", 20, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;

  anon27_Then:
    assume {:partition} $i6 != 1;
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} {:comment "thenblock"} true;
    goto block21;

  block21:
    assert {:sourceloc "SimplifiedRSA.java", 25, -1, -1, -1} true;
    i10 := i9;
    goto block23;

  anon25_Then:
    assume {:partition} i8 <= 0;
    assert {:sourceloc "SimplifiedRSA.java", 15, -1, -1, -1} {:comment "thenblock"} true;
    goto block20;

  anon32_Then_dummy:
    assume false;
    return;

  block19_last:
    assert {:sourceloc "SimplifiedRSA.java", 15, -1, -1, -1} true;
    goto anon25_Then, anon25_Else;
}



implementation unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := unsafe.$null;
    return;
}



implementation unsafe.modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19(in_$return: int, 
    in_$exception: ref, 
    in_i10: int, 
    in_$i6: int, 
    in_i11: int, 
    in_i8: int, 
    in_i12: int, 
    in_i9: int, 
    in_i3: int, 
    in_$i7: int, 
    in_$fakelocal_2: ref, 
    in_i4: int, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_0: ref, 
    in_i1: int, 
    in_$fakelocal_1: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_i10: int, 
    out_$i6: int, 
    out_i11: int, 
    out_i8: int, 
    out_i12: int, 
    out_i9: int, 
    out_$i7: int, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_0: ref, 
    out_$fakelocal_1: ref)
{
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$return: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$exception: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i10: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i6: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i11: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i8: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i12: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i9: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i3: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i7: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_2: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i4: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_3: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_0: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_1: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1: ref;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$objIndex: int;
  var inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$heap: $heap_type;

  entry:
    out_$return, out_$exception, out_i10, out_$i6, out_i11, out_i8, out_i12, out_i9, out_$i7, out_$fakelocal_2, out_$fakelocal_3, out_$fakelocal_0, out_$fakelocal_1 := in_$return, in_$exception, in_i10, in_$i6, in_i11, in_i8, in_i12, in_i9, in_$i7, in_$fakelocal_2, in_$fakelocal_3, in_$fakelocal_0, in_$fakelocal_1;
    goto block19;

  block19:
    assert {:sourceloc "SimplifiedRSA.java", 15, -1, -1, -1} true;
    goto anon25_Then, anon25_Else;

  anon25_Then:
    assume {:partition} out_i8 <= 0;
    assert {:sourceloc "SimplifiedRSA.java", 15, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_i10, out_$i6, out_i11, out_i8, out_i12, out_i9, out_$i7, out_$fakelocal_2, out_$fakelocal_3, out_$fakelocal_0, out_$fakelocal_1 := in_$return, in_$exception, in_i10, in_$i6, in_i11, in_i8, in_i12, in_i9, in_$i7, in_$fakelocal_2, in_$fakelocal_3, in_$fakelocal_0, in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon32_Then:
    assume {:partition} out_i11 != in_i4;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} {:comment "thenblock"} true;
    goto anon32_Then_dummy;

  anon21:
    out_i8 := unsafe.$divInt(out_i8, 2);
    assert {:sourceloc "SimplifiedRSA.java", 29, -1, -1, -1} true;
    out_i11 := out_i11 + 1;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} out_i11 == in_i4;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} {:comment "elseblock"} true;
    out_$return, out_$exception, out_i10, out_$i6, out_i11, out_i8, out_i12, out_i9, out_$i7, out_$fakelocal_2, out_$fakelocal_3, out_$fakelocal_0, out_$fakelocal_1 := in_$return, in_$exception, in_i10, in_$i6, in_i11, in_i8, in_i12, in_i9, in_$i7, in_$fakelocal_2, in_$fakelocal_3, in_$fakelocal_0, in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon31_Then:
    assume {:partition} 2 != 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    out_i9 := unsafe.$modInt(out_$i7, in_i1);
    assert {:sourceloc "SimplifiedRSA.java", 28, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} 2 == 0;
    call out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_i10, out_$i6, out_i11, out_i8, out_i12, out_i9, out_$i7, out_$fakelocal_2, out_$fakelocal_3, out_$fakelocal_0, out_$fakelocal_1 := in_$return, in_$exception, in_i10, in_$i6, in_i11, in_i8, in_i12, in_i9, in_$i7, in_$fakelocal_2, in_$fakelocal_3, in_$fakelocal_0, in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon30_Then:
    assume {:partition} in_i1 != 0;
    out_$exception := out_$exception;
    goto anon18;

  block23:
    assert {:sourceloc "SimplifiedRSA.java", 27, -1, -1, -1} true;
    out_$i7 := unsafe.$mulInt(out_i10, out_i10);
    assert {:sourceloc "SimplifiedRSA.java", 27, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} in_i1 == 0;
    call out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_i10, out_$i6, out_i11, out_i8, out_i12, out_i9, out_$i7, out_$fakelocal_2, out_$fakelocal_3, out_$fakelocal_0, out_$fakelocal_1 := in_$return, in_$exception, in_i10, in_$i6, in_i11, in_i8, in_i12, in_i9, in_$i7, in_$fakelocal_2, in_$fakelocal_3, in_$fakelocal_0, in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon15:
    out_i10 := unsafe.$modInt(out_i12, in_i1);
    assert {:sourceloc "SimplifiedRSA.java", 24, -1, -1, -1} true;
    goto block23;

  block21:
    assert {:sourceloc "SimplifiedRSA.java", 25, -1, -1, -1} true;
    out_i10 := out_i9;
    goto block23;

  anon27_Then:
    assume {:partition} out_$i6 != 1;
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} {:comment "thenblock"} true;
    goto block21;

  anon6:
    out_$i6 := unsafe.$modInt(out_i8, 2);
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon26_Then:
    assume {:partition} 2 != 0;
    out_$exception := out_$exception;
    goto anon6;

  anon3:
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} 2 == 0;
    call out_$fakelocal_0 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    out_$return := 0;
    out_$exception := out_$fakelocal_0;
    out_$return, out_$exception, out_i10, out_$i6, out_i11, out_i8, out_i12, out_i9, out_$i7, out_$fakelocal_2, out_$fakelocal_3, out_$fakelocal_0, out_$fakelocal_1 := in_$return, in_$exception, in_i10, in_$i6, in_i11, in_i8, in_i12, in_i9, in_$i7, in_$fakelocal_2, in_$fakelocal_3, in_$fakelocal_0, in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon25_Else:
    assume {:partition} 0 < out_i8;
    assert {:sourceloc "SimplifiedRSA.java", 15, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon29_Then:
    assume {:partition} in_i1 != 0;
    out_$exception := out_$exception;
    goto anon15;

  block22:
    assert {:sourceloc "SimplifiedRSA.java", 23, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} in_i1 == 0;
    call out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_i10, out_$i6, out_i11, out_i8, out_i12, out_i9, out_$i7, out_$fakelocal_2, out_$fakelocal_3, out_$fakelocal_0, out_$fakelocal_1 := in_$return, in_$exception, in_i10, in_$i6, in_i11, in_i8, in_i12, in_i9, in_$i7, in_$fakelocal_2, in_$fakelocal_3, in_$fakelocal_0, in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon12:
    assert {:sourceloc "SimplifiedRSA.java", 21, -1, -1, -1} true;
    out_i12 := out_i12 - in_i1;
    goto block22;

  anon28_Then:
    assume {:partition} out_i12 <= in_i1;
    assert {:sourceloc "SimplifiedRSA.java", 20, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;

  anon9:
    assert {:sourceloc "SimplifiedRSA.java", 19, -1, -1, -1} true;
    out_i12 := unsafe.$mulInt(out_i9, in_i3);
    assert {:sourceloc "SimplifiedRSA.java", 20, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon27_Else:
    assume {:partition} out_$i6 == 1;
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon28_Else:
    assume {:partition} in_i1 < out_i12;
    assert {:sourceloc "SimplifiedRSA.java", 20, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon32_Then_dummy:
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Entry;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Entry:
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$return := out_$return;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$exception := out_$exception;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i10 := out_i10;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i6 := out_$i6;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i11 := out_i11;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i8 := out_i8;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i12 := out_i12;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i9 := out_i9;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i3 := in_i3;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i7 := out_$i7;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_2 := out_$fakelocal_2;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i4 := in_i4;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_3 := out_$fakelocal_3;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_0 := out_$fakelocal_0;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1 := in_i1;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_1 := out_$fakelocal_1;
    havoc inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$objIndex := unsafe.$objIndex;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$heap := unsafe.$heap;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$entry;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$entry:
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_1;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$block19;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$block19:
    assert {:sourceloc "SimplifiedRSA.java", 15, -1, -1, -1} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon25_Then, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon25_Else;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon25_Then:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8
   <= 0;
    assert {:sourceloc "SimplifiedRSA.java", 15, -1, -1, -1} {:comment "thenblock"} true;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$objIndex, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$heap;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Return;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon32_Then:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11
   != inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i4;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon32_Then_dummy;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon21:
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8 := unsafe.$divInt(inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8, 
  2);
    assert {:sourceloc "SimplifiedRSA.java", 29, -1, -1, -1} true;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11
   + 1;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon32_Then, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon32_Else;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon32_Else:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11
   == inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i4;
    assert {:sourceloc "SimplifiedRSA.java", 31, -1, -1, -1} {:comment "elseblock"} true;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$objIndex, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$heap;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Return;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon31_Then:
    assume {:partition} 2 != 0;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon21;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon18:
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9 := unsafe.$modInt(inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7, 
  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1);
    assert {:sourceloc "SimplifiedRSA.java", 28, -1, -1, -1} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon31_Then, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon31_Else;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon31_Else:
    assume {:partition} 2 == 0;
    call inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return := 0;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$objIndex, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$heap;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Return;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon30_Then:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1
   != 0;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon18;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$block23:
    assert {:sourceloc "SimplifiedRSA.java", 27, -1, -1, -1} true;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7 := unsafe.$mulInt(inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10, 
  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10);
    assert {:sourceloc "SimplifiedRSA.java", 27, -1, -1, -1} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon30_Then, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon30_Else;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon30_Else:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1
   == 0;
    call inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return := 0;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$objIndex, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$heap;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Return;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon15:
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10 := unsafe.$modInt(inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12, 
  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1);
    assert {:sourceloc "SimplifiedRSA.java", 24, -1, -1, -1} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$block23;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$block21:
    assert {:sourceloc "SimplifiedRSA.java", 25, -1, -1, -1} true;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$block23;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon27_Then:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6
   != 1;
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$block21;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon6:
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6 := unsafe.$modInt(inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8, 
  2);
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon27_Then, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon27_Else;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon26_Then:
    assume {:partition} 2 != 0;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon6;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon3:
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon26_Then, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon26_Else;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon26_Else:
    assume {:partition} 2 == 0;
    call inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return := 0;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$objIndex, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$heap;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Return;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon25_Else:
    assume {:partition} 0
   < inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8;
    assert {:sourceloc "SimplifiedRSA.java", 15, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon3;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon29_Then:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1
   != 0;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon15;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$block22:
    assert {:sourceloc "SimplifiedRSA.java", 23, -1, -1, -1} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon29_Then, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon29_Else;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon29_Else:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1
   == 0;
    call inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArithmeticException);
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return := 0;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$return, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$exception, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i10, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i6, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i11, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i8, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i12, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i9, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$i7, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_2, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_3, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_0, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$objIndex, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$$heap;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Return;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon12:
    assert {:sourceloc "SimplifiedRSA.java", 21, -1, -1, -1} true;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12
   - inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$block22;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon28_Then:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12
   <= inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1;
    assert {:sourceloc "SimplifiedRSA.java", 20, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$block22;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon9:
    assert {:sourceloc "SimplifiedRSA.java", 19, -1, -1, -1} true;
    inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12 := unsafe.$mulInt(inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9, 
  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i3);
    assert {:sourceloc "SimplifiedRSA.java", 20, -1, -1, -1} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon28_Then, inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon28_Else;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon27_Else:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6
   == 1;
    assert {:sourceloc "SimplifiedRSA.java", 16, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon9;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon28_Else:
    assume {:partition} inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$in_i1
   < inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12;
    assert {:sourceloc "SimplifiedRSA.java", 20, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon12;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$anon32_Then_dummy:
    assume false;
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Return;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$exit:
    goto inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Return;

  inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$Return:
    out_$return := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$return;
    out_$exception := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$exception;
    out_i10 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i10;
    out_$i6 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i6;
    out_i11 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i11;
    out_i8 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i8;
    out_i12 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i12;
    out_i9 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_i9;
    out_$i7 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$i7;
    out_$fakelocal_2 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_2;
    out_$fakelocal_3 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_3;
    out_$fakelocal_0 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_0;
    out_$fakelocal_1 := inline$modpow.SimplifiedRSA$modPowFastKocherReduction$int_int_int_int_loop_block19$0$out_$fakelocal_1;
    goto anon32_Then_dummy$1;

  anon32_Then_dummy$1:
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
