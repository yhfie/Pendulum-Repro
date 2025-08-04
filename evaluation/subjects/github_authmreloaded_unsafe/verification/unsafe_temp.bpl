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

var unsafe.boolean$fr.xephi.authme.security.crypts.UnsaltedMethod$safeMode0: Field int;

var unsafe.char$lp$$rp$$java.lang.String$chars300: Field ref;

var unsafe.boolean$java.lang.Boolean$value0: Field int;

const unique unsafe.$type: Field javaType;

const unique unsafe.$alloc: Field bool;

const unique unsafe.$null: ref;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique unsafe.java.lang.Object: javaType extends complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique unsafe.fr.xephi.authme.security.crypts.EncryptionMethod: javaType extends complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod: javaType extends unique unsafe.java.lang.Object, unsafe.fr.xephi.authme.security.crypts.EncryptionMethod complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique unsafe.java.io.Serializable: javaType extends complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique unsafe.java.lang.Comparable: javaType extends complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique unsafe.java.lang.CharSequence: javaType extends complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique unsafe.fr.xephi.authme.security.crypts.HashedPassword: javaType extends complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique unsafe.java.lang.Throwable: javaType extends unique unsafe.java.lang.Object, unsafe.java.io.Serializable complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique unsafe.java.lang.Exception: javaType extends unique unsafe.java.lang.Throwable complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique unsafe.java.lang.RuntimeException: javaType extends unique unsafe.java.lang.Exception complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique unsafe.java.lang.ClassCastException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique unsafe.java.lang.IndexOutOfBoundsException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique unsafe.java.lang.ArrayIndexOutOfBoundsException: javaType extends unique unsafe.java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unique unsafe.java.lang.NullPointerException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique unsafe.java.lang.String: javaType extends unique unsafe.java.lang.Object complete;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique unsafe.java.lang.Boolean: javaType extends unique unsafe.java.lang.Object complete;

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
  free ensures unsafe.$objIndex == old(unsafe.$objIndex) + 1;
  free ensures $obj != unsafe.$null;
  free ensures !old(unsafe.$heap[$obj, unsafe.$alloc]);
  free ensures unsafe.$heap
   == old(unsafe.$heap)[$obj, unsafe.$alloc := true][$obj, unsafe.$type := obj_type];



procedure {:prefix "unsafe"} unsafe.java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  free ensures $other != unsafe.$null;
  free ensures unsafe.$heap[$other, unsafe.$type] == unsafe.$heap[$this, unsafe.$type];
  free ensures unsafe.$heap[$other, unsafe.$alloc] <==> true;



procedure {:prefix "unsafe"} unsafe.int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure {:prefix "unsafe"} unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$$la$init$ra$$($this: ref) returns ($exception: ref);
  modifies unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.fr.xephi.authme.security.crypts.HashedPassword$$la$init$ra$$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String_java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);
  modifies unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$comparePassword$java.lang.String_fr.xephi.authme.security.crypts.HashedPassword_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.fr.xephi.authme.security.crypts.HashedPassword$getHash$($this: ref) returns ($return: ref, $exception: ref);



procedure {:prefix "unsafe"} unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$generateSalt$($this: ref) returns ($return: ref, $exception: ref);



procedure {:prefix "unsafe"} unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$hasSeparateSalt$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.String$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.String$toCharArray$($this: ref) returns ($return: ref, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_1: ref, 
    in_$c3: int, 
    in_r4: ref, 
    in_$fakelocal_2: ref, 
    in_$c2: int, 
    in_r5: ref, 
    in_i5: int, 
    in_i4: int, 
    in_$i1: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_1: ref, 
    out_$c3: int, 
    out_$fakelocal_2: ref, 
    out_$c2: int, 
    out_i5: int, 
    out_i4: int, 
    out_$i1: int);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_3: ref, 
    in_$b3: int, 
    in_$i2: int, 
    in_$b4: int, 
    in_i7: int, 
    in_$fakelocal_4: ref, 
    in_$b5: int, 
    in_r1: ref, 
    in_b6: int, 
    in_$fakelocal_2: ref, 
    in_r0: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_3: ref, 
    out_$b3: int, 
    out_$i2: int, 
    out_$b4: int, 
    out_i7: int, 
    out_$fakelocal_4: ref, 
    out_$b5: int, 
    out_b6: int, 
    out_$fakelocal_2: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



implementation unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type]
   <: unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod;
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "UnsaltedMethod.java", 16, -1, -1, -1} true;
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
    assert {:sourceloc "UnsaltedMethod.java", 19, -1, -1, -1} true;
    unsafe.$heap := unsafe.$heap[r0, unsafe.boolean$fr.xephi.authme.security.crypts.UnsaltedMethod$safeMode0 := 0];
    assert {:sourceloc "UnsaltedMethod.java", 19, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref)
{
  var $r4: ref;
  var $fakelocal_0: ref;
  var r2: ref;
  var r0: ref;
  var $r3: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type]
   <: unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod;
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $this != unsafe.$null;
    assume unsafe.$heap[$in_parameter__0, unsafe.$type] <: unsafe.java.lang.String;
    assume unsafe.$heap[$in_parameter__1, unsafe.$type] <: unsafe.java.lang.String;
    assume unsafe.$heap[$return, unsafe.$type]
   <: unsafe.fr.xephi.authme.security.crypts.HashedPassword;
    $exception := unsafe.$null;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "UnsaltedMethod.java", 25, -1, -1, -1} true;
    call $fakelocal_0 := unsafe.$new(unsafe.fr.xephi.authme.security.crypts.HashedPassword);
    $r3 := $fakelocal_0;
    assert {:sourceloc "UnsaltedMethod.java", 25, -1, -1, -1} true;
    call $r4, $exception := unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String(r0, r1);
    assert {:sourceloc "UnsaltedMethod.java", 25, -1, -1, -1} true;
    call $exception := unsafe.fr.xephi.authme.security.crypts.HashedPassword$$la$init$ra$$java.lang.String($r3, $r4);
    assert {:sourceloc "UnsaltedMethod.java", 25, -1, -1, -1} true;
    $return := $r3;
    goto block2;

  block2:
    return;
}



