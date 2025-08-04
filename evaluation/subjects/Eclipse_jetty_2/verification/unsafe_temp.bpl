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

const {:sourceloc "String.java", -1, -1, -1, -1} unique unsafe.java.lang.Object: javaType extends complete;

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

const {:sourceloc "Credential.java", -1, -1, -1, -1} unique unsafe.Credential: javaType extends unique unsafe.java.lang.Object complete;

const {:sourceloc "Credential.java", -1, -1, -1, -1} unique unsafe.java.lang.CharSequence: javaType extends complete;

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
  free ensures unsafe.$heap
   == old(unsafe.$heap)[$obj, unsafe.$alloc := true][$obj, unsafe.$type := obj_type];
  free ensures !old(unsafe.$heap[$obj, unsafe.$alloc]);
  free ensures $obj == unsafe.$intToRef(old(unsafe.$objIndex));
  free ensures unsafe.$objIndex == old(unsafe.$objIndex) + 1;
  free ensures $obj != unsafe.$null;



procedure {:prefix "unsafe"} unsafe.java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  free ensures unsafe.$heap[$other, unsafe.$alloc] <==> true;
  free ensures $other != unsafe.$null;
  free ensures unsafe.$heap[$other, unsafe.$type] == unsafe.$heap[$this, unsafe.$type];



procedure {:prefix "unsafe"} unsafe.int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure {:prefix "unsafe"} unsafe.java.lang.String$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



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



procedure {:prefix "unsafe"} unsafe.Credential$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.Credential$stringEquals_original$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17(in_$exception: ref, 
    in_$z1: int, 
    in_$c4: int, 
    in_$i2: int, 
    in_z0: int, 
    in_i5: int, 
    in_r1: ref, 
    in_r0: ref, 
    in_$c3: int)
   returns (out_$exception: ref, 
    out_$z1: int, 
    out_$c4: int, 
    out_$i2: int, 
    out_z0: int, 
    out_i5: int, 
    out_$c3: int);
  modifies unsafe.$objIndex, unsafe.$heap;



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
    goto block1;

  block1:
    return;
}



implementation unsafe.java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var i0: int;
  var $r1: ref;
  var $fakelocal_0: ref;
  var r0: ref;
  var $c1: int;

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
    goto block2;

  block2:
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
    goto block3;

  block3:
    return;
}



implementation unsafe.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$block3;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$block3:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    $exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    $return := $r0;
    goto block4;

  block4:
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
    goto block5;

  block5:
    return;
}



implementation unsafe.java.lang.Integer$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var r0: ref;
  var i0: int;
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
    goto block6;

  block6:
    return;
}



implementation unsafe.java.lang.Integer$valueOf$int($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var i0: int;
  var $r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$i0: int;
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
    havoc inline$java.lang.Integer$$la$init$ra$$int$0$r0, inline$java.lang.Integer$$la$init$ra$$int$0$i0, inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
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
    goto inline$java.lang.Integer$$la$init$ra$$int$0$block6;

  inline$java.lang.Integer$$la$init$ra$$int$0$block6:
    goto inline$java.lang.Integer$$la$init$ra$$int$0$Return;

  inline$java.lang.Integer$$la$init$ra$$int$0$Return:
    $exception := inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    $return := $r0;
    goto block7;

  block7:
    return;
}



implementation unsafe.java.lang.Integer$intValue$($this: ref) returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $i0: int;

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
    goto block8;

  block8:
    return;
}



implementation unsafe.java.lang.Integer$compareTo$java.lang.Integer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var $i0: int;
  var r0: ref;
  var r1: ref;
  var $fakelocal_0: ref;
  var $i2: int;
  var $i3: int;
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
    goto block11;

  block11:
    return;

  anon11_Then:
    assume {:partition} $i1 <= $i0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block9;

  block9:
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
    goto block11;

  anon12_Then:
    assume {:partition} $i3 >= $i2;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "Integer.java", 27, -1, -1, -1} true;
    $return := 0;
    goto block11;
}



implementation unsafe.java.lang.Integer$compareTo$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var $r2: ref;
  var $fakelocal_0: ref;
  var $i0: int;
  var r0: ref;
  var r1: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3: int;
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
    havoc inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception;
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
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block11;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block11:
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$Return;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon11_Then:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1
   <= inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block9;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block9:
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
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block11;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon12_Then:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3
   >= inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block10;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block10:
    assert {:sourceloc "Integer.java", 27, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return := 0;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block11;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$Return:
    $i0 := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return;
    $exception := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception;
    goto anon3$1;

  anon3$1:
    assert {:sourceloc "Integer.java", 5, -1, -1, -1} true;
    $return := $i0;
    goto block12;

  block12:
    return;
}



implementation unsafe.Credential$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Credential.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type] <: unsafe.Credential;
    assume {:sourceloc "Credential.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "Credential.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Credential.java", 3, -1, -1, -1} true;
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
    assert {:sourceloc "Credential.java", 3, -1, -1, -1} true;
    goto block13;

  block13:
    return;
}



