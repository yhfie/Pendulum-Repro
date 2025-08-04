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

const unique unsafe.$type: Field javaType;

const unique unsafe.$alloc: Field bool;

const unique unsafe.$null: ref;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique unsafe.java.lang.Object: javaType extends complete;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique unsafe.java.lang.Boolean: javaType extends unique unsafe.java.lang.Object complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique unsafe.Login: javaType extends unique unsafe.java.lang.Object complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique unsafe.java.io.Serializable: javaType extends complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique unsafe.java.lang.Comparable: javaType extends complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique unsafe.java.lang.CharSequence: javaType extends complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique unsafe.java.lang.String: javaType extends unique unsafe.java.lang.Object, unsafe.java.io.Serializable, unsafe.java.lang.Comparable, unsafe.java.lang.CharSequence complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique unsafe.java.lang.Throwable: javaType extends unique unsafe.java.lang.Object, unsafe.java.io.Serializable complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique unsafe.java.lang.Exception: javaType extends unique unsafe.java.lang.Throwable complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique unsafe.java.lang.RuntimeException: javaType extends unique unsafe.java.lang.Exception complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique unsafe.java.lang.NullPointerException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique unsafe.java.lang.IndexOutOfBoundsException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "Login.java", -1, -1, -1, -1} unique unsafe.java.lang.ArrayIndexOutOfBoundsException: javaType extends unique unsafe.java.lang.IndexOutOfBoundsException complete;

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
  free ensures $obj == unsafe.$intToRef(old(unsafe.$objIndex));
  free ensures unsafe.$objIndex == old(unsafe.$objIndex) + 1;
  free ensures unsafe.$heap
   == old(unsafe.$heap)[$obj, unsafe.$alloc := true][$obj, unsafe.$type := obj_type];



procedure {:prefix "unsafe"} unsafe.java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  free ensures $other != unsafe.$null;
  free ensures unsafe.$heap[$other, unsafe.$type] == unsafe.$heap[$this, unsafe.$type];
  free ensures unsafe.$heap[$other, unsafe.$alloc] <==> true;



procedure {:prefix "unsafe"} unsafe.int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.Login$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.Login$retrieve$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$arrSizeHeap, unsafe.$intArrHeap, unsafe.$heap;



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
  modifies unsafe.$objIndex, unsafe.$heap;



implementation unsafe.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var r0: ref;
  var z0: int;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
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



