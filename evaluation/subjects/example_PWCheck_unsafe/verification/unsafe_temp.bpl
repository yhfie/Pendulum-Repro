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

const {:sourceloc "PWCheck.java", -1, -1, -1, -1} unique unsafe.PWCheck: javaType extends unique unsafe.java.lang.Object complete;

const {:sourceloc "PWCheck.java", -1, -1, -1, -1} unique unsafe.java.io.Serializable: javaType extends complete;

const {:sourceloc "PWCheck.java", -1, -1, -1, -1} unique unsafe.java.lang.Throwable: javaType extends unique unsafe.java.lang.Object, unsafe.java.io.Serializable complete;

const {:sourceloc "PWCheck.java", -1, -1, -1, -1} unique unsafe.java.lang.Exception: javaType extends unique unsafe.java.lang.Throwable complete;

const {:sourceloc "PWCheck.java", -1, -1, -1, -1} unique unsafe.java.lang.RuntimeException: javaType extends unique unsafe.java.lang.Exception complete;

const {:sourceloc "PWCheck.java", -1, -1, -1, -1} unique unsafe.java.lang.NullPointerException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "PWCheck.java", -1, -1, -1, -1} unique unsafe.java.lang.IndexOutOfBoundsException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "PWCheck.java", -1, -1, -1, -1} unique unsafe.java.lang.ArrayIndexOutOfBoundsException: javaType extends unique unsafe.java.lang.IndexOutOfBoundsException complete;

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
  free ensures unsafe.$objIndex == old(unsafe.$objIndex) + 1;
  free ensures !old(unsafe.$heap[$obj, unsafe.$alloc]);
  free ensures $obj == unsafe.$intToRef(old(unsafe.$objIndex));
  free ensures unsafe.$heap
   == old(unsafe.$heap)[$obj, unsafe.$alloc := true][$obj, unsafe.$type := obj_type];



procedure {:prefix "unsafe"} unsafe.java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  free ensures $other != unsafe.$null;
  free ensures unsafe.$heap[$other, unsafe.$alloc] <==> true;
  free ensures unsafe.$heap[$other, unsafe.$type] == unsafe.$heap[$this, unsafe.$type];



procedure {:prefix "unsafe"} unsafe.int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.PWCheck$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6(in_$return: int, 
    in_$exception: ref, 
    in_$b4: int, 
    in_$b3: int, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_2: ref, 
    in_r1: ref, 
    in_$i2: int, 
    in_i5: int, 
    in_r0: ref, 
    in_$fakelocal_4: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$b4: int, 
    out_$b3: int, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_2: ref, 
    out_$i2: int, 
    out_i5: int, 
    out_$fakelocal_4: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11(in_$return: int, 
    in_$exception: ref, 
    in_$i2: int, 
    in_$b5: int, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_2: ref, 
    in_$b4: int, 
    in_$fakelocal_4: ref, 
    in_r1: ref, 
    in_$fakelocal_5: ref, 
    in_$i3: int, 
    in_i6: int, 
    in_z0: int, 
    in_r0: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$i2: int, 
    out_$b5: int, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_2: ref, 
    out_$b4: int, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_5: ref, 
    out_$i3: int, 
    out_i6: int, 
    out_z0: int);
  modifies unsafe.$objIndex, unsafe.$heap;



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
    goto block3;

  block3:
    return;
}



implementation unsafe.PWCheck$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "PWCheck.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type] <: unsafe.PWCheck;
    assume {:sourceloc "PWCheck.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "PWCheck.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "PWCheck.java", 1, -1, -1, -1} true;
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
    assert {:sourceloc "PWCheck.java", 1, -1, -1, -1} true;
    goto block4;

  block4:
    return;
}



