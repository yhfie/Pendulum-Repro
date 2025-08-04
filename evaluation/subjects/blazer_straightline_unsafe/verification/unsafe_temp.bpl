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

var unsafe.java.io.PrintStream$java.lang.System$out260: ref;

const unique unsafe.$type: Field javaType;

const unique unsafe.$alloc: Field bool;

const unique unsafe.$null: ref;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique unsafe.java.lang.Object: javaType extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique unsafe.Sanity: javaType extends unique unsafe.java.lang.Object complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique unsafe.java.io.Serializable: javaType extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique unsafe.java.lang.Throwable: javaType extends unique unsafe.java.lang.Object, unsafe.java.io.Serializable complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique unsafe.java.lang.Exception: javaType extends unique unsafe.java.lang.Throwable complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique unsafe.java.lang.RuntimeException: javaType extends unique unsafe.java.lang.Exception complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique unsafe.java.lang.IndexOutOfBoundsException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique unsafe.java.lang.ArrayIndexOutOfBoundsException: javaType extends unique unsafe.java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique unsafe.java.lang.Appendable: javaType extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique unsafe.java.lang.CharSequence: javaType extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique unsafe.java.lang.AbstractStringBuilder: javaType extends unique unsafe.java.lang.Object, unsafe.java.lang.Appendable, unsafe.java.lang.CharSequence complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique unsafe.java.lang.StringBuilder: javaType extends unique unsafe.java.lang.AbstractStringBuilder, unsafe.java.io.Serializable, unsafe.java.lang.CharSequence complete;

const unique unsafe.$StringConst0: ref extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique unsafe.java.lang.Comparable: javaType extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique unsafe.java.lang.String: javaType extends unique unsafe.java.lang.Object, unsafe.java.io.Serializable, unsafe.java.lang.Comparable, unsafe.java.lang.CharSequence complete;

const unique unsafe.$StringConst1: ref extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique unsafe.java.lang.AutoCloseable: javaType extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique unsafe.java.io.Closeable: javaType extends unsafe.java.lang.AutoCloseable complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique unsafe.java.io.Flushable: javaType extends complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique unsafe.java.io.OutputStream: javaType extends unique unsafe.java.lang.Object, unsafe.java.io.Closeable, unsafe.java.io.Flushable complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique unsafe.java.io.FilterOutputStream: javaType extends unique unsafe.java.io.OutputStream complete;

const {:sourceloc "Sanity.java", -1, -1, -1, -1} unique unsafe.java.io.PrintStream: javaType extends unique unsafe.java.io.FilterOutputStream, unsafe.java.lang.Appendable, unsafe.java.io.Closeable complete;

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
  free ensures !old(unsafe.$heap[$obj, unsafe.$alloc]);
  free ensures unsafe.$heap
   == old(unsafe.$heap)[$obj, unsafe.$alloc := true][$obj, unsafe.$type := obj_type];
  free ensures unsafe.$objIndex == old(unsafe.$objIndex) + 1;
  free ensures $obj != unsafe.$null;
  free ensures $obj == unsafe.$intToRef(old(unsafe.$objIndex));



procedure {:prefix "unsafe"} unsafe.java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  free ensures $other != unsafe.$null;
  free ensures unsafe.$heap[$other, unsafe.$alloc] <==> true;
  free ensures unsafe.$heap[$other, unsafe.$type] == unsafe.$heap[$this, unsafe.$type];