implementation unsafe.Credential$stringEquals_original$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $z1: int;
  var $c4: int;
  var $i2: int;
  var z0: int;
  var $i0: int;
  var i5: int;
  var r1: ref;
  var $i1: int;
  var r0: ref;
  var $c3: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$exception: ref;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$z1: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$c4: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$i2: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_z0: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_i5: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_r1: ref;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_r0: ref;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$c3: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$exception: ref;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$z1: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c4: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$i2: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_z0: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c3: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$$objIndex: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$$heap: $heap_type;
  var inline$java.lang.String$charAt$int$0$i0: int;
  var inline$java.lang.String$charAt$int$0$$r1: ref;
  var inline$java.lang.String$charAt$int$0$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$0$r0: ref;
  var inline$java.lang.String$charAt$int$0$$c1: int;
  var inline$java.lang.String$charAt$int$0$$this: ref;
  var inline$java.lang.String$charAt$int$0$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$0$$return: int;
  var inline$java.lang.String$charAt$int$0$$exception: ref;
  var inline$java.lang.String$charAt$int$0$$objIndex: int;
  var inline$java.lang.String$charAt$int$0$$heap: $heap_type;
  var inline$java.lang.String$charAt$int$1$i0: int;
  var inline$java.lang.String$charAt$int$1$$r1: ref;
  var inline$java.lang.String$charAt$int$1$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$1$r0: ref;
  var inline$java.lang.String$charAt$int$1$$c1: int;
  var inline$java.lang.String$charAt$int$1$$this: ref;
  var inline$java.lang.String$charAt$int$1$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$1$$return: int;
  var inline$java.lang.String$charAt$int$1$$exception: ref;
  var inline$java.lang.String$charAt$int$1$$objIndex: int;
  var inline$java.lang.String$charAt$int$1$$heap: $heap_type;
  var inline$java.lang.String$charAt$int$2$i0: int;
  var inline$java.lang.String$charAt$int$2$$r1: ref;
  var inline$java.lang.String$charAt$int$2$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$2$r0: ref;
  var inline$java.lang.String$charAt$int$2$$c1: int;
  var inline$java.lang.String$charAt$int$2$$this: ref;
  var inline$java.lang.String$charAt$int$2$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$2$$return: int;
  var inline$java.lang.String$charAt$int$2$$exception: ref;
  var inline$java.lang.String$charAt$int$2$$objIndex: int;
  var inline$java.lang.String$charAt$int$2$$heap: $heap_type;
  var inline$java.lang.String$charAt$int$3$i0: int;
  var inline$java.lang.String$charAt$int$3$$r1: ref;
  var inline$java.lang.String$charAt$int$3$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$3$r0: ref;
  var inline$java.lang.String$charAt$int$3$$c1: int;
  var inline$java.lang.String$charAt$int$3$$this: ref;
  var inline$java.lang.String$charAt$int$3$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$3$$return: int;
  var inline$java.lang.String$charAt$int$3$$exception: ref;
  var inline$java.lang.String$charAt$int$3$$objIndex: int;
  var inline$java.lang.String$charAt$int$3$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume unsafe.$heap[$in_parameter__0, unsafe.$type] <: unsafe.java.lang.String;
    assume unsafe.$heap[$in_parameter__1, unsafe.$type] <: unsafe.java.lang.String;
    $exception := unsafe.$null;
    assert {:sourceloc "Credential.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Credential.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "Credential.java", 6, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Credential.java", 6, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Credential.java", 7, -1, -1, -1} true;
    $return := 1;
    goto block21;

  block21:
    return;

  anon18_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Credential.java", 6, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "Credential.java", 8, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} r0 != unsafe.$null;
    assert {:sourceloc "Credential.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Credential.java", 9, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} r1 != unsafe.$null;
    assert {:sourceloc "Credential.java", 9, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "Credential.java", 9, -1, -1, -1} true;
    $i0 := unsafe.$stringSizeHeap[r0];
    assert {:sourceloc "Credential.java", 9, -1, -1, -1} true;
    $i1 := unsafe.$stringSizeHeap[r1];
    assert {:sourceloc "Credential.java", 9, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} $i0 != $i1;
    assert {:sourceloc "Credential.java", 9, -1, -1, -1} {:comment "elseblock"} true;
    goto block15;

  block15:
    assert {:sourceloc "Credential.java", 9, -1, -1, -1} true;
    $return := 0;
    goto block21;

  anon21_Then:
    assume {:partition} $i0 == $i1;
    assert {:sourceloc "Credential.java", 9, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  block16:
    assert {:sourceloc "Credential.java", 10, -1, -1, -1} true;
    z0 := 1;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    i5 := 0;
    goto block17;

  block17:
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$Entry;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$Entry:
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$exception := $exception;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$z1 := $z1;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$c4 := $c4;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$i2 := $i2;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_z0 := z0;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_i5 := i5;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_r1 := r1;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_r0 := r0;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$c3 := $c3;
    havoc inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$exception, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$z1, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c4, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$i2, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_z0, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c3;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$$objIndex := unsafe.$objIndex;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$$heap := unsafe.$heap;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$entry;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$entry:
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$exception, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$z1, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c4, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$i2, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_z0, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c3 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$exception, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$z1, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$c4, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$i2, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_z0, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_i5, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$c3;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$block17;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$block17:
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$i2 := unsafe.$stringSizeHeap[inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_r0];
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon22_Then, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon22_Else;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon22_Then:
    assume {:partition} inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5
   >= inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$i2;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} {:comment "thenblock"} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$exception, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$z1, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c4, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$i2, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_z0, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c3 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$exception, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$z1, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$c4, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$i2, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_z0, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_i5, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$c3;
    unsafe.$objIndex, unsafe.$heap := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$$objIndex, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$$heap;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$Return;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$block20:
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_z0 := unsafe.$bitAnd(inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_z0, 
  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$z1);
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5
   + 1;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$block20_dummy;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon17:
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$z1 := 1;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$block20;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$block19:
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$z1 := 0;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$block20;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon23_Then:
    assume {:partition} inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c3
   != inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c4;
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$block19;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon14:
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$0$Entry;

  inline$java.lang.String$charAt$int$0$Entry:
    inline$java.lang.String$charAt$int$0$$this := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_r0;
    inline$java.lang.String$charAt$int$0$$in_parameter__0 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5;
    havoc inline$java.lang.String$charAt$int$0$i0, inline$java.lang.String$charAt$int$0$$r1, inline$java.lang.String$charAt$int$0$$fakelocal_0, inline$java.lang.String$charAt$int$0$r0, inline$java.lang.String$charAt$int$0$$c1, inline$java.lang.String$charAt$int$0$$return, inline$java.lang.String$charAt$int$0$$exception;
    inline$java.lang.String$charAt$int$0$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$charAt$int$0$$heap := unsafe.$heap;
    goto inline$java.lang.String$charAt$int$0$anon0;

  inline$java.lang.String$charAt$int$0$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} unsafe.$heap[inline$java.lang.String$charAt$int$0$$this, unsafe.$type]
   <: unsafe.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$0$$this != unsafe.$null;
    inline$java.lang.String$charAt$int$0$$exception := unsafe.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$r0 := inline$java.lang.String$charAt$int$0$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$i0 := inline$java.lang.String$charAt$int$0$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$$r1 := unsafe.$heap[inline$java.lang.String$charAt$int$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$0$anon4_Then, inline$java.lang.String$charAt$int$0$anon4_Else;

  inline$java.lang.String$charAt$int$0$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$0$i0
     < unsafe.$arrSizeHeap[inline$java.lang.String$charAt$int$0$$r1]
   && inline$java.lang.String$charAt$int$0$i0 >= 0);
    call inline$java.lang.String$charAt$int$0$$fakelocal_0 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$0$$return := 0;
    inline$java.lang.String$charAt$int$0$$exception := inline$java.lang.String$charAt$int$0$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$0$Return;

  inline$java.lang.String$charAt$int$0$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$0$i0
     < unsafe.$arrSizeHeap[inline$java.lang.String$charAt$int$0$$r1]
   && inline$java.lang.String$charAt$int$0$i0 >= 0;
    inline$java.lang.String$charAt$int$0$$exception := inline$java.lang.String$charAt$int$0$$exception;
    goto inline$java.lang.String$charAt$int$0$anon3;

  inline$java.lang.String$charAt$int$0$anon3:
    inline$java.lang.String$charAt$int$0$$c1 := unsafe.$intArrHeap[inline$java.lang.String$charAt$int$0$$r1][inline$java.lang.String$charAt$int$0$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$$return := inline$java.lang.String$charAt$int$0$$c1;
    goto inline$java.lang.String$charAt$int$0$block2;

  inline$java.lang.String$charAt$int$0$block2:
    goto inline$java.lang.String$charAt$int$0$Return;

  inline$java.lang.String$charAt$int$0$Return:
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c3 := inline$java.lang.String$charAt$int$0$$return;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$exception := inline$java.lang.String$charAt$int$0$$exception;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon14$1;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon14$1:
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$1$Entry;

  inline$java.lang.String$charAt$int$1$Entry:
    inline$java.lang.String$charAt$int$1$$this := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_r1;
    inline$java.lang.String$charAt$int$1$$in_parameter__0 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5;
    havoc inline$java.lang.String$charAt$int$1$i0, inline$java.lang.String$charAt$int$1$$r1, inline$java.lang.String$charAt$int$1$$fakelocal_0, inline$java.lang.String$charAt$int$1$r0, inline$java.lang.String$charAt$int$1$$c1, inline$java.lang.String$charAt$int$1$$return, inline$java.lang.String$charAt$int$1$$exception;
    inline$java.lang.String$charAt$int$1$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$charAt$int$1$$heap := unsafe.$heap;
    goto inline$java.lang.String$charAt$int$1$anon0;

  inline$java.lang.String$charAt$int$1$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} unsafe.$heap[inline$java.lang.String$charAt$int$1$$this, unsafe.$type]
   <: unsafe.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$1$$this != unsafe.$null;
    inline$java.lang.String$charAt$int$1$$exception := unsafe.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$r0 := inline$java.lang.String$charAt$int$1$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$i0 := inline$java.lang.String$charAt$int$1$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$$r1 := unsafe.$heap[inline$java.lang.String$charAt$int$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$1$anon4_Then, inline$java.lang.String$charAt$int$1$anon4_Else;

  inline$java.lang.String$charAt$int$1$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$1$i0
     < unsafe.$arrSizeHeap[inline$java.lang.String$charAt$int$1$$r1]
   && inline$java.lang.String$charAt$int$1$i0 >= 0);
    call inline$java.lang.String$charAt$int$1$$fakelocal_0 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$1$$return := 0;
    inline$java.lang.String$charAt$int$1$$exception := inline$java.lang.String$charAt$int$1$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$1$Return;

  inline$java.lang.String$charAt$int$1$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$1$i0
     < unsafe.$arrSizeHeap[inline$java.lang.String$charAt$int$1$$r1]
   && inline$java.lang.String$charAt$int$1$i0 >= 0;
    inline$java.lang.String$charAt$int$1$$exception := inline$java.lang.String$charAt$int$1$$exception;
    goto inline$java.lang.String$charAt$int$1$anon3;

  inline$java.lang.String$charAt$int$1$anon3:
    inline$java.lang.String$charAt$int$1$$c1 := unsafe.$intArrHeap[inline$java.lang.String$charAt$int$1$$r1][inline$java.lang.String$charAt$int$1$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$$return := inline$java.lang.String$charAt$int$1$$c1;
    goto inline$java.lang.String$charAt$int$1$block2;

  inline$java.lang.String$charAt$int$1$block2:
    goto inline$java.lang.String$charAt$int$1$Return;

  inline$java.lang.String$charAt$int$1$Return:
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c4 := inline$java.lang.String$charAt$int$1$$return;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$exception := inline$java.lang.String$charAt$int$1$$exception;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon14$2;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon14$2:
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} true;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon23_Then, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon23_Else;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon22_Else:
    assume {:partition} inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$i2
   > inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon14;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon23_Else:
    assume {:partition} inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c3
   == inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c4;
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon17;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$block20_dummy:
    assume false;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$Return;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$exit:
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$Return;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$Return:
    $exception := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$exception;
    $z1 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$z1;
    $c4 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c4;
    $i2 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$i2;
    z0 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_z0;
    i5 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5;
    $c3 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c3;
    goto block17$1;

  block17$1:
    goto block17_last;

  anon22_Else:
    assume {:partition} $i2 > i5;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} {:comment "elseblock"} true;
    goto anon14;

  anon14:
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$2$Entry;

  inline$java.lang.String$charAt$int$2$Entry:
    inline$java.lang.String$charAt$int$2$$this := r0;
    inline$java.lang.String$charAt$int$2$$in_parameter__0 := i5;
    havoc inline$java.lang.String$charAt$int$2$i0, inline$java.lang.String$charAt$int$2$$r1, inline$java.lang.String$charAt$int$2$$fakelocal_0, inline$java.lang.String$charAt$int$2$r0, inline$java.lang.String$charAt$int$2$$c1, inline$java.lang.String$charAt$int$2$$return, inline$java.lang.String$charAt$int$2$$exception;
    inline$java.lang.String$charAt$int$2$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$charAt$int$2$$heap := unsafe.$heap;
    goto inline$java.lang.String$charAt$int$2$anon0;

  inline$java.lang.String$charAt$int$2$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} unsafe.$heap[inline$java.lang.String$charAt$int$2$$this, unsafe.$type]
   <: unsafe.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$2$$this != unsafe.$null;
    inline$java.lang.String$charAt$int$2$$exception := unsafe.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$r0 := inline$java.lang.String$charAt$int$2$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$i0 := inline$java.lang.String$charAt$int$2$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$$r1 := unsafe.$heap[inline$java.lang.String$charAt$int$2$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$2$anon4_Then, inline$java.lang.String$charAt$int$2$anon4_Else;

  inline$java.lang.String$charAt$int$2$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$2$i0
     < unsafe.$arrSizeHeap[inline$java.lang.String$charAt$int$2$$r1]
   && inline$java.lang.String$charAt$int$2$i0 >= 0);
    call inline$java.lang.String$charAt$int$2$$fakelocal_0 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$2$$return := 0;
    inline$java.lang.String$charAt$int$2$$exception := inline$java.lang.String$charAt$int$2$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$2$Return;

  inline$java.lang.String$charAt$int$2$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$2$i0
     < unsafe.$arrSizeHeap[inline$java.lang.String$charAt$int$2$$r1]
   && inline$java.lang.String$charAt$int$2$i0 >= 0;
    inline$java.lang.String$charAt$int$2$$exception := inline$java.lang.String$charAt$int$2$$exception;
    goto inline$java.lang.String$charAt$int$2$anon3;

  inline$java.lang.String$charAt$int$2$anon3:
    inline$java.lang.String$charAt$int$2$$c1 := unsafe.$intArrHeap[inline$java.lang.String$charAt$int$2$$r1][inline$java.lang.String$charAt$int$2$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$$return := inline$java.lang.String$charAt$int$2$$c1;
    goto inline$java.lang.String$charAt$int$2$block2;

  inline$java.lang.String$charAt$int$2$block2:
    goto inline$java.lang.String$charAt$int$2$Return;

  inline$java.lang.String$charAt$int$2$Return:
    $c3 := inline$java.lang.String$charAt$int$2$$return;
    $exception := inline$java.lang.String$charAt$int$2$$exception;
    goto anon14$1;

  anon14$1:
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$3$Entry;

  inline$java.lang.String$charAt$int$3$Entry:
    inline$java.lang.String$charAt$int$3$$this := r1;
    inline$java.lang.String$charAt$int$3$$in_parameter__0 := i5;
    havoc inline$java.lang.String$charAt$int$3$i0, inline$java.lang.String$charAt$int$3$$r1, inline$java.lang.String$charAt$int$3$$fakelocal_0, inline$java.lang.String$charAt$int$3$r0, inline$java.lang.String$charAt$int$3$$c1, inline$java.lang.String$charAt$int$3$$return, inline$java.lang.String$charAt$int$3$$exception;
    inline$java.lang.String$charAt$int$3$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$charAt$int$3$$heap := unsafe.$heap;
    goto inline$java.lang.String$charAt$int$3$anon0;

  inline$java.lang.String$charAt$int$3$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} unsafe.$heap[inline$java.lang.String$charAt$int$3$$this, unsafe.$type]
   <: unsafe.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$3$$this != unsafe.$null;
    inline$java.lang.String$charAt$int$3$$exception := unsafe.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$r0 := inline$java.lang.String$charAt$int$3$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$i0 := inline$java.lang.String$charAt$int$3$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$$r1 := unsafe.$heap[inline$java.lang.String$charAt$int$3$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$3$anon4_Then, inline$java.lang.String$charAt$int$3$anon4_Else;

  inline$java.lang.String$charAt$int$3$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$3$i0
     < unsafe.$arrSizeHeap[inline$java.lang.String$charAt$int$3$$r1]
   && inline$java.lang.String$charAt$int$3$i0 >= 0);
    call inline$java.lang.String$charAt$int$3$$fakelocal_0 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$3$$return := 0;
    inline$java.lang.String$charAt$int$3$$exception := inline$java.lang.String$charAt$int$3$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$3$Return;

  inline$java.lang.String$charAt$int$3$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$3$i0
     < unsafe.$arrSizeHeap[inline$java.lang.String$charAt$int$3$$r1]
   && inline$java.lang.String$charAt$int$3$i0 >= 0;
    inline$java.lang.String$charAt$int$3$$exception := inline$java.lang.String$charAt$int$3$$exception;
    goto inline$java.lang.String$charAt$int$3$anon3;

  inline$java.lang.String$charAt$int$3$anon3:
    inline$java.lang.String$charAt$int$3$$c1 := unsafe.$intArrHeap[inline$java.lang.String$charAt$int$3$$r1][inline$java.lang.String$charAt$int$3$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$$return := inline$java.lang.String$charAt$int$3$$c1;
    goto inline$java.lang.String$charAt$int$3$block2;

  inline$java.lang.String$charAt$int$3$block2:
    goto inline$java.lang.String$charAt$int$3$Return;

  inline$java.lang.String$charAt$int$3$Return:
    $c4 := inline$java.lang.String$charAt$int$3$$return;
    $exception := inline$java.lang.String$charAt$int$3$$exception;
    goto anon14$2;

  anon14$2:
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;

  anon23_Else:
    assume {:partition} $c3 == $c4;
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    $z1 := 1;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    goto block20;

  block20:
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} true;
    z0 := unsafe.$bitAnd(z0, $z1);
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    i5 := i5 + 1;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    goto block20_dummy;

  anon23_Then:
    assume {:partition} $c3 != $c4;
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    goto block19;

  block19:
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    $z1 := 0;
    goto block20;

  anon22_Then:
    assume {:partition} i5 >= $i2;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} {:comment "thenblock"} true;
    goto block18;

  block18:
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} true;
    $return := z0;
    goto block21;

  anon20_Then:
    assume {:partition} r1 == unsafe.$null;
    assert {:sourceloc "Credential.java", 9, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  anon19_Then:
    assume {:partition} r0 == unsafe.$null;
    assert {:sourceloc "Credential.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  block20_dummy:
    assume false;
    return;

  block17_last:
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    $i2 := unsafe.$stringSizeHeap[r0];
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    goto anon22_Then, anon22_Else;
}



implementation unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := unsafe.$null;
    return;
}