implementation unsafe.PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $b4: int;
  var $i0: int;
  var $b3: int;
  var $i1: int;
  var $fakelocal_3: ref;
  var $fakelocal_2: ref;
  var $fakelocal_0: ref;
  var $fakelocal_1: ref;
  var r1: ref;
  var $i2: int;
  var i5: int;
  var r0: ref;
  var $fakelocal_4: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$return: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$exception: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b4: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b3: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_3: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_2: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r1: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$i2: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_i5: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r0: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_4: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$objIndex: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    $exception := unsafe.$null;
    assert {:sourceloc "PWCheck.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "PWCheck.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "PWCheck.java", 3, -1, -1, -1} true;
    goto anon25_Then, anon25_Else;

  anon25_Else:
    assume {:partition} r0 == unsafe.$null;
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon25_Then:
    assume {:partition} r0 != unsafe.$null;
    $exception := $exception;
    goto anon3;

  anon3:
    $i1 := unsafe.$arrSizeHeap[r0];
    assert {:sourceloc "PWCheck.java", 3, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} r1 == unsafe.$null;
    call $fakelocal_1 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon26_Then:
    assume {:partition} r1 != unsafe.$null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i0 := unsafe.$arrSizeHeap[r1];
    assert {:sourceloc "PWCheck.java", 3, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} $i1 != $i0;
    assert {:sourceloc "PWCheck.java", 3, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "PWCheck.java", 4, -1, -1, -1} true;
    $return := 0;
    goto block9;

  block9:
    return;

  anon27_Then:
    assume {:partition} $i1 == $i0;
    assert {:sourceloc "PWCheck.java", 3, -1, -1, -1} {:comment "thenblock"} true;
    goto block5;

  block5:
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    i5 := 0;
    goto block6;

  block6:
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$Entry;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$Entry:
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$return := $return;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$exception := $exception;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b4 := $b4;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b3 := $b3;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_3 := $fakelocal_3;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_2 := $fakelocal_2;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r1 := r1;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$i2 := $i2;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_i5 := i5;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r0 := r0;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_4 := $fakelocal_4;
    havoc inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$objIndex := unsafe.$objIndex;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$heap := unsafe.$heap;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$entry;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$entry:
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_4;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$block6;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$block6:
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon28_Then, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon28_Else;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon28_Else:
    assume {:partition} inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r0
   == unsafe.$null;
    call inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return := 0;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_4;
    unsafe.$objIndex, unsafe.$heap := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$objIndex, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$heap;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$Return;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$block8:
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5
   + 1;
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$block8_dummy;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon32_Then:
    assume {:partition} inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4
   == inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3;
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$block8;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon21:
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3 := unsafe.$intArrHeap[inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r1][inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5];
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon32_Then, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon32_Else;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon32_Else:
    assume {:partition} inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4
   != inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3;
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} {:comment "elseblock"} true;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_4;
    unsafe.$objIndex, unsafe.$heap := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$objIndex, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$heap;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$Return;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon31_Then:
    assume {:partition} inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5
     < unsafe.$arrSizeHeap[inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r1]
   && inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5
     >= 0;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon21;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon18:
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4 := unsafe.$intArrHeap[inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r0][inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5];
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon31_Then, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon31_Else;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon31_Else:
    assume {:partition} !(inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5
     < unsafe.$arrSizeHeap[inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r1]
   && inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5
     >= 0);
    call inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return := 0;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_4;
    unsafe.$objIndex, unsafe.$heap := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$objIndex, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$heap;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$Return;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon30_Then:
    assume {:partition} inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5
     < unsafe.$arrSizeHeap[inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r0]
   && inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5
     >= 0;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon18;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon15:
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon30_Then, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon30_Else;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon30_Else:
    assume {:partition} !(inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5
     < unsafe.$arrSizeHeap[inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r0]
   && inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5
     >= 0);
    call inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return := 0;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_4;
    unsafe.$objIndex, unsafe.$heap := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$objIndex, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$heap;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$Return;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon29_Else:
    assume {:partition} inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2
   > inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5;
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon15;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon12:
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2 := unsafe.$arrSizeHeap[inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r0];
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon29_Then, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon29_Else;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon29_Then:
    assume {:partition} inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5
   >= inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2;
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} {:comment "thenblock"} true;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_4;
    unsafe.$objIndex, unsafe.$heap := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$objIndex, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$heap;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$Return;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon28_Then:
    assume {:partition} inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r0
   != unsafe.$null;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon12;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$block8_dummy:
    assume false;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$Return;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$exit:
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$Return;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$Return:
    $return := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return;
    $exception := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception;
    $b4 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4;
    $b3 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3;
    $fakelocal_3 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3;
    $fakelocal_2 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2;
    $i2 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2;
    i5 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5;
    $fakelocal_4 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4;
    goto block6$1;

  block6$1:
    goto block6_last;

  anon28_Else:
    assume {:partition} r0 == unsafe.$null;
    call $fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon28_Then:
    assume {:partition} r0 != unsafe.$null;
    $exception := $exception;
    goto anon12;

  anon12:
    $i2 := unsafe.$arrSizeHeap[r0];
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} $i2 > i5;
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(i5 < unsafe.$arrSizeHeap[r0] && i5 >= 0);
    call $fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon30_Then:
    assume {:partition} i5 < unsafe.$arrSizeHeap[r0] && i5 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $b4 := unsafe.$intArrHeap[r0][i5];
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(i5 < unsafe.$arrSizeHeap[r1] && i5 >= 0);
    call $fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon31_Then:
    assume {:partition} i5 < unsafe.$arrSizeHeap[r1] && i5 >= 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $b3 := unsafe.$intArrHeap[r1][i5];
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} $b4 != $b3;
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} {:comment "elseblock"} true;
    goto anon24;

  anon24:
    assert {:sourceloc "PWCheck.java", 11, -1, -1, -1} true;
    $return := 0;
    goto block9;

  anon32_Then:
    assume {:partition} $b4 == $b3;
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    i5 := i5 + 1;
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    goto block8_dummy;

  anon29_Then:
    assume {:partition} i5 >= $i2;
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  block7:
    assert {:sourceloc "PWCheck.java", 15, -1, -1, -1} true;
    $return := 1;
    goto block9;

  block8_dummy:
    assume false;
    return;

  block6_last:
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;
}



