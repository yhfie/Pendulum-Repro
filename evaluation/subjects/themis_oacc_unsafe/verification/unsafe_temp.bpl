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

var unsafe.char$lp$$rp$$com.acciente.oacc.PasswordCredentials$Impl$password259: Field ref;

var unsafe.boolean$java.lang.Boolean$value0: Field int;

const unique unsafe.$type: Field javaType;

const unique unsafe.$alloc: Field bool;

const unique unsafe.$null: ref;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique unsafe.java.lang.Object: javaType extends complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique unsafe.com.acciente.oacc.Credentials: javaType extends complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique unsafe.com.acciente.oacc.PasswordCredentials: javaType extends unique unsafe.java.lang.Object, unsafe.com.acciente.oacc.Credentials complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique unsafe.com.acciente.oacc.PasswordCredentials$Impl: javaType extends unique unsafe.com.acciente.oacc.PasswordCredentials complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique unsafe.java.io.Serializable: javaType extends complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique unsafe.java.lang.reflect.AnnotatedElement: javaType extends complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique unsafe.java.lang.reflect.GenericDeclaration: javaType extends unsafe.java.lang.reflect.AnnotatedElement complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique unsafe.java.lang.reflect.Type: javaType extends complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique unsafe.java.lang.Class: javaType extends unique unsafe.java.lang.Object, unsafe.java.io.Serializable, unsafe.java.lang.reflect.GenericDeclaration, unsafe.java.lang.reflect.Type, unsafe.java.lang.reflect.AnnotatedElement complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique unsafe.java.lang.Throwable: javaType extends unique unsafe.java.lang.Object, unsafe.java.io.Serializable complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique unsafe.java.lang.Exception: javaType extends unique unsafe.java.lang.Throwable complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique unsafe.java.lang.RuntimeException: javaType extends unique unsafe.java.lang.Exception complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique unsafe.java.lang.ClassCastException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique unsafe.java.lang.NullPointerException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique unsafe.java.lang.IndexOutOfBoundsException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique unsafe.java.lang.ArrayIndexOutOfBoundsException: javaType extends unique unsafe.java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique unsafe.java.util.Arrays: javaType extends unique unsafe.java.lang.Object complete;

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
  free ensures !old(unsafe.$heap[$obj, unsafe.$alloc]);
  free ensures unsafe.$objIndex == old(unsafe.$objIndex) + 1;
  free ensures $obj != unsafe.$null;
  free ensures unsafe.$heap
   == old(unsafe.$heap)[$obj, unsafe.$alloc := true][$obj, unsafe.$type := obj_type];
  free ensures $obj == unsafe.$intToRef(old(unsafe.$objIndex));



procedure {:prefix "unsafe"} unsafe.java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  free ensures $other != unsafe.$null;
  free ensures unsafe.$heap[$other, unsafe.$alloc] <==> true;
  free ensures unsafe.$heap[$other, unsafe.$type] == unsafe.$heap[$this, unsafe.$type];



procedure {:prefix "unsafe"} unsafe.int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure {:prefix "unsafe"} unsafe.com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref);
  modifies unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.com.acciente.oacc.PasswordCredentials$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.com.acciente.oacc.PasswordCredentials$Impl$getPassword$($this: ref) returns ($return: ref, $exception: ref);



procedure {:prefix "unsafe"} unsafe.com.acciente.oacc.PasswordCredentials$Impl$equals$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Object$getClass$($this: ref) returns ($return: ref, $exception: ref);



