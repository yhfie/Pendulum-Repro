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

const {:sourceloc "String.java", -1, -1, -1, -1} unique unsafe.java.lang.NullPointerException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique unsafe.java.lang.Boolean: javaType extends unique unsafe.java.lang.Object complete;

const {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} unique unsafe.UsernamePasswordLoginModule: javaType extends unique unsafe.java.lang.Object complete;

const {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} unique unsafe.java.lang.Comparable: javaType extends complete;

const {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} unique unsafe.java.lang.CharSequence: javaType extends complete;

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
  free ensures $obj != unsafe.$null;
  free ensures !old(unsafe.$heap[$obj, unsafe.$alloc]);
  free ensures unsafe.$heap
   == old(unsafe.$heap)[$obj, unsafe.$alloc := true][$obj, unsafe.$type := obj_type];
  free ensures $obj == unsafe.$intToRef(old(unsafe.$objIndex));
  free ensures unsafe.$objIndex == old(unsafe.$objIndex) + 1;



procedure {:prefix "unsafe"} unsafe.java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  free ensures unsafe.$heap[$other, unsafe.$type] == unsafe.$heap[$this, unsafe.$type];
  free ensures unsafe.$heap[$other, unsafe.$alloc] <==> true;
  free ensures $other != unsafe.$null;