implementation unsafe.PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $i2: int;
  var $b5: int;
  var $i0: int;
  var $fakelocal_3: ref;
  var $i1: int;
  var $fakelocal_2: ref;
  var $fakelocal_0: ref;
  var $b4: int;
  var $fakelocal_4: ref;
  var r1: ref;
  var $fakelocal_5: ref;
  var $i3: int;
  var i6: int;
  var z0: int;
  var r0: ref;
  var $fakelocal_1: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$return: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$exception: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i2: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b5: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_3: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_2: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b4: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_4: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r1: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_5: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i3: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_i6: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_z0: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r0: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_z0: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$objIndex: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    $exception := unsafe.$null;
    assert {:sourceloc "PWCheck.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "PWCheck.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "PWCheck.java", 20, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} r0 == unsafe.$null;
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon31_Then:
    assume {:partition} r0 != unsafe.$null;
    $exception := $exception;
    goto anon3;

  anon3:
    $i1 := unsafe.$arrSizeHeap[r0];
    assert {:sourceloc "PWCheck.java", 20, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} r1 == unsafe.$null;
    call $fakelocal_1 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon32_Then:
    assume {:partition} r1 != unsafe.$null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i0 := unsafe.$arrSizeHeap[r1];
    assert {:sourceloc "PWCheck.java", 20, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} $i1 != $i0;
    assert {:sourceloc "PWCheck.java", 20, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "PWCheck.java", 21, -1, -1, -1} true;
    $return := 0;
    goto block15;

  block15:
    return;

  anon33_Then:
    assume {:partition} $i1 == $i0;
    assert {:sourceloc "PWCheck.java", 20, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "PWCheck.java", 26, -1, -1, -1} true;
    z0 := 1;
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    i6 := 0;
    goto block11;

  block11:
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$Entry;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$Entry:
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$return := $return;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$exception := $exception;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i2 := $i2;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b5 := $b5;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_3 := $fakelocal_3;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_2 := $fakelocal_2;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b4 := $b4;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_4 := $fakelocal_4;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r1 := r1;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_5 := $fakelocal_5;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i3 := $i3;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_i6 := i6;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_z0 := z0;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r0 := r0;
    havoc inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_z0;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$objIndex := unsafe.$objIndex;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$heap := unsafe.$heap;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$entry;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$entry:
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_z0 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_z0;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$block11;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$block11:
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon34_Then, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon34_Else;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon34_Else:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r0
   == unsafe.$null;
    call inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return := 0;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_z0 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_z0;
    unsafe.$objIndex, unsafe.$heap := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$objIndex, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$heap;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$Return;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$block13:
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
   + 1;
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$block13_dummy;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon30:
    assert {:sourceloc "PWCheck.java", 30, -1, -1, -1} true;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_z0 := 0;
    assert {:sourceloc "PWCheck.java", 30, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$block13;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$block14:
    assert {:sourceloc "PWCheck.java", 32, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$block13;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon37_Then:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
   >= inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3;
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$block13;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon18:
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3 := unsafe.$arrSizeHeap[inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r1];
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon37_Then, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon37_Else;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon36_Then:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r1
   != unsafe.$null;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon18;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon15:
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon36_Then, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon36_Else;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon36_Else:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r1
   == unsafe.$null;
    call inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return := 0;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_z0 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_z0;
    unsafe.$objIndex, unsafe.$heap := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$objIndex, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$heap;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$Return;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon35_Else:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2
   > inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6;
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon15;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon12:
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2 := unsafe.$arrSizeHeap[inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r0];
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon35_Then, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon35_Else;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon35_Then:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
   >= inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2;
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} {:comment "thenblock"} true;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_z0 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_z0;
    unsafe.$objIndex, unsafe.$heap := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$objIndex, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$heap;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$Return;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon34_Then:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r0
   != unsafe.$null;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon12;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon40_Then:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5
   == inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4;
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$block14;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon27:
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4 := unsafe.$intArrHeap[inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r1][inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6];
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon40_Then, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon40_Else;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon39_Then:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
     < unsafe.$arrSizeHeap[inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r1]
   && inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
     >= 0;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon27;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon24:
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5 := unsafe.$intArrHeap[inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r0][inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6];
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon39_Then, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon39_Else;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon39_Else:
    assume {:partition} !(inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
     < unsafe.$arrSizeHeap[inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r1]
   && inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
     >= 0);
    call inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return := 0;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_z0 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_z0;
    unsafe.$objIndex, unsafe.$heap := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$objIndex, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$heap;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$Return;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon38_Then:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
     < unsafe.$arrSizeHeap[inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r0]
   && inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
     >= 0;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon24;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon21:
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon38_Then, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon38_Else;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon38_Else:
    assume {:partition} !(inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
     < unsafe.$arrSizeHeap[inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r0]
   && inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
     >= 0);
    call inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return := 0;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_z0 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_z0;
    unsafe.$objIndex, unsafe.$heap := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$objIndex, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$heap;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$Return;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon37_Else:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3
   > inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6;
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon21;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon40_Else:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5
   != inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4;
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon30;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$block13_dummy:
    assume false;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$Return;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$exit:
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$Return;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$Return:
    $return := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return;
    $exception := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception;
    $i2 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2;
    $b5 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5;
    $fakelocal_3 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3;
    $fakelocal_2 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2;
    $b4 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4;
    $fakelocal_4 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4;
    $fakelocal_5 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5;
    $i3 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3;
    i6 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6;
    z0 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_z0;
    goto block11$1;

  block11$1:
    goto block11_last;

  anon34_Else:
    assume {:partition} r0 == unsafe.$null;
    call $fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon34_Then:
    assume {:partition} r0 != unsafe.$null;
    $exception := $exception;
    goto anon12;

  anon12:
    $i2 := unsafe.$arrSizeHeap[r0];
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} $i2 > i6;
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} r1 == unsafe.$null;
    call $fakelocal_3 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon36_Then:
    assume {:partition} r1 != unsafe.$null;
    $exception := $exception;
    goto anon18;

  anon18:
    $i3 := unsafe.$arrSizeHeap[r1];
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon37_Else:
    assume {:partition} $i3 > i6;
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    goto anon21;

  anon21:
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} !(i6 < unsafe.$arrSizeHeap[r0] && i6 >= 0);
    call $fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon38_Then:
    assume {:partition} i6 < unsafe.$arrSizeHeap[r0] && i6 >= 0;
    $exception := $exception;
    goto anon24;

  anon24:
    $b5 := unsafe.$intArrHeap[r0][i6];
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} !(i6 < unsafe.$arrSizeHeap[r1] && i6 >= 0);
    call $fakelocal_5 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon39_Then:
    assume {:partition} i6 < unsafe.$arrSizeHeap[r1] && i6 >= 0;
    $exception := $exception;
    goto anon27;

  anon27:
    $b4 := unsafe.$intArrHeap[r1][i6];
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Else:
    assume {:partition} $b5 != $b4;
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} {:comment "elseblock"} true;
    goto anon30;

  anon30:
    assert {:sourceloc "PWCheck.java", 30, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "PWCheck.java", 30, -1, -1, -1} true;
    goto block13;

  block13:
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    i6 := i6 + 1;
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    goto block13_dummy;

  anon40_Then:
    assume {:partition} $b5 == $b4;
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "PWCheck.java", 32, -1, -1, -1} true;
    goto block13;

  anon37_Then:
    assume {:partition} i6 >= $i3;
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  anon35_Then:
    assume {:partition} i6 >= $i2;
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} {:comment "thenblock"} true;
    goto block12;

  block12:
    assert {:sourceloc "PWCheck.java", 39, -1, -1, -1} true;
    $return := z0;
    goto block15;

  block13_dummy:
    assume false;
    return;

  block11_last:
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;
}