implementation unsafe.Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17(in_$exception: ref, 
    in_$z1: int, 
    in_$c4: int, 
    in_$i2: int, 
    in_z0: int, 
    in_i5: int, 
    in_r1: ref, 
    in_r0: ref, 
    in_$c3: int)
   returns (out_$exception: ref, 
    out_$z1: int, 
    out_$c4: int, 
    out_$i2: int, 
    out_z0: int, 
    out_i5: int, 
    out_$c3: int)
{
  var inline$java.lang.String$charAt$int$0$i0: int;
  var inline$java.lang.String$charAt$int$0$$r1: ref;
  var inline$java.lang.String$charAt$int$0$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$0$r0: ref;
  var inline$java.lang.String$charAt$int$0$$c1: int;
  var inline$java.lang.String$charAt$int$0$$this: ref;
  var inline$java.lang.String$charAt$int$0$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$0$$return: int;
  var inline$java.lang.String$charAt$int$0$$exception: ref;
  var inline$java.lang.String$charAt$int$0$$objIndex: int;
  var inline$java.lang.String$charAt$int$0$$heap: $heap_type;
  var inline$java.lang.String$charAt$int$1$i0: int;
  var inline$java.lang.String$charAt$int$1$$r1: ref;
  var inline$java.lang.String$charAt$int$1$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$1$r0: ref;
  var inline$java.lang.String$charAt$int$1$$c1: int;
  var inline$java.lang.String$charAt$int$1$$this: ref;
  var inline$java.lang.String$charAt$int$1$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$1$$return: int;
  var inline$java.lang.String$charAt$int$1$$exception: ref;
  var inline$java.lang.String$charAt$int$1$$objIndex: int;
  var inline$java.lang.String$charAt$int$1$$heap: $heap_type;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$exception: ref;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$z1: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$c4: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$i2: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_z0: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_i5: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_r1: ref;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_r0: ref;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$c3: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$exception: ref;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$z1: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c4: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$i2: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_z0: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c3: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$$objIndex: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$$heap: $heap_type;
  var inline$java.lang.String$charAt$int$2$i0: int;
  var inline$java.lang.String$charAt$int$2$$r1: ref;
  var inline$java.lang.String$charAt$int$2$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$2$r0: ref;
  var inline$java.lang.String$charAt$int$2$$c1: int;
  var inline$java.lang.String$charAt$int$2$$this: ref;
  var inline$java.lang.String$charAt$int$2$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$2$$return: int;
  var inline$java.lang.String$charAt$int$2$$exception: ref;
  var inline$java.lang.String$charAt$int$2$$objIndex: int;
  var inline$java.lang.String$charAt$int$2$$heap: $heap_type;
  var inline$java.lang.String$charAt$int$3$i0: int;
  var inline$java.lang.String$charAt$int$3$$r1: ref;
  var inline$java.lang.String$charAt$int$3$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$3$r0: ref;
  var inline$java.lang.String$charAt$int$3$$c1: int;
  var inline$java.lang.String$charAt$int$3$$this: ref;
  var inline$java.lang.String$charAt$int$3$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$3$$return: int;
  var inline$java.lang.String$charAt$int$3$$exception: ref;
  var inline$java.lang.String$charAt$int$3$$objIndex: int;
  var inline$java.lang.String$charAt$int$3$$heap: $heap_type;

  entry:
    out_$exception, out_$z1, out_$c4, out_$i2, out_z0, out_i5, out_$c3 := in_$exception, in_$z1, in_$c4, in_$i2, in_z0, in_i5, in_$c3;
    goto block17;

  block17:
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    out_$i2 := unsafe.$stringSizeHeap[in_r0];
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    goto anon22_Then, anon22_Else;

  anon22_Then:
    assume {:partition} out_i5 >= out_$i2;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} {:comment "thenblock"} true;
    out_$exception, out_$z1, out_$c4, out_$i2, out_z0, out_i5, out_$c3 := in_$exception, in_$z1, in_$c4, in_$i2, in_z0, in_i5, in_$c3;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  block20:
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} true;
    out_z0 := unsafe.$bitAnd(out_z0, out_$z1);
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    out_i5 := out_i5 + 1;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    goto block20_dummy;

  anon17:
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    out_$z1 := 1;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    goto block20;

  block19:
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    out_$z1 := 0;
    goto block20;

  anon23_Then:
    assume {:partition} out_$c3 != out_$c4;
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    goto block19;

  anon14:
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$0$Entry;

  inline$java.lang.String$charAt$int$0$Entry:
    inline$java.lang.String$charAt$int$0$$this := in_r0;
    inline$java.lang.String$charAt$int$0$$in_parameter__0 := out_i5;
    havoc inline$java.lang.String$charAt$int$0$i0, inline$java.lang.String$charAt$int$0$$r1, inline$java.lang.String$charAt$int$0$$fakelocal_0, inline$java.lang.String$charAt$int$0$r0, inline$java.lang.String$charAt$int$0$$c1, inline$java.lang.String$charAt$int$0$$return, inline$java.lang.String$charAt$int$0$$exception;
    inline$java.lang.String$charAt$int$0$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$charAt$int$0$$heap := unsafe.$heap;
    goto inline$java.lang.String$charAt$int$0$anon0;

  inline$java.lang.String$charAt$int$0$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} unsafe.$heap[inline$java.lang.String$charAt$int$0$$this, unsafe.$type]
   <: unsafe.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$0$$this != unsafe.$null;
    inline$java.lang.String$charAt$int$0$$exception := unsafe.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$r0 := inline$java.lang.String$charAt$int$0$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$i0 := inline$java.lang.String$charAt$int$0$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$$r1 := unsafe.$heap[inline$java.lang.String$charAt$int$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$0$anon4_Then, inline$java.lang.String$charAt$int$0$anon4_Else;

  inline$java.lang.String$charAt$int$0$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$0$i0
     < unsafe.$arrSizeHeap[inline$java.lang.String$charAt$int$0$$r1]
   && inline$java.lang.String$charAt$int$0$i0 >= 0);
    call inline$java.lang.String$charAt$int$0$$fakelocal_0 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$0$$return := 0;
    inline$java.lang.String$charAt$int$0$$exception := inline$java.lang.String$charAt$int$0$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$0$Return;

  inline$java.lang.String$charAt$int$0$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$0$i0
     < unsafe.$arrSizeHeap[inline$java.lang.String$charAt$int$0$$r1]
   && inline$java.lang.String$charAt$int$0$i0 >= 0;
    inline$java.lang.String$charAt$int$0$$exception := inline$java.lang.String$charAt$int$0$$exception;
    goto inline$java.lang.String$charAt$int$0$anon3;

  inline$java.lang.String$charAt$int$0$anon3:
    inline$java.lang.String$charAt$int$0$$c1 := unsafe.$intArrHeap[inline$java.lang.String$charAt$int$0$$r1][inline$java.lang.String$charAt$int$0$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$$return := inline$java.lang.String$charAt$int$0$$c1;
    goto inline$java.lang.String$charAt$int$0$block2;

  inline$java.lang.String$charAt$int$0$block2:
    goto inline$java.lang.String$charAt$int$0$Return;

  inline$java.lang.String$charAt$int$0$Return:
    out_$c3 := inline$java.lang.String$charAt$int$0$$return;
    out_$exception := inline$java.lang.String$charAt$int$0$$exception;
    goto anon14$1;

  anon14$1:
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$1$Entry;

  inline$java.lang.String$charAt$int$1$Entry:
    inline$java.lang.String$charAt$int$1$$this := in_r1;
    inline$java.lang.String$charAt$int$1$$in_parameter__0 := out_i5;
    havoc inline$java.lang.String$charAt$int$1$i0, inline$java.lang.String$charAt$int$1$$r1, inline$java.lang.String$charAt$int$1$$fakelocal_0, inline$java.lang.String$charAt$int$1$r0, inline$java.lang.String$charAt$int$1$$c1, inline$java.lang.String$charAt$int$1$$return, inline$java.lang.String$charAt$int$1$$exception;
    inline$java.lang.String$charAt$int$1$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$charAt$int$1$$heap := unsafe.$heap;
    goto inline$java.lang.String$charAt$int$1$anon0;

  inline$java.lang.String$charAt$int$1$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} unsafe.$heap[inline$java.lang.String$charAt$int$1$$this, unsafe.$type]
   <: unsafe.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$1$$this != unsafe.$null;
    inline$java.lang.String$charAt$int$1$$exception := unsafe.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$r0 := inline$java.lang.String$charAt$int$1$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$i0 := inline$java.lang.String$charAt$int$1$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$$r1 := unsafe.$heap[inline$java.lang.String$charAt$int$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$1$anon4_Then, inline$java.lang.String$charAt$int$1$anon4_Else;

  inline$java.lang.String$charAt$int$1$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$1$i0
     < unsafe.$arrSizeHeap[inline$java.lang.String$charAt$int$1$$r1]
   && inline$java.lang.String$charAt$int$1$i0 >= 0);
    call inline$java.lang.String$charAt$int$1$$fakelocal_0 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$1$$return := 0;
    inline$java.lang.String$charAt$int$1$$exception := inline$java.lang.String$charAt$int$1$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$1$Return;

  inline$java.lang.String$charAt$int$1$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$1$i0
     < unsafe.$arrSizeHeap[inline$java.lang.String$charAt$int$1$$r1]
   && inline$java.lang.String$charAt$int$1$i0 >= 0;
    inline$java.lang.String$charAt$int$1$$exception := inline$java.lang.String$charAt$int$1$$exception;
    goto inline$java.lang.String$charAt$int$1$anon3;

  inline$java.lang.String$charAt$int$1$anon3:
    inline$java.lang.String$charAt$int$1$$c1 := unsafe.$intArrHeap[inline$java.lang.String$charAt$int$1$$r1][inline$java.lang.String$charAt$int$1$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$$return := inline$java.lang.String$charAt$int$1$$c1;
    goto inline$java.lang.String$charAt$int$1$block2;

  inline$java.lang.String$charAt$int$1$block2:
    goto inline$java.lang.String$charAt$int$1$Return;

  inline$java.lang.String$charAt$int$1$Return:
    out_$c4 := inline$java.lang.String$charAt$int$1$$return;
    out_$exception := inline$java.lang.String$charAt$int$1$$exception;
    goto anon14$2;

  anon14$2:
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;

  anon22_Else:
    assume {:partition} out_$i2 > out_i5;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} {:comment "elseblock"} true;
    goto anon14;

  anon23_Else:
    assume {:partition} out_$c3 == out_$c4;
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  block20_dummy:
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$Entry;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$Entry:
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$exception := out_$exception;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$z1 := out_$z1;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$c4 := out_$c4;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$i2 := out_$i2;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_z0 := out_z0;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_i5 := out_i5;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_r1 := in_r1;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_r0 := in_r0;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$c3 := out_$c3;
    havoc inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$exception, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$z1, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c4, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$i2, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_z0, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c3;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$$objIndex := unsafe.$objIndex;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$$heap := unsafe.$heap;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$entry;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$entry:
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$exception, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$z1, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c4, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$i2, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_z0, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c3 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$exception, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$z1, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$c4, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$i2, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_z0, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_i5, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$c3;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$block17;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$block17:
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$i2 := unsafe.$stringSizeHeap[inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_r0];
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon22_Then, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon22_Else;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon22_Then:
    assume {:partition} inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5
   >= inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$i2;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} {:comment "thenblock"} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$exception, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$z1, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c4, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$i2, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_z0, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c3 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$exception, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$z1, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$c4, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$i2, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_z0, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_i5, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_$c3;
    unsafe.$objIndex, unsafe.$heap := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$$objIndex, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$$heap;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$Return;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$block20:
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_z0 := unsafe.$bitAnd(inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_z0, 
  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$z1);
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5
   + 1;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$block20_dummy;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon17:
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$z1 := 1;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$block20;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$block19:
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$z1 := 0;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$block20;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon23_Then:
    assume {:partition} inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c3
   != inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c4;
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$block19;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon14:
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$2$Entry;

  inline$java.lang.String$charAt$int$2$Entry:
    inline$java.lang.String$charAt$int$2$$this := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_r0;
    inline$java.lang.String$charAt$int$2$$in_parameter__0 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5;
    havoc inline$java.lang.String$charAt$int$2$i0, inline$java.lang.String$charAt$int$2$$r1, inline$java.lang.String$charAt$int$2$$fakelocal_0, inline$java.lang.String$charAt$int$2$r0, inline$java.lang.String$charAt$int$2$$c1, inline$java.lang.String$charAt$int$2$$return, inline$java.lang.String$charAt$int$2$$exception;
    inline$java.lang.String$charAt$int$2$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$charAt$int$2$$heap := unsafe.$heap;
    goto inline$java.lang.String$charAt$int$2$anon0;

  inline$java.lang.String$charAt$int$2$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} unsafe.$heap[inline$java.lang.String$charAt$int$2$$this, unsafe.$type]
   <: unsafe.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$2$$this != unsafe.$null;
    inline$java.lang.String$charAt$int$2$$exception := unsafe.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$r0 := inline$java.lang.String$charAt$int$2$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$i0 := inline$java.lang.String$charAt$int$2$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$$r1 := unsafe.$heap[inline$java.lang.String$charAt$int$2$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$2$anon4_Then, inline$java.lang.String$charAt$int$2$anon4_Else;

  inline$java.lang.String$charAt$int$2$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$2$i0
     < unsafe.$arrSizeHeap[inline$java.lang.String$charAt$int$2$$r1]
   && inline$java.lang.String$charAt$int$2$i0 >= 0);
    call inline$java.lang.String$charAt$int$2$$fakelocal_0 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$2$$return := 0;
    inline$java.lang.String$charAt$int$2$$exception := inline$java.lang.String$charAt$int$2$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$2$Return;

  inline$java.lang.String$charAt$int$2$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$2$i0
     < unsafe.$arrSizeHeap[inline$java.lang.String$charAt$int$2$$r1]
   && inline$java.lang.String$charAt$int$2$i0 >= 0;
    inline$java.lang.String$charAt$int$2$$exception := inline$java.lang.String$charAt$int$2$$exception;
    goto inline$java.lang.String$charAt$int$2$anon3;

  inline$java.lang.String$charAt$int$2$anon3:
    inline$java.lang.String$charAt$int$2$$c1 := unsafe.$intArrHeap[inline$java.lang.String$charAt$int$2$$r1][inline$java.lang.String$charAt$int$2$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$$return := inline$java.lang.String$charAt$int$2$$c1;
    goto inline$java.lang.String$charAt$int$2$block2;

  inline$java.lang.String$charAt$int$2$block2:
    goto inline$java.lang.String$charAt$int$2$Return;

  inline$java.lang.String$charAt$int$2$Return:
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c3 := inline$java.lang.String$charAt$int$2$$return;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$exception := inline$java.lang.String$charAt$int$2$$exception;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon14$1;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon14$1:
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$3$Entry;

  inline$java.lang.String$charAt$int$3$Entry:
    inline$java.lang.String$charAt$int$3$$this := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$in_r1;
    inline$java.lang.String$charAt$int$3$$in_parameter__0 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5;
    havoc inline$java.lang.String$charAt$int$3$i0, inline$java.lang.String$charAt$int$3$$r1, inline$java.lang.String$charAt$int$3$$fakelocal_0, inline$java.lang.String$charAt$int$3$r0, inline$java.lang.String$charAt$int$3$$c1, inline$java.lang.String$charAt$int$3$$return, inline$java.lang.String$charAt$int$3$$exception;
    inline$java.lang.String$charAt$int$3$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$charAt$int$3$$heap := unsafe.$heap;
    goto inline$java.lang.String$charAt$int$3$anon0;

  inline$java.lang.String$charAt$int$3$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} unsafe.$heap[inline$java.lang.String$charAt$int$3$$this, unsafe.$type]
   <: unsafe.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$3$$this != unsafe.$null;
    inline$java.lang.String$charAt$int$3$$exception := unsafe.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$r0 := inline$java.lang.String$charAt$int$3$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$i0 := inline$java.lang.String$charAt$int$3$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$$r1 := unsafe.$heap[inline$java.lang.String$charAt$int$3$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$3$anon4_Then, inline$java.lang.String$charAt$int$3$anon4_Else;

  inline$java.lang.String$charAt$int$3$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$3$i0
     < unsafe.$arrSizeHeap[inline$java.lang.String$charAt$int$3$$r1]
   && inline$java.lang.String$charAt$int$3$i0 >= 0);
    call inline$java.lang.String$charAt$int$3$$fakelocal_0 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$3$$return := 0;
    inline$java.lang.String$charAt$int$3$$exception := inline$java.lang.String$charAt$int$3$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$3$Return;

  inline$java.lang.String$charAt$int$3$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$3$i0
     < unsafe.$arrSizeHeap[inline$java.lang.String$charAt$int$3$$r1]
   && inline$java.lang.String$charAt$int$3$i0 >= 0;
    inline$java.lang.String$charAt$int$3$$exception := inline$java.lang.String$charAt$int$3$$exception;
    goto inline$java.lang.String$charAt$int$3$anon3;

  inline$java.lang.String$charAt$int$3$anon3:
    inline$java.lang.String$charAt$int$3$$c1 := unsafe.$intArrHeap[inline$java.lang.String$charAt$int$3$$r1][inline$java.lang.String$charAt$int$3$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$$return := inline$java.lang.String$charAt$int$3$$c1;
    goto inline$java.lang.String$charAt$int$3$block2;

  inline$java.lang.String$charAt$int$3$block2:
    goto inline$java.lang.String$charAt$int$3$Return;

  inline$java.lang.String$charAt$int$3$Return:
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c4 := inline$java.lang.String$charAt$int$3$$return;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$exception := inline$java.lang.String$charAt$int$3$$exception;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon14$2;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon14$2:
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} true;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon23_Then, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon23_Else;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon22_Else:
    assume {:partition} inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$i2
   > inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon14;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon23_Else:
    assume {:partition} inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c3
   == inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c4;
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$anon17;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$block20_dummy:
    assume false;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$Return;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$exit:
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$Return;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$Return:
    out_$exception := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$exception;
    out_$z1 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$z1;
    out_$c4 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c4;
    out_$i2 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$i2;
    out_z0 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_z0;
    out_i5 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_i5;
    out_$c3 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block17$0$out_$c3;
    goto block20_dummy$1;

  block20_dummy$1:
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
