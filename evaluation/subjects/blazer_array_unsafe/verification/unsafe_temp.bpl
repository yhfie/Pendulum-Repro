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

var unsafe.int$java.lang.Integer$value0: Field int;

const unique unsafe.$type: Field javaType;

const unique unsafe.$alloc: Field bool;

const unique unsafe.$null: ref;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.lang.Object: javaType extends complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.io.Serializable: javaType extends complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.lang.Comparable: javaType extends complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.lang.Integer: javaType extends unique unsafe.java.lang.Object, unsafe.java.io.Serializable, unsafe.java.lang.Comparable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.lang.Throwable: javaType extends unique unsafe.java.lang.Object, unsafe.java.io.Serializable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.lang.Exception: javaType extends unique unsafe.java.lang.Throwable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.lang.RuntimeException: javaType extends unique unsafe.java.lang.Exception complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.lang.NullPointerException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique unsafe.java.lang.ClassCastException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "MoreSanity.java", -1, -1, -1, -1} unique unsafe.MoreSanity: javaType extends unique unsafe.java.lang.Object complete;

const {:sourceloc "MoreSanity.java", -1, -1, -1, -1} unique unsafe.java.lang.IndexOutOfBoundsException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "MoreSanity.java", -1, -1, -1, -1} unique unsafe.java.lang.ArrayIndexOutOfBoundsException: javaType extends unique unsafe.java.lang.IndexOutOfBoundsException complete;

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
  free ensures unsafe.$objIndex == old(unsafe.$objIndex) + 1;
  free ensures $obj != unsafe.$null;
  free ensures unsafe.$heap
   == old(unsafe.$heap)[$obj, unsafe.$alloc := true][$obj, unsafe.$type := obj_type];
  free ensures $obj == unsafe.$intToRef(old(unsafe.$objIndex));
  free ensures !old(unsafe.$heap[$obj, unsafe.$alloc]);



procedure {:prefix "unsafe"} unsafe.java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  free ensures $other != unsafe.$null;
  free ensures unsafe.$heap[$other, unsafe.$alloc] <==> true;
  free ensures unsafe.$heap[$other, unsafe.$type] == unsafe.$heap[$this, unsafe.$type];



procedure {:prefix "unsafe"} unsafe.int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure {:prefix "unsafe"} unsafe.java.lang.Integer$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Integer$valueOf$int($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Integer$intValue$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Integer$compareTo$java.lang.Integer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Integer$compareTo$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.MoreSanity$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.MoreSanity$array_unsafe$int$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref);
  free requires unsafe.$arrSizeHeap[$in_parameter__0] > 0;
  free requires $in_parameter__0 != unsafe.$null;
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.MoreSanity$loopAndbranch_safe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



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
  modifies unsafe.$objIndex, unsafe.$heap;



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
    goto block6;

  block6:
    return;

  anon11_Then:
    assume {:partition} $i1 <= $i0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block4;

  block4:
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
    havoc inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2, inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception;
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
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "MoreSanity.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type] <: unsafe.MoreSanity;
    assume {:sourceloc "MoreSanity.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "MoreSanity.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "MoreSanity.java", 1, -1, -1, -1} true;
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
    assume unsafe.$arrSizeHeap[$in_parameter__0] > 0 && $in_parameter__0 != unsafe.$null;
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    $exception := unsafe.$null;
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
    assume {:partition} r0 == unsafe.$null;
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon17_Then:
    assume {:partition} r0 != unsafe.$null;
    $exception := $exception;
    goto anon6;

  anon6:
    $i2 := unsafe.$arrSizeHeap[r0];
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
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$objIndex := unsafe.$objIndex;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$heap := unsafe.$heap;
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
    unsafe.$objIndex, unsafe.$heap := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$objIndex, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$heap;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon12:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i4 := unsafe.$intArrHeap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_r0][inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3];
    assert {:sourceloc "MoreSanity.java", 27, -1, -1, -1} true;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3 + -1;
    assert {:sourceloc "MoreSanity.java", 27, -1, -1, -1} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon12_dummy;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon19_Then:
    assume {:partition} inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3
     < unsafe.$arrSizeHeap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_r0]
   && inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3 >= 0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon12;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon9:
    assert {:sourceloc "MoreSanity.java", 26, -1, -1, -1} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon19_Then, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon19_Else;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon19_Else:
    assume {:partition} !(inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3
     < unsafe.$arrSizeHeap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_r0]
   && inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3 >= 0);
    call inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$return := 0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i4, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i4, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$objIndex, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$heap;
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
    assume {:partition} !(i3 < unsafe.$arrSizeHeap[r0] && i3 >= 0);
    call $fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon19_Then:
    assume {:partition} i3 < unsafe.$arrSizeHeap[r0] && i3 >= 0;
    $exception := $exception;
    goto anon12;

  anon12:
    i4 := unsafe.$intArrHeap[r0][i3];
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
    assume {:partition} !(b5 < unsafe.$arrSizeHeap[r0] && b5 >= 0);
    call $fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon20_Then:
    assume {:partition} b5 < unsafe.$arrSizeHeap[r0] && b5 >= 0;
    $exception := $exception;
    goto anon15;

  anon15:
    $i1 := unsafe.$intArrHeap[r0][b5];
    goto block12;

  anon12_dummy:
    assume false;
    return;

  block10_last:
    assert {:sourceloc "MoreSanity.java", 25, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;
}



implementation unsafe.MoreSanity$loopAndbranch_safe$int_int($in_parameter__0: int, $in_parameter__1: int)
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
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    $exception := unsafe.$null;
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
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    $exception := unsafe.$null;
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
    $exception := unsafe.$null;
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
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon12:
    out_i4 := unsafe.$intArrHeap[in_r0][out_i3];
    assert {:sourceloc "MoreSanity.java", 27, -1, -1, -1} true;
    out_i3 := out_i3 + -1;
    assert {:sourceloc "MoreSanity.java", 27, -1, -1, -1} true;
    goto anon12_dummy;

  anon19_Then:
    assume {:partition} out_i3 < unsafe.$arrSizeHeap[in_r0] && out_i3 >= 0;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    assert {:sourceloc "MoreSanity.java", 26, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(out_i3 < unsafe.$arrSizeHeap[in_r0] && out_i3 >= 0);
    call out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_i4, out_i3, out_$fakelocal_1 := in_$return, in_$exception, in_i4, in_i3, in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
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
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$objIndex := unsafe.$objIndex;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$heap := unsafe.$heap;
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
    unsafe.$objIndex, unsafe.$heap := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$objIndex, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$heap;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$Return;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon12:
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i4 := unsafe.$intArrHeap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_r0][inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3];
    assert {:sourceloc "MoreSanity.java", 27, -1, -1, -1} true;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3 + -1;
    assert {:sourceloc "MoreSanity.java", 27, -1, -1, -1} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon12_dummy;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon19_Then:
    assume {:partition} inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3
     < unsafe.$arrSizeHeap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_r0]
   && inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3 >= 0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon12;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon9:
    assert {:sourceloc "MoreSanity.java", 26, -1, -1, -1} true;
    goto inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon19_Then, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon19_Else;

  inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$anon19_Else:
    assume {:partition} !(inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3
     < unsafe.$arrSizeHeap[inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_r0]
   && inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3 >= 0);
    call inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$return := 0;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1;
    inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i4, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_i3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$out_$fakelocal_1 := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$return, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$exception, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i4, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_i3, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$in_$fakelocal_1;
    unsafe.$objIndex, unsafe.$heap := inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$objIndex, inline$MoreSanity$array_unsafe$int$lp$$rp$_int_loop_block10$0$$heap;
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