implementation unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := unsafe.$null;
    return;
}



implementation unsafe.PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6(in_$return: int, 
    in_$exception: ref, 
    in_$b4: int, 
    in_$b3: int, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_2: ref, 
    in_r1: ref, 
    in_$i2: int, 
    in_i5: int, 
    in_r0: ref, 
    in_$fakelocal_4: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$b4: int, 
    out_$b3: int, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_2: ref, 
    out_$i2: int, 
    out_i5: int, 
    out_$fakelocal_4: ref)
{
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$return: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$exception: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b4: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b3: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_3: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_2: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r1: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$i2: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_i5: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r0: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_4: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4: ref;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$objIndex: int;
  var inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$heap: $heap_type;

  entry:
    out_$return, out_$exception, out_$b4, out_$b3, out_$fakelocal_3, out_$fakelocal_2, out_$i2, out_i5, out_$fakelocal_4 := in_$return, in_$exception, in_$b4, in_$b3, in_$fakelocal_3, in_$fakelocal_2, in_$i2, in_i5, in_$fakelocal_4;
    goto block6;

  block6:
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} in_r0 == unsafe.$null;
    call out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$b4, out_$b3, out_$fakelocal_3, out_$fakelocal_2, out_$i2, out_i5, out_$fakelocal_4 := in_$return, in_$exception, in_$b4, in_$b3, in_$fakelocal_3, in_$fakelocal_2, in_$i2, in_i5, in_$fakelocal_4;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  block8:
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    out_i5 := out_i5 + 1;
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    goto block8_dummy;

  anon32_Then:
    assume {:partition} out_$b4 == out_$b3;
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  anon21:
    out_$b3 := unsafe.$intArrHeap[in_r1][out_i5];
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} out_$b4 != out_$b3;
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} {:comment "elseblock"} true;
    out_$return, out_$exception, out_$b4, out_$b3, out_$fakelocal_3, out_$fakelocal_2, out_$i2, out_i5, out_$fakelocal_4 := in_$return, in_$exception, in_$b4, in_$b3, in_$fakelocal_3, in_$fakelocal_2, in_$i2, in_i5, in_$fakelocal_4;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon31_Then:
    assume {:partition} out_i5 < unsafe.$arrSizeHeap[in_r1] && out_i5 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    out_$b4 := unsafe.$intArrHeap[in_r0][out_i5];
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(out_i5 < unsafe.$arrSizeHeap[in_r1] && out_i5 >= 0);
    call out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$b4, out_$b3, out_$fakelocal_3, out_$fakelocal_2, out_$i2, out_i5, out_$fakelocal_4 := in_$return, in_$exception, in_$b4, in_$b3, in_$fakelocal_3, in_$fakelocal_2, in_$i2, in_i5, in_$fakelocal_4;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon30_Then:
    assume {:partition} out_i5 < unsafe.$arrSizeHeap[in_r0] && out_i5 >= 0;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(out_i5 < unsafe.$arrSizeHeap[in_r0] && out_i5 >= 0);
    call out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$b4, out_$b3, out_$fakelocal_3, out_$fakelocal_2, out_$i2, out_i5, out_$fakelocal_4 := in_$return, in_$exception, in_$b4, in_$b3, in_$fakelocal_3, in_$fakelocal_2, in_$i2, in_i5, in_$fakelocal_4;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon29_Else:
    assume {:partition} out_$i2 > out_i5;
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon12:
    out_$i2 := unsafe.$arrSizeHeap[in_r0];
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Then:
    assume {:partition} out_i5 >= out_$i2;
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$b4, out_$b3, out_$fakelocal_3, out_$fakelocal_2, out_$i2, out_i5, out_$fakelocal_4 := in_$return, in_$exception, in_$b4, in_$b3, in_$fakelocal_3, in_$fakelocal_2, in_$i2, in_i5, in_$fakelocal_4;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon28_Then:
    assume {:partition} in_r0 != unsafe.$null;
    out_$exception := out_$exception;
    goto anon12;

  block8_dummy:
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$Entry;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$Entry:
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$return := out_$return;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$exception := out_$exception;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b4 := out_$b4;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b3 := out_$b3;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_3 := out_$fakelocal_3;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_2 := out_$fakelocal_2;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r1 := in_r1;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$i2 := out_$i2;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_i5 := out_i5;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r0 := in_r0;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_4 := out_$fakelocal_4;
    havoc inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$objIndex := unsafe.$objIndex;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$heap := unsafe.$heap;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$entry;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$entry:
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_4;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$block6;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$block6:
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon28_Then, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon28_Else;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon28_Else:
    assume {:partition} inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r0
   == unsafe.$null;
    call inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return := 0;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_4;
    unsafe.$objIndex, unsafe.$heap := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$objIndex, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$heap;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$Return;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$block8:
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5
   + 1;
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$block8_dummy;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon32_Then:
    assume {:partition} inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4
   == inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3;
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$block8;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon21:
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3 := unsafe.$intArrHeap[inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r1][inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5];
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon32_Then, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon32_Else;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon32_Else:
    assume {:partition} inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4
   != inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3;
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} {:comment "elseblock"} true;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_4;
    unsafe.$objIndex, unsafe.$heap := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$objIndex, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$heap;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$Return;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon31_Then:
    assume {:partition} inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5
     < unsafe.$arrSizeHeap[inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r1]
   && inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5
     >= 0;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon21;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon18:
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4 := unsafe.$intArrHeap[inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r0][inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5];
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon31_Then, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon31_Else;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon31_Else:
    assume {:partition} !(inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5
     < unsafe.$arrSizeHeap[inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r1]
   && inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5
     >= 0);
    call inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return := 0;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_4;
    unsafe.$objIndex, unsafe.$heap := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$objIndex, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$heap;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$Return;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon30_Then:
    assume {:partition} inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5
     < unsafe.$arrSizeHeap[inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r0]
   && inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5
     >= 0;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon18;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon15:
    assert {:sourceloc "PWCheck.java", 10, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon30_Then, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon30_Else;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon30_Else:
    assume {:partition} !(inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5
     < unsafe.$arrSizeHeap[inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r0]
   && inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5
     >= 0);
    call inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return := 0;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_4;
    unsafe.$objIndex, unsafe.$heap := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$objIndex, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$heap;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$Return;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon29_Else:
    assume {:partition} inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2
   > inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5;
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon15;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon12:
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2 := unsafe.$arrSizeHeap[inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r0];
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon29_Then, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon29_Else;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon29_Then:
    assume {:partition} inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5
   >= inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2;
    assert {:sourceloc "PWCheck.java", 9, -1, -1, -1} {:comment "thenblock"} true;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$return, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$exception, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b4, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$b3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_3, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$i2, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_i5, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_$fakelocal_4;
    unsafe.$objIndex, unsafe.$heap := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$objIndex, inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$$heap;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$Return;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon28_Then:
    assume {:partition} inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$in_r0
   != unsafe.$null;
    inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$anon12;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$block8_dummy:
    assume false;
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$Return;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$exit:
    goto inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$Return;

  inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$Return:
    out_$return := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$return;
    out_$exception := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$exception;
    out_$b4 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b4;
    out_$b3 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$b3;
    out_$fakelocal_3 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_3;
    out_$fakelocal_2 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_2;
    out_$i2 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$i2;
    out_i5 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_i5;
    out_$fakelocal_4 := inline$PWCheck$pwcheck1_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block6$0$out_$fakelocal_4;
    goto block8_dummy$1;

  block8_dummy$1:
    return;

  exit:
    return;
}