implementation unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String_java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var $r4: ref;
  var r2: ref;
  var r0: ref;
  var r3: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type]
   <: unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod;
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $this != unsafe.$null;
    assume unsafe.$heap[$in_parameter__1, unsafe.$type] <: unsafe.java.lang.String;
    assume unsafe.$heap[$return, unsafe.$type] <: unsafe.java.lang.String;
    assume unsafe.$heap[$in_parameter__2, unsafe.$type] <: unsafe.java.lang.String;
    assume unsafe.$heap[$in_parameter__0, unsafe.$type] <: unsafe.java.lang.String;
    $exception := unsafe.$null;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r3 := $in_parameter__2;
    assert {:sourceloc "UnsaltedMethod.java", 30, -1, -1, -1} true;
    call $r4, $exception := unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String(r0, r1);
    assert {:sourceloc "UnsaltedMethod.java", 30, -1, -1, -1} true;
    $return := $r4;
    goto block3;

  block3:
    return;
}



implementation unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$comparePassword$java.lang.String_fr.xephi.authme.security.crypts.HashedPassword_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: int, $exception: ref)
{
  var $r5: ref;
  var $fakelocal_0: ref;
  var $z0: int;
  var r0: ref;
  var r2: ref;
  var r1: ref;
  var $r4: ref;
  var r3: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r0: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_1: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$z0: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c3: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r4: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r3: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r1: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_2: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r2: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c2: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r5: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_0: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i4: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i1: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i0: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$this: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$in_parameter__0: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$in_parameter__1: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$objIndex: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$heap: $heap_type;
  var inline$java.lang.String$toCharArray$$0$r0: ref;
  var inline$java.lang.String$toCharArray$$0$$r1: ref;
  var inline$java.lang.String$toCharArray$$0$$this: ref;
  var inline$java.lang.String$toCharArray$$0$$return: ref;
  var inline$java.lang.String$toCharArray$$0$$exception: ref;
  var inline$java.lang.String$toCharArray$$1$r0: ref;
  var inline$java.lang.String$toCharArray$$1$$r1: ref;
  var inline$java.lang.String$toCharArray$$1$$this: ref;
  var inline$java.lang.String$toCharArray$$1$$return: ref;
  var inline$java.lang.String$toCharArray$$1$$exception: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type]
   <: unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod;
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $this != unsafe.$null;
    assume unsafe.$heap[$in_parameter__1, unsafe.$type]
   <: unsafe.fr.xephi.authme.security.crypts.HashedPassword;
    assume unsafe.$heap[$in_parameter__0, unsafe.$type] <: unsafe.java.lang.String;
    assume unsafe.$heap[$in_parameter__2, unsafe.$type] <: unsafe.java.lang.String;
    $exception := unsafe.$null;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r3 := $in_parameter__2;
    assert {:sourceloc "UnsaltedMethod.java", 39, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} r2 == unsafe.$null;
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon4_Then:
    assume {:partition} r2 != unsafe.$null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $r4, $exception := unsafe.fr.xephi.authme.security.crypts.HashedPassword$getHash$(r2);
    assert {:sourceloc "UnsaltedMethod.java", 39, -1, -1, -1} true;
    call $r5, $exception := unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$computeHash$java.lang.String(r0, r1);
    assert {:sourceloc "UnsaltedMethod.java", 39, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$Entry;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$Entry:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$this := r0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$in_parameter__0 := $r4;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$in_parameter__1 := $r5;
    havoc inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r0, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$z0, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_0, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i0, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$objIndex := unsafe.$objIndex;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$heap := unsafe.$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon0;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unsafe.$heap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$this, unsafe.$type]
   <: unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod;
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$this
   != unsafe.$null;
    assume unsafe.$heap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$in_parameter__0, unsafe.$type]
   <: unsafe.java.lang.String;
    assume unsafe.$heap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$in_parameter__1, unsafe.$type]
   <: unsafe.java.lang.Object;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception := unsafe.$null;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r0 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$this;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$in_parameter__0;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$in_parameter__1;
    assert {:sourceloc "UnsaltedMethod.java", 55, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon25_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon25_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon25_Else:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r1
   == inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r2;
    assert {:sourceloc "UnsaltedMethod.java", 55, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon3;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon3:
    assert {:sourceloc "UnsaltedMethod.java", 56, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return := 1;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block12;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block12:
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon25_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r1
   != inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r2;
    assert {:sourceloc "UnsaltedMethod.java", 55, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block7;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block7:
    assert {:sourceloc "UnsaltedMethod.java", 58, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$z0 := unsafe.$boolToInt(inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r2
       != unsafe.$null
     && unsafe.$heap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r2, unsafe.$type]
       <: unsafe.java.lang.String);
    assert {:sourceloc "UnsaltedMethod.java", 58, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon26_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon26_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon26_Else:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$z0
   != 0;
    assert {:sourceloc "UnsaltedMethod.java", 58, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon6;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon6:
    assert {:sourceloc "UnsaltedMethod.java", 59, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon27_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon27_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon27_Else:
    assume {:partition} !(unsafe.$heap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r2, unsafe.$type]
   <: unsafe.java.lang.String);
    call inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_0 := unsafe.$new(unsafe.java.lang.ClassCastException);
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return := 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_0;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon27_Then:
    assume {:partition} unsafe.$heap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r2, unsafe.$type]
   <: unsafe.java.lang.String;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon9;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon9:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r3 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r2;
    assert {:sourceloc "UnsaltedMethod.java", 60, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i4 := unsafe.$stringSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r1];
    assert {:sourceloc "UnsaltedMethod.java", 61, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i0 := unsafe.$stringSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r3];
    assert {:sourceloc "UnsaltedMethod.java", 61, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon28_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon28_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon28_Else:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i4
   == inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i0;
    assert {:sourceloc "UnsaltedMethod.java", 61, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon12;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon12:
    assert {:sourceloc "UnsaltedMethod.java", 62, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$Entry;

  inline$java.lang.String$toCharArray$$0$Entry:
    inline$java.lang.String$toCharArray$$0$$this := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r1;
    havoc inline$java.lang.String$toCharArray$$0$r0, inline$java.lang.String$toCharArray$$0$$r1, inline$java.lang.String$toCharArray$$0$$return, inline$java.lang.String$toCharArray$$0$$exception;
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
    inline$java.lang.String$toCharArray$$0$$r1 := unsafe.$heap[inline$java.lang.String$toCharArray$$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$$return := inline$java.lang.String$toCharArray$$0$$r1;
    goto inline$java.lang.String$toCharArray$$0$block24;

  inline$java.lang.String$toCharArray$$0$block24:
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$Return:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r4 := inline$java.lang.String$toCharArray$$0$$return;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception := inline$java.lang.String$toCharArray$$0$$exception;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon12$1;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon12$1:
    assert {:sourceloc "UnsaltedMethod.java", 63, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$Entry;

  inline$java.lang.String$toCharArray$$1$Entry:
    inline$java.lang.String$toCharArray$$1$$this := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r3;
    havoc inline$java.lang.String$toCharArray$$1$r0, inline$java.lang.String$toCharArray$$1$$r1, inline$java.lang.String$toCharArray$$1$$return, inline$java.lang.String$toCharArray$$1$$exception;
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
    inline$java.lang.String$toCharArray$$1$$r1 := unsafe.$heap[inline$java.lang.String$toCharArray$$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$$return := inline$java.lang.String$toCharArray$$1$$r1;
    goto inline$java.lang.String$toCharArray$$1$block24;

  inline$java.lang.String$toCharArray$$1$block24:
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$Return:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r5 := inline$java.lang.String$toCharArray$$1$$return;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception := inline$java.lang.String$toCharArray$$1$$exception;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon12$2;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon12$2:
    assert {:sourceloc "UnsaltedMethod.java", 64, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5 := 0;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block9;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block9:
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Entry;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Entry:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_1;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c3;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r4;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_2;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c2;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r5;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i4;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i1;
    havoc inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex := unsafe.$objIndex;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap := unsafe.$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$entry;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$entry:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block9;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block9:
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4
   + -1;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1
   == 0;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} {:comment "thenblock"} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11:
    assert {:sourceloc "UnsaltedMethod.java", 68, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
   + 1;
    assert {:sourceloc "UnsaltedMethod.java", 68, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11_dummy;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3
   == inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon21:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := unsafe.$intArrHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5][inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5];
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Else:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3
   != inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} {:comment "elseblock"} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon21;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon18:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3 := unsafe.$intArrHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4][inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5];
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Else:
    assume {:partition} !(inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0);
    call inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return := 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon18;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon15:
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Else:
    assume {:partition} !(inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0);
    call inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return := 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Else:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1
   != 0;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon15;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11_dummy:
    assume false;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$exit:
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c3 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i4 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block9$1;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block9$1:
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block9_last;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon29_Else:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i1
   != 0;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon15;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon15:
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon30_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon30_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon30_Else:
    assume {:partition} !(inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r4]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5
     >= 0);
    call inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return := 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_1;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon30_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r4]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5
     >= 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon18;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon18:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c3 := unsafe.$intArrHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r4][inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5];
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon31_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon31_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon31_Else:
    assume {:partition} !(inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r5]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5
     >= 0);
    call inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return := 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_2;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon31_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r5]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5
     >= 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon21;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon21:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c2 := unsafe.$intArrHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$r5][inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5];
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon32_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon32_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon32_Else:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c3
   != inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c2;
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon24;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon24:
    assert {:sourceloc "UnsaltedMethod.java", 67, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return := 0;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block12;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon32_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c3
   == inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c2;
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block11;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block11:
    assert {:sourceloc "UnsaltedMethod.java", 68, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5
   + 1;
    assert {:sourceloc "UnsaltedMethod.java", 68, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block11_dummy;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon29_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i1
   == 0;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block10;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block10:
    assert {:sourceloc "UnsaltedMethod.java", 70, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return := 1;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block12;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon28_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i4
   != inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i0;
    assert {:sourceloc "UnsaltedMethod.java", 61, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block8;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block8:
    assert {:sourceloc "UnsaltedMethod.java", 73, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return := 0;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block12;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon26_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$z0
   == 0;
    assert {:sourceloc "UnsaltedMethod.java", 58, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block8;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block11_dummy:
    assume false;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$block9_last:
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i4;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i4 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$i4
   + -1;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon29_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon29_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$Return:
    $z0 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return;
    $exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception;
    goto anon3$1;

  anon3$1:
    assert {:sourceloc "UnsaltedMethod.java", 39, -1, -1, -1} true;
    $return := $z0;
    goto block4;

  block4:
    return;
}



implementation unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$generateSalt$($this: ref) returns ($return: ref, $exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type]
   <: unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod;
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $this != unsafe.$null;
    assume unsafe.$heap[$return, unsafe.$type] <: unsafe.java.lang.String;
    $exception := unsafe.$null;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "UnsaltedMethod.java", 45, -1, -1, -1} true;
    $return := unsafe.$null;
    goto block5;

  block5:
    return;
}



implementation unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$hasSeparateSalt$($this: ref) returns ($return: int, $exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type]
   <: unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod;
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "UnsaltedMethod.java", 50, -1, -1, -1} true;
    $return := 0;
    goto block6;

  block6:
    return;
}



implementation unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $fakelocal_1: ref;
  var $z0: int;
  var $c3: int;
  var r4: ref;
  var r3: ref;
  var r1: ref;
  var $fakelocal_2: ref;
  var r2: ref;
  var $c2: int;
  var r5: ref;
  var $fakelocal_0: ref;
  var i5: int;
  var i4: int;
  var $i1: int;
  var $i0: int;
  var inline$java.lang.String$toCharArray$$0$r0: ref;
  var inline$java.lang.String$toCharArray$$0$$r1: ref;
  var inline$java.lang.String$toCharArray$$0$$this: ref;
  var inline$java.lang.String$toCharArray$$0$$return: ref;
  var inline$java.lang.String$toCharArray$$0$$exception: ref;
  var inline$java.lang.String$toCharArray$$1$r0: ref;
  var inline$java.lang.String$toCharArray$$1$$r1: ref;
  var inline$java.lang.String$toCharArray$$1$$this: ref;
  var inline$java.lang.String$toCharArray$$1$$return: ref;
  var inline$java.lang.String$toCharArray$$1$$exception: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type]
   <: unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod;
    assume {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} $this != unsafe.$null;
    assume unsafe.$heap[$in_parameter__0, unsafe.$type] <: unsafe.java.lang.String;
    assume unsafe.$heap[$in_parameter__1, unsafe.$type] <: unsafe.java.lang.Object;
    $exception := unsafe.$null;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "UnsaltedMethod.java", 55, -1, -1, -1} true;
    goto anon25_Then, anon25_Else;

  anon25_Else:
    assume {:partition} r1 == r2;
    assert {:sourceloc "UnsaltedMethod.java", 55, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "UnsaltedMethod.java", 56, -1, -1, -1} true;
    $return := 1;
    goto block12;

  block12:
    return;

  anon25_Then:
    assume {:partition} r1 != r2;
    assert {:sourceloc "UnsaltedMethod.java", 55, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  block7:
    assert {:sourceloc "UnsaltedMethod.java", 58, -1, -1, -1} true;
    $z0 := unsafe.$boolToInt(r2 != unsafe.$null && unsafe.$heap[r2, unsafe.$type] <: unsafe.java.lang.String);
    assert {:sourceloc "UnsaltedMethod.java", 58, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "UnsaltedMethod.java", 58, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "UnsaltedMethod.java", 59, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} !(unsafe.$heap[r2, unsafe.$type] <: unsafe.java.lang.String);
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon27_Then:
    assume {:partition} unsafe.$heap[r2, unsafe.$type] <: unsafe.java.lang.String;
    $exception := $exception;
    goto anon9;

  anon9:
    r3 := r2;
    assert {:sourceloc "UnsaltedMethod.java", 60, -1, -1, -1} true;
    i4 := unsafe.$stringSizeHeap[r1];
    assert {:sourceloc "UnsaltedMethod.java", 61, -1, -1, -1} true;
    $i0 := unsafe.$stringSizeHeap[r3];
    assert {:sourceloc "UnsaltedMethod.java", 61, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} i4 == $i0;
    assert {:sourceloc "UnsaltedMethod.java", 61, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "UnsaltedMethod.java", 62, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$Entry;

  inline$java.lang.String$toCharArray$$0$Entry:
    inline$java.lang.String$toCharArray$$0$$this := r1;
    havoc inline$java.lang.String$toCharArray$$0$r0, inline$java.lang.String$toCharArray$$0$$r1, inline$java.lang.String$toCharArray$$0$$return, inline$java.lang.String$toCharArray$$0$$exception;
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
    inline$java.lang.String$toCharArray$$0$$r1 := unsafe.$heap[inline$java.lang.String$toCharArray$$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$$return := inline$java.lang.String$toCharArray$$0$$r1;
    goto inline$java.lang.String$toCharArray$$0$block24;

  inline$java.lang.String$toCharArray$$0$block24:
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$Return:
    r4 := inline$java.lang.String$toCharArray$$0$$return;
    $exception := inline$java.lang.String$toCharArray$$0$$exception;
    goto anon12$1;

  anon12$1:
    assert {:sourceloc "UnsaltedMethod.java", 63, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$Entry;

  inline$java.lang.String$toCharArray$$1$Entry:
    inline$java.lang.String$toCharArray$$1$$this := r3;
    havoc inline$java.lang.String$toCharArray$$1$r0, inline$java.lang.String$toCharArray$$1$$r1, inline$java.lang.String$toCharArray$$1$$return, inline$java.lang.String$toCharArray$$1$$exception;
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
    inline$java.lang.String$toCharArray$$1$$r1 := unsafe.$heap[inline$java.lang.String$toCharArray$$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$$return := inline$java.lang.String$toCharArray$$1$$r1;
    goto inline$java.lang.String$toCharArray$$1$block24;

  inline$java.lang.String$toCharArray$$1$block24:
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$Return:
    r5 := inline$java.lang.String$toCharArray$$1$$return;
    $exception := inline$java.lang.String$toCharArray$$1$$exception;
    goto anon12$2;

  anon12$2:
    assert {:sourceloc "UnsaltedMethod.java", 64, -1, -1, -1} true;
    i5 := 0;
    goto block9;

  block9:
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Entry;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Entry:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return := $return;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception := $exception;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1 := $fakelocal_1;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3 := $c3;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4 := r4;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2 := $fakelocal_2;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2 := $c2;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5 := r5;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5 := i5;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4 := i4;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1 := $i1;
    havoc inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex := unsafe.$objIndex;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap := unsafe.$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$entry;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$entry:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block9;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block9:
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4
   + -1;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1
   == 0;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} {:comment "thenblock"} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11:
    assert {:sourceloc "UnsaltedMethod.java", 68, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
   + 1;
    assert {:sourceloc "UnsaltedMethod.java", 68, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11_dummy;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3
   == inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon21:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := unsafe.$intArrHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5][inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5];
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Else:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3
   != inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} {:comment "elseblock"} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon21;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon18:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3 := unsafe.$intArrHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4][inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5];
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Else:
    assume {:partition} !(inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0);
    call inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return := 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon18;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon15:
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Else:
    assume {:partition} !(inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0);
    call inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return := 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Else:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1
   != 0;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon15;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11_dummy:
    assume false;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$exit:
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return:
    $return := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return;
    $exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception;
    $fakelocal_1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1;
    $c3 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3;
    $fakelocal_2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2;
    $c2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    i5 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5;
    i4 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4;
    $i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1;
    goto block9$1;

  block9$1:
    goto block9_last;

  anon29_Else:
    assume {:partition} $i1 != 0;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(i5 < unsafe.$arrSizeHeap[r4] && i5 >= 0);
    call $fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon30_Then:
    assume {:partition} i5 < unsafe.$arrSizeHeap[r4] && i5 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $c3 := unsafe.$intArrHeap[r4][i5];
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(i5 < unsafe.$arrSizeHeap[r5] && i5 >= 0);
    call $fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon31_Then:
    assume {:partition} i5 < unsafe.$arrSizeHeap[r5] && i5 >= 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $c2 := unsafe.$intArrHeap[r5][i5];
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} $c3 != $c2;
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} {:comment "elseblock"} true;
    goto anon24;

  anon24:
    assert {:sourceloc "UnsaltedMethod.java", 67, -1, -1, -1} true;
    $return := 0;
    goto block12;

  anon32_Then:
    assume {:partition} $c3 == $c2;
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  block11:
    assert {:sourceloc "UnsaltedMethod.java", 68, -1, -1, -1} true;
    i5 := i5 + 1;
    assert {:sourceloc "UnsaltedMethod.java", 68, -1, -1, -1} true;
    goto block11_dummy;

  anon29_Then:
    assume {:partition} $i1 == 0;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "UnsaltedMethod.java", 70, -1, -1, -1} true;
    $return := 1;
    goto block12;

  anon28_Then:
    assume {:partition} i4 != $i0;
    assert {:sourceloc "UnsaltedMethod.java", 61, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "UnsaltedMethod.java", 73, -1, -1, -1} true;
    $return := 0;
    goto block12;

  anon26_Then:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "UnsaltedMethod.java", 58, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block11_dummy:
    assume false;
    return;

  block9_last:
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    $i1 := i4;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    i4 := i4 + -1;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;
}



implementation unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $fakelocal_3: ref;
  var $b3: int;
  var $i2: int;
  var $b4: int;
  var i7: int;
  var $fakelocal_4: ref;
  var $i1: int;
  var $fakelocal_1: ref;
  var $b5: int;
  var $z0: int;
  var $fakelocal_0: ref;
  var r1: ref;
  var $i0: int;
  var b6: int;
  var $fakelocal_2: ref;
  var r0: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$return: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$exception: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_3: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b3: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$i2: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b4: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_i7: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_4: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b5: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r1: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_b6: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_2: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r0: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_3: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b3: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b4: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_4: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b5: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_b6: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_2: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$objIndex: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    $exception := unsafe.$null;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "UnsaltedMethod.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "UnsaltedMethod.java", 93, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "UnsaltedMethod.java", 93, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "UnsaltedMethod.java", 95, -1, -1, -1} true;
    $return := 1;
    goto block21;

  block21:
    return;

  anon33_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "UnsaltedMethod.java", 93, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  block13:
    assert {:sourceloc "UnsaltedMethod.java", 94, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} r0 != unsafe.$null;
    assert {:sourceloc "UnsaltedMethod.java", 94, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "UnsaltedMethod.java", 95, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} r1 == unsafe.$null;
    assert {:sourceloc "UnsaltedMethod.java", 95, -1, -1, -1} {:comment "elseblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "UnsaltedMethod.java", 95, -1, -1, -1} true;
    $return := 0;
    goto block21;

  anon35_Then:
    assume {:partition} r1 != unsafe.$null;
    assert {:sourceloc "UnsaltedMethod.java", 95, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  block15:
    assert {:sourceloc "UnsaltedMethod.java", 97, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} r0 == unsafe.$null;
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon36_Then:
    assume {:partition} r0 != unsafe.$null;
    $exception := $exception;
    goto anon11;

  anon11:
    $i1 := unsafe.$arrSizeHeap[r0];
    assert {:sourceloc "UnsaltedMethod.java", 97, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon37_Else:
    assume {:partition} r1 == unsafe.$null;
    call $fakelocal_1 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon37_Then:
    assume {:partition} r1 != unsafe.$null;
    $exception := $exception;
    goto anon14;

  anon14:
    $i0 := unsafe.$arrSizeHeap[r1];
    assert {:sourceloc "UnsaltedMethod.java", 97, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} $i1 != $i0;
    assert {:sourceloc "UnsaltedMethod.java", 97, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "UnsaltedMethod.java", 98, -1, -1, -1} true;
    $return := 0;
    goto block21;

  anon38_Then:
    assume {:partition} $i1 == $i0;
    assert {:sourceloc "UnsaltedMethod.java", 97, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  block16:
    assert {:sourceloc "UnsaltedMethod.java", 101, -1, -1, -1} true;
    b6 := 0;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    i7 := 0;
    goto block17;

  block17:
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$Entry;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$Entry:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$return := $return;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$exception := $exception;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_3 := $fakelocal_3;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b3 := $b3;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$i2 := $i2;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b4 := $b4;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_i7 := i7;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_4 := $fakelocal_4;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b5 := $b5;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r1 := r1;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_b6 := b6;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_2 := $fakelocal_2;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r0 := r0;
    havoc inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_2;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$objIndex := unsafe.$objIndex;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$heap := unsafe.$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$entry;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$entry:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_2;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$block17;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$block17:
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon39_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon39_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon39_Else:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r0
   == unsafe.$null;
    call inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return := 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_2;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$objIndex, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon29:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b3 := unsafe.$intArrHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r1][inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7];
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b5 := unsafe.$xorInt(inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b4, 
  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b3);
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_b6 := unsafe.$bitOr(inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_b6, 
  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b5);
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7
   + 1;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon29_dummy;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon42_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r1]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7
     >= 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon29;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon26:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b4 := unsafe.$intArrHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r0][inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7];
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon42_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon42_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon42_Else:
    assume {:partition} !(inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r1]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7
     >= 0);
    call inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return := 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_4;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$objIndex, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon41_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r0]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7
     >= 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon26;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon23:
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon41_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon41_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon41_Else:
    assume {:partition} !(inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r0]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7
     >= 0);
    call inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return := 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_3;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$objIndex, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon40_Else:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2
   > inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon23;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon20:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2 := unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r0];
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon40_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon40_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon40_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7
   >= inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} {:comment "thenblock"} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$objIndex, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon39_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r0
   != unsafe.$null;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon20;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon29_dummy:
    assume false;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$exit:
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$Return:
    $return := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return;
    $exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception;
    $fakelocal_3 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_3;
    $b3 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b3;
    $i2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2;
    $b4 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b4;
    i7 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7;
    $fakelocal_4 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_4;
    $b5 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b5;
    b6 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_b6;
    $fakelocal_2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_2;
    goto block17$1;

  block17$1:
    goto block17_last;

  anon39_Else:
    assume {:partition} r0 == unsafe.$null;
    call $fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon39_Then:
    assume {:partition} r0 != unsafe.$null;
    $exception := $exception;
    goto anon20;

  anon20:
    $i2 := unsafe.$arrSizeHeap[r0];
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Else:
    assume {:partition} $i2 > i7;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} {:comment "elseblock"} true;
    goto anon23;

  anon23:
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    goto anon41_Then, anon41_Else;

  anon41_Else:
    assume {:partition} !(i7 < unsafe.$arrSizeHeap[r0] && i7 >= 0);
    call $fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon41_Then:
    assume {:partition} i7 < unsafe.$arrSizeHeap[r0] && i7 >= 0;
    $exception := $exception;
    goto anon26;

  anon26:
    $b4 := unsafe.$intArrHeap[r0][i7];
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    goto anon42_Then, anon42_Else;

  anon42_Else:
    assume {:partition} !(i7 < unsafe.$arrSizeHeap[r1] && i7 >= 0);
    call $fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon42_Then:
    assume {:partition} i7 < unsafe.$arrSizeHeap[r1] && i7 >= 0;
    $exception := $exception;
    goto anon29;

  anon29:
    $b3 := unsafe.$intArrHeap[r1][i7];
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    $b5 := unsafe.$xorInt($b4, $b3);
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    b6 := unsafe.$bitOr(b6, $b5);
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    i7 := i7 + 1;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    goto anon29_dummy;

  anon40_Then:
    assume {:partition} i7 >= $i2;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} {:comment "thenblock"} true;
    goto block18;

  block18:
    assert {:sourceloc "UnsaltedMethod.java", 106, -1, -1, -1} true;
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} b6 == 0;
    assert {:sourceloc "UnsaltedMethod.java", 106, -1, -1, -1} {:comment "elseblock"} true;
    goto anon32;

  anon32:
    assert {:sourceloc "UnsaltedMethod.java", 106, -1, -1, -1} true;
    $z0 := 1;
    assert {:sourceloc "UnsaltedMethod.java", 106, -1, -1, -1} true;
    goto block20;

  block20:
    assert {:sourceloc "UnsaltedMethod.java", 106, -1, -1, -1} true;
    $return := $z0;
    goto block21;

  anon43_Then:
    assume {:partition} b6 != 0;
    assert {:sourceloc "UnsaltedMethod.java", 106, -1, -1, -1} {:comment "thenblock"} true;
    goto block19;

  block19:
    assert {:sourceloc "UnsaltedMethod.java", 106, -1, -1, -1} true;
    $z0 := 0;
    goto block20;

  anon34_Then:
    assume {:partition} r0 == unsafe.$null;
    assert {:sourceloc "UnsaltedMethod.java", 94, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  anon29_dummy:
    assume false;
    return;

  block17_last:
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;
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
    goto block22;

  block22:
    return;
}