procedure {:prefix "unsafe"} unsafe.com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.com.acciente.oacc.PasswordCredentials$Impl$hashCode$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.util.Arrays$hashCode$char$lp$$rp$($in_parameter__0: ref) returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.com.acciente.oacc.PasswordCredentials$newInstance$char$lp$$rp$($in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



implementation unsafe.com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref)
{
  var r0: ref;
  var r1: ref;
  var inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$r0: ref;
  var inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$this: ref;
  var inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$exception: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type]
   <: unsafe.com.acciente.oacc.PasswordCredentials$Impl;
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "PasswordCredentials.java", 45, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$Entry;

  inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$Entry:
    inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$this := r0;
    havoc inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$r0, inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$anon0;

  inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unsafe.$heap[inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$this, unsafe.$type]
   <: unsafe.com.acciente.oacc.PasswordCredentials;
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$this
   != unsafe.$null;
    inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$exception := unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$r0 := inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$this;
    assert {:sourceloc "PasswordCredentials.java", 30, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$java.lang.Object$$la$init$ra$$$0$$this := inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$java.lang.Object$$la$init$ra$$$0$$exception := unsafe.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$anon0$1;

  inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$anon0$1:
    assert {:sourceloc "PasswordCredentials.java", 30, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$block16;

  inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$block16:
    goto inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$Return:
    $exception := inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "PasswordCredentials.java", 46, -1, -1, -1} true;
    unsafe.$heap := unsafe.$heap[r0, unsafe.char$lp$$rp$$com.acciente.oacc.PasswordCredentials$Impl$password259 := r1];
    assert {:sourceloc "PasswordCredentials.java", 47, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation unsafe.com.acciente.oacc.PasswordCredentials$Impl$getPassword$($this: ref) returns ($return: ref, $exception: ref)
{
  var $r1: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type]
   <: unsafe.com.acciente.oacc.PasswordCredentials$Impl;
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "PasswordCredentials.java", 51, -1, -1, -1} true;
    $r1 := unsafe.$heap[r0, unsafe.char$lp$$rp$$com.acciente.oacc.PasswordCredentials$Impl$password259];
    assert {:sourceloc "PasswordCredentials.java", 51, -1, -1, -1} true;
    $return := $r1;
    goto block2;

  block2:
    return;
}