procedure {:prefix "unsafe"} unsafe.int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure {:prefix "unsafe"} unsafe.java.lang.String$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.String$toCharArray$($this: ref) returns ($return: ref, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$arrSizeHeap, unsafe.$intArrHeap, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.UsernamePasswordLoginModule$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.UsernamePasswordLoginModule$validatePassword_unsafe$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  free requires unsafe.$stringSizeHeap[$in_parameter__0] == 16;
  free requires unsafe.$stringSizeHeap[$in_parameter__1] == 16;
  modifies unsafe.$objIndex, unsafe.$heap, unsafe.$arrSizeHeap, unsafe.$intArrHeap;



procedure {:prefix "unsafe"} unsafe.UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap, unsafe.$arrSizeHeap, unsafe.$intArrHeap;



procedure {:prefix "unsafe"} unsafe.java.lang.String$toCharArray$_loop_block3(in_$return: ref, 
    in_$exception: ref, 
    in_$i1: int, 
    in_i3: int, 
    in_r1: ref, 
    in_$fakelocal_4: ref, 
    in_$c2: int, 
    in_$r3: ref, 
    in_$fakelocal_2: ref, 
    in_$r4: ref, 
    in_r0: ref, 
    in_$fakelocal_3: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$i1: int, 
    out_i3: int, 
    out_$fakelocal_4: ref, 
    out_$c2: int, 
    out_$r3: ref, 
    out_$fakelocal_2: ref, 
    out_$r4: ref, 
    out_$fakelocal_3: ref);
  modifies unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15(in_$return: int, 
    in_$exception: ref, 
    in_r3: ref, 
    in_i8: int, 
    in_$c5: int, 
    in_$i2: int, 
    in_$fakelocal_0: ref, 
    in_$c4: int, 
    in_$i1: int, 
    in_i6: int, 
    in_$fakelocal_1: ref, 
    in_i7: int, 
    in_r2: ref, 
    in_$i3: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_i8: int, 
    out_$c5: int, 
    out_$i2: int, 
    out_$fakelocal_0: ref, 
    out_$c4: int, 
    out_$i1: int, 
    out_i6: int, 
    out_$fakelocal_1: ref, 
    out_i7: int, 
    out_$i3: int);
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
  var $r1: ref;
  var $c1: int;
  var i0: int;
  var $fakelocal_0: ref;
  var r0: ref;

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



implementation unsafe.java.lang.String$toCharArray$($this: ref) returns ($return: ref, $exception: ref)
{
  var $i1: int;
  var i3: int;
  var r1: ref;
  var $i0: int;
  var $fakelocal_0: ref;
  var $fakelocal_4: ref;
  var $c2: int;
  var $r3: ref;
  var $fakelocal_2: ref;
  var $r2: ref;
  var $r4: ref;
  var $fakelocal_1: ref;
  var r0: ref;
  var $fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_r1: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_r0: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type] <: unsafe.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    $r2 := unsafe.$heap[r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} $r2 == unsafe.$null;
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := unsafe.$null;
    $exception := $fakelocal_0;
    return;

  anon16_Then:
    assume {:partition} $r2 != unsafe.$null;
    $exception := $exception;
    goto anon3;

  anon3:
    $i0 := unsafe.$arrSizeHeap[$r2];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    call $fakelocal_1 := unsafe.$new(unsafe.$intArrayType);
    unsafe.$arrSizeHeap := unsafe.$arrSizeHeap[$fakelocal_1 := $i0];
    r1 := $fakelocal_1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    i3 := 0;
    goto block3;

  block3:
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Entry;

  inline$java.lang.String$toCharArray$_loop_block3$0$Entry:
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$return := $return;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception := $exception;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1 := $i1;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_i3 := i3;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_r1 := r1;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4 := $fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2 := $c2;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3 := $r3;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2 := $fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4 := $r4;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_r0 := r0;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3 := $fakelocal_3;
    havoc inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap := unsafe.$intArrHeap;
    inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$toCharArray$_loop_block3$0$$heap := unsafe.$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$entry;

  inline$java.lang.String$toCharArray$_loop_block3$0$entry:
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$in_$return, inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$in_i3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$block3;

  inline$java.lang.String$toCharArray$_loop_block3$0$block3:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon17_Then, inline$java.lang.String$toCharArray$_loop_block3$0$anon17_Else;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon17_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3 == unsafe.$null;
    call inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$in_$return, inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$in_i3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon15:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r1 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r1][inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon15_dummy;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon20_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon15;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon12:
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4][inline$java.lang.String$toCharArray$_loop_block3$0$out_i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon20_Then, inline$java.lang.String$toCharArray$_loop_block3$0$anon20_Else;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon20_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block3$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$in_$return, inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$in_i3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon19_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon12;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon19_Then, inline$java.lang.String$toCharArray$_loop_block3$0$anon19_Else;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon19_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block3$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$in_$return, inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$in_i3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon18_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1
   > inline$java.lang.String$toCharArray$_loop_block3$0$out_i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon9;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon6:
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon18_Then, inline$java.lang.String$toCharArray$_loop_block3$0$anon18_Else;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon18_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_i3
   >= inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$in_$return, inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$in_i3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon17_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3 != unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon6;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$exit:
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$Return:
    $return := inline$java.lang.String$toCharArray$_loop_block3$0$out_$return;
    $exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception;
    $i1 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1;
    i3 := inline$java.lang.String$toCharArray$_loop_block3$0$out_i3;
    $fakelocal_4 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4;
    $c2 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2;
    $r3 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3;
    $fakelocal_2 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2;
    $r4 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4;
    $fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3;
    goto block3$1;

  block3$1:
    goto block3_last;

  anon17_Else:
    assume {:partition} $r3 == unsafe.$null;
    call $fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := unsafe.$null;
    $exception := $fakelocal_2;
    return;

  anon17_Then:
    assume {:partition} $r3 != unsafe.$null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i1 := unsafe.$arrSizeHeap[$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} $i1 > i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    $r4 := unsafe.$heap[r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(i3 < unsafe.$arrSizeHeap[$r4] && i3 >= 0);
    call $fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := unsafe.$null;
    $exception := $fakelocal_3;
    return;

  anon19_Then:
    assume {:partition} i3 < unsafe.$arrSizeHeap[$r4] && i3 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    $c2 := unsafe.$intArrHeap[$r4][i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !(i3 < unsafe.$arrSizeHeap[r1] && i3 >= 0);
    call $fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := unsafe.$null;
    $exception := $fakelocal_4;
    return;

  anon20_Then:
    assume {:partition} i3 < unsafe.$arrSizeHeap[r1] && i3 >= 0;
    $exception := $exception;
    goto anon15;

  anon15:
    unsafe.$intArrHeap := unsafe.$intArrHeap[r1 := unsafe.$intArrHeap[r1][i3 := $c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    i3 := i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto anon15_dummy;

  anon18_Then:
    assume {:partition} i3 >= $i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    goto block4;

  block4:
    assert {:sourceloc "String.java", 15, -1, -1, -1} true;
    $return := r1;
    goto block5;

  block5:
    return;

  anon15_dummy:
    assume false;
    return;

  block3_last:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    $r3 := unsafe.$heap[r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;
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
    goto block6;

  block6:
    return;
}



implementation unsafe.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $r0: ref;
  var $fakelocal_0: ref;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$block6;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$block6:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    $exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    $return := $r0;
    goto block7;

  block7:
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
    goto block8;

  block8:
    return;
}



implementation unsafe.UsernamePasswordLoginModule$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type] <: unsafe.UsernamePasswordLoginModule;
    assume {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 59, -1, -1, -1} true;
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
    assert {:sourceloc "UsernamePasswordLoginModule.java", 59, -1, -1, -1} true;
    goto block9;

  block9:
    return;
}



implementation unsafe.UsernamePasswordLoginModule$validatePassword_unsafe$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var z1: int;
  var r1: ref;
  var r0: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i0: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r3: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i8: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$c5: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i2: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r0: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$fakelocal_0: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r1: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$c4: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i1: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i6: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$fakelocal_1: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i7: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r2: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i3: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$in_parameter__0: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$in_parameter__1: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$return: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$exception: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$objIndex: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$heap: $heap_type;
  var inline$java.lang.String$toCharArray$$0$$i1: int;
  var inline$java.lang.String$toCharArray$$0$i3: int;
  var inline$java.lang.String$toCharArray$$0$r1: ref;
  var inline$java.lang.String$toCharArray$$0$$i0: int;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_0: ref;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$$0$$c2: int;
  var inline$java.lang.String$toCharArray$$0$$r3: ref;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$$0$$r2: ref;
  var inline$java.lang.String$toCharArray$$0$$r4: ref;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_1: ref;
  var inline$java.lang.String$toCharArray$$0$r0: ref;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$$0$$this: ref;
  var inline$java.lang.String$toCharArray$$0$$return: ref;
  var inline$java.lang.String$toCharArray$$0$$exception: ref;
  var inline$java.lang.String$toCharArray$$0$$objIndex: int;
  var inline$java.lang.String$toCharArray$$0$$arrSizeHeap: [ref]int;
  var inline$java.lang.String$toCharArray$$0$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$$0$$heap: $heap_type;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_r1: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_r0: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$$heap: $heap_type;
  var inline$java.lang.String$toCharArray$$1$$i1: int;
  var inline$java.lang.String$toCharArray$$1$i3: int;
  var inline$java.lang.String$toCharArray$$1$r1: ref;
  var inline$java.lang.String$toCharArray$$1$$i0: int;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_0: ref;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$$1$$c2: int;
  var inline$java.lang.String$toCharArray$$1$$r3: ref;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$$1$$r2: ref;
  var inline$java.lang.String$toCharArray$$1$$r4: ref;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_1: ref;
  var inline$java.lang.String$toCharArray$$1$r0: ref;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$$1$$this: ref;
  var inline$java.lang.String$toCharArray$$1$$return: ref;
  var inline$java.lang.String$toCharArray$$1$$exception: ref;
  var inline$java.lang.String$toCharArray$$1$$objIndex: int;
  var inline$java.lang.String$toCharArray$$1$$arrSizeHeap: [ref]int;
  var inline$java.lang.String$toCharArray$$1$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$$1$$heap: $heap_type;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_r1: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_r0: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$out_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block3$1$out_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$out_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$_loop_block3$1$$objIndex: int;
  var inline$java.lang.String$toCharArray$_loop_block3$1$$heap: $heap_type;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r3: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r2: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$objIndex: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$heap: $heap_type;

  anon0:
    assume unsafe.$stringSizeHeap[$in_parameter__0] == 16
   && unsafe.$stringSizeHeap[$in_parameter__1] == 16;
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume unsafe.$heap[$in_parameter__1, unsafe.$type] <: unsafe.java.lang.String;
    assume unsafe.$heap[$in_parameter__0, unsafe.$type] <: unsafe.java.lang.String;
    $exception := unsafe.$null;
    assert {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 82, -1, -1, -1} true;
    goto anon6_Then, anon6_Else;

  anon6_Else:
    assume {:partition} r0 != unsafe.$null;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 82, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 83, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} r1 == unsafe.$null;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 83, -1, -1, -1} {:comment "elseblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 83, -1, -1, -1} true;
    $return := 0;
    goto block12;

  block12:
    return;

  anon7_Then:
    assume {:partition} r1 != unsafe.$null;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 83, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  block11:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 89, -1, -1, -1} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$Entry;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$Entry:
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$in_parameter__0 := r0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$in_parameter__1 := r1;
    havoc inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r3, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i3, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$exception;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$objIndex := unsafe.$objIndex;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$heap := unsafe.$heap;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon0;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume unsafe.$heap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$in_parameter__0, unsafe.$type]
   <: unsafe.java.lang.String;
    assume unsafe.$heap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$in_parameter__1, unsafe.$type]
   <: unsafe.java.lang.String;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$exception := unsafe.$null;
    assert {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r0 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$in_parameter__0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r1 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$in_parameter__1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 117, -1, -1, -1} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon19_Then, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon19_Else;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon19_Else:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r0
   == inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 117, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon3;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon3:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 126, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$return := 1;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$block17;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$block17:
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon19_Then:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r0
   != inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 117, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$block13;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$block13:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 118, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i6 := unsafe.$stringSizeHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r0];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 119, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i0 := unsafe.$stringSizeHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r1];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 119, -1, -1, -1} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon20_Then, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon20_Else;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon20_Else:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i6
   == inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 119, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon6;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon6:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 120, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$Entry;

  inline$java.lang.String$toCharArray$$0$Entry:
    inline$java.lang.String$toCharArray$$0$$this := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r0;
    havoc inline$java.lang.String$toCharArray$$0$$i1, inline$java.lang.String$toCharArray$$0$i3, inline$java.lang.String$toCharArray$$0$r1, inline$java.lang.String$toCharArray$$0$$i0, inline$java.lang.String$toCharArray$$0$$fakelocal_0, inline$java.lang.String$toCharArray$$0$$fakelocal_4, inline$java.lang.String$toCharArray$$0$$c2, inline$java.lang.String$toCharArray$$0$$r3, inline$java.lang.String$toCharArray$$0$$fakelocal_2, inline$java.lang.String$toCharArray$$0$$r2, inline$java.lang.String$toCharArray$$0$$r4, inline$java.lang.String$toCharArray$$0$$fakelocal_1, inline$java.lang.String$toCharArray$$0$r0, inline$java.lang.String$toCharArray$$0$$fakelocal_3, inline$java.lang.String$toCharArray$$0$$return, inline$java.lang.String$toCharArray$$0$$exception;
    inline$java.lang.String$toCharArray$$0$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$toCharArray$$0$$arrSizeHeap := unsafe.$arrSizeHeap;
    inline$java.lang.String$toCharArray$$0$$intArrHeap := unsafe.$intArrHeap;
    inline$java.lang.String$toCharArray$$0$$heap := unsafe.$heap;
    goto inline$java.lang.String$toCharArray$$0$anon0;

  inline$java.lang.String$toCharArray$$0$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} unsafe.$heap[inline$java.lang.String$toCharArray$$0$$this, unsafe.$type]
   <: unsafe.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$toCharArray$$0$$this != unsafe.$null;
    inline$java.lang.String$toCharArray$$0$$exception := unsafe.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$r0 := inline$java.lang.String$toCharArray$$0$$this;
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$$r2 := unsafe.$heap[inline$java.lang.String$toCharArray$$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$anon16_Then, inline$java.lang.String$toCharArray$$0$anon16_Else;

  inline$java.lang.String$toCharArray$$0$anon16_Else:
    assume {:partition} inline$java.lang.String$toCharArray$$0$$r2 == unsafe.$null;
    call inline$java.lang.String$toCharArray$$0$$fakelocal_0 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$$0$$return := unsafe.$null;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$$0$$fakelocal_0;
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$anon16_Then:
    assume {:partition} inline$java.lang.String$toCharArray$$0$$r2 != unsafe.$null;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$$0$$exception;
    goto inline$java.lang.String$toCharArray$$0$anon3;

  inline$java.lang.String$toCharArray$$0$anon3:
    inline$java.lang.String$toCharArray$$0$$i0 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$0$$r2];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    call inline$java.lang.String$toCharArray$$0$$fakelocal_1 := unsafe.$new(unsafe.$intArrayType);
    unsafe.$arrSizeHeap := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$0$$fakelocal_1 := inline$java.lang.String$toCharArray$$0$$i0];
    inline$java.lang.String$toCharArray$$0$r1 := inline$java.lang.String$toCharArray$$0$$fakelocal_1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$i3 := 0;
    goto inline$java.lang.String$toCharArray$$0$block3;

  inline$java.lang.String$toCharArray$$0$block3:
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Entry;

  inline$java.lang.String$toCharArray$_loop_block3$0$Entry:
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$return := inline$java.lang.String$toCharArray$$0$$return;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception := inline$java.lang.String$toCharArray$$0$$exception;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1 := inline$java.lang.String$toCharArray$$0$$i1;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_i3 := inline$java.lang.String$toCharArray$$0$i3;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_r1 := inline$java.lang.String$toCharArray$$0$r1;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4 := inline$java.lang.String$toCharArray$$0$$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2 := inline$java.lang.String$toCharArray$$0$$c2;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3 := inline$java.lang.String$toCharArray$$0$$r3;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2 := inline$java.lang.String$toCharArray$$0$$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4 := inline$java.lang.String$toCharArray$$0$$r4;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_r0 := inline$java.lang.String$toCharArray$$0$r0;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3 := inline$java.lang.String$toCharArray$$0$$fakelocal_3;
    havoc inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap := unsafe.$intArrHeap;
    inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$toCharArray$_loop_block3$0$$heap := unsafe.$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$entry;

  inline$java.lang.String$toCharArray$_loop_block3$0$entry:
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$in_$return, inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$in_i3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$block3;

  inline$java.lang.String$toCharArray$_loop_block3$0$block3:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon17_Then, inline$java.lang.String$toCharArray$_loop_block3$0$anon17_Else;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon17_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3 == unsafe.$null;
    call inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$in_$return, inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$in_i3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon15:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r1 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r1][inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon15_dummy;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon20_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon15;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon12:
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4][inline$java.lang.String$toCharArray$_loop_block3$0$out_i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon20_Then, inline$java.lang.String$toCharArray$_loop_block3$0$anon20_Else;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon20_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block3$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$in_$return, inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$in_i3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon19_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon12;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon19_Then, inline$java.lang.String$toCharArray$_loop_block3$0$anon19_Else;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon19_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block3$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$in_$return, inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$in_i3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon18_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1
   > inline$java.lang.String$toCharArray$_loop_block3$0$out_i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon9;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon6:
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon18_Then, inline$java.lang.String$toCharArray$_loop_block3$0$anon18_Else;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon18_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_i3
   >= inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$in_$return, inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$in_i3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon17_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3 != unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon6;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$exit:
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$Return:
    inline$java.lang.String$toCharArray$$0$$return := inline$java.lang.String$toCharArray$_loop_block3$0$out_$return;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception;
    inline$java.lang.String$toCharArray$$0$$i1 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1;
    inline$java.lang.String$toCharArray$$0$i3 := inline$java.lang.String$toCharArray$_loop_block3$0$out_i3;
    inline$java.lang.String$toCharArray$$0$$fakelocal_4 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$$0$$c2 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2;
    inline$java.lang.String$toCharArray$$0$$r3 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3;
    inline$java.lang.String$toCharArray$$0$$fakelocal_2 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$$0$$r4 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4;
    inline$java.lang.String$toCharArray$$0$$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3;
    goto inline$java.lang.String$toCharArray$$0$block3$1;

  inline$java.lang.String$toCharArray$$0$block3$1:
    goto inline$java.lang.String$toCharArray$$0$block3_last;

  inline$java.lang.String$toCharArray$$0$anon17_Else:
    assume {:partition} inline$java.lang.String$toCharArray$$0$$r3 == unsafe.$null;
    call inline$java.lang.String$toCharArray$$0$$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$$0$$return := unsafe.$null;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$$0$$fakelocal_2;
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$anon17_Then:
    assume {:partition} inline$java.lang.String$toCharArray$$0$$r3 != unsafe.$null;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$$0$$exception;
    goto inline$java.lang.String$toCharArray$$0$anon6;

  inline$java.lang.String$toCharArray$$0$anon6:
    inline$java.lang.String$toCharArray$$0$$i1 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$0$$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$anon18_Then, inline$java.lang.String$toCharArray$$0$anon18_Else;

  inline$java.lang.String$toCharArray$$0$anon18_Else:
    assume {:partition} inline$java.lang.String$toCharArray$$0$$i1
   > inline$java.lang.String$toCharArray$$0$i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.String$toCharArray$$0$anon9;

  inline$java.lang.String$toCharArray$$0$anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$anon19_Then, inline$java.lang.String$toCharArray$$0$anon19_Else;

  inline$java.lang.String$toCharArray$$0$anon19_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$$0$i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$0$$r4]
   && inline$java.lang.String$toCharArray$$0$i3 >= 0);
    call inline$java.lang.String$toCharArray$$0$$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$$0$$return := unsafe.$null;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$$0$$fakelocal_3;
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$anon19_Then:
    assume {:partition} inline$java.lang.String$toCharArray$$0$i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$0$$r4]
   && inline$java.lang.String$toCharArray$$0$i3 >= 0;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$$0$$exception;
    goto inline$java.lang.String$toCharArray$$0$anon12;

  inline$java.lang.String$toCharArray$$0$anon12:
    inline$java.lang.String$toCharArray$$0$$c2 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$$0$$r4][inline$java.lang.String$toCharArray$$0$i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$anon20_Then, inline$java.lang.String$toCharArray$$0$anon20_Else;

  inline$java.lang.String$toCharArray$$0$anon20_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$$0$i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$0$r1]
   && inline$java.lang.String$toCharArray$$0$i3 >= 0);
    call inline$java.lang.String$toCharArray$$0$$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$$0$$return := unsafe.$null;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$$0$$fakelocal_4;
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$anon20_Then:
    assume {:partition} inline$java.lang.String$toCharArray$$0$i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$0$r1]
   && inline$java.lang.String$toCharArray$$0$i3 >= 0;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$$0$$exception;
    goto inline$java.lang.String$toCharArray$$0$anon15;

  inline$java.lang.String$toCharArray$$0$anon15:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$$0$r1 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$$0$r1][inline$java.lang.String$toCharArray$$0$i3 := inline$java.lang.String$toCharArray$$0$$c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$i3 := inline$java.lang.String$toCharArray$$0$i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$anon15_dummy;

  inline$java.lang.String$toCharArray$$0$anon18_Then:
    assume {:partition} inline$java.lang.String$toCharArray$$0$i3
   >= inline$java.lang.String$toCharArray$$0$$i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$java.lang.String$toCharArray$$0$block4;

  inline$java.lang.String$toCharArray$$0$block4:
    assert {:sourceloc "String.java", 15, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$$return := inline$java.lang.String$toCharArray$$0$r1;
    goto inline$java.lang.String$toCharArray$$0$block5;

  inline$java.lang.String$toCharArray$$0$block5:
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$block3_last:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$anon17_Then, inline$java.lang.String$toCharArray$$0$anon17_Else;

  inline$java.lang.String$toCharArray$$0$Return:
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r2 := inline$java.lang.String$toCharArray$$0$$return;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$exception := inline$java.lang.String$toCharArray$$0$$exception;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon6$1;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon6$1:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 121, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$Entry;

  inline$java.lang.String$toCharArray$$1$Entry:
    inline$java.lang.String$toCharArray$$1$$this := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r1;
    havoc inline$java.lang.String$toCharArray$$1$$i1, inline$java.lang.String$toCharArray$$1$i3, inline$java.lang.String$toCharArray$$1$r1, inline$java.lang.String$toCharArray$$1$$i0, inline$java.lang.String$toCharArray$$1$$fakelocal_0, inline$java.lang.String$toCharArray$$1$$fakelocal_4, inline$java.lang.String$toCharArray$$1$$c2, inline$java.lang.String$toCharArray$$1$$r3, inline$java.lang.String$toCharArray$$1$$fakelocal_2, inline$java.lang.String$toCharArray$$1$$r2, inline$java.lang.String$toCharArray$$1$$r4, inline$java.lang.String$toCharArray$$1$$fakelocal_1, inline$java.lang.String$toCharArray$$1$r0, inline$java.lang.String$toCharArray$$1$$fakelocal_3, inline$java.lang.String$toCharArray$$1$$return, inline$java.lang.String$toCharArray$$1$$exception;
    inline$java.lang.String$toCharArray$$1$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$toCharArray$$1$$arrSizeHeap := unsafe.$arrSizeHeap;
    inline$java.lang.String$toCharArray$$1$$intArrHeap := unsafe.$intArrHeap;
    inline$java.lang.String$toCharArray$$1$$heap := unsafe.$heap;
    goto inline$java.lang.String$toCharArray$$1$anon0;

  inline$java.lang.String$toCharArray$$1$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} unsafe.$heap[inline$java.lang.String$toCharArray$$1$$this, unsafe.$type]
   <: unsafe.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$toCharArray$$1$$this != unsafe.$null;
    inline$java.lang.String$toCharArray$$1$$exception := unsafe.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$r0 := inline$java.lang.String$toCharArray$$1$$this;
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$$r2 := unsafe.$heap[inline$java.lang.String$toCharArray$$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$anon16_Then, inline$java.lang.String$toCharArray$$1$anon16_Else;

  inline$java.lang.String$toCharArray$$1$anon16_Else:
    assume {:partition} inline$java.lang.String$toCharArray$$1$$r2 == unsafe.$null;
    call inline$java.lang.String$toCharArray$$1$$fakelocal_0 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$$1$$return := unsafe.$null;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$$1$$fakelocal_0;
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$anon16_Then:
    assume {:partition} inline$java.lang.String$toCharArray$$1$$r2 != unsafe.$null;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$$1$$exception;
    goto inline$java.lang.String$toCharArray$$1$anon3;

  inline$java.lang.String$toCharArray$$1$anon3:
    inline$java.lang.String$toCharArray$$1$$i0 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$1$$r2];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    call inline$java.lang.String$toCharArray$$1$$fakelocal_1 := unsafe.$new(unsafe.$intArrayType);
    unsafe.$arrSizeHeap := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$1$$fakelocal_1 := inline$java.lang.String$toCharArray$$1$$i0];
    inline$java.lang.String$toCharArray$$1$r1 := inline$java.lang.String$toCharArray$$1$$fakelocal_1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$i3 := 0;
    goto inline$java.lang.String$toCharArray$$1$block3;

  inline$java.lang.String$toCharArray$$1$block3:
    goto inline$java.lang.String$toCharArray$_loop_block3$1$Entry;

  inline$java.lang.String$toCharArray$_loop_block3$1$Entry:
    inline$java.lang.String$toCharArray$_loop_block3$1$in_$return := inline$java.lang.String$toCharArray$$1$$return;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_$exception := inline$java.lang.String$toCharArray$$1$$exception;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_$i1 := inline$java.lang.String$toCharArray$$1$$i1;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_i3 := inline$java.lang.String$toCharArray$$1$i3;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_r1 := inline$java.lang.String$toCharArray$$1$r1;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_4 := inline$java.lang.String$toCharArray$$1$$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_$c2 := inline$java.lang.String$toCharArray$$1$$c2;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_$r3 := inline$java.lang.String$toCharArray$$1$$r3;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_2 := inline$java.lang.String$toCharArray$$1$$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_$r4 := inline$java.lang.String$toCharArray$$1$$r4;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_r0 := inline$java.lang.String$toCharArray$$1$r0;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_3 := inline$java.lang.String$toCharArray$$1$$fakelocal_3;
    havoc inline$java.lang.String$toCharArray$_loop_block3$1$out_$return, inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$out_i3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block3$1$$intArrHeap := unsafe.$intArrHeap;
    inline$java.lang.String$toCharArray$_loop_block3$1$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$toCharArray$_loop_block3$1$$heap := unsafe.$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$entry;

  inline$java.lang.String$toCharArray$_loop_block3$1$entry:
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$return, inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$out_i3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$1$in_$return, inline$java.lang.String$toCharArray$_loop_block3$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$in_i3, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_3;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$block3;

  inline$java.lang.String$toCharArray$_loop_block3$1$block3:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block3$1$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$anon17_Then, inline$java.lang.String$toCharArray$_loop_block3$1$anon17_Else;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon17_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3 == unsafe.$null;
    call inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$return, inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$out_i3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$1$in_$return, inline$java.lang.String$toCharArray$_loop_block3$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$in_i3, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$1$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$1$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$1$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$Return;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon15:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block3$1$in_r1 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block3$1$in_r1][inline$java.lang.String$toCharArray$_loop_block3$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block3$1$out_$c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block3$1$out_i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$anon15_dummy;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon20_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$1$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$1$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block3$1$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$anon15;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon12:
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$c2 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4][inline$java.lang.String$toCharArray$_loop_block3$1$out_i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$anon20_Then, inline$java.lang.String$toCharArray$_loop_block3$1$anon20_Else;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon20_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block3$1$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$1$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block3$1$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$return, inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$out_i3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$1$in_$return, inline$java.lang.String$toCharArray$_loop_block3$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$in_i3, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$1$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$1$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$1$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$Return;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon19_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$1$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block3$1$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$anon12;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block3$1$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$anon19_Then, inline$java.lang.String$toCharArray$_loop_block3$1$anon19_Else;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon19_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block3$1$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block3$1$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$return, inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$out_i3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$1$in_$return, inline$java.lang.String$toCharArray$_loop_block3$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$in_i3, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$1$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$1$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$1$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$Return;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon18_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1
   > inline$java.lang.String$toCharArray$_loop_block3$1$out_i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$anon9;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon6:
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$anon18_Then, inline$java.lang.String$toCharArray$_loop_block3$1$anon18_Else;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon18_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$1$out_i3
   >= inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$return, inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$out_i3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$1$in_$return, inline$java.lang.String$toCharArray$_loop_block3$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$in_i3, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$1$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$1$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$1$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$Return;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon17_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3 != unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$anon6;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$Return;

  inline$java.lang.String$toCharArray$_loop_block3$1$exit:
    goto inline$java.lang.String$toCharArray$_loop_block3$1$Return;

  inline$java.lang.String$toCharArray$_loop_block3$1$Return:
    inline$java.lang.String$toCharArray$$1$$return := inline$java.lang.String$toCharArray$_loop_block3$1$out_$return;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception;
    inline$java.lang.String$toCharArray$$1$$i1 := inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1;
    inline$java.lang.String$toCharArray$$1$i3 := inline$java.lang.String$toCharArray$_loop_block3$1$out_i3;
    inline$java.lang.String$toCharArray$$1$$fakelocal_4 := inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$$1$$c2 := inline$java.lang.String$toCharArray$_loop_block3$1$out_$c2;
    inline$java.lang.String$toCharArray$$1$$r3 := inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3;
    inline$java.lang.String$toCharArray$$1$$fakelocal_2 := inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$$1$$r4 := inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4;
    inline$java.lang.String$toCharArray$$1$$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_3;
    goto inline$java.lang.String$toCharArray$$1$block3$1;

  inline$java.lang.String$toCharArray$$1$block3$1:
    goto inline$java.lang.String$toCharArray$$1$block3_last;

  inline$java.lang.String$toCharArray$$1$anon17_Else:
    assume {:partition} inline$java.lang.String$toCharArray$$1$$r3 == unsafe.$null;
    call inline$java.lang.String$toCharArray$$1$$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$$1$$return := unsafe.$null;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$$1$$fakelocal_2;
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$anon17_Then:
    assume {:partition} inline$java.lang.String$toCharArray$$1$$r3 != unsafe.$null;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$$1$$exception;
    goto inline$java.lang.String$toCharArray$$1$anon6;

  inline$java.lang.String$toCharArray$$1$anon6:
    inline$java.lang.String$toCharArray$$1$$i1 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$1$$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$anon18_Then, inline$java.lang.String$toCharArray$$1$anon18_Else;

  inline$java.lang.String$toCharArray$$1$anon18_Else:
    assume {:partition} inline$java.lang.String$toCharArray$$1$$i1
   > inline$java.lang.String$toCharArray$$1$i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.String$toCharArray$$1$anon9;

  inline$java.lang.String$toCharArray$$1$anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$anon19_Then, inline$java.lang.String$toCharArray$$1$anon19_Else;

  inline$java.lang.String$toCharArray$$1$anon19_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$$1$i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$1$$r4]
   && inline$java.lang.String$toCharArray$$1$i3 >= 0);
    call inline$java.lang.String$toCharArray$$1$$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$$1$$return := unsafe.$null;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$$1$$fakelocal_3;
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$anon19_Then:
    assume {:partition} inline$java.lang.String$toCharArray$$1$i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$1$$r4]
   && inline$java.lang.String$toCharArray$$1$i3 >= 0;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$$1$$exception;
    goto inline$java.lang.String$toCharArray$$1$anon12;

  inline$java.lang.String$toCharArray$$1$anon12:
    inline$java.lang.String$toCharArray$$1$$c2 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$$1$$r4][inline$java.lang.String$toCharArray$$1$i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$anon20_Then, inline$java.lang.String$toCharArray$$1$anon20_Else;

  inline$java.lang.String$toCharArray$$1$anon20_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$$1$i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$1$r1]
   && inline$java.lang.String$toCharArray$$1$i3 >= 0);
    call inline$java.lang.String$toCharArray$$1$$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$$1$$return := unsafe.$null;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$$1$$fakelocal_4;
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$anon20_Then:
    assume {:partition} inline$java.lang.String$toCharArray$$1$i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$1$r1]
   && inline$java.lang.String$toCharArray$$1$i3 >= 0;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$$1$$exception;
    goto inline$java.lang.String$toCharArray$$1$anon15;

  inline$java.lang.String$toCharArray$$1$anon15:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$$1$r1 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$$1$r1][inline$java.lang.String$toCharArray$$1$i3 := inline$java.lang.String$toCharArray$$1$$c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$i3 := inline$java.lang.String$toCharArray$$1$i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$anon15_dummy;

  inline$java.lang.String$toCharArray$$1$anon18_Then:
    assume {:partition} inline$java.lang.String$toCharArray$$1$i3
   >= inline$java.lang.String$toCharArray$$1$$i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$java.lang.String$toCharArray$$1$block4;

  inline$java.lang.String$toCharArray$$1$block4:
    assert {:sourceloc "String.java", 15, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$$return := inline$java.lang.String$toCharArray$$1$r1;
    goto inline$java.lang.String$toCharArray$$1$block5;

  inline$java.lang.String$toCharArray$$1$block5:
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$block3_last:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$anon17_Then, inline$java.lang.String$toCharArray$$1$anon17_Else;

  inline$java.lang.String$toCharArray$$1$Return:
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r3 := inline$java.lang.String$toCharArray$$1$$return;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$exception := inline$java.lang.String$toCharArray$$1$$exception;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon6$2;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon6$2:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 122, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i7 := 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 123, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i8 := 0;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$block15;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$block15:
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Entry;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Entry:
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$return;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$exception;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r3;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i8;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$c5;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i2;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$fakelocal_0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$c4;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i1;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i6;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$fakelocal_1;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i7;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r2 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r2;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i3;
    havoc inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$objIndex := unsafe.$objIndex;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$heap := unsafe.$heap;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$entry;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$entry:
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$block15;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$block15:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6
   + -1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon21_Then, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon21_Else;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon21_Then:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1
   == 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} {:comment "thenblock"} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3;
    unsafe.$objIndex, unsafe.$heap := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$objIndex, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$heap;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon24_Then:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5
   == inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon24_Then_dummy;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon15:
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4 := unsafe.$intArrHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r3][inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon24_Then, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon24_Else;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon24_Else:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5
   != inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} {:comment "elseblock"} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3;
    unsafe.$objIndex, unsafe.$heap := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$objIndex, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$heap;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon23_Then:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3
     < unsafe.$arrSizeHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r3]
   && inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3
     >= 0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon15;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon12:
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5 := unsafe.$intArrHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r2][inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8
   + 1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon23_Then, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon23_Else;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon23_Else:
    assume {:partition} !(inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3
     < unsafe.$arrSizeHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r3]
   && inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3
     >= 0);
    call inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return := 0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3;
    unsafe.$objIndex, unsafe.$heap := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$objIndex, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$heap;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon22_Then:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2
     < unsafe.$arrSizeHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r2]
   && inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2
     >= 0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon12;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon9:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7
   + 1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon22_Then, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon22_Else;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon22_Else:
    assume {:partition} !(inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2
     < unsafe.$arrSizeHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r2]
   && inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2
     >= 0);
    call inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return := 0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3;
    unsafe.$objIndex, unsafe.$heap := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$objIndex, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$heap;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon21_Else:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1
   != 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon9;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon24_Then_dummy:
    assume false;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$exit:
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return:
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$return := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i8 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$c5 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i2 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$fakelocal_0 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$c4 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i1 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i6 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$fakelocal_1 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i7 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$block15$1;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$block15$1:
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$block15_last;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon21_Else:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i1
   != 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon9;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon9:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i2 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i7;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i7 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i7
   + 1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon22_Then, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon22_Else;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon22_Else:
    assume {:partition} !(inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i2
     < unsafe.$arrSizeHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r2]
   && inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i2
     >= 0);
    call inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$fakelocal_0 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$return := 0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$fakelocal_0;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon22_Then:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i2
     < unsafe.$arrSizeHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r2]
   && inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i2
     >= 0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$exception;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon12;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon12:
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$c5 := unsafe.$intArrHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r2][inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i2];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i8;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i8 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i8
   + 1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon23_Then, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon23_Else;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon23_Else:
    assume {:partition} !(inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i3
     < unsafe.$arrSizeHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r3]
   && inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i3
     >= 0);
    call inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$return := 0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$fakelocal_1;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon23_Then:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i3
     < unsafe.$arrSizeHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r3]
   && inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i3
     >= 0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$exception;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon15;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon15:
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$c4 := unsafe.$intArrHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$r3][inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i3];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon24_Then, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon24_Else;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon24_Else:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$c5
   != inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$c4;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon18;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon18:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 126, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$return := 0;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$block17;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon24_Then:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$c5
   == inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$c4;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon24_Then_dummy;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon21_Then:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i1
   == 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$block16;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$block16:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 128, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$return := 1;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$block17;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon20_Then:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i6
   != inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 119, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$block14;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$block14:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 130, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$return := 0;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$block17;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon24_Then_dummy:
    assume false;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$block15_last:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$i1 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i6;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i6 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$i6
   + -1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon21_Then, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$anon21_Else;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$Return:
    z1 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$return;
    $exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String$0$$exception;
    goto block11$1;

  block11$1:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 90, -1, -1, -1} true;
    $return := z1;
    goto block12;

  anon6_Then:
    assume {:partition} r0 == unsafe.$null;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 82, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;
}