procedure {:prefix "unsafe"} unsafe.int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure {:prefix "unsafe"} unsafe.Sanity$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.Sanity$notaint_unsafe$int$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.Sanity$nosecret_safe$int$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.Sanity$straightline_unsafe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.Sanity$sanity_safe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.StringBuilder$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.StringBuilder$append$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.StringBuilder$append$int($this: ref, $in_parameter__0: int) returns ($return: ref, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.StringBuilder$toString$($this: ref) returns ($return: ref, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.io.PrintStream$println$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.Sanity$sanity_unsafe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3(in_$return: int, 
    in_$exception: ref, 
    in_r0: ref, 
    in_$fakelocal_1: ref, 
    in_i3: int, 
    in_$i2: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_1: ref, 
    out_i3: int, 
    out_$i2: int);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6(in_i1: int, in_i0: int) returns (out_i1: int);



procedure {:prefix "unsafe"} unsafe.Sanity$sanity_safe$int_int_loop_block12(in_i2: int) returns (out_i2: int);



procedure {:prefix "unsafe"} unsafe.Sanity$sanity_safe$int_int_loop_block11(in_i3: int) returns (out_i3: int);



procedure {:prefix "unsafe"} unsafe.Sanity$sanity_unsafe$int_int_loop_block16(in_i3: int) returns (out_i3: int);



implementation unsafe.Sanity$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Sanity.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type] <: unsafe.Sanity;
    assume {:sourceloc "Sanity.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Sanity.java", 2, -1, -1, -1} true;
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
    assert {:sourceloc "Sanity.java", 2, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation unsafe.Sanity$notaint_unsafe$int$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $i1: int;
  var $fakelocal_1: ref;
  var i3: int;
  var $fakelocal_0: ref;
  var $i2: int;
  var i0: int;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$return: int;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$exception: ref;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_r0: ref;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$fakelocal_1: ref;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_i3: int;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$i2: int;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$return: int;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$exception: ref;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$fakelocal_1: ref;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_i3: int;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$i2: int;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$$objIndex: int;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    $exception := unsafe.$null;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__1;
    assert {:sourceloc "Sanity.java", 5, -1, -1, -1} true;
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !(0 < unsafe.$arrSizeHeap[r0] && 0 >= 0);
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon13_Then:
    assume {:partition} 0 < unsafe.$arrSizeHeap[r0] && 0 >= 0;
    $exception := $exception;
    goto anon3;

  anon3:
    $i1 := unsafe.$intArrHeap[r0][0];
    assert {:sourceloc "Sanity.java", 5, -1, -1, -1} true;
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} 0 < $i1;
    assert {:sourceloc "Sanity.java", 5, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} true;
    i3 := 0;
    goto block3;

  block3:
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$Entry;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$Entry:
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$return := $return;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$exception := $exception;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_r0 := r0;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$fakelocal_1 := $fakelocal_1;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_i3 := i3;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$i2 := $i2;
    havoc inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$return, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$exception, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$fakelocal_1, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_i3, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$i2;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$$objIndex := unsafe.$objIndex;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$$heap := unsafe.$heap;
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$entry;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$entry:
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$return, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$exception, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$fakelocal_1, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_i3, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$i2 := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$return, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$exception, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$fakelocal_1, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_i3, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$i2;
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$block3;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$block3:
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} true;
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon15_Then, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon15_Else;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon15_Else:
    assume {:partition} !(0
     < unsafe.$arrSizeHeap[inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_r0]
   && 0 >= 0);
    call inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$return := 0;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$exception := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$fakelocal_1;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$return, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$exception, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$fakelocal_1, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_i3, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$i2 := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$return, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$exception, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$fakelocal_1, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_i3, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$i2;
    unsafe.$objIndex, unsafe.$heap := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$$objIndex, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$$heap;
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$Return;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon12:
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} true;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_i3 := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_i3 + 1;
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} true;
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon12_dummy;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon16_Else:
    assume {:partition} inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$i2
   > inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_i3;
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon12;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon9:
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$i2 := unsafe.$intArrHeap[inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_r0][0];
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} true;
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon16_Then, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon16_Else;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon16_Then:
    assume {:partition} inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_i3
   >= inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$i2;
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} {:comment "thenblock"} true;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$return, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$exception, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$fakelocal_1, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_i3, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$i2 := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$return, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$exception, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$fakelocal_1, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_i3, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$i2;
    unsafe.$objIndex, unsafe.$heap := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$$objIndex, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$$heap;
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$Return;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon15_Then:
    assume {:partition} 0
     < unsafe.$arrSizeHeap[inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_r0]
   && 0 >= 0;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$exception := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$exception;
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon9;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon12_dummy:
    assume false;
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$Return;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$exit:
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$Return;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$Return:
    $return := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$return;
    $exception := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$exception;
    $fakelocal_1 := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$fakelocal_1;
    i3 := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_i3;
    $i2 := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$i2;
    goto block3$1;

  block3$1:
    goto block3_last;

  anon15_Else:
    assume {:partition} !(0 < unsafe.$arrSizeHeap[r0] && 0 >= 0);
    call $fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon15_Then:
    assume {:partition} 0 < unsafe.$arrSizeHeap[r0] && 0 >= 0;
    $exception := $exception;
    goto anon9;

  anon9:
    $i2 := unsafe.$intArrHeap[r0][0];
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} $i2 > i3;
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} true;
    i3 := i3 + 1;
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} true;
    goto anon12_dummy;

  anon16_Then:
    assume {:partition} i3 >= $i2;
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} {:comment "thenblock"} true;
    goto block2;

  block2:
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} true;
    $return := 1;
    goto block4;

  block4:
    return;

  anon14_Then:
    assume {:partition} $i1 <= 0;
    assert {:sourceloc "Sanity.java", 5, -1, -1, -1} {:comment "thenblock"} true;
    goto block2;

  anon12_dummy:
    assume false;
    return;

  block3_last:
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} true;
    goto anon15_Then, anon15_Else;
}