implementation unsafe.PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11(in_$return: int, 
    in_$exception: ref, 
    in_$i2: int, 
    in_$b5: int, 
    in_$fakelocal_3: ref, 
    in_$fakelocal_2: ref, 
    in_$b4: int, 
    in_$fakelocal_4: ref, 
    in_r1: ref, 
    in_$fakelocal_5: ref, 
    in_$i3: int, 
    in_i6: int, 
    in_z0: int, 
    in_r0: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$i2: int, 
    out_$b5: int, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_2: ref, 
    out_$b4: int, 
    out_$fakelocal_4: ref, 
    out_$fakelocal_5: ref, 
    out_$i3: int, 
    out_i6: int, 
    out_z0: int)
{
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$return: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$exception: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i2: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b5: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_3: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_2: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b4: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_4: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r1: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_5: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i3: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_i6: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_z0: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r0: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5: ref;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_z0: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$objIndex: int;
  var inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$heap: $heap_type;

  entry:
    out_$return, out_$exception, out_$i2, out_$b5, out_$fakelocal_3, out_$fakelocal_2, out_$b4, out_$fakelocal_4, out_$fakelocal_5, out_$i3, out_i6, out_z0 := in_$return, in_$exception, in_$i2, in_$b5, in_$fakelocal_3, in_$fakelocal_2, in_$b4, in_$fakelocal_4, in_$fakelocal_5, in_$i3, in_i6, in_z0;
    goto block11;

  block11:
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} in_r0 == unsafe.$null;
    call out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$i2, out_$b5, out_$fakelocal_3, out_$fakelocal_2, out_$b4, out_$fakelocal_4, out_$fakelocal_5, out_$i3, out_i6, out_z0 := in_$return, in_$exception, in_$i2, in_$b5, in_$fakelocal_3, in_$fakelocal_2, in_$b4, in_$fakelocal_4, in_$fakelocal_5, in_$i3, in_i6, in_z0;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  block13:
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    out_i6 := out_i6 + 1;
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    goto block13_dummy;

  anon30:
    assert {:sourceloc "PWCheck.java", 30, -1, -1, -1} true;
    out_z0 := 0;
    assert {:sourceloc "PWCheck.java", 30, -1, -1, -1} true;
    goto block13;

  block14:
    assert {:sourceloc "PWCheck.java", 32, -1, -1, -1} true;
    goto block13;

  anon37_Then:
    assume {:partition} out_i6 >= out_$i3;
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  anon18:
    out_$i3 := unsafe.$arrSizeHeap[in_r1];
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon36_Then:
    assume {:partition} in_r1 != unsafe.$null;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} in_r1 == unsafe.$null;
    call out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$i2, out_$b5, out_$fakelocal_3, out_$fakelocal_2, out_$b4, out_$fakelocal_4, out_$fakelocal_5, out_$i3, out_i6, out_z0 := in_$return, in_$exception, in_$i2, in_$b5, in_$fakelocal_3, in_$fakelocal_2, in_$b4, in_$fakelocal_4, in_$fakelocal_5, in_$i3, in_i6, in_z0;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon35_Else:
    assume {:partition} out_$i2 > out_i6;
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon12:
    out_$i2 := unsafe.$arrSizeHeap[in_r0];
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Then:
    assume {:partition} out_i6 >= out_$i2;
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$i2, out_$b5, out_$fakelocal_3, out_$fakelocal_2, out_$b4, out_$fakelocal_4, out_$fakelocal_5, out_$i3, out_i6, out_z0 := in_$return, in_$exception, in_$i2, in_$b5, in_$fakelocal_3, in_$fakelocal_2, in_$b4, in_$fakelocal_4, in_$fakelocal_5, in_$i3, in_i6, in_z0;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon34_Then:
    assume {:partition} in_r0 != unsafe.$null;
    out_$exception := out_$exception;
    goto anon12;

  anon40_Then:
    assume {:partition} out_$b5 == out_$b4;
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  anon27:
    out_$b4 := unsafe.$intArrHeap[in_r1][out_i6];
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon39_Then:
    assume {:partition} out_i6 < unsafe.$arrSizeHeap[in_r1] && out_i6 >= 0;
    out_$exception := out_$exception;
    goto anon27;

  anon24:
    out_$b5 := unsafe.$intArrHeap[in_r0][out_i6];
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} !(out_i6 < unsafe.$arrSizeHeap[in_r1] && out_i6 >= 0);
    call out_$fakelocal_5 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$i2, out_$b5, out_$fakelocal_3, out_$fakelocal_2, out_$b4, out_$fakelocal_4, out_$fakelocal_5, out_$i3, out_i6, out_z0 := in_$return, in_$exception, in_$i2, in_$b5, in_$fakelocal_3, in_$fakelocal_2, in_$b4, in_$fakelocal_4, in_$fakelocal_5, in_$i3, in_i6, in_z0;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon38_Then:
    assume {:partition} out_i6 < unsafe.$arrSizeHeap[in_r0] && out_i6 >= 0;
    out_$exception := out_$exception;
    goto anon24;

  anon21:
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} !(out_i6 < unsafe.$arrSizeHeap[in_r0] && out_i6 >= 0);
    call out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$i2, out_$b5, out_$fakelocal_3, out_$fakelocal_2, out_$b4, out_$fakelocal_4, out_$fakelocal_5, out_$i3, out_i6, out_z0 := in_$return, in_$exception, in_$i2, in_$b5, in_$fakelocal_3, in_$fakelocal_2, in_$b4, in_$fakelocal_4, in_$fakelocal_5, in_$i3, in_i6, in_z0;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon37_Else:
    assume {:partition} out_$i3 > out_i6;
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    goto anon21;

  anon40_Else:
    assume {:partition} out_$b5 != out_$b4;
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} {:comment "elseblock"} true;
    goto anon30;

  block13_dummy:
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$Entry;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$Entry:
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$return := out_$return;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$exception := out_$exception;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i2 := out_$i2;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b5 := out_$b5;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_3 := out_$fakelocal_3;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_2 := out_$fakelocal_2;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b4 := out_$b4;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_4 := out_$fakelocal_4;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r1 := in_r1;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_5 := out_$fakelocal_5;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i3 := out_$i3;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_i6 := out_i6;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_z0 := out_z0;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r0 := in_r0;
    havoc inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_z0;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$objIndex := unsafe.$objIndex;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$heap := unsafe.$heap;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$entry;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$entry:
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_z0 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_z0;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$block11;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$block11:
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon34_Then, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon34_Else;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon34_Else:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r0
   == unsafe.$null;
    call inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return := 0;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_z0 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_z0;
    unsafe.$objIndex, unsafe.$heap := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$objIndex, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$heap;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$Return;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$block13:
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
   + 1;
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$block13_dummy;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon30:
    assert {:sourceloc "PWCheck.java", 30, -1, -1, -1} true;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_z0 := 0;
    assert {:sourceloc "PWCheck.java", 30, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$block13;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$block14:
    assert {:sourceloc "PWCheck.java", 32, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$block13;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon37_Then:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
   >= inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3;
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$block13;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon18:
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3 := unsafe.$arrSizeHeap[inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r1];
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon37_Then, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon37_Else;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon36_Then:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r1
   != unsafe.$null;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon18;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon15:
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon36_Then, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon36_Else;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon36_Else:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r1
   == unsafe.$null;
    call inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return := 0;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_z0 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_z0;
    unsafe.$objIndex, unsafe.$heap := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$objIndex, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$heap;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$Return;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon35_Else:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2
   > inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6;
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon15;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon12:
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2 := unsafe.$arrSizeHeap[inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r0];
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon35_Then, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon35_Else;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon35_Then:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
   >= inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2;
    assert {:sourceloc "PWCheck.java", 27, -1, -1, -1} {:comment "thenblock"} true;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_z0 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_z0;
    unsafe.$objIndex, unsafe.$heap := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$objIndex, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$heap;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$Return;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon34_Then:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r0
   != unsafe.$null;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon12;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon40_Then:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5
   == inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4;
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$block14;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon27:
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4 := unsafe.$intArrHeap[inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r1][inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6];
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon40_Then, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon40_Else;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon39_Then:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
     < unsafe.$arrSizeHeap[inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r1]
   && inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
     >= 0;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon27;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon24:
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5 := unsafe.$intArrHeap[inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r0][inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6];
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon39_Then, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon39_Else;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon39_Else:
    assume {:partition} !(inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
     < unsafe.$arrSizeHeap[inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r1]
   && inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
     >= 0);
    call inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return := 0;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_z0 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_z0;
    unsafe.$objIndex, unsafe.$heap := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$objIndex, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$heap;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$Return;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon38_Then:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
     < unsafe.$arrSizeHeap[inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r0]
   && inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
     >= 0;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon24;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon21:
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon38_Then, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon38_Else;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon38_Else:
    assume {:partition} !(inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
     < unsafe.$arrSizeHeap[inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_r0]
   && inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6
     >= 0);
    call inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return := 0;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4;
    inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_z0 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$return, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$exception, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_2, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$b4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_4, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$fakelocal_5, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_$i3, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_i6, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$in_z0;
    unsafe.$objIndex, unsafe.$heap := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$objIndex, inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$$heap;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$Return;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon37_Else:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3
   > inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6;
    assert {:sourceloc "PWCheck.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon21;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon40_Else:
    assume {:partition} inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5
   != inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4;
    assert {:sourceloc "PWCheck.java", 29, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$anon30;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$block13_dummy:
    assume false;
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$Return;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$exit:
    goto inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$Return;

  inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$Return:
    out_$return := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$return;
    out_$exception := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$exception;
    out_$i2 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i2;
    out_$b5 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b5;
    out_$fakelocal_3 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_3;
    out_$fakelocal_2 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_2;
    out_$b4 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$b4;
    out_$fakelocal_4 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_4;
    out_$fakelocal_5 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$fakelocal_5;
    out_$i3 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_$i3;
    out_i6 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_i6;
    out_z0 := inline$PWCheck$pwcheck2_unsafe$byte$lp$$rp$_byte$lp$$rp$_loop_block11$0$out_z0;
    goto block13_dummy$1;

  block13_dummy$1:
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