implementation unsafe.java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var $c1: int;
  var $fakelocal_0: ref;
  var r0: ref;
  var $r1: ref;
  var i0: int;

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
    $r1 := unsafe.$heap[r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
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
    goto block23;

  block23:
    return;
}



implementation unsafe.java.lang.String$toCharArray$($this: ref) returns ($return: ref, $exception: ref)
{
  var r0: ref;
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
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    $r1 := unsafe.$heap[r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    $return := $r1;
    goto block24;

  block24:
    return;
}



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
    goto block25;

  block25:
    return;
}



implementation unsafe.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$block25;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$block25:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    $exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    $return := $r0;
    goto block26;

  block26:
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
    goto block27;

  block27:
    return;
}



implementation unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := unsafe.$null;
    return;
}



implementation unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_1: ref, 
    in_$c3: int, 
    in_r4: ref, 
    in_$fakelocal_2: ref, 
    in_$c2: int, 
    in_r5: ref, 
    in_i5: int, 
    in_i4: int, 
    in_$i1: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_1: ref, 
    out_$c3: int, 
    out_$fakelocal_2: ref, 
    out_$c2: int, 
    out_i5: int, 
    out_i4: int, 
    out_$i1: int)
{
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap: $heap_type;

  entry:
    out_$return, out_$exception, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2, out_i5, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_1, in_$c3, in_$fakelocal_2, in_$c2, in_i5, in_i4, in_$i1;
    goto block9;

  block9:
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    out_$i1 := out_i4;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    out_i4 := out_i4 + -1;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Then:
    assume {:partition} out_$i1 == 0;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2, out_i5, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_1, in_$c3, in_$fakelocal_2, in_$c2, in_i5, in_i4, in_$i1;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  block11:
    assert {:sourceloc "UnsaltedMethod.java", 68, -1, -1, -1} true;
    out_i5 := out_i5 + 1;
    assert {:sourceloc "UnsaltedMethod.java", 68, -1, -1, -1} true;
    goto block11_dummy;

  anon32_Then:
    assume {:partition} out_$c3 == out_$c2;
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  anon21:
    out_$c2 := unsafe.$intArrHeap[in_r5][out_i5];
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} out_$c3 != out_$c2;
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} {:comment "elseblock"} true;
    out_$return, out_$exception, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2, out_i5, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_1, in_$c3, in_$fakelocal_2, in_$c2, in_i5, in_i4, in_$i1;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon31_Then:
    assume {:partition} out_i5 < unsafe.$arrSizeHeap[in_r5] && out_i5 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    out_$c3 := unsafe.$intArrHeap[in_r4][out_i5];
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(out_i5 < unsafe.$arrSizeHeap[in_r5] && out_i5 >= 0);
    call out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2, out_i5, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_1, in_$c3, in_$fakelocal_2, in_$c2, in_i5, in_i4, in_$i1;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon30_Then:
    assume {:partition} out_i5 < unsafe.$arrSizeHeap[in_r4] && out_i5 >= 0;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(out_i5 < unsafe.$arrSizeHeap[in_r4] && out_i5 >= 0);
    call out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2, out_i5, out_i4, out_$i1 := in_$return, in_$exception, in_$fakelocal_1, in_$c3, in_$fakelocal_2, in_$c2, in_i5, in_i4, in_$i1;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon29_Else:
    assume {:partition} out_$i1 != 0;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  block11_dummy:
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Entry;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Entry:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return := out_$return;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception := out_$exception;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1 := out_$fakelocal_1;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3 := out_$c3;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4 := in_r4;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2 := out_$fakelocal_2;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2 := out_$c2;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5 := in_r5;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5 := out_i5;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4 := out_i4;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1 := out_$i1;
    havoc inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex := unsafe.$objIndex;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap := unsafe.$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$entry;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$entry:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block9;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block9:
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4
   + -1;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1
   == 0;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} {:comment "thenblock"} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11:
    assert {:sourceloc "UnsaltedMethod.java", 68, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
   + 1;
    assert {:sourceloc "UnsaltedMethod.java", 68, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11_dummy;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3
   == inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon21:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := unsafe.$intArrHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5][inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5];
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Else:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3
   != inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} {:comment "elseblock"} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon21;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon18:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3 := unsafe.$intArrHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4][inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5];
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Else:
    assume {:partition} !(inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0);
    call inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return := 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon18;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon15:
    assert {:sourceloc "UnsaltedMethod.java", 66, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Else:
    assume {:partition} !(inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0);
    call inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return := 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1;
    unsafe.$objIndex, unsafe.$heap := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Else:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1
   != 0;
    assert {:sourceloc "UnsaltedMethod.java", 65, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon15;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11_dummy:
    assume false;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$exit:
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return:
    out_$return := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return;
    out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception;
    out_$fakelocal_1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1;
    out_$c3 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3;
    out_$fakelocal_2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2;
    out_$c2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    out_i5 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5;
    out_i4 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4;
    out_$i1 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1;
    goto block11_dummy$1;

  block11_dummy$1:
    return;

  exit:
    return;
}



implementation unsafe.fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17(in_$return: int, 
    in_$exception: ref, 
    in_$fakelocal_3: ref, 
    in_$b3: int, 
    in_$i2: int, 
    in_$b4: int, 
    in_i7: int, 
    in_$fakelocal_4: ref, 
    in_$b5: int, 
    in_r1: ref, 
    in_b6: int, 
    in_$fakelocal_2: ref, 
    in_r0: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$fakelocal_3: ref, 
    out_$b3: int, 
    out_$i2: int, 
    out_$b4: int, 
    out_i7: int, 
    out_$fakelocal_4: ref, 
    out_$b5: int, 
    out_b6: int, 
    out_$fakelocal_2: ref)
{
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$return: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$exception: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_3: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b3: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$i2: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b4: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_i7: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_4: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b5: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r1: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_b6: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_2: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r0: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_3: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b3: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b4: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_4: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b5: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_b6: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_2: ref;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$objIndex: int;
  var inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$heap: $heap_type;

  entry:
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$i2, out_$b4, out_i7, out_$fakelocal_4, out_$b5, out_b6, out_$fakelocal_2 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$i2, in_$b4, in_i7, in_$fakelocal_4, in_$b5, in_b6, in_$fakelocal_2;
    goto block17;

  block17:
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} in_r0 == unsafe.$null;
    call out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$i2, out_$b4, out_i7, out_$fakelocal_4, out_$b5, out_b6, out_$fakelocal_2 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$i2, in_$b4, in_i7, in_$fakelocal_4, in_$b5, in_b6, in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon29:
    out_$b3 := unsafe.$intArrHeap[in_r1][out_i7];
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    out_$b5 := unsafe.$xorInt(out_$b4, out_$b3);
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    out_b6 := unsafe.$bitOr(out_b6, out_$b5);
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    out_i7 := out_i7 + 1;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    goto anon29_dummy;

  anon42_Then:
    assume {:partition} out_i7 < unsafe.$arrSizeHeap[in_r1] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon29;

  anon26:
    out_$b4 := unsafe.$intArrHeap[in_r0][out_i7];
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    goto anon42_Then, anon42_Else;

  anon42_Else:
    assume {:partition} !(out_i7 < unsafe.$arrSizeHeap[in_r1] && out_i7 >= 0);
    call out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$i2, out_$b4, out_i7, out_$fakelocal_4, out_$b5, out_b6, out_$fakelocal_2 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$i2, in_$b4, in_i7, in_$fakelocal_4, in_$b5, in_b6, in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon41_Then:
    assume {:partition} out_i7 < unsafe.$arrSizeHeap[in_r0] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon26;

  anon23:
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    goto anon41_Then, anon41_Else;

  anon41_Else:
    assume {:partition} !(out_i7 < unsafe.$arrSizeHeap[in_r0] && out_i7 >= 0);
    call out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$i2, out_$b4, out_i7, out_$fakelocal_4, out_$b5, out_b6, out_$fakelocal_2 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$i2, in_$b4, in_i7, in_$fakelocal_4, in_$b5, in_b6, in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon40_Else:
    assume {:partition} out_$i2 > out_i7;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} {:comment "elseblock"} true;
    goto anon23;

  anon20:
    out_$i2 := unsafe.$arrSizeHeap[in_r0];
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Then:
    assume {:partition} out_i7 >= out_$i2;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_3, out_$b3, out_$i2, out_$b4, out_i7, out_$fakelocal_4, out_$b5, out_b6, out_$fakelocal_2 := in_$return, in_$exception, in_$fakelocal_3, in_$b3, in_$i2, in_$b4, in_i7, in_$fakelocal_4, in_$b5, in_b6, in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon39_Then:
    assume {:partition} in_r0 != unsafe.$null;
    out_$exception := out_$exception;
    goto anon20;

  anon29_dummy:
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$Entry;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$Entry:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$return := out_$return;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$exception := out_$exception;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_3 := out_$fakelocal_3;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b3 := out_$b3;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$i2 := out_$i2;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b4 := out_$b4;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_i7 := out_i7;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_4 := out_$fakelocal_4;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b5 := out_$b5;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r1 := in_r1;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_b6 := out_b6;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_2 := out_$fakelocal_2;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r0 := in_r0;
    havoc inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_2;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$objIndex := unsafe.$objIndex;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$heap := unsafe.$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$entry;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$entry:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_2;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$block17;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$block17:
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon39_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon39_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon39_Else:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r0
   == unsafe.$null;
    call inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return := 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_2;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$objIndex, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon29:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b3 := unsafe.$intArrHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r1][inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7];
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b5 := unsafe.$xorInt(inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b4, 
  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b3);
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_b6 := unsafe.$bitOr(inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_b6, 
  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b5);
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7
   + 1;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon29_dummy;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon42_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r1]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7
     >= 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon29;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon26:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b4 := unsafe.$intArrHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r0][inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7];
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon42_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon42_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon42_Else:
    assume {:partition} !(inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r1]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7
     >= 0);
    call inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return := 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_4;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$objIndex, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon41_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r0]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7
     >= 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon26;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon23:
    assert {:sourceloc "UnsaltedMethod.java", 104, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon41_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon41_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon41_Else:
    assume {:partition} !(inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7
     < unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r0]
   && inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7
     >= 0);
    call inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return := 0;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_3;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$objIndex, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon40_Else:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2
   > inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon23;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon20:
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2 := unsafe.$arrSizeHeap[inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r0];
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} true;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon40_Then, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon40_Else;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon40_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7
   >= inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2;
    assert {:sourceloc "UnsaltedMethod.java", 103, -1, -1, -1} {:comment "thenblock"} true;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$return, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$exception, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b3, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$i2, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_i7, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_4, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$b5, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_b6, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$objIndex, inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$$heap;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon39_Then:
    assume {:partition} inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$in_r0
   != unsafe.$null;
    inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon20;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$anon29_dummy:
    assume false;
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$exit:
    goto inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$Return;

  inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$Return:
    out_$return := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$return;
    out_$exception := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$exception;
    out_$fakelocal_3 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_3;
    out_$b3 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b3;
    out_$i2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$i2;
    out_$b4 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b4;
    out_i7 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_i7;
    out_$fakelocal_4 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_4;
    out_$b5 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$b5;
    out_b6 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_b6;
    out_$fakelocal_2 := inline$fr.xephi.authme.security.crypts.UnsaltedMethod$MessageDigestisEqual$byte$lp$$rp$_byte$lp$$rp$_loop_block17$0$out_$fakelocal_2;
    goto anon29_dummy$1;

  anon29_dummy$1:
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