implementation unsafe.UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $i0: int;
  var r3: ref;
  var i8: int;
  var $c5: int;
  var $i2: int;
  var r0: ref;
  var $fakelocal_0: ref;
  var r1: ref;
  var $c4: int;
  var $i1: int;
  var i6: int;
  var $fakelocal_1: ref;
  var i7: int;
  var r2: ref;
  var $i3: int;
  var inline$java.lang.String$toCharArray$$0$$i1: int;
  var inline$java.lang.String$toCharArray$$0$i3: int;
  var inline$java.lang.String$toCharArray$$0$r1: ref;
  var inline$java.lang.String$toCharArray$$0$$i0: int;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_0: ref;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$$0$$c2: int;
  var inline$java.lang.String$toCharArray$$0$$r3: ref;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$$0$$r2: ref;
  var inline$java.lang.String$toCharArray$$0$$r4: ref;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_1: ref;
  var inline$java.lang.String$toCharArray$$0$r0: ref;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$$0$$this: ref;
  var inline$java.lang.String$toCharArray$$0$$return: ref;
  var inline$java.lang.String$toCharArray$$0$$exception: ref;
  var inline$java.lang.String$toCharArray$$0$$objIndex: int;
  var inline$java.lang.String$toCharArray$$0$$arrSizeHeap: [ref]int;
  var inline$java.lang.String$toCharArray$$0$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$$0$$heap: $heap_type;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_r1: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_r0: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$$heap: $heap_type;
  var inline$java.lang.String$toCharArray$$1$$i1: int;
  var inline$java.lang.String$toCharArray$$1$i3: int;
  var inline$java.lang.String$toCharArray$$1$r1: ref;
  var inline$java.lang.String$toCharArray$$1$$i0: int;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_0: ref;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$$1$$c2: int;
  var inline$java.lang.String$toCharArray$$1$$r3: ref;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$$1$$r2: ref;
  var inline$java.lang.String$toCharArray$$1$$r4: ref;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_1: ref;
  var inline$java.lang.String$toCharArray$$1$r0: ref;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$$1$$this: ref;
  var inline$java.lang.String$toCharArray$$1$$return: ref;
  var inline$java.lang.String$toCharArray$$1$$exception: ref;
  var inline$java.lang.String$toCharArray$$1$$objIndex: int;
  var inline$java.lang.String$toCharArray$$1$$arrSizeHeap: [ref]int;
  var inline$java.lang.String$toCharArray$$1$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$$1$$heap: $heap_type;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_r1: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_r0: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$out_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block3$1$out_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$out_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$1$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$_loop_block3$1$$objIndex: int;
  var inline$java.lang.String$toCharArray$_loop_block3$1$$heap: $heap_type;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r3: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r2: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$objIndex: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume unsafe.$heap[$in_parameter__0, unsafe.$type] <: unsafe.java.lang.String;
    assume unsafe.$heap[$in_parameter__1, unsafe.$type] <: unsafe.java.lang.String;
    $exception := unsafe.$null;
    assert {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 117, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 117, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 126, -1, -1, -1} true;
    $return := 1;
    goto block17;

  block17:
    return;

  anon19_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 117, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  block13:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 118, -1, -1, -1} true;
    i6 := unsafe.$stringSizeHeap[r0];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 119, -1, -1, -1} true;
    $i0 := unsafe.$stringSizeHeap[r1];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 119, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} i6 == $i0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 119, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 120, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$Entry;

  inline$java.lang.String$toCharArray$$0$Entry:
    inline$java.lang.String$toCharArray$$0$$this := r0;
    havoc inline$java.lang.String$toCharArray$$0$$i1, inline$java.lang.String$toCharArray$$0$i3, inline$java.lang.String$toCharArray$$0$r1, inline$java.lang.String$toCharArray$$0$$i0, inline$java.lang.String$toCharArray$$0$$fakelocal_0, inline$java.lang.String$toCharArray$$0$$fakelocal_4, inline$java.lang.String$toCharArray$$0$$c2, inline$java.lang.String$toCharArray$$0$$r3, inline$java.lang.String$toCharArray$$0$$fakelocal_2, inline$java.lang.String$toCharArray$$0$$r2, inline$java.lang.String$toCharArray$$0$$r4, inline$java.lang.String$toCharArray$$0$$fakelocal_1, inline$java.lang.String$toCharArray$$0$r0, inline$java.lang.String$toCharArray$$0$$fakelocal_3, inline$java.lang.String$toCharArray$$0$$return, inline$java.lang.String$toCharArray$$0$$exception;
    inline$java.lang.String$toCharArray$$0$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$toCharArray$$0$$arrSizeHeap := unsafe.$arrSizeHeap;
    inline$java.lang.String$toCharArray$$0$$intArrHeap := unsafe.$intArrHeap;
    inline$java.lang.String$toCharArray$$0$$heap := unsafe.$heap;
    goto inline$java.lang.String$toCharArray$$0$anon0;

  inline$java.lang.String$toCharArray$$0$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} unsafe.$heap[inline$java.lang.String$toCharArray$$0$$this, unsafe.$type]
   <: unsafe.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$toCharArray$$0$$this != unsafe.$null;
    inline$java.lang.String$toCharArray$$0$$exception := unsafe.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$r0 := inline$java.lang.String$toCharArray$$0$$this;
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$$r2 := unsafe.$heap[inline$java.lang.String$toCharArray$$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$anon16_Then, inline$java.lang.String$toCharArray$$0$anon16_Else;

  inline$java.lang.String$toCharArray$$0$anon16_Else:
    assume {:partition} inline$java.lang.String$toCharArray$$0$$r2 == unsafe.$null;
    call inline$java.lang.String$toCharArray$$0$$fakelocal_0 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$$0$$return := unsafe.$null;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$$0$$fakelocal_0;
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$anon16_Then:
    assume {:partition} inline$java.lang.String$toCharArray$$0$$r2 != unsafe.$null;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$$0$$exception;
    goto inline$java.lang.String$toCharArray$$0$anon3;

  inline$java.lang.String$toCharArray$$0$anon3:
    inline$java.lang.String$toCharArray$$0$$i0 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$0$$r2];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    call inline$java.lang.String$toCharArray$$0$$fakelocal_1 := unsafe.$new(unsafe.$intArrayType);
    unsafe.$arrSizeHeap := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$0$$fakelocal_1 := inline$java.lang.String$toCharArray$$0$$i0];
    inline$java.lang.String$toCharArray$$0$r1 := inline$java.lang.String$toCharArray$$0$$fakelocal_1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$i3 := 0;
    goto inline$java.lang.String$toCharArray$$0$block3;

  inline$java.lang.String$toCharArray$$0$block3:
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Entry;

  inline$java.lang.String$toCharArray$_loop_block3$0$Entry:
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$return := inline$java.lang.String$toCharArray$$0$$return;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception := inline$java.lang.String$toCharArray$$0$$exception;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1 := inline$java.lang.String$toCharArray$$0$$i1;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_i3 := inline$java.lang.String$toCharArray$$0$i3;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_r1 := inline$java.lang.String$toCharArray$$0$r1;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4 := inline$java.lang.String$toCharArray$$0$$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2 := inline$java.lang.String$toCharArray$$0$$c2;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3 := inline$java.lang.String$toCharArray$$0$$r3;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2 := inline$java.lang.String$toCharArray$$0$$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4 := inline$java.lang.String$toCharArray$$0$$r4;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_r0 := inline$java.lang.String$toCharArray$$0$r0;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3 := inline$java.lang.String$toCharArray$$0$$fakelocal_3;
    havoc inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap := unsafe.$intArrHeap;
    inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$toCharArray$_loop_block3$0$$heap := unsafe.$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$entry;

  inline$java.lang.String$toCharArray$_loop_block3$0$entry:
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$in_$return, inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$in_i3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$block3;

  inline$java.lang.String$toCharArray$_loop_block3$0$block3:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon17_Then, inline$java.lang.String$toCharArray$_loop_block3$0$anon17_Else;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon17_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3 == unsafe.$null;
    call inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$in_$return, inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$in_i3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon15:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r1 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r1][inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon15_dummy;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon20_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon15;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon12:
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4][inline$java.lang.String$toCharArray$_loop_block3$0$out_i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon20_Then, inline$java.lang.String$toCharArray$_loop_block3$0$anon20_Else;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon20_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block3$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$in_$return, inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$in_i3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon19_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon12;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon19_Then, inline$java.lang.String$toCharArray$_loop_block3$0$anon19_Else;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon19_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block3$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$in_$return, inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$in_i3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon18_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1
   > inline$java.lang.String$toCharArray$_loop_block3$0$out_i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon9;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon6:
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon18_Then, inline$java.lang.String$toCharArray$_loop_block3$0$anon18_Else;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon18_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_i3
   >= inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$in_$return, inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$in_i3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon17_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3 != unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon6;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$exit:
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$Return:
    inline$java.lang.String$toCharArray$$0$$return := inline$java.lang.String$toCharArray$_loop_block3$0$out_$return;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception;
    inline$java.lang.String$toCharArray$$0$$i1 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1;
    inline$java.lang.String$toCharArray$$0$i3 := inline$java.lang.String$toCharArray$_loop_block3$0$out_i3;
    inline$java.lang.String$toCharArray$$0$$fakelocal_4 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$$0$$c2 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2;
    inline$java.lang.String$toCharArray$$0$$r3 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3;
    inline$java.lang.String$toCharArray$$0$$fakelocal_2 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$$0$$r4 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4;
    inline$java.lang.String$toCharArray$$0$$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3;
    goto inline$java.lang.String$toCharArray$$0$block3$1;

  inline$java.lang.String$toCharArray$$0$block3$1:
    goto inline$java.lang.String$toCharArray$$0$block3_last;

  inline$java.lang.String$toCharArray$$0$anon17_Else:
    assume {:partition} inline$java.lang.String$toCharArray$$0$$r3 == unsafe.$null;
    call inline$java.lang.String$toCharArray$$0$$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$$0$$return := unsafe.$null;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$$0$$fakelocal_2;
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$anon17_Then:
    assume {:partition} inline$java.lang.String$toCharArray$$0$$r3 != unsafe.$null;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$$0$$exception;
    goto inline$java.lang.String$toCharArray$$0$anon6;

  inline$java.lang.String$toCharArray$$0$anon6:
    inline$java.lang.String$toCharArray$$0$$i1 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$0$$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$anon18_Then, inline$java.lang.String$toCharArray$$0$anon18_Else;

  inline$java.lang.String$toCharArray$$0$anon18_Else:
    assume {:partition} inline$java.lang.String$toCharArray$$0$$i1
   > inline$java.lang.String$toCharArray$$0$i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.String$toCharArray$$0$anon9;

  inline$java.lang.String$toCharArray$$0$anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$anon19_Then, inline$java.lang.String$toCharArray$$0$anon19_Else;

  inline$java.lang.String$toCharArray$$0$anon19_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$$0$i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$0$$r4]
   && inline$java.lang.String$toCharArray$$0$i3 >= 0);
    call inline$java.lang.String$toCharArray$$0$$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$$0$$return := unsafe.$null;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$$0$$fakelocal_3;
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$anon19_Then:
    assume {:partition} inline$java.lang.String$toCharArray$$0$i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$0$$r4]
   && inline$java.lang.String$toCharArray$$0$i3 >= 0;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$$0$$exception;
    goto inline$java.lang.String$toCharArray$$0$anon12;

  inline$java.lang.String$toCharArray$$0$anon12:
    inline$java.lang.String$toCharArray$$0$$c2 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$$0$$r4][inline$java.lang.String$toCharArray$$0$i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$anon20_Then, inline$java.lang.String$toCharArray$$0$anon20_Else;

  inline$java.lang.String$toCharArray$$0$anon20_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$$0$i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$0$r1]
   && inline$java.lang.String$toCharArray$$0$i3 >= 0);
    call inline$java.lang.String$toCharArray$$0$$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$$0$$return := unsafe.$null;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$$0$$fakelocal_4;
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$anon20_Then:
    assume {:partition} inline$java.lang.String$toCharArray$$0$i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$0$r1]
   && inline$java.lang.String$toCharArray$$0$i3 >= 0;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$$0$$exception;
    goto inline$java.lang.String$toCharArray$$0$anon15;

  inline$java.lang.String$toCharArray$$0$anon15:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$$0$r1 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$$0$r1][inline$java.lang.String$toCharArray$$0$i3 := inline$java.lang.String$toCharArray$$0$$c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$i3 := inline$java.lang.String$toCharArray$$0$i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$anon15_dummy;

  inline$java.lang.String$toCharArray$$0$anon18_Then:
    assume {:partition} inline$java.lang.String$toCharArray$$0$i3
   >= inline$java.lang.String$toCharArray$$0$$i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$java.lang.String$toCharArray$$0$block4;

  inline$java.lang.String$toCharArray$$0$block4:
    assert {:sourceloc "String.java", 15, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$$return := inline$java.lang.String$toCharArray$$0$r1;
    goto inline$java.lang.String$toCharArray$$0$block5;

  inline$java.lang.String$toCharArray$$0$block5:
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$block3_last:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$anon17_Then, inline$java.lang.String$toCharArray$$0$anon17_Else;

  inline$java.lang.String$toCharArray$$0$Return:
    r2 := inline$java.lang.String$toCharArray$$0$$return;
    $exception := inline$java.lang.String$toCharArray$$0$$exception;
    goto anon6$1;

  anon6$1:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 121, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$Entry;

  inline$java.lang.String$toCharArray$$1$Entry:
    inline$java.lang.String$toCharArray$$1$$this := r1;
    havoc inline$java.lang.String$toCharArray$$1$$i1, inline$java.lang.String$toCharArray$$1$i3, inline$java.lang.String$toCharArray$$1$r1, inline$java.lang.String$toCharArray$$1$$i0, inline$java.lang.String$toCharArray$$1$$fakelocal_0, inline$java.lang.String$toCharArray$$1$$fakelocal_4, inline$java.lang.String$toCharArray$$1$$c2, inline$java.lang.String$toCharArray$$1$$r3, inline$java.lang.String$toCharArray$$1$$fakelocal_2, inline$java.lang.String$toCharArray$$1$$r2, inline$java.lang.String$toCharArray$$1$$r4, inline$java.lang.String$toCharArray$$1$$fakelocal_1, inline$java.lang.String$toCharArray$$1$r0, inline$java.lang.String$toCharArray$$1$$fakelocal_3, inline$java.lang.String$toCharArray$$1$$return, inline$java.lang.String$toCharArray$$1$$exception;
    inline$java.lang.String$toCharArray$$1$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$toCharArray$$1$$arrSizeHeap := unsafe.$arrSizeHeap;
    inline$java.lang.String$toCharArray$$1$$intArrHeap := unsafe.$intArrHeap;
    inline$java.lang.String$toCharArray$$1$$heap := unsafe.$heap;
    goto inline$java.lang.String$toCharArray$$1$anon0;

  inline$java.lang.String$toCharArray$$1$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} unsafe.$heap[inline$java.lang.String$toCharArray$$1$$this, unsafe.$type]
   <: unsafe.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$toCharArray$$1$$this != unsafe.$null;
    inline$java.lang.String$toCharArray$$1$$exception := unsafe.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$r0 := inline$java.lang.String$toCharArray$$1$$this;
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$$r2 := unsafe.$heap[inline$java.lang.String$toCharArray$$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$anon16_Then, inline$java.lang.String$toCharArray$$1$anon16_Else;

  inline$java.lang.String$toCharArray$$1$anon16_Else:
    assume {:partition} inline$java.lang.String$toCharArray$$1$$r2 == unsafe.$null;
    call inline$java.lang.String$toCharArray$$1$$fakelocal_0 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$$1$$return := unsafe.$null;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$$1$$fakelocal_0;
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$anon16_Then:
    assume {:partition} inline$java.lang.String$toCharArray$$1$$r2 != unsafe.$null;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$$1$$exception;
    goto inline$java.lang.String$toCharArray$$1$anon3;

  inline$java.lang.String$toCharArray$$1$anon3:
    inline$java.lang.String$toCharArray$$1$$i0 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$1$$r2];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    call inline$java.lang.String$toCharArray$$1$$fakelocal_1 := unsafe.$new(unsafe.$intArrayType);
    unsafe.$arrSizeHeap := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$1$$fakelocal_1 := inline$java.lang.String$toCharArray$$1$$i0];
    inline$java.lang.String$toCharArray$$1$r1 := inline$java.lang.String$toCharArray$$1$$fakelocal_1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$i3 := 0;
    goto inline$java.lang.String$toCharArray$$1$block3;

  inline$java.lang.String$toCharArray$$1$block3:
    goto inline$java.lang.String$toCharArray$_loop_block3$1$Entry;

  inline$java.lang.String$toCharArray$_loop_block3$1$Entry:
    inline$java.lang.String$toCharArray$_loop_block3$1$in_$return := inline$java.lang.String$toCharArray$$1$$return;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_$exception := inline$java.lang.String$toCharArray$$1$$exception;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_$i1 := inline$java.lang.String$toCharArray$$1$$i1;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_i3 := inline$java.lang.String$toCharArray$$1$i3;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_r1 := inline$java.lang.String$toCharArray$$1$r1;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_4 := inline$java.lang.String$toCharArray$$1$$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_$c2 := inline$java.lang.String$toCharArray$$1$$c2;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_$r3 := inline$java.lang.String$toCharArray$$1$$r3;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_2 := inline$java.lang.String$toCharArray$$1$$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_$r4 := inline$java.lang.String$toCharArray$$1$$r4;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_r0 := inline$java.lang.String$toCharArray$$1$r0;
    inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_3 := inline$java.lang.String$toCharArray$$1$$fakelocal_3;
    havoc inline$java.lang.String$toCharArray$_loop_block3$1$out_$return, inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$out_i3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block3$1$$intArrHeap := unsafe.$intArrHeap;
    inline$java.lang.String$toCharArray$_loop_block3$1$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$toCharArray$_loop_block3$1$$heap := unsafe.$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$entry;

  inline$java.lang.String$toCharArray$_loop_block3$1$entry:
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$return, inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$out_i3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$1$in_$return, inline$java.lang.String$toCharArray$_loop_block3$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$in_i3, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_3;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$block3;

  inline$java.lang.String$toCharArray$_loop_block3$1$block3:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block3$1$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$anon17_Then, inline$java.lang.String$toCharArray$_loop_block3$1$anon17_Else;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon17_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3 == unsafe.$null;
    call inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$return, inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$out_i3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$1$in_$return, inline$java.lang.String$toCharArray$_loop_block3$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$in_i3, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$1$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$1$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$1$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$Return;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon15:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block3$1$in_r1 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block3$1$in_r1][inline$java.lang.String$toCharArray$_loop_block3$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block3$1$out_$c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block3$1$out_i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$anon15_dummy;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon20_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$1$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$1$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block3$1$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$anon15;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon12:
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$c2 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4][inline$java.lang.String$toCharArray$_loop_block3$1$out_i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$anon20_Then, inline$java.lang.String$toCharArray$_loop_block3$1$anon20_Else;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon20_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block3$1$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$1$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block3$1$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$return, inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$out_i3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$1$in_$return, inline$java.lang.String$toCharArray$_loop_block3$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$in_i3, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$1$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$1$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$1$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$Return;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon19_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$1$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block3$1$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$anon12;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block3$1$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$anon19_Then, inline$java.lang.String$toCharArray$_loop_block3$1$anon19_Else;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon19_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block3$1$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block3$1$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$return, inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$out_i3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$1$in_$return, inline$java.lang.String$toCharArray$_loop_block3$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$in_i3, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$1$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$1$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$1$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$Return;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon18_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1
   > inline$java.lang.String$toCharArray$_loop_block3$1$out_i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$anon9;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon6:
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$anon18_Then, inline$java.lang.String$toCharArray$_loop_block3$1$anon18_Else;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon18_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$1$out_i3
   >= inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$return, inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$out_i3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$1$in_$return, inline$java.lang.String$toCharArray$_loop_block3$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$1$in_i3, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$1$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$1$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$1$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$1$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$Return;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon17_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3 != unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$anon6;

  inline$java.lang.String$toCharArray$_loop_block3$1$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$_loop_block3$1$Return;

  inline$java.lang.String$toCharArray$_loop_block3$1$exit:
    goto inline$java.lang.String$toCharArray$_loop_block3$1$Return;

  inline$java.lang.String$toCharArray$_loop_block3$1$Return:
    inline$java.lang.String$toCharArray$$1$$return := inline$java.lang.String$toCharArray$_loop_block3$1$out_$return;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$_loop_block3$1$out_$exception;
    inline$java.lang.String$toCharArray$$1$$i1 := inline$java.lang.String$toCharArray$_loop_block3$1$out_$i1;
    inline$java.lang.String$toCharArray$$1$i3 := inline$java.lang.String$toCharArray$_loop_block3$1$out_i3;
    inline$java.lang.String$toCharArray$$1$$fakelocal_4 := inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$$1$$c2 := inline$java.lang.String$toCharArray$_loop_block3$1$out_$c2;
    inline$java.lang.String$toCharArray$$1$$r3 := inline$java.lang.String$toCharArray$_loop_block3$1$out_$r3;
    inline$java.lang.String$toCharArray$$1$$fakelocal_2 := inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$$1$$r4 := inline$java.lang.String$toCharArray$_loop_block3$1$out_$r4;
    inline$java.lang.String$toCharArray$$1$$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$1$out_$fakelocal_3;
    goto inline$java.lang.String$toCharArray$$1$block3$1;

  inline$java.lang.String$toCharArray$$1$block3$1:
    goto inline$java.lang.String$toCharArray$$1$block3_last;

  inline$java.lang.String$toCharArray$$1$anon17_Else:
    assume {:partition} inline$java.lang.String$toCharArray$$1$$r3 == unsafe.$null;
    call inline$java.lang.String$toCharArray$$1$$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$$1$$return := unsafe.$null;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$$1$$fakelocal_2;
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$anon17_Then:
    assume {:partition} inline$java.lang.String$toCharArray$$1$$r3 != unsafe.$null;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$$1$$exception;
    goto inline$java.lang.String$toCharArray$$1$anon6;

  inline$java.lang.String$toCharArray$$1$anon6:
    inline$java.lang.String$toCharArray$$1$$i1 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$1$$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$anon18_Then, inline$java.lang.String$toCharArray$$1$anon18_Else;

  inline$java.lang.String$toCharArray$$1$anon18_Else:
    assume {:partition} inline$java.lang.String$toCharArray$$1$$i1
   > inline$java.lang.String$toCharArray$$1$i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.String$toCharArray$$1$anon9;

  inline$java.lang.String$toCharArray$$1$anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$anon19_Then, inline$java.lang.String$toCharArray$$1$anon19_Else;

  inline$java.lang.String$toCharArray$$1$anon19_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$$1$i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$1$$r4]
   && inline$java.lang.String$toCharArray$$1$i3 >= 0);
    call inline$java.lang.String$toCharArray$$1$$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$$1$$return := unsafe.$null;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$$1$$fakelocal_3;
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$anon19_Then:
    assume {:partition} inline$java.lang.String$toCharArray$$1$i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$1$$r4]
   && inline$java.lang.String$toCharArray$$1$i3 >= 0;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$$1$$exception;
    goto inline$java.lang.String$toCharArray$$1$anon12;

  inline$java.lang.String$toCharArray$$1$anon12:
    inline$java.lang.String$toCharArray$$1$$c2 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$$1$$r4][inline$java.lang.String$toCharArray$$1$i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$anon20_Then, inline$java.lang.String$toCharArray$$1$anon20_Else;

  inline$java.lang.String$toCharArray$$1$anon20_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$$1$i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$1$r1]
   && inline$java.lang.String$toCharArray$$1$i3 >= 0);
    call inline$java.lang.String$toCharArray$$1$$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$$1$$return := unsafe.$null;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$$1$$fakelocal_4;
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$anon20_Then:
    assume {:partition} inline$java.lang.String$toCharArray$$1$i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$$1$r1]
   && inline$java.lang.String$toCharArray$$1$i3 >= 0;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$$1$$exception;
    goto inline$java.lang.String$toCharArray$$1$anon15;

  inline$java.lang.String$toCharArray$$1$anon15:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$$1$r1 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$$1$r1][inline$java.lang.String$toCharArray$$1$i3 := inline$java.lang.String$toCharArray$$1$$c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$i3 := inline$java.lang.String$toCharArray$$1$i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$anon15_dummy;

  inline$java.lang.String$toCharArray$$1$anon18_Then:
    assume {:partition} inline$java.lang.String$toCharArray$$1$i3
   >= inline$java.lang.String$toCharArray$$1$$i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$java.lang.String$toCharArray$$1$block4;

  inline$java.lang.String$toCharArray$$1$block4:
    assert {:sourceloc "String.java", 15, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$$return := inline$java.lang.String$toCharArray$$1$r1;
    goto inline$java.lang.String$toCharArray$$1$block5;

  inline$java.lang.String$toCharArray$$1$block5:
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$block3_last:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$anon17_Then, inline$java.lang.String$toCharArray$$1$anon17_Else;

  inline$java.lang.String$toCharArray$$1$Return:
    r3 := inline$java.lang.String$toCharArray$$1$$return;
    $exception := inline$java.lang.String$toCharArray$$1$$exception;
    goto anon6$2;

  anon6$2:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 122, -1, -1, -1} true;
    i7 := 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 123, -1, -1, -1} true;
    i8 := 0;
    goto block15;

  block15:
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Entry;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Entry:
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return := $return;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception := $exception;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r3 := r3;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8 := i8;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5 := $c5;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2 := $i2;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0 := $fakelocal_0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4 := $c4;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1 := $i1;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6 := i6;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1 := $fakelocal_1;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7 := i7;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r2 := r2;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3 := $i3;
    havoc inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$objIndex := unsafe.$objIndex;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$heap := unsafe.$heap;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$entry;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$entry:
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$block15;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$block15:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6
   + -1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon21_Then, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon21_Else;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon21_Then:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1
   == 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} {:comment "thenblock"} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3;
    unsafe.$objIndex, unsafe.$heap := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$objIndex, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$heap;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon24_Then:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5
   == inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon24_Then_dummy;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon15:
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4 := unsafe.$intArrHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r3][inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon24_Then, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon24_Else;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon24_Else:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5
   != inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} {:comment "elseblock"} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3;
    unsafe.$objIndex, unsafe.$heap := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$objIndex, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$heap;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon23_Then:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3
     < unsafe.$arrSizeHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r3]
   && inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3
     >= 0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon15;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon12:
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5 := unsafe.$intArrHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r2][inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8
   + 1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon23_Then, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon23_Else;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon23_Else:
    assume {:partition} !(inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3
     < unsafe.$arrSizeHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r3]
   && inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3
     >= 0);
    call inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return := 0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3;
    unsafe.$objIndex, unsafe.$heap := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$objIndex, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$heap;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon22_Then:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2
     < unsafe.$arrSizeHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r2]
   && inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2
     >= 0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon12;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon9:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7
   + 1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon22_Then, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon22_Else;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon22_Else:
    assume {:partition} !(inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2
     < unsafe.$arrSizeHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r2]
   && inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2
     >= 0);
    call inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return := 0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3;
    unsafe.$objIndex, unsafe.$heap := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$objIndex, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$heap;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon21_Else:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1
   != 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon9;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon24_Then_dummy:
    assume false;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$exit:
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return:
    $return := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return;
    $exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception;
    i8 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8;
    $c5 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5;
    $i2 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2;
    $fakelocal_0 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0;
    $c4 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4;
    $i1 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1;
    i6 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6;
    $fakelocal_1 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1;
    i7 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7;
    $i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3;
    goto block15$1;

  block15$1:
    goto block15_last;

  anon21_Else:
    assume {:partition} $i1 != 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    $i2 := i7;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    i7 := i7 + 1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} !($i2 < unsafe.$arrSizeHeap[r2] && $i2 >= 0);
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon22_Then:
    assume {:partition} $i2 < unsafe.$arrSizeHeap[r2] && $i2 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    $c5 := unsafe.$intArrHeap[r2][$i2];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    $i3 := i8;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    i8 := i8 + 1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;

  anon23_Else:
    assume {:partition} !($i3 < unsafe.$arrSizeHeap[r3] && $i3 >= 0);
    call $fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon23_Then:
    assume {:partition} $i3 < unsafe.$arrSizeHeap[r3] && $i3 >= 0;
    $exception := $exception;
    goto anon15;

  anon15:
    $c4 := unsafe.$intArrHeap[r3][$i3];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto anon24_Then, anon24_Else;

  anon24_Else:
    assume {:partition} $c5 != $c4;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} {:comment "elseblock"} true;
    goto anon18;

  anon18:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 126, -1, -1, -1} true;
    $return := 0;
    goto block17;

  anon24_Then:
    assume {:partition} $c5 == $c4;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} {:comment "thenblock"} true;
    goto anon24_Then_dummy;

  anon21_Then:
    assume {:partition} $i1 == 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  block16:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 128, -1, -1, -1} true;
    $return := 1;
    goto block17;

  anon20_Then:
    assume {:partition} i6 != $i0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 119, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 130, -1, -1, -1} true;
    $return := 0;
    goto block17;

  anon24_Then_dummy:
    assume false;
    return;

  block15_last:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    $i1 := i6;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    i6 := i6 + -1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;
}