implementation unsafe.Sanity$nosecret_safe$int$lp$$rp$_int($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var i1: int;
  var r0: ref;
  var i0: int;
  var inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$in_i1: int;
  var inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$in_i0: int;
  var inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$out_i1: int;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    $exception := unsafe.$null;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__1;
    assert {:sourceloc "Sanity.java", 11, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 < i0;
    assert {:sourceloc "Sanity.java", 11, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Sanity.java", 12, -1, -1, -1} true;
    i1 := 0;
    goto block6;

  block6:
    goto inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$Entry;

  inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$Entry:
    inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$in_i1 := i1;
    inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$in_i0 := i0;
    havoc inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$out_i1;
    goto inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$entry;

  inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$entry:
    inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$out_i1 := inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$in_i1;
    goto inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$block6;

  inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$block6:
    assert {:sourceloc "Sanity.java", 12, -1, -1, -1} true;
    goto inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$anon8_Then, inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$anon8_Else;

  inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$anon8_Then:
    assume {:partition} inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$out_i1
   >= inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$in_i0;
    assert {:sourceloc "Sanity.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$out_i1 := inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$in_i1;
    goto inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$Return;

  inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$anon6:
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} true;
    inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$out_i1 := inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$out_i1 + 1;
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} true;
    goto inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$anon6_dummy;

  inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$anon8_Else:
    assume {:partition} inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$in_i0
   > inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$out_i1;
    assert {:sourceloc "Sanity.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$anon6;

  inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$anon6_dummy:
    assume false;
    goto inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$Return;

  inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$exit:
    goto inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$Return;

  inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$Return:
    i1 := inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$out_i1;
    goto block6$1;

  block6$1:
    goto block6_last;

  anon8_Else:
    assume {:partition} i0 > i1;
    assert {:sourceloc "Sanity.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} true;
    i1 := i1 + 1;
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} true;
    goto anon6_dummy;

  anon8_Then:
    assume {:partition} i1 >= i0;
    assert {:sourceloc "Sanity.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    goto block5;

  block5:
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} true;
    $return := 1;
    goto block7;

  block7:
    return;

  anon7_Then:
    assume {:partition} i0 <= 0;
    assert {:sourceloc "Sanity.java", 11, -1, -1, -1} {:comment "thenblock"} true;
    goto block5;

  anon6_dummy:
    assume false;
    return;

  block6_last:
    assert {:sourceloc "Sanity.java", 12, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;
}



implementation unsafe.Sanity$straightline_unsafe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var i0: int;
  var i1: int;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    $exception := unsafe.$null;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__1;
    assert {:sourceloc "Sanity.java", 19, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 < i0;
    assert {:sourceloc "Sanity.java", 19, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Sanity.java", 32, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 < i1;
    assert {:sourceloc "Sanity.java", 32, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Sanity.java", 20, -1, -1, -1} true;
    goto block8;

  block8:
    assert {:sourceloc "Sanity.java", 32, -1, -1, -1} true;
    $return := 0;
    goto block9;

  block9:
    return;

  anon8_Then:
    assume {:partition} i1 <= 0;
    assert {:sourceloc "Sanity.java", 32, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  anon7_Then:
    assume {:partition} i0 <= 0;
    assert {:sourceloc "Sanity.java", 19, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;
}



implementation unsafe.Sanity$sanity_safe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $r3: ref;
  var $fakelocal_2: ref;
  var $r1: ref;
  var $r0: ref;
  var $fakelocal_1: ref;
  var $r4: ref;
  var $r2: ref;
  var i3: int;
  var i1: int;
  var i0: int;
  var $fakelocal_0: ref;
  var $fakelocal_4: ref;
  var i2: int;
  var $r5: ref;
  var $r6: ref;
  var $fakelocal_5: ref;
  var $fakelocal_3: ref;
  var inline$Sanity$sanity_safe$int_int_loop_block12$0$in_i2: int;
  var inline$Sanity$sanity_safe$int_int_loop_block12$0$out_i2: int;
  var inline$Sanity$sanity_safe$int_int_loop_block11$0$in_i3: int;
  var inline$Sanity$sanity_safe$int_int_loop_block11$0$out_i3: int;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    $exception := unsafe.$null;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__1;
    assert {:sourceloc "Sanity.java", 49, -1, -1, -1} true;
    $r1 := unsafe.java.io.PrintStream$java.lang.System$out260;
    assert {:sourceloc "Sanity.java", 49, -1, -1, -1} true;
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.StringBuilder);
    $r0 := $fakelocal_0;
    assert {:sourceloc "Sanity.java", 49, -1, -1, -1} true;
    call $exception := unsafe.java.lang.StringBuilder$$la$init$ra$$($r0);
    assert {:sourceloc "Sanity.java", 49, -1, -1, -1} true;
    call $r2, $exception := unsafe.java.lang.StringBuilder$append$java.lang.String($r0, unsafe.$StringConst0);
    assert {:sourceloc "Sanity.java", 49, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} $r2 == unsafe.$null;
    call $fakelocal_1 := unsafe.$new(unsafe.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon27_Then:
    assume {:partition} $r2 != unsafe.$null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $r3, $exception := unsafe.java.lang.StringBuilder$append$int($r2, i0);
    assert {:sourceloc "Sanity.java", 49, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} $r3 == unsafe.$null;
    call $fakelocal_2 := unsafe.$new(unsafe.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon28_Then:
    assume {:partition} $r3 != unsafe.$null;
    $exception := $exception;
    goto anon6;

  anon6:
    call $r4, $exception := unsafe.java.lang.StringBuilder$append$java.lang.String($r3, unsafe.$StringConst1);
    assert {:sourceloc "Sanity.java", 49, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} $r4 == unsafe.$null;
    call $fakelocal_3 := unsafe.$new(unsafe.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon29_Then:
    assume {:partition} $r4 != unsafe.$null;
    $exception := $exception;
    goto anon9;

  anon9:
    call $r5, $exception := unsafe.java.lang.StringBuilder$append$int($r4, i1);
    assert {:sourceloc "Sanity.java", 49, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} $r5 == unsafe.$null;
    call $fakelocal_4 := unsafe.$new(unsafe.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon30_Then:
    assume {:partition} $r5 != unsafe.$null;
    $exception := $exception;
    goto anon12;

  anon12:
    call $r6, $exception := unsafe.java.lang.StringBuilder$toString$($r5);
    assert {:sourceloc "Sanity.java", 49, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} $r1 == unsafe.$null;
    call $fakelocal_5 := unsafe.$new(unsafe.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon31_Then:
    assume {:partition} $r1 != unsafe.$null;
    $exception := $exception;
    goto anon15;

  anon15:
    call $exception := unsafe.java.io.PrintStream$println$java.lang.String($r1, $r6);
    assert {:sourceloc "Sanity.java", 50, -1, -1, -1} true;
    i2 := i1;
    assert {:sourceloc "Sanity.java", 51, -1, -1, -1} true;
    i3 := i1;
    assert {:sourceloc "Sanity.java", 52, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} 0 > i1;
    assert {:sourceloc "Sanity.java", 52, -1, -1, -1} {:comment "elseblock"} true;
    goto anon18;

  anon18:
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} true;
    $return := 0;
    goto block14;

  block14:
    return;

  anon32_Then:
    assume {:partition} i1 >= 0;
    assert {:sourceloc "Sanity.java", 52, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "Sanity.java", 54, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} 0 < i0;
    assert {:sourceloc "Sanity.java", 54, -1, -1, -1} {:comment "elseblock"} true;
    goto block12;

  block12:
    goto inline$Sanity$sanity_safe$int_int_loop_block12$0$Entry;

  inline$Sanity$sanity_safe$int_int_loop_block12$0$Entry:
    inline$Sanity$sanity_safe$int_int_loop_block12$0$in_i2 := i2;
    havoc inline$Sanity$sanity_safe$int_int_loop_block12$0$out_i2;
    goto inline$Sanity$sanity_safe$int_int_loop_block12$0$entry;

  inline$Sanity$sanity_safe$int_int_loop_block12$0$entry:
    inline$Sanity$sanity_safe$int_int_loop_block12$0$out_i2 := inline$Sanity$sanity_safe$int_int_loop_block12$0$in_i2;
    goto inline$Sanity$sanity_safe$int_int_loop_block12$0$block12;

  inline$Sanity$sanity_safe$int_int_loop_block12$0$block12:
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} true;
    goto inline$Sanity$sanity_safe$int_int_loop_block12$0$anon34_Then, inline$Sanity$sanity_safe$int_int_loop_block12$0$anon34_Else;

  inline$Sanity$sanity_safe$int_int_loop_block12$0$anon34_Then:
    assume {:partition} inline$Sanity$sanity_safe$int_int_loop_block12$0$out_i2 <= 0;
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} {:comment "thenblock"} true;
    inline$Sanity$sanity_safe$int_int_loop_block12$0$out_i2 := inline$Sanity$sanity_safe$int_int_loop_block12$0$in_i2;
    goto inline$Sanity$sanity_safe$int_int_loop_block12$0$Return;

  inline$Sanity$sanity_safe$int_int_loop_block12$0$anon23:
    assert {:sourceloc "Sanity.java", 56, -1, -1, -1} true;
    inline$Sanity$sanity_safe$int_int_loop_block12$0$out_i2 := inline$Sanity$sanity_safe$int_int_loop_block12$0$out_i2 + -1;
    assert {:sourceloc "Sanity.java", 56, -1, -1, -1} true;
    goto inline$Sanity$sanity_safe$int_int_loop_block12$0$anon23_dummy;

  inline$Sanity$sanity_safe$int_int_loop_block12$0$anon34_Else:
    assume {:partition} 0 < inline$Sanity$sanity_safe$int_int_loop_block12$0$out_i2;
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Sanity$sanity_safe$int_int_loop_block12$0$anon23;

  inline$Sanity$sanity_safe$int_int_loop_block12$0$anon23_dummy:
    assume false;
    goto inline$Sanity$sanity_safe$int_int_loop_block12$0$Return;

  inline$Sanity$sanity_safe$int_int_loop_block12$0$exit:
    goto inline$Sanity$sanity_safe$int_int_loop_block12$0$Return;

  inline$Sanity$sanity_safe$int_int_loop_block12$0$Return:
    i2 := inline$Sanity$sanity_safe$int_int_loop_block12$0$out_i2;
    goto block12$1;

  block12$1:
    goto block12_last;

  anon34_Else:
    assume {:partition} 0 < i2;
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} {:comment "elseblock"} true;
    goto anon23;

  anon23:
    assert {:sourceloc "Sanity.java", 56, -1, -1, -1} true;
    i2 := i2 + -1;
    assert {:sourceloc "Sanity.java", 56, -1, -1, -1} true;
    goto anon23_dummy;

  anon34_Then:
    assume {:partition} i2 <= 0;
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  block13:
    assert {:sourceloc "Sanity.java", 64, -1, -1, -1} true;
    $return := 0;
    goto block14;

  anon33_Then:
    assume {:partition} i0 <= 0;
    assert {:sourceloc "Sanity.java", 54, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  block11:
    goto inline$Sanity$sanity_safe$int_int_loop_block11$0$Entry;

  inline$Sanity$sanity_safe$int_int_loop_block11$0$Entry:
    inline$Sanity$sanity_safe$int_int_loop_block11$0$in_i3 := i3;
    havoc inline$Sanity$sanity_safe$int_int_loop_block11$0$out_i3;
    goto inline$Sanity$sanity_safe$int_int_loop_block11$0$entry;

  inline$Sanity$sanity_safe$int_int_loop_block11$0$entry:
    inline$Sanity$sanity_safe$int_int_loop_block11$0$out_i3 := inline$Sanity$sanity_safe$int_int_loop_block11$0$in_i3;
    goto inline$Sanity$sanity_safe$int_int_loop_block11$0$block11;

  inline$Sanity$sanity_safe$int_int_loop_block11$0$block11:
    assert {:sourceloc "Sanity.java", 59, -1, -1, -1} true;
    goto inline$Sanity$sanity_safe$int_int_loop_block11$0$anon35_Then, inline$Sanity$sanity_safe$int_int_loop_block11$0$anon35_Else;

  inline$Sanity$sanity_safe$int_int_loop_block11$0$anon35_Then:
    assume {:partition} inline$Sanity$sanity_safe$int_int_loop_block11$0$out_i3 <= 0;
    assert {:sourceloc "Sanity.java", 59, -1, -1, -1} {:comment "thenblock"} true;
    inline$Sanity$sanity_safe$int_int_loop_block11$0$out_i3 := inline$Sanity$sanity_safe$int_int_loop_block11$0$in_i3;
    goto inline$Sanity$sanity_safe$int_int_loop_block11$0$Return;

  inline$Sanity$sanity_safe$int_int_loop_block11$0$anon26:
    assert {:sourceloc "Sanity.java", 60, -1, -1, -1} true;
    inline$Sanity$sanity_safe$int_int_loop_block11$0$out_i3 := inline$Sanity$sanity_safe$int_int_loop_block11$0$out_i3 + -1;
    assert {:sourceloc "Sanity.java", 60, -1, -1, -1} true;
    goto inline$Sanity$sanity_safe$int_int_loop_block11$0$anon26_dummy;

  inline$Sanity$sanity_safe$int_int_loop_block11$0$anon35_Else:
    assume {:partition} 0 < inline$Sanity$sanity_safe$int_int_loop_block11$0$out_i3;
    assert {:sourceloc "Sanity.java", 59, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Sanity$sanity_safe$int_int_loop_block11$0$anon26;

  inline$Sanity$sanity_safe$int_int_loop_block11$0$anon26_dummy:
    assume false;
    goto inline$Sanity$sanity_safe$int_int_loop_block11$0$Return;

  inline$Sanity$sanity_safe$int_int_loop_block11$0$exit:
    goto inline$Sanity$sanity_safe$int_int_loop_block11$0$Return;

  inline$Sanity$sanity_safe$int_int_loop_block11$0$Return:
    i3 := inline$Sanity$sanity_safe$int_int_loop_block11$0$out_i3;
    goto block11$1;

  block11$1:
    goto block11_last;

  anon35_Else:
    assume {:partition} 0 < i3;
    assert {:sourceloc "Sanity.java", 59, -1, -1, -1} {:comment "elseblock"} true;
    goto anon26;

  anon26:
    assert {:sourceloc "Sanity.java", 60, -1, -1, -1} true;
    i3 := i3 + -1;
    assert {:sourceloc "Sanity.java", 60, -1, -1, -1} true;
    goto anon26_dummy;

  anon35_Then:
    assume {:partition} i3 <= 0;
    assert {:sourceloc "Sanity.java", 59, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  anon23_dummy:
    assume false;
    return;

  block12_last:
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon26_dummy:
    assume false;
    return;

  block11_last:
    assert {:sourceloc "Sanity.java", 59, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;
}



implementation unsafe.Sanity$sanity_unsafe$int_int($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var i3: int;
  var i0: int;
  var i1: int;
  var inline$Sanity$sanity_unsafe$int_int_loop_block16$0$in_i3: int;
  var inline$Sanity$sanity_unsafe$int_int_loop_block16$0$out_i3: int;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    $exception := unsafe.$null;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Sanity.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__1;
    assert {:sourceloc "Sanity.java", 68, -1, -1, -1} true;
    i3 := i1;
    assert {:sourceloc "Sanity.java", 70, -1, -1, -1} true;
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} 0 > i1;
    assert {:sourceloc "Sanity.java", 70, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Sanity.java", 73, -1, -1, -1} true;
    $return := 0;
    goto block18;

  block18:
    return;

  anon10_Then:
    assume {:partition} i1 >= 0;
    assert {:sourceloc "Sanity.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  block15:
    assert {:sourceloc "Sanity.java", 72, -1, -1, -1} true;
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} 0 > i0;
    assert {:sourceloc "Sanity.java", 72, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Sanity.java", 73, -1, -1, -1} true;
    $return := 1;
    goto block18;

  anon11_Then:
    assume {:partition} i0 >= 0;
    assert {:sourceloc "Sanity.java", 72, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  block16:
    goto inline$Sanity$sanity_unsafe$int_int_loop_block16$0$Entry;

  inline$Sanity$sanity_unsafe$int_int_loop_block16$0$Entry:
    inline$Sanity$sanity_unsafe$int_int_loop_block16$0$in_i3 := i3;
    havoc inline$Sanity$sanity_unsafe$int_int_loop_block16$0$out_i3;
    goto inline$Sanity$sanity_unsafe$int_int_loop_block16$0$entry;

  inline$Sanity$sanity_unsafe$int_int_loop_block16$0$entry:
    inline$Sanity$sanity_unsafe$int_int_loop_block16$0$out_i3 := inline$Sanity$sanity_unsafe$int_int_loop_block16$0$in_i3;
    goto inline$Sanity$sanity_unsafe$int_int_loop_block16$0$block16;

  inline$Sanity$sanity_unsafe$int_int_loop_block16$0$block16:
    assert {:sourceloc "Sanity.java", 75, -1, -1, -1} true;
    goto inline$Sanity$sanity_unsafe$int_int_loop_block16$0$anon12_Then, inline$Sanity$sanity_unsafe$int_int_loop_block16$0$anon12_Else;

  inline$Sanity$sanity_unsafe$int_int_loop_block16$0$anon12_Then:
    assume {:partition} inline$Sanity$sanity_unsafe$int_int_loop_block16$0$out_i3 <= 0;
    assert {:sourceloc "Sanity.java", 75, -1, -1, -1} {:comment "thenblock"} true;
    inline$Sanity$sanity_unsafe$int_int_loop_block16$0$out_i3 := inline$Sanity$sanity_unsafe$int_int_loop_block16$0$in_i3;
    goto inline$Sanity$sanity_unsafe$int_int_loop_block16$0$Return;

  inline$Sanity$sanity_unsafe$int_int_loop_block16$0$anon9:
    assert {:sourceloc "Sanity.java", 76, -1, -1, -1} true;
    inline$Sanity$sanity_unsafe$int_int_loop_block16$0$out_i3 := inline$Sanity$sanity_unsafe$int_int_loop_block16$0$out_i3 + -1;
    assert {:sourceloc "Sanity.java", 76, -1, -1, -1} true;
    goto inline$Sanity$sanity_unsafe$int_int_loop_block16$0$anon9_dummy;

  inline$Sanity$sanity_unsafe$int_int_loop_block16$0$anon12_Else:
    assume {:partition} 0 < inline$Sanity$sanity_unsafe$int_int_loop_block16$0$out_i3;
    assert {:sourceloc "Sanity.java", 75, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Sanity$sanity_unsafe$int_int_loop_block16$0$anon9;

  inline$Sanity$sanity_unsafe$int_int_loop_block16$0$anon9_dummy:
    assume false;
    goto inline$Sanity$sanity_unsafe$int_int_loop_block16$0$Return;

  inline$Sanity$sanity_unsafe$int_int_loop_block16$0$exit:
    goto inline$Sanity$sanity_unsafe$int_int_loop_block16$0$Return;

  inline$Sanity$sanity_unsafe$int_int_loop_block16$0$Return:
    i3 := inline$Sanity$sanity_unsafe$int_int_loop_block16$0$out_i3;
    goto block16$1;

  block16$1:
    goto block16_last;

  anon12_Else:
    assume {:partition} 0 < i3;
    assert {:sourceloc "Sanity.java", 75, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "Sanity.java", 76, -1, -1, -1} true;
    i3 := i3 + -1;
    assert {:sourceloc "Sanity.java", 76, -1, -1, -1} true;
    goto anon9_dummy;

  anon12_Then:
    assume {:partition} i3 <= 0;
    assert {:sourceloc "Sanity.java", 75, -1, -1, -1} {:comment "thenblock"} true;
    goto block17;

  block17:
    assert {:sourceloc "Sanity.java", 79, -1, -1, -1} true;
    $return := 0;
    goto block18;

  anon9_dummy:
    assume false;
    return;

  block16_last:
    assert {:sourceloc "Sanity.java", 75, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;
}



implementation unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := unsafe.$null;
    return;
}



implementation unsafe.Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3(in_$return: int, 
    in_$exception: ref, 
    in_r0: ref, 
    in_$fakelocal_1: ref, 
    in_i3: int, 
    in_$i2: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_1: ref, 
    out_i3: int, 
    out_$i2: int)
{
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$return: int;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$exception: ref;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_r0: ref;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$fakelocal_1: ref;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_i3: int;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$i2: int;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$return: int;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$exception: ref;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$fakelocal_1: ref;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_i3: int;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$i2: int;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$$objIndex: int;
  var inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$$heap: $heap_type;

  entry:
    out_$return, out_$exception, out_$fakelocal_1, out_i3, out_$i2 := in_$return, in_$exception, in_$fakelocal_1, in_i3, in_$i2;
    goto block3;

  block3:
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} true;
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !(0 < unsafe.$arrSizeHeap[in_r0] && 0 >= 0);
    call out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$fakelocal_1, out_i3, out_$i2 := in_$return, in_$exception, in_$fakelocal_1, in_i3, in_$i2;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon12:
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} true;
    out_i3 := out_i3 + 1;
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} true;
    goto anon12_dummy;

  anon16_Else:
    assume {:partition} out_$i2 > out_i3;
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon9:
    out_$i2 := unsafe.$intArrHeap[in_r0][0];
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Then:
    assume {:partition} out_i3 >= out_$i2;
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_1, out_i3, out_$i2 := in_$return, in_$exception, in_$fakelocal_1, in_i3, in_$i2;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon15_Then:
    assume {:partition} 0 < unsafe.$arrSizeHeap[in_r0] && 0 >= 0;
    out_$exception := out_$exception;
    goto anon9;

  anon12_dummy:
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$Entry;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$Entry:
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$return := out_$return;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$exception := out_$exception;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_r0 := in_r0;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$fakelocal_1 := out_$fakelocal_1;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_i3 := out_i3;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$i2 := out_$i2;
    havoc inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$return, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$exception, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$fakelocal_1, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_i3, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$i2;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$$objIndex := unsafe.$objIndex;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$$heap := unsafe.$heap;
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$entry;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$entry:
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$return, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$exception, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$fakelocal_1, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_i3, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$i2 := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$return, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$exception, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$fakelocal_1, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_i3, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$i2;
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$block3;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$block3:
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} true;
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon15_Then, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon15_Else;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon15_Else:
    assume {:partition} !(0
     < unsafe.$arrSizeHeap[inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_r0]
   && 0 >= 0);
    call inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$return := 0;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$exception := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$fakelocal_1;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$return, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$exception, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$fakelocal_1, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_i3, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$i2 := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$return, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$exception, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$fakelocal_1, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_i3, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$i2;
    unsafe.$objIndex, unsafe.$heap := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$$objIndex, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$$heap;
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$Return;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon12:
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} true;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_i3 := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_i3 + 1;
    assert {:sourceloc "Sanity.java", 8, -1, -1, -1} true;
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon12_dummy;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon16_Else:
    assume {:partition} inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$i2
   > inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_i3;
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon12;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon9:
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$i2 := unsafe.$intArrHeap[inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_r0][0];
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} true;
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon16_Then, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon16_Else;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon16_Then:
    assume {:partition} inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_i3
   >= inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$i2;
    assert {:sourceloc "Sanity.java", 6, -1, -1, -1} {:comment "thenblock"} true;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$return, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$exception, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$fakelocal_1, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_i3, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$i2 := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$return, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$exception, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$fakelocal_1, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_i3, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_$i2;
    unsafe.$objIndex, unsafe.$heap := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$$objIndex, inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$$heap;
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$Return;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon15_Then:
    assume {:partition} 0
     < unsafe.$arrSizeHeap[inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$in_r0]
   && 0 >= 0;
    inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$exception := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$exception;
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon9;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$anon12_dummy:
    assume false;
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$Return;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$exit:
    goto inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$Return;

  inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$Return:
    out_$return := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$return;
    out_$exception := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$exception;
    out_$fakelocal_1 := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$fakelocal_1;
    out_i3 := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_i3;
    out_$i2 := inline$Sanity$notaint_unsafe$int$lp$$rp$_int_loop_block3$0$out_$i2;
    goto anon12_dummy$1;

  anon12_dummy$1:
    return;

  exit:
    return;
}



implementation unsafe.Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6(in_i1: int, in_i0: int) returns (out_i1: int)
{
  var inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$in_i1: int;
  var inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$in_i0: int;
  var inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$out_i1: int;

  entry:
    out_i1 := in_i1;
    goto block6;

  block6:
    assert {:sourceloc "Sanity.java", 12, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} out_i1 >= in_i0;
    assert {:sourceloc "Sanity.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    out_i1 := in_i1;
    return;

  anon6:
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} true;
    out_i1 := out_i1 + 1;
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} true;
    goto anon6_dummy;

  anon8_Else:
    assume {:partition} in_i0 > out_i1;
    assert {:sourceloc "Sanity.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6_dummy:
    goto inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$Entry;

  inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$Entry:
    inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$in_i1 := out_i1;
    inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$in_i0 := in_i0;
    havoc inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$out_i1;
    goto inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$entry;

  inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$entry:
    inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$out_i1 := inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$in_i1;
    goto inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$block6;

  inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$block6:
    assert {:sourceloc "Sanity.java", 12, -1, -1, -1} true;
    goto inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$anon8_Then, inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$anon8_Else;

  inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$anon8_Then:
    assume {:partition} inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$out_i1
   >= inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$in_i0;
    assert {:sourceloc "Sanity.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$out_i1 := inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$in_i1;
    goto inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$Return;

  inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$anon6:
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} true;
    inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$out_i1 := inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$out_i1 + 1;
    assert {:sourceloc "Sanity.java", 14, -1, -1, -1} true;
    goto inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$anon6_dummy;

  inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$anon8_Else:
    assume {:partition} inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$in_i0
   > inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$out_i1;
    assert {:sourceloc "Sanity.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$anon6;

  inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$anon6_dummy:
    assume false;
    goto inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$Return;

  inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$exit:
    goto inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$Return;

  inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$Return:
    out_i1 := inline$Sanity$nosecret_safe$int$lp$$rp$_int_loop_block6$0$out_i1;
    goto anon6_dummy$1;

  anon6_dummy$1:
    return;

  exit:
    return;
}



implementation unsafe.Sanity$sanity_safe$int_int_loop_block12(in_i2: int) returns (out_i2: int)
{
  var inline$Sanity$sanity_safe$int_int_loop_block12$0$in_i2: int;
  var inline$Sanity$sanity_safe$int_int_loop_block12$0$out_i2: int;

  entry:
    out_i2 := in_i2;
    goto block12;

  block12:
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Then:
    assume {:partition} out_i2 <= 0;
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} {:comment "thenblock"} true;
    out_i2 := in_i2;
    return;

  anon23:
    assert {:sourceloc "Sanity.java", 56, -1, -1, -1} true;
    out_i2 := out_i2 + -1;
    assert {:sourceloc "Sanity.java", 56, -1, -1, -1} true;
    goto anon23_dummy;

  anon34_Else:
    assume {:partition} 0 < out_i2;
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} {:comment "elseblock"} true;
    goto anon23;

  anon23_dummy:
    goto inline$Sanity$sanity_safe$int_int_loop_block12$0$Entry;

  inline$Sanity$sanity_safe$int_int_loop_block12$0$Entry:
    inline$Sanity$sanity_safe$int_int_loop_block12$0$in_i2 := out_i2;
    havoc inline$Sanity$sanity_safe$int_int_loop_block12$0$out_i2;
    goto inline$Sanity$sanity_safe$int_int_loop_block12$0$entry;

  inline$Sanity$sanity_safe$int_int_loop_block12$0$entry:
    inline$Sanity$sanity_safe$int_int_loop_block12$0$out_i2 := inline$Sanity$sanity_safe$int_int_loop_block12$0$in_i2;
    goto inline$Sanity$sanity_safe$int_int_loop_block12$0$block12;

  inline$Sanity$sanity_safe$int_int_loop_block12$0$block12:
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} true;
    goto inline$Sanity$sanity_safe$int_int_loop_block12$0$anon34_Then, inline$Sanity$sanity_safe$int_int_loop_block12$0$anon34_Else;

  inline$Sanity$sanity_safe$int_int_loop_block12$0$anon34_Then:
    assume {:partition} inline$Sanity$sanity_safe$int_int_loop_block12$0$out_i2 <= 0;
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} {:comment "thenblock"} true;
    inline$Sanity$sanity_safe$int_int_loop_block12$0$out_i2 := inline$Sanity$sanity_safe$int_int_loop_block12$0$in_i2;
    goto inline$Sanity$sanity_safe$int_int_loop_block12$0$Return;

  inline$Sanity$sanity_safe$int_int_loop_block12$0$anon23:
    assert {:sourceloc "Sanity.java", 56, -1, -1, -1} true;
    inline$Sanity$sanity_safe$int_int_loop_block12$0$out_i2 := inline$Sanity$sanity_safe$int_int_loop_block12$0$out_i2 + -1;
    assert {:sourceloc "Sanity.java", 56, -1, -1, -1} true;
    goto inline$Sanity$sanity_safe$int_int_loop_block12$0$anon23_dummy;

  inline$Sanity$sanity_safe$int_int_loop_block12$0$anon34_Else:
    assume {:partition} 0 < inline$Sanity$sanity_safe$int_int_loop_block12$0$out_i2;
    assert {:sourceloc "Sanity.java", 55, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Sanity$sanity_safe$int_int_loop_block12$0$anon23;

  inline$Sanity$sanity_safe$int_int_loop_block12$0$anon23_dummy:
    assume false;
    goto inline$Sanity$sanity_safe$int_int_loop_block12$0$Return;

  inline$Sanity$sanity_safe$int_int_loop_block12$0$exit:
    goto inline$Sanity$sanity_safe$int_int_loop_block12$0$Return;

  inline$Sanity$sanity_safe$int_int_loop_block12$0$Return:
    out_i2 := inline$Sanity$sanity_safe$int_int_loop_block12$0$out_i2;
    goto anon23_dummy$1;

  anon23_dummy$1:
    return;

  exit:
    return;
}



implementation unsafe.Sanity$sanity_safe$int_int_loop_block11(in_i3: int) returns (out_i3: int)
{
  var inline$Sanity$sanity_safe$int_int_loop_block11$0$in_i3: int;
  var inline$Sanity$sanity_safe$int_int_loop_block11$0$out_i3: int;

  entry:
    out_i3 := in_i3;
    goto block11;

  block11:
    assert {:sourceloc "Sanity.java", 59, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Then:
    assume {:partition} out_i3 <= 0;
    assert {:sourceloc "Sanity.java", 59, -1, -1, -1} {:comment "thenblock"} true;
    out_i3 := in_i3;
    return;

  anon26:
    assert {:sourceloc "Sanity.java", 60, -1, -1, -1} true;
    out_i3 := out_i3 + -1;
    assert {:sourceloc "Sanity.java", 60, -1, -1, -1} true;
    goto anon26_dummy;

  anon35_Else:
    assume {:partition} 0 < out_i3;
    assert {:sourceloc "Sanity.java", 59, -1, -1, -1} {:comment "elseblock"} true;
    goto anon26;

  anon26_dummy:
    goto inline$Sanity$sanity_safe$int_int_loop_block11$0$Entry;

  inline$Sanity$sanity_safe$int_int_loop_block11$0$Entry:
    inline$Sanity$sanity_safe$int_int_loop_block11$0$in_i3 := out_i3;
    havoc inline$Sanity$sanity_safe$int_int_loop_block11$0$out_i3;
    goto inline$Sanity$sanity_safe$int_int_loop_block11$0$entry;

  inline$Sanity$sanity_safe$int_int_loop_block11$0$entry:
    inline$Sanity$sanity_safe$int_int_loop_block11$0$out_i3 := inline$Sanity$sanity_safe$int_int_loop_block11$0$in_i3;
    goto inline$Sanity$sanity_safe$int_int_loop_block11$0$block11;

  inline$Sanity$sanity_safe$int_int_loop_block11$0$block11:
    assert {:sourceloc "Sanity.java", 59, -1, -1, -1} true;
    goto inline$Sanity$sanity_safe$int_int_loop_block11$0$anon35_Then, inline$Sanity$sanity_safe$int_int_loop_block11$0$anon35_Else;

  inline$Sanity$sanity_safe$int_int_loop_block11$0$anon35_Then:
    assume {:partition} inline$Sanity$sanity_safe$int_int_loop_block11$0$out_i3 <= 0;
    assert {:sourceloc "Sanity.java", 59, -1, -1, -1} {:comment "thenblock"} true;
    inline$Sanity$sanity_safe$int_int_loop_block11$0$out_i3 := inline$Sanity$sanity_safe$int_int_loop_block11$0$in_i3;
    goto inline$Sanity$sanity_safe$int_int_loop_block11$0$Return;

  inline$Sanity$sanity_safe$int_int_loop_block11$0$anon26:
    assert {:sourceloc "Sanity.java", 60, -1, -1, -1} true;
    inline$Sanity$sanity_safe$int_int_loop_block11$0$out_i3 := inline$Sanity$sanity_safe$int_int_loop_block11$0$out_i3 + -1;
    assert {:sourceloc "Sanity.java", 60, -1, -1, -1} true;
    goto inline$Sanity$sanity_safe$int_int_loop_block11$0$anon26_dummy;

  inline$Sanity$sanity_safe$int_int_loop_block11$0$anon35_Else:
    assume {:partition} 0 < inline$Sanity$sanity_safe$int_int_loop_block11$0$out_i3;
    assert {:sourceloc "Sanity.java", 59, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Sanity$sanity_safe$int_int_loop_block11$0$anon26;

  inline$Sanity$sanity_safe$int_int_loop_block11$0$anon26_dummy:
    assume false;
    goto inline$Sanity$sanity_safe$int_int_loop_block11$0$Return;

  inline$Sanity$sanity_safe$int_int_loop_block11$0$exit:
    goto inline$Sanity$sanity_safe$int_int_loop_block11$0$Return;

  inline$Sanity$sanity_safe$int_int_loop_block11$0$Return:
    out_i3 := inline$Sanity$sanity_safe$int_int_loop_block11$0$out_i3;
    goto anon26_dummy$1;

  anon26_dummy$1:
    return;

  exit:
    return;
}



implementation unsafe.Sanity$sanity_unsafe$int_int_loop_block16(in_i3: int) returns (out_i3: int)
{
  var inline$Sanity$sanity_unsafe$int_int_loop_block16$0$in_i3: int;
  var inline$Sanity$sanity_unsafe$int_int_loop_block16$0$out_i3: int;

  entry:
    out_i3 := in_i3;
    goto block16;

  block16:
    assert {:sourceloc "Sanity.java", 75, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} out_i3 <= 0;
    assert {:sourceloc "Sanity.java", 75, -1, -1, -1} {:comment "thenblock"} true;
    out_i3 := in_i3;
    return;

  anon9:
    assert {:sourceloc "Sanity.java", 76, -1, -1, -1} true;
    out_i3 := out_i3 + -1;
    assert {:sourceloc "Sanity.java", 76, -1, -1, -1} true;
    goto anon9_dummy;

  anon12_Else:
    assume {:partition} 0 < out_i3;
    assert {:sourceloc "Sanity.java", 75, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9_dummy:
    goto inline$Sanity$sanity_unsafe$int_int_loop_block16$0$Entry;

  inline$Sanity$sanity_unsafe$int_int_loop_block16$0$Entry:
    inline$Sanity$sanity_unsafe$int_int_loop_block16$0$in_i3 := out_i3;
    havoc inline$Sanity$sanity_unsafe$int_int_loop_block16$0$out_i3;
    goto inline$Sanity$sanity_unsafe$int_int_loop_block16$0$entry;

  inline$Sanity$sanity_unsafe$int_int_loop_block16$0$entry:
    inline$Sanity$sanity_unsafe$int_int_loop_block16$0$out_i3 := inline$Sanity$sanity_unsafe$int_int_loop_block16$0$in_i3;
    goto inline$Sanity$sanity_unsafe$int_int_loop_block16$0$block16;

  inline$Sanity$sanity_unsafe$int_int_loop_block16$0$block16:
    assert {:sourceloc "Sanity.java", 75, -1, -1, -1} true;
    goto inline$Sanity$sanity_unsafe$int_int_loop_block16$0$anon12_Then, inline$Sanity$sanity_unsafe$int_int_loop_block16$0$anon12_Else;

  inline$Sanity$sanity_unsafe$int_int_loop_block16$0$anon12_Then:
    assume {:partition} inline$Sanity$sanity_unsafe$int_int_loop_block16$0$out_i3 <= 0;
    assert {:sourceloc "Sanity.java", 75, -1, -1, -1} {:comment "thenblock"} true;
    inline$Sanity$sanity_unsafe$int_int_loop_block16$0$out_i3 := inline$Sanity$sanity_unsafe$int_int_loop_block16$0$in_i3;
    goto inline$Sanity$sanity_unsafe$int_int_loop_block16$0$Return;

  inline$Sanity$sanity_unsafe$int_int_loop_block16$0$anon9:
    assert {:sourceloc "Sanity.java", 76, -1, -1, -1} true;
    inline$Sanity$sanity_unsafe$int_int_loop_block16$0$out_i3 := inline$Sanity$sanity_unsafe$int_int_loop_block16$0$out_i3 + -1;
    assert {:sourceloc "Sanity.java", 76, -1, -1, -1} true;
    goto inline$Sanity$sanity_unsafe$int_int_loop_block16$0$anon9_dummy;

  inline$Sanity$sanity_unsafe$int_int_loop_block16$0$anon12_Else:
    assume {:partition} 0 < inline$Sanity$sanity_unsafe$int_int_loop_block16$0$out_i3;
    assert {:sourceloc "Sanity.java", 75, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Sanity$sanity_unsafe$int_int_loop_block16$0$anon9;

  inline$Sanity$sanity_unsafe$int_int_loop_block16$0$anon9_dummy:
    assume false;
    goto inline$Sanity$sanity_unsafe$int_int_loop_block16$0$Return;

  inline$Sanity$sanity_unsafe$int_int_loop_block16$0$exit:
    goto inline$Sanity$sanity_unsafe$int_int_loop_block16$0$Return;

  inline$Sanity$sanity_unsafe$int_int_loop_block16$0$Return:
    out_i3 := inline$Sanity$sanity_unsafe$int_int_loop_block16$0$out_i3;
    goto anon9_dummy$1;

  anon9_dummy$1:
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