implementation unsafe.com.acciente.oacc.PasswordCredentials$Impl$equals$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var $z0: int;
  var r1: ref;
  var r0: ref;
  var $r4: ref;
  var $fakelocal_0: ref;
  var $r6: ref;
  var r2: ref;
  var $r5: ref;
  var $r3: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_2: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i4: int;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$i1: int;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_0: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_3: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$c3: int;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$c2: int;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_1: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i0: int;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$in_parameter__0: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$in_parameter__1: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return: int;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$objIndex: int;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type]
   <: unsafe.com.acciente.oacc.PasswordCredentials$Impl;
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} $this != unsafe.$null;
    assume unsafe.$heap[$in_parameter__0, unsafe.$type] <: unsafe.java.lang.Object;
    $exception := unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "PasswordCredentials.java", 56, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "PasswordCredentials.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block3;

  anon12_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "PasswordCredentials.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "PasswordCredentials.java", 57, -1, -1, -1} true;
    $return := 1;
    goto block6;

  block3:
    assert {:sourceloc "PasswordCredentials.java", 59, -1, -1, -1} true;
    goto anon13_Then, anon13_Else;

  anon13_Then:
    assume {:partition} r1 == unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", 59, -1, -1, -1} {:comment "thenblock"} true;
    goto block4;

  anon13_Else:
    assume {:partition} r1 != unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", 59, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "PasswordCredentials.java", 60, -1, -1, -1} true;
    call $r3, $exception := unsafe.java.lang.Object$getClass$(r0);
    assert {:sourceloc "PasswordCredentials.java", 60, -1, -1, -1} true;
    call $r4, $exception := unsafe.java.lang.Object$getClass$(r1);
    assert {:sourceloc "PasswordCredentials.java", 60, -1, -1, -1} true;
    goto anon14_Then, anon14_Else;

  anon14_Then:
    assume {:partition} $r3 == $r4;
    assert {:sourceloc "PasswordCredentials.java", 60, -1, -1, -1} {:comment "thenblock"} true;
    goto block5;

  anon14_Else:
    assume {:partition} $r3 != $r4;
    assert {:sourceloc "PasswordCredentials.java", 60, -1, -1, -1} {:comment "elseblock"} true;
    goto block4;

  block4:
    assert {:sourceloc "PasswordCredentials.java", 60, -1, -1, -1} true;
    $return := 0;
    goto block6;

  block5:
    assert {:sourceloc "PasswordCredentials.java", 63, -1, -1, -1} true;
    goto anon15_Then, anon15_Else;

  anon15_Then:
    assume {:partition} unsafe.$heap[r1, unsafe.$type]
   <: unsafe.com.acciente.oacc.PasswordCredentials$Impl;
    $exception := $exception;
    goto anon11;

  anon15_Else:
    assume {:partition} !(unsafe.$heap[r1, unsafe.$type]
   <: unsafe.com.acciente.oacc.PasswordCredentials$Impl);
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon11:
    r2 := r1;
    assert {:sourceloc "PasswordCredentials.java", 66, -1, -1, -1} true;
    $r6 := unsafe.$heap[r0, unsafe.char$lp$$rp$$com.acciente.oacc.PasswordCredentials$Impl$password259];
    assert {:sourceloc "PasswordCredentials.java", 66, -1, -1, -1} true;
    $r5 := unsafe.$heap[r2, unsafe.char$lp$$rp$$com.acciente.oacc.PasswordCredentials$Impl$password259];
    assert {:sourceloc "PasswordCredentials.java", 66, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Entry;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Entry:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$in_parameter__0 := $r6;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$in_parameter__1 := $r5;
    havoc inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_2, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i4, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$i1, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_0, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_3, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$c3, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$c2, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_1, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i0, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$objIndex := unsafe.$objIndex;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$heap := unsafe.$heap;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon0;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$in_parameter__0;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$in_parameter__1;
    assert {:sourceloc "PasswordCredentials.java", 71, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon30_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon30_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon30_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0
   != inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1;
    assert {:sourceloc "PasswordCredentials.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block7;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon30_Else:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0
   == inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1;
    assert {:sourceloc "PasswordCredentials.java", 71, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon3;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon3:
    assert {:sourceloc "PasswordCredentials.java", 72, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 1;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block14;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block7:
    assert {:sourceloc "PasswordCredentials.java", 73, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon31_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon31_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon31_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0
   == unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", 73, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block8;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon31_Else:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0
   != unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", 73, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon6;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon6:
    assert {:sourceloc "PasswordCredentials.java", 74, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon32_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon32_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon32_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1
   != unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", 74, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block9;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon32_Else:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1
   == unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", 74, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block8;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block8:
    assert {:sourceloc "PasswordCredentials.java", 74, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 0;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block14;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block9:
    assert {:sourceloc "PasswordCredentials.java", 76, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon33_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon33_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon33_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0
   != unsafe.$null;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon11;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon33_Else:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0
   == unsafe.$null;
    call inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_0 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 0;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_0;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon11:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i0 := unsafe.$arrSizeHeap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0];
    assert {:sourceloc "PasswordCredentials.java", 77, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon34_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon34_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon34_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1
   != unsafe.$null;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon14;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon34_Else:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1
   == unsafe.$null;
    call inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_1 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 0;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_1;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon14:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$i1 := unsafe.$arrSizeHeap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1];
    assert {:sourceloc "PasswordCredentials.java", 77, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon35_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon35_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon35_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$i1
   == inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i0;
    assert {:sourceloc "PasswordCredentials.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block10;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon35_Else:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$i1
   != inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i0;
    assert {:sourceloc "PasswordCredentials.java", 77, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon17;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon17:
    assert {:sourceloc "PasswordCredentials.java", 78, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 0;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block14;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block10:
    assert {:sourceloc "PasswordCredentials.java", 80, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i4 := 0;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block11;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block11:
    assert {:sourceloc "PasswordCredentials.java", 80, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon36_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon36_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon36_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i4
   >= inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i0;
    assert {:sourceloc "PasswordCredentials.java", 80, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block12;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon36_Else:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i0
   > inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i4;
    assert {:sourceloc "PasswordCredentials.java", 80, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon20;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon20:
    assert {:sourceloc "PasswordCredentials.java", 81, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon37_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon37_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon37_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i4
     < unsafe.$arrSizeHeap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0]
   && inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i4
     >= 0;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon23;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon37_Else:
    assume {:partition} !(inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i4
     < unsafe.$arrSizeHeap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0]
   && inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i4
     >= 0);
    call inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 0;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_2;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon23:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$c3 := unsafe.$intArrHeap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0][inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i4];
    assert {:sourceloc "PasswordCredentials.java", 81, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon38_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon38_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon38_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i4
     < unsafe.$arrSizeHeap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1]
   && inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i4
     >= 0;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon26;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon38_Else:
    assume {:partition} !(inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i4
     < unsafe.$arrSizeHeap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1]
   && inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i4
     >= 0);
    call inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 0;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_3;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon26:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$c2 := unsafe.$intArrHeap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1][inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i4];
    assert {:sourceloc "PasswordCredentials.java", 81, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon39_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon39_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon39_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$c3
   == inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$c2;
    assert {:sourceloc "PasswordCredentials.java", 81, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block13;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon39_Else:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$c3
   != inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$c2;
    assert {:sourceloc "PasswordCredentials.java", 81, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon29;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon29:
    assert {:sourceloc "PasswordCredentials.java", 82, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 0;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block14;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block13:
    assert {:sourceloc "PasswordCredentials.java", 80, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i4 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i4
   + 1;
    assert {:sourceloc "PasswordCredentials.java", 80, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block11;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block12:
    assert {:sourceloc "PasswordCredentials.java", 84, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 1;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block14;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block14:
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Return:
    $z0 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return;
    $exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception;
    goto anon11$1;

  anon11$1:
    assert {:sourceloc "PasswordCredentials.java", 66, -1, -1, -1} true;
    $return := $z0;
    goto block6;

  block6:
    return;
}



implementation unsafe.com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $fakelocal_2: ref;
  var i4: int;
  var r1: ref;
  var $i1: int;
  var $fakelocal_0: ref;
  var $fakelocal_3: ref;
  var $c3: int;
  var $c2: int;
  var $fakelocal_1: ref;
  var r0: ref;
  var i0: int;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    $exception := unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "PasswordCredentials.java", 71, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "PasswordCredentials.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  anon30_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "PasswordCredentials.java", 71, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "PasswordCredentials.java", 72, -1, -1, -1} true;
    $return := 1;
    goto block14;

  block7:
    assert {:sourceloc "PasswordCredentials.java", 73, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Then:
    assume {:partition} r0 == unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", 73, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  anon31_Else:
    assume {:partition} r0 != unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", 73, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "PasswordCredentials.java", 74, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Then:
    assume {:partition} r1 != unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", 74, -1, -1, -1} {:comment "thenblock"} true;
    goto block9;

  anon32_Else:
    assume {:partition} r1 == unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", 74, -1, -1, -1} {:comment "elseblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "PasswordCredentials.java", 74, -1, -1, -1} true;
    $return := 0;
    goto block14;

  block9:
    assert {:sourceloc "PasswordCredentials.java", 76, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Then:
    assume {:partition} r0 != unsafe.$null;
    $exception := $exception;
    goto anon11;

  anon33_Else:
    assume {:partition} r0 == unsafe.$null;
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon11:
    i0 := unsafe.$arrSizeHeap[r0];
    assert {:sourceloc "PasswordCredentials.java", 77, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Then:
    assume {:partition} r1 != unsafe.$null;
    $exception := $exception;
    goto anon14;

  anon34_Else:
    assume {:partition} r1 == unsafe.$null;
    call $fakelocal_1 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon14:
    $i1 := unsafe.$arrSizeHeap[r1];
    assert {:sourceloc "PasswordCredentials.java", 77, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Then:
    assume {:partition} $i1 == i0;
    assert {:sourceloc "PasswordCredentials.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  anon35_Else:
    assume {:partition} $i1 != i0;
    assert {:sourceloc "PasswordCredentials.java", 77, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "PasswordCredentials.java", 78, -1, -1, -1} true;
    $return := 0;
    goto block14;

  block10:
    assert {:sourceloc "PasswordCredentials.java", 80, -1, -1, -1} true;
    i4 := 0;
    goto block11;

  block11:
    assert {:sourceloc "PasswordCredentials.java", 80, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Then:
    assume {:partition} i4 >= i0;
    assert {:sourceloc "PasswordCredentials.java", 80, -1, -1, -1} {:comment "thenblock"} true;
    goto block12;

  anon36_Else:
    assume {:partition} i0 > i4;
    assert {:sourceloc "PasswordCredentials.java", 80, -1, -1, -1} {:comment "elseblock"} true;
    goto anon20;

  anon20:
    assert {:sourceloc "PasswordCredentials.java", 81, -1, -1, -1} true;
    goto anon37_Then, anon37_Else;

  anon37_Then:
    assume {:partition} i4 < unsafe.$arrSizeHeap[r0] && i4 >= 0;
    $exception := $exception;
    goto anon23;

  anon37_Else:
    assume {:partition} !(i4 < unsafe.$arrSizeHeap[r0] && i4 >= 0);
    call $fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon23:
    $c3 := unsafe.$intArrHeap[r0][i4];
    assert {:sourceloc "PasswordCredentials.java", 81, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Then:
    assume {:partition} i4 < unsafe.$arrSizeHeap[r1] && i4 >= 0;
    $exception := $exception;
    goto anon26;

  anon38_Else:
    assume {:partition} !(i4 < unsafe.$arrSizeHeap[r1] && i4 >= 0);
    call $fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon26:
    $c2 := unsafe.$intArrHeap[r1][i4];
    assert {:sourceloc "PasswordCredentials.java", 81, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Then:
    assume {:partition} $c3 == $c2;
    assert {:sourceloc "PasswordCredentials.java", 81, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;

  anon39_Else:
    assume {:partition} $c3 != $c2;
    assert {:sourceloc "PasswordCredentials.java", 81, -1, -1, -1} {:comment "elseblock"} true;
    goto anon29;

  anon29:
    assert {:sourceloc "PasswordCredentials.java", 82, -1, -1, -1} true;
    $return := 0;
    goto block14;

  block13:
    assert {:sourceloc "PasswordCredentials.java", 80, -1, -1, -1} true;
    i4 := i4 + 1;
    assert {:sourceloc "PasswordCredentials.java", 80, -1, -1, -1} true;
    goto block11;

  block12:
    assert {:sourceloc "PasswordCredentials.java", 84, -1, -1, -1} true;
    $return := 1;
    goto block14;

  block14:
    return;
}



implementation unsafe.com.acciente.oacc.PasswordCredentials$Impl$hashCode$($this: ref) returns ($return: int, $exception: ref)
{
  var $i0: int;
  var r0: ref;
  var $r1: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type]
   <: unsafe.com.acciente.oacc.PasswordCredentials$Impl;
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "PasswordCredentials.java", 89, -1, -1, -1} true;
    $r1 := unsafe.$heap[r0, unsafe.char$lp$$rp$$com.acciente.oacc.PasswordCredentials$Impl$password259];
    assert {:sourceloc "PasswordCredentials.java", 89, -1, -1, -1} true;
    call $i0, $exception := unsafe.java.util.Arrays$hashCode$char$lp$$rp$($r1);
    assert {:sourceloc "PasswordCredentials.java", 89, -1, -1, -1} true;
    $return := $i0;
    goto block15;

  block15:
    return;
}



implementation unsafe.com.acciente.oacc.PasswordCredentials$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type]
   <: unsafe.com.acciente.oacc.PasswordCredentials;
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "PasswordCredentials.java", 30, -1, -1, -1} true;
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
    assert {:sourceloc "PasswordCredentials.java", 30, -1, -1, -1} true;
    goto block16;

  block16:
    return;
}



implementation unsafe.com.acciente.oacc.PasswordCredentials$newInstance$char$lp$$rp$($in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var $r1: ref;
  var r0: ref;
  var $fakelocal_0: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$r0: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$r1: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$this: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$in_parameter__0: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$exception: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$heap: $heap_type;
  var inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$r0: ref;
  var inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$this: ref;
  var inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$exception: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume unsafe.$heap[$return, unsafe.$type]
   <: unsafe.com.acciente.oacc.PasswordCredentials;
    $exception := unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "PasswordCredentials.java", 39, -1, -1, -1} true;
    call $fakelocal_0 := unsafe.$new(unsafe.com.acciente.oacc.PasswordCredentials$Impl);
    $r1 := $fakelocal_0;
    assert {:sourceloc "PasswordCredentials.java", 39, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$Entry;

  inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$Entry:
    inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$this := $r1;
    inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$in_parameter__0 := r0;
    havoc inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$r0, inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$r1, inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$exception;
    inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$heap := unsafe.$heap;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$anon0;

  inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unsafe.$heap[inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$this, unsafe.$type]
   <: unsafe.com.acciente.oacc.PasswordCredentials$Impl;
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$this
   != unsafe.$null;
    inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$exception := unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$r0 := inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$this;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$r1 := inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$in_parameter__0;
    assert {:sourceloc "PasswordCredentials.java", 45, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$Entry;

  inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$Entry:
    inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$this := inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$r0;
    havoc inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$r0, inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$anon0;

  inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unsafe.$heap[inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$this, unsafe.$type]
   <: unsafe.com.acciente.oacc.PasswordCredentials;
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$this
   != unsafe.$null;
    inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$exception := unsafe.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$r0 := inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$this;
    assert {:sourceloc "PasswordCredentials.java", 30, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$java.lang.Object$$la$init$ra$$$0$$this := inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$java.lang.Object$$la$init$ra$$$0$$exception := unsafe.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$anon0$1;

  inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$anon0$1:
    assert {:sourceloc "PasswordCredentials.java", 30, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$block16;

  inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$block16:
    goto inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$Return:
    inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$anon0$1;

  inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$anon0$1:
    assert {:sourceloc "PasswordCredentials.java", 46, -1, -1, -1} true;
    unsafe.$heap := unsafe.$heap[inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$r0, unsafe.char$lp$$rp$$com.acciente.oacc.PasswordCredentials$Impl$password259 := inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$r1];
    assert {:sourceloc "PasswordCredentials.java", 47, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$block1;

  inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$block1:
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$Return:
    $exception := inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "PasswordCredentials.java", 39, -1, -1, -1} true;
    $return := $r1;
    goto block17;

  block17:
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
    goto block18;

  block18:
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$block18;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$block18:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    $exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    $return := $r0;
    goto block19;

  block19:
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
    goto block20;

  block20:
    return;
}



implementation unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := unsafe.$null;
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