implementation unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := unsafe.$null;
    return;
}



implementation unsafe.java.lang.String$toCharArray$_loop_block3(in_$return: ref, 
    in_$exception: ref, 
    in_$i1: int, 
    in_i3: int, 
    in_r1: ref, 
    in_$fakelocal_4: ref, 
    in_$c2: int, 
    in_$r3: ref, 
    in_$fakelocal_2: ref, 
    in_$r4: ref, 
    in_r0: ref, 
    in_$fakelocal_3: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$i1: int, 
    out_i3: int, 
    out_$fakelocal_4: ref, 
    out_$c2: int, 
    out_$r3: ref, 
    out_$fakelocal_2: ref, 
    out_$r4: ref, 
    out_$fakelocal_3: ref)
{
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_r1: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_r0: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex: int;
  var inline$java.lang.String$toCharArray$_loop_block3$0$$heap: $heap_type;

  entry:
    out_$return, out_$exception, out_$i1, out_i3, out_$fakelocal_4, out_$c2, out_$r3, out_$fakelocal_2, out_$r4, out_$fakelocal_3 := in_$return, in_$exception, in_$i1, in_i3, in_$fakelocal_4, in_$c2, in_$r3, in_$fakelocal_2, in_$r4, in_$fakelocal_3;
    goto block3;

  block3:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    out_$r3 := unsafe.$heap[in_r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} out_$r3 == unsafe.$null;
    call out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    out_$return := unsafe.$null;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$i1, out_i3, out_$fakelocal_4, out_$c2, out_$r3, out_$fakelocal_2, out_$r4, out_$fakelocal_3 := in_$return, in_$exception, in_$i1, in_i3, in_$fakelocal_4, in_$c2, in_$r3, in_$fakelocal_2, in_$r4, in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon15:
    unsafe.$intArrHeap := unsafe.$intArrHeap[in_r1 := unsafe.$intArrHeap[in_r1][out_i3 := out_$c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    out_i3 := out_i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto anon15_dummy;

  anon20_Then:
    assume {:partition} out_i3 < unsafe.$arrSizeHeap[in_r1] && out_i3 >= 0;
    out_$exception := out_$exception;
    goto anon15;

  anon12:
    out_$c2 := unsafe.$intArrHeap[out_$r4][out_i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} !(out_i3 < unsafe.$arrSizeHeap[in_r1] && out_i3 >= 0);
    call out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := unsafe.$null;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$i1, out_i3, out_$fakelocal_4, out_$c2, out_$r3, out_$fakelocal_2, out_$r4, out_$fakelocal_3 := in_$return, in_$exception, in_$i1, in_i3, in_$fakelocal_4, in_$c2, in_$r3, in_$fakelocal_2, in_$r4, in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon19_Then:
    assume {:partition} out_i3 < unsafe.$arrSizeHeap[out_$r4] && out_i3 >= 0;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    out_$r4 := unsafe.$heap[in_r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(out_i3 < unsafe.$arrSizeHeap[out_$r4] && out_i3 >= 0);
    call out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := unsafe.$null;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$i1, out_i3, out_$fakelocal_4, out_$c2, out_$r3, out_$fakelocal_2, out_$r4, out_$fakelocal_3 := in_$return, in_$exception, in_$i1, in_i3, in_$fakelocal_4, in_$c2, in_$r3, in_$fakelocal_2, in_$r4, in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon18_Else:
    assume {:partition} out_$i1 > out_i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon6:
    out_$i1 := unsafe.$arrSizeHeap[out_$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Then:
    assume {:partition} out_i3 >= out_$i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$i1, out_i3, out_$fakelocal_4, out_$c2, out_$r3, out_$fakelocal_2, out_$r4, out_$fakelocal_3 := in_$return, in_$exception, in_$i1, in_i3, in_$fakelocal_4, in_$c2, in_$r3, in_$fakelocal_2, in_$r4, in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon17_Then:
    assume {:partition} out_$r3 != unsafe.$null;
    out_$exception := out_$exception;
    goto anon6;

  anon15_dummy:
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Entry;

  inline$java.lang.String$toCharArray$_loop_block3$0$Entry:
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$return := out_$return;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception := out_$exception;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1 := out_$i1;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_i3 := out_i3;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_r1 := in_r1;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4 := out_$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2 := out_$c2;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3 := out_$r3;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2 := out_$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4 := out_$r4;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_r0 := in_r0;
    inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3 := out_$fakelocal_3;
    havoc inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap := unsafe.$intArrHeap;
    inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$toCharArray$_loop_block3$0$$heap := unsafe.$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$entry;

  inline$java.lang.String$toCharArray$_loop_block3$0$entry:
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$in_$return, inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$in_i3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$block3;

  inline$java.lang.String$toCharArray$_loop_block3$0$block3:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon17_Then, inline$java.lang.String$toCharArray$_loop_block3$0$anon17_Else;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon17_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3 == unsafe.$null;
    call inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$in_$return, inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$in_i3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon15:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r1 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r1][inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon15_dummy;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon20_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon15;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon12:
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4][inline$java.lang.String$toCharArray$_loop_block3$0$out_i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon20_Then, inline$java.lang.String$toCharArray$_loop_block3$0$anon20_Else;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon20_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block3$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$in_$return, inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$in_i3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon19_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon12;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block3$0$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon19_Then, inline$java.lang.String$toCharArray$_loop_block3$0$anon19_Else;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon19_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block3$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block3$0$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$in_$return, inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$in_i3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon18_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1
   > inline$java.lang.String$toCharArray$_loop_block3$0$out_i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon9;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon6:
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon18_Then, inline$java.lang.String$toCharArray$_loop_block3$0$anon18_Else;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon18_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_i3
   >= inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$return, inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$out_i3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$in_$return, inline$java.lang.String$toCharArray$_loop_block3$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block3$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block3$0$in_i3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block3$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block3$0$in_$fakelocal_3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block3$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block3$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block3$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon17_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3 != unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$anon6;

  inline$java.lang.String$toCharArray$_loop_block3$0$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$exit:
    goto inline$java.lang.String$toCharArray$_loop_block3$0$Return;

  inline$java.lang.String$toCharArray$_loop_block3$0$Return:
    out_$return := inline$java.lang.String$toCharArray$_loop_block3$0$out_$return;
    out_$exception := inline$java.lang.String$toCharArray$_loop_block3$0$out_$exception;
    out_$i1 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$i1;
    out_i3 := inline$java.lang.String$toCharArray$_loop_block3$0$out_i3;
    out_$fakelocal_4 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_4;
    out_$c2 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$c2;
    out_$r3 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$r3;
    out_$fakelocal_2 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_2;
    out_$r4 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$r4;
    out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block3$0$out_$fakelocal_3;
    goto anon15_dummy$1;

  anon15_dummy$1:
    return;

  exit:
    return;
}



implementation unsafe.UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15(in_$return: int, 
    in_$exception: ref, 
    in_r3: ref, 
    in_i8: int, 
    in_$c5: int, 
    in_$i2: int, 
    in_$fakelocal_0: ref, 
    in_$c4: int, 
    in_$i1: int, 
    in_i6: int, 
    in_$fakelocal_1: ref, 
    in_i7: int, 
    in_r2: ref, 
    in_$i3: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_i8: int, 
    out_$c5: int, 
    out_$i2: int, 
    out_$fakelocal_0: ref, 
    out_$c4: int, 
    out_$i1: int, 
    out_i6: int, 
    out_$fakelocal_1: ref, 
    out_i7: int, 
    out_$i3: int)
{
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r3: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r2: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1: ref;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$objIndex: int;
  var inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$heap: $heap_type;

  entry:
    out_$return, out_$exception, out_i8, out_$c5, out_$i2, out_$fakelocal_0, out_$c4, out_$i1, out_i6, out_$fakelocal_1, out_i7, out_$i3 := in_$return, in_$exception, in_i8, in_$c5, in_$i2, in_$fakelocal_0, in_$c4, in_$i1, in_i6, in_$fakelocal_1, in_i7, in_$i3;
    goto block15;

  block15:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    out_$i1 := out_i6;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    out_i6 := out_i6 + -1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    goto anon21_Then, anon21_Else;

  anon21_Then:
    assume {:partition} out_$i1 == 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_i8, out_$c5, out_$i2, out_$fakelocal_0, out_$c4, out_$i1, out_i6, out_$fakelocal_1, out_i7, out_$i3 := in_$return, in_$exception, in_i8, in_$c5, in_$i2, in_$fakelocal_0, in_$c4, in_$i1, in_i6, in_$fakelocal_1, in_i7, in_$i3;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon24_Then:
    assume {:partition} out_$c5 == out_$c4;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} {:comment "thenblock"} true;
    goto anon24_Then_dummy;

  anon15:
    out_$c4 := unsafe.$intArrHeap[in_r3][out_$i3];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto anon24_Then, anon24_Else;

  anon24_Else:
    assume {:partition} out_$c5 != out_$c4;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} {:comment "elseblock"} true;
    out_$return, out_$exception, out_i8, out_$c5, out_$i2, out_$fakelocal_0, out_$c4, out_$i1, out_i6, out_$fakelocal_1, out_i7, out_$i3 := in_$return, in_$exception, in_i8, in_$c5, in_$i2, in_$fakelocal_0, in_$c4, in_$i1, in_i6, in_$fakelocal_1, in_i7, in_$i3;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon23_Then:
    assume {:partition} out_$i3 < unsafe.$arrSizeHeap[in_r3] && out_$i3 >= 0;
    out_$exception := out_$exception;
    goto anon15;

  anon12:
    out_$c5 := unsafe.$intArrHeap[in_r2][out_$i2];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    out_$i3 := out_i8;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    out_i8 := out_i8 + 1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;

  anon23_Else:
    assume {:partition} !(out_$i3 < unsafe.$arrSizeHeap[in_r3] && out_$i3 >= 0);
    call out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_i8, out_$c5, out_$i2, out_$fakelocal_0, out_$c4, out_$i1, out_i6, out_$fakelocal_1, out_i7, out_$i3 := in_$return, in_$exception, in_i8, in_$c5, in_$i2, in_$fakelocal_0, in_$c4, in_$i1, in_i6, in_$fakelocal_1, in_i7, in_$i3;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon22_Then:
    assume {:partition} out_$i2 < unsafe.$arrSizeHeap[in_r2] && out_$i2 >= 0;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    out_$i2 := out_i7;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    out_i7 := out_i7 + 1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto anon22_Then, anon22_Else;

  anon22_Else:
    assume {:partition} !(out_$i2 < unsafe.$arrSizeHeap[in_r2] && out_$i2 >= 0);
    call out_$fakelocal_0 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_0;
    out_$return, out_$exception, out_i8, out_$c5, out_$i2, out_$fakelocal_0, out_$c4, out_$i1, out_i6, out_$fakelocal_1, out_i7, out_$i3 := in_$return, in_$exception, in_i8, in_$c5, in_$i2, in_$fakelocal_0, in_$c4, in_$i1, in_i6, in_$fakelocal_1, in_i7, in_$i3;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon21_Else:
    assume {:partition} out_$i1 != 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon24_Then_dummy:
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Entry;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Entry:
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return := out_$return;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception := out_$exception;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r3 := in_r3;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8 := out_i8;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5 := out_$c5;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2 := out_$i2;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0 := out_$fakelocal_0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4 := out_$c4;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1 := out_$i1;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6 := out_i6;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1 := out_$fakelocal_1;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7 := out_i7;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r2 := in_r2;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3 := out_$i3;
    havoc inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$objIndex := unsafe.$objIndex;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$heap := unsafe.$heap;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$entry;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$entry:
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$block15;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$block15:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6
   + -1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon21_Then, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon21_Else;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon21_Then:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1
   == 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} {:comment "thenblock"} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3;
    unsafe.$objIndex, unsafe.$heap := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$objIndex, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$heap;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon24_Then:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5
   == inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon24_Then_dummy;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon15:
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4 := unsafe.$intArrHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r3][inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon24_Then, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon24_Else;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon24_Else:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5
   != inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} {:comment "elseblock"} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3;
    unsafe.$objIndex, unsafe.$heap := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$objIndex, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$heap;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon23_Then:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3
     < unsafe.$arrSizeHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r3]
   && inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3
     >= 0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon15;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon12:
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5 := unsafe.$intArrHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r2][inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2];
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8
   + 1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon23_Then, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon23_Else;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon23_Else:
    assume {:partition} !(inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3
     < unsafe.$arrSizeHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r3]
   && inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3
     >= 0);
    call inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return := 0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3;
    unsafe.$objIndex, unsafe.$heap := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$objIndex, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$heap;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon22_Then:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2
     < unsafe.$arrSizeHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r2]
   && inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2
     >= 0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon12;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon9:
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7
   + 1;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 125, -1, -1, -1} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon22_Then, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon22_Else;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon22_Else:
    assume {:partition} !(inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2
     < unsafe.$arrSizeHeap[inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_r2]
   && inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2
     >= 0);
    call inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return := 0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0;
    inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$return, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$exception, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i8, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c5, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i2, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_0, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$c4, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i6, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$fakelocal_1, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_i7, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$in_$i3;
    unsafe.$objIndex, unsafe.$heap := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$objIndex, inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$$heap;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon21_Else:
    assume {:partition} inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1
   != 0;
    assert {:sourceloc "UsernamePasswordLoginModule.java", 124, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon9;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$anon24_Then_dummy:
    assume false;
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$exit:
    goto inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return;

  inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$Return:
    out_$return := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$return;
    out_$exception := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$exception;
    out_i8 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i8;
    out_$c5 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c5;
    out_$i2 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i2;
    out_$fakelocal_0 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_0;
    out_$c4 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$c4;
    out_$i1 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i1;
    out_i6 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i6;
    out_$fakelocal_1 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$fakelocal_1;
    out_i7 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_i7;
    out_$i3 := inline$UsernamePasswordLoginModule$equals$java.lang.String_java.lang.String_loop_block15$0$out_$i3;
    goto anon24_Then_dummy$1;

  anon24_Then_dummy$1:
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