implementation unsafe.Login$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Login.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type] <: unsafe.Login;
    assume {:sourceloc "Login.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Login.java", 1, -1, -1, -1} true;
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
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume unsafe.$heap[$in_parameter__2, unsafe.$type] <: unsafe.java.lang.String;
    $exception := unsafe.$null;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__2;
    assert {:sourceloc "Login.java", 8, -1, -1, -1} true;
    goto anon25_Then, anon25_Else;

  anon25_Else:
    assume {:partition} r0 == unsafe.$null;
    assert {:sourceloc "Login.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Login.java", 9, -1, -1, -1} true;
    $return := 0;
    goto block10;

  block10:
    return;

  anon25_Then:
    assume {:partition} r0 != unsafe.$null;
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
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex := unsafe.$objIndex;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap := unsafe.$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$entry;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$entry:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block6;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block6:
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon26_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon26_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon26_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1
   == unsafe.$null;
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
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
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2 := unsafe.$intArrHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0][inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4];
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon32_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon32_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon32_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3
   != inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2;
    assert {:sourceloc "Login.java", 14, -1, -1, -1} {:comment "elseblock"} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon31_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     < unsafe.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     >= 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon18:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3 := unsafe.$intArrHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1][inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4];
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon31_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon31_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon31_Else:
    assume {:partition} !(inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     < unsafe.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     >= 0);
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon30_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     < unsafe.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     >= 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon18;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon15:
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon30_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon30_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon30_Else:
    assume {:partition} !(inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     < unsafe.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     >= 0);
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon29_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1
   > inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4;
    assert {:sourceloc "Login.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon15;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon12:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := unsafe.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0];
    assert {:sourceloc "Login.java", 13, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon29_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon29_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon29_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
   >= inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1;
    assert {:sourceloc "Login.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon28_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0
   != unsafe.$null;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon12;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon9:
    assert {:sourceloc "Login.java", 13, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon28_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon28_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon28_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0
   == unsafe.$null;
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0
   > inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon9;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon6:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0 := unsafe.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1];
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
   >= inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon26_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1
   != unsafe.$null;
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
    assume {:partition} r1 == unsafe.$null;
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon26_Then:
    assume {:partition} r1 != unsafe.$null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i0 := unsafe.$arrSizeHeap[r1];
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
    assume {:partition} r0 == unsafe.$null;
    call $fakelocal_1 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon28_Then:
    assume {:partition} r0 != unsafe.$null;
    $exception := $exception;
    goto anon12;

  anon12:
    $i1 := unsafe.$arrSizeHeap[r0];
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
    assume {:partition} !(i4 < unsafe.$arrSizeHeap[r1] && i4 >= 0);
    call $fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon30_Then:
    assume {:partition} i4 < unsafe.$arrSizeHeap[r1] && i4 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $b3 := unsafe.$intArrHeap[r1][i4];
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(i4 < unsafe.$arrSizeHeap[r0] && i4 >= 0);
    call $fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon31_Then:
    assume {:partition} i4 < unsafe.$arrSizeHeap[r0] && i4 >= 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $b2 := unsafe.$intArrHeap[r0][i4];
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



implementation unsafe.Login$retrieve$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref)
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
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume unsafe.$heap[$in_parameter__0, unsafe.$type] <: unsafe.java.lang.String;
    $exception := unsafe.$null;
    assert {:sourceloc "Login.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    call $fakelocal_0 := unsafe.$new(unsafe.$intArrayType);
    unsafe.$arrSizeHeap := unsafe.$arrSizeHeap[$fakelocal_0 := 4];
    $r2 := $fakelocal_0;
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(0 < unsafe.$arrSizeHeap[$r2] && 0 >= 0);
    call $fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := unsafe.$null;
    $exception := $fakelocal_1;
    return;

  anon13_Then:
    assume {:partition} 0 < unsafe.$arrSizeHeap[$r2] && 0 >= 0;
    $exception := $exception;
    goto anon3;

  anon3:
    unsafe.$intArrHeap := unsafe.$intArrHeap[$r2 := unsafe.$intArrHeap[$r2][0 := 10]];
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} !(1 < unsafe.$arrSizeHeap[$r2] && 1 >= 0);
    call $fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := unsafe.$null;
    $exception := $fakelocal_2;
    return;

  anon14_Then:
    assume {:partition} 1 < unsafe.$arrSizeHeap[$r2] && 1 >= 0;
    $exception := $exception;
    goto anon6;

  anon6:
    unsafe.$intArrHeap := unsafe.$intArrHeap[$r2 := unsafe.$intArrHeap[$r2][1 := 3]];
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !(2 < unsafe.$arrSizeHeap[$r2] && 2 >= 0);
    call $fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := unsafe.$null;
    $exception := $fakelocal_3;
    return;

  anon15_Then:
    assume {:partition} 2 < unsafe.$arrSizeHeap[$r2] && 2 >= 0;
    $exception := $exception;
    goto anon9;

  anon9:
    unsafe.$intArrHeap := unsafe.$intArrHeap[$r2 := unsafe.$intArrHeap[$r2][2 := 15]];
    assert {:sourceloc "Login.java", 53, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !(3 < unsafe.$arrSizeHeap[$r2] && 3 >= 0);
    call $fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := unsafe.$null;
    $exception := $fakelocal_4;
    return;

  anon16_Then:
    assume {:partition} 3 < unsafe.$arrSizeHeap[$r2] && 3 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    unsafe.$intArrHeap := unsafe.$intArrHeap[$r2 := unsafe.$intArrHeap[$r2][3 := 1]];
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
    $exception := unsafe.$null;
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
    assume {:partition} in_r1 == unsafe.$null;
    call out_$fakelocal_0 := unsafe.$new(unsafe.java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_0;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
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
    out_$b2 := unsafe.$intArrHeap[in_r0][out_i4];
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} out_$b3 != out_$b2;
    assert {:sourceloc "Login.java", 14, -1, -1, -1} {:comment "elseblock"} true;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon31_Then:
    assume {:partition} out_i4 < unsafe.$arrSizeHeap[in_r0] && out_i4 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    out_$b3 := unsafe.$intArrHeap[in_r1][out_i4];
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(out_i4 < unsafe.$arrSizeHeap[in_r0] && out_i4 >= 0);
    call out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon30_Then:
    assume {:partition} out_i4 < unsafe.$arrSizeHeap[in_r1] && out_i4 >= 0;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(out_i4 < unsafe.$arrSizeHeap[in_r1] && out_i4 >= 0);
    call out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon29_Else:
    assume {:partition} out_$i1 > out_i4;
    assert {:sourceloc "Login.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon12:
    out_$i1 := unsafe.$arrSizeHeap[in_r0];
    assert {:sourceloc "Login.java", 13, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Then:
    assume {:partition} out_i4 >= out_$i1;
    assert {:sourceloc "Login.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon28_Then:
    assume {:partition} in_r0 != unsafe.$null;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    assert {:sourceloc "Login.java", 13, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} in_r0 == unsafe.$null;
    call out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon27_Else:
    assume {:partition} out_$i0 > out_i4;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon6:
    out_$i0 := unsafe.$arrSizeHeap[in_r1];
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Then:
    assume {:partition} out_i4 >= out_$i0;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$b2, out_$fakelocal_0, out_$fakelocal_1, out_$fakelocal_2, out_$i0, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$b2, in_$fakelocal_0, in_$fakelocal_1, in_$fakelocal_2, in_$i0, in_i4, in_$i1;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon26_Then:
    assume {:partition} in_r1 != unsafe.$null;
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
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex := unsafe.$objIndex;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap := unsafe.$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$entry;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$entry:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block6;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$block6:
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon26_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon26_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon26_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1
   == unsafe.$null;
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
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
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2 := unsafe.$intArrHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0][inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4];
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon32_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon32_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon32_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3
   != inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2;
    assert {:sourceloc "Login.java", 14, -1, -1, -1} {:comment "elseblock"} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon31_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     < unsafe.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     >= 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon21;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon18:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3 := unsafe.$intArrHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1][inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4];
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon31_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon31_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon31_Else:
    assume {:partition} !(inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     < unsafe.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     >= 0);
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon30_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     < unsafe.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     >= 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon18;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon15:
    assert {:sourceloc "Login.java", 14, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon30_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon30_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon30_Else:
    assume {:partition} !(inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     < unsafe.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1]
   && inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
     >= 0);
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon29_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1
   > inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4;
    assert {:sourceloc "Login.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon15;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon12:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := unsafe.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0];
    assert {:sourceloc "Login.java", 13, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon29_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon29_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon29_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
   >= inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1;
    assert {:sourceloc "Login.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon28_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0
   != unsafe.$null;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon12;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon9:
    assert {:sourceloc "Login.java", 13, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon28_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon28_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon28_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r0
   == unsafe.$null;
    call inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return := 0;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27_Else:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0
   > inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon9;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon6:
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0 := unsafe.$arrSizeHeap[inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1];
    assert {:sourceloc "Login.java", 12, -1, -1, -1} true;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27_Then, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27_Else;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon27_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4
   >= inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0;
    assert {:sourceloc "Login.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$out_$i1 := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$return, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$exception, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b3, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$b2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_1, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$fakelocal_2, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i0, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_i4, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$objIndex, inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$$heap;
    goto inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$Return;

  inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$anon26_Then:
    assume {:partition} inline$Login$login_unsafe$byte$lp$$rp$_byte$lp$$rp$_java.lang.String_loop_block6$0$in_r1
   != unsafe.$null;
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
