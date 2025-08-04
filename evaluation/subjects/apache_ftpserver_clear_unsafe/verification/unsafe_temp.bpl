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

var unsafe.boolean$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$safeMode0: Field int;

var unsafe.char$lp$$rp$$java.lang.String$chars300: Field ref;

var unsafe.boolean$java.lang.Boolean$value0: Field int;

const unique unsafe.$type: Field javaType;

const unique unsafe.$alloc: Field bool;

const unique unsafe.$null: ref;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique unsafe.java.lang.Object: javaType extends complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique unsafe.org.apache.ftpserver.usermanager.PasswordEncryptor: javaType extends complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor: javaType extends unique unsafe.java.lang.Object, unsafe.org.apache.ftpserver.usermanager.PasswordEncryptor complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique unsafe.java.io.Serializable: javaType extends complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique unsafe.java.lang.Comparable: javaType extends complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique unsafe.java.lang.CharSequence: javaType extends complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique unsafe.java.lang.Throwable: javaType extends unique unsafe.java.lang.Object, unsafe.java.io.Serializable complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique unsafe.java.lang.Exception: javaType extends unique unsafe.java.lang.Throwable complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique unsafe.java.lang.RuntimeException: javaType extends unique unsafe.java.lang.Exception complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique unsafe.java.lang.NullPointerException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const unique unsafe.$StringConst0: ref extends complete;

const unique unsafe.$StringConst1: ref extends complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique unsafe.java.lang.ClassCastException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique unsafe.java.lang.IndexOutOfBoundsException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unique unsafe.java.lang.ArrayIndexOutOfBoundsException: javaType extends unique unsafe.java.lang.IndexOutOfBoundsException complete;

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
  free ensures unsafe.$heap
   == old(unsafe.$heap)[$obj, unsafe.$alloc := true][$obj, unsafe.$type := obj_type];
  free ensures unsafe.$objIndex == old(unsafe.$objIndex) + 1;
  free ensures $obj != unsafe.$null;
  free ensures $obj == unsafe.$intToRef(old(unsafe.$objIndex));
  free ensures !old(unsafe.$heap[$obj, unsafe.$alloc]);



procedure {:prefix "unsafe"} unsafe.java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  free ensures unsafe.$heap[$other, unsafe.$type] == unsafe.$heap[$this, unsafe.$type];
  free ensures unsafe.$heap[$other, unsafe.$alloc] <==> true;
  free ensures $other != unsafe.$null;



procedure {:prefix "unsafe"} unsafe.int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure {:prefix "unsafe"} unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$$la$init$ra$$($this: ref) returns ($exception: ref);
  modifies unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$encrypt$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure {:prefix "unsafe"} unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$matches$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  free requires $in_parameter__0 != unsafe.$null;
  free requires $in_parameter__1 != unsafe.$null;
  free requires unsafe.$stringSizeHeap[$in_parameter__0] == 16;
  free requires unsafe.$stringSizeHeap[$in_parameter__1] == 16;
  modifies unsafe.$objIndex, unsafe.$heap, unsafe.$arrSizeHeap, unsafe.$intArrHeap;



procedure {:prefix "unsafe"} unsafe.java.lang.NullPointerException$$la$init$ra$$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap, unsafe.$arrSizeHeap, unsafe.$intArrHeap;



procedure {:prefix "unsafe"} unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap, unsafe.$arrSizeHeap, unsafe.$intArrHeap;



procedure {:prefix "unsafe"} unsafe.java.lang.String$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.String$toCharArray$($this: ref) returns ($return: ref, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$arrSizeHeap, unsafe.$intArrHeap, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9(in_$return: int, 
    in_$exception: ref, 
    in_i4: int, 
    in_$i1: int, 
    in_i5: int, 
    in_r5: ref, 
    in_$fakelocal_1: ref, 
    in_$c3: int, 
    in_$fakelocal_2: ref, 
    in_r4: ref, 
    in_$c2: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_i4: int, 
    out_$i1: int, 
    out_i5: int, 
    out_$fakelocal_1: ref, 
    out_$c3: int, 
    out_$fakelocal_2: ref, 
    out_$c2: int);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13(in_$return: int, 
    in_$exception: ref, 
    in_$c2: int, 
    in_z0: int, 
    in_$fakelocal_4: ref, 
    in_i4: int, 
    in_$fakelocal_5: ref, 
    in_$fakelocal_3: ref, 
    in_$i0: int, 
    in_r4: ref, 
    in_$i1: int, 
    in_r3: ref, 
    in_$c3: int, 
    in_$fakelocal_2: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$c2: int, 
    out_z0: int, 
    out_$fakelocal_4: ref, 
    out_i4: int, 
    out_$fakelocal_5: ref, 
    out_$fakelocal_3: ref, 
    out_$i0: int, 
    out_$i1: int, 
    out_$c3: int, 
    out_$fakelocal_2: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.String$toCharArray$_loop_block20(in_$return: ref, 
    in_$exception: ref, 
    in_$r4: ref, 
    in_$c2: int, 
    in_r1: ref, 
    in_$fakelocal_4: ref, 
    in_$r3: ref, 
    in_r0: ref, 
    in_$fakelocal_2: ref, 
    in_$i1: int, 
    in_$fakelocal_3: ref, 
    in_i3: int)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$r4: ref, 
    out_$c2: int, 
    out_$fakelocal_4: ref, 
    out_$r3: ref, 
    out_$fakelocal_2: ref, 
    out_$i1: int, 
    out_$fakelocal_3: ref, 
    out_i3: int);
  modifies unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap;



implementation unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type]
   <: unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor;
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 34, -1, -1, -1} true;
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
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 35, -1, -1, -1} true;
    unsafe.$heap := unsafe.$heap[r0, unsafe.boolean$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$safeMode0 := 0];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 36, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var z0: int;
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type]
   <: unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor;
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 38, -1, -1, -1} true;
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
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 39, -1, -1, -1} true;
    unsafe.$heap := unsafe.$heap[r0, unsafe.boolean$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$safeMode0 := z0];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 40, -1, -1, -1} true;
    goto block2;

  block2:
    return;
}



implementation unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$encrypt$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r0: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type]
   <: unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor;
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} $this != unsafe.$null;
    assume unsafe.$heap[$in_parameter__0, unsafe.$type] <: unsafe.java.lang.String;
    assume unsafe.$heap[$return, unsafe.$type] <: unsafe.java.lang.String;
    $exception := unsafe.$null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 46, -1, -1, -1} true;
    $return := r1;
    goto block3;

  block3:
    return;
}



implementation unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$matches$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $r4: ref;
  var $fakelocal_1: ref;
  var $fakelocal_0: ref;
  var r0: ref;
  var $z0: int;
  var r1: ref;
  var r2: ref;
  var $r3: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i4: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i1: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r1: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r5: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_1: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c3: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_2: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r4: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r0: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r2: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$z0: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c2: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i0: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r3: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_0: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$this: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$in_parameter__0: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$in_parameter__1: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$objIndex: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$heap: $heap_type;
  var inline$java.lang.String$toCharArray$$0$$r4: ref;
  var inline$java.lang.String$toCharArray$$0$$c2: int;
  var inline$java.lang.String$toCharArray$$0$r1: ref;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$$0$$r2: ref;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_0: ref;
  var inline$java.lang.String$toCharArray$$0$$r3: ref;
  var inline$java.lang.String$toCharArray$$0$r0: ref;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$$0$$i0: int;
  var inline$java.lang.String$toCharArray$$0$$i1: int;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$$0$i3: int;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_1: ref;
  var inline$java.lang.String$toCharArray$$0$$this: ref;
  var inline$java.lang.String$toCharArray$$0$$return: ref;
  var inline$java.lang.String$toCharArray$$0$$exception: ref;
  var inline$java.lang.String$toCharArray$$0$$objIndex: int;
  var inline$java.lang.String$toCharArray$$0$$arrSizeHeap: [ref]int;
  var inline$java.lang.String$toCharArray$$0$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$$0$$heap: $heap_type;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_r1: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_r0: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$$heap: $heap_type;
  var inline$java.lang.String$toCharArray$$1$$r4: ref;
  var inline$java.lang.String$toCharArray$$1$$c2: int;
  var inline$java.lang.String$toCharArray$$1$r1: ref;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$$1$$r2: ref;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_0: ref;
  var inline$java.lang.String$toCharArray$$1$$r3: ref;
  var inline$java.lang.String$toCharArray$$1$r0: ref;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$$1$$i0: int;
  var inline$java.lang.String$toCharArray$$1$$i1: int;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$$1$i3: int;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_1: ref;
  var inline$java.lang.String$toCharArray$$1$$this: ref;
  var inline$java.lang.String$toCharArray$$1$$return: ref;
  var inline$java.lang.String$toCharArray$$1$$exception: ref;
  var inline$java.lang.String$toCharArray$$1$$objIndex: int;
  var inline$java.lang.String$toCharArray$$1$$arrSizeHeap: [ref]int;
  var inline$java.lang.String$toCharArray$$1$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$$1$$heap: $heap_type;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_r1: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_r0: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$_loop_block20$1$$objIndex: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$$heap: $heap_type;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap: $heap_type;

  anon0:
    assume $in_parameter__0 != unsafe.$null
   && $in_parameter__1 != unsafe.$null
   && unsafe.$stringSizeHeap[$in_parameter__0] == 16
   && unsafe.$stringSizeHeap[$in_parameter__1] == 16;
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type]
   <: unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor;
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} $this != unsafe.$null;
    assume unsafe.$heap[$in_parameter__0, unsafe.$type] <: unsafe.java.lang.String;
    assume unsafe.$heap[$in_parameter__1, unsafe.$type] <: unsafe.java.lang.String;
    $exception := unsafe.$null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 53, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} r2 == unsafe.$null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 53, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 54, -1, -1, -1} true;
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $r4 := $fakelocal_0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 54, -1, -1, -1} true;
    call $exception := unsafe.java.lang.NullPointerException$$la$init$ra$$java.lang.String($r4, unsafe.$StringConst0);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 54, -1, -1, -1} true;
    $exception := $r4;
    goto block6;

  block6:
    return;

  anon7_Then:
    assume {:partition} r2 != unsafe.$null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 53, -1, -1, -1} {:comment "thenblock"} true;
    goto block4;

  block4:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 56, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r1 == unsafe.$null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 57, -1, -1, -1} true;
    call $fakelocal_1 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $r3 := $fakelocal_1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 57, -1, -1, -1} true;
    call $exception := unsafe.java.lang.NullPointerException$$la$init$ra$$java.lang.String($r3, unsafe.$StringConst1);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 57, -1, -1, -1} true;
    $exception := $r3;
    goto block6;

  anon8_Then:
    assume {:partition} r1 != unsafe.$null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block5;

  block5:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 65, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$Entry;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$Entry:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$this := r0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$in_parameter__0 := r1;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$in_parameter__1 := r2;
    havoc inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$objIndex := unsafe.$objIndex;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$heap := unsafe.$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon0;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unsafe.$heap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$this, unsafe.$type]
   <: unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor;
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$this
   != unsafe.$null;
    assume unsafe.$heap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$in_parameter__0, unsafe.$type]
   <: unsafe.java.lang.String;
    assume unsafe.$heap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$in_parameter__1, unsafe.$type]
   <: unsafe.java.lang.Object;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception := unsafe.$null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r0 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$this;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r1 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$in_parameter__0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$in_parameter__1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 72, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon25_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon25_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon25_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r1
   == inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 72, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon3;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon3:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 73, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return := 1;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block12;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block12:
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon25_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r1
   != inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 72, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block7;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block7:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 75, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$z0 := unsafe.$boolToInt(inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r2
       != unsafe.$null
     && unsafe.$heap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r2, unsafe.$type]
       <: unsafe.java.lang.String);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 75, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon26_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon26_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon26_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$z0
   != 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 75, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon6;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon6:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 76, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon27_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon27_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon27_Else:
    assume {:partition} !(unsafe.$heap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r2, unsafe.$type]
   <: unsafe.java.lang.String);
    call inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_0 := unsafe.$new(unsafe.java.lang.ClassCastException);
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return := 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_0;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon27_Then:
    assume {:partition} unsafe.$heap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r2, unsafe.$type]
   <: unsafe.java.lang.String;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon9;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon9:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r3 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 77, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i4 := unsafe.$stringSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r1];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 78, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i0 := unsafe.$stringSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r3];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 78, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon28_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon28_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon28_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i4
   == inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 78, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon12;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon12:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 79, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$Entry;

  inline$java.lang.String$toCharArray$$0$Entry:
    inline$java.lang.String$toCharArray$$0$$this := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r1;
    havoc inline$java.lang.String$toCharArray$$0$$r4, inline$java.lang.String$toCharArray$$0$$c2, inline$java.lang.String$toCharArray$$0$r1, inline$java.lang.String$toCharArray$$0$$fakelocal_4, inline$java.lang.String$toCharArray$$0$$r2, inline$java.lang.String$toCharArray$$0$$fakelocal_0, inline$java.lang.String$toCharArray$$0$$r3, inline$java.lang.String$toCharArray$$0$r0, inline$java.lang.String$toCharArray$$0$$fakelocal_2, inline$java.lang.String$toCharArray$$0$$i0, inline$java.lang.String$toCharArray$$0$$i1, inline$java.lang.String$toCharArray$$0$$fakelocal_3, inline$java.lang.String$toCharArray$$0$i3, inline$java.lang.String$toCharArray$$0$$fakelocal_1, inline$java.lang.String$toCharArray$$0$$return, inline$java.lang.String$toCharArray$$0$$exception;
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
    inline$java.lang.String$toCharArray$$0$$r2 := unsafe.$heap[inline$java.lang.String$toCharArray$$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
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
    goto inline$java.lang.String$toCharArray$$0$block20;

  inline$java.lang.String$toCharArray$$0$block20:
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Entry;

  inline$java.lang.String$toCharArray$_loop_block20$0$Entry:
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$return := inline$java.lang.String$toCharArray$$0$$return;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception := inline$java.lang.String$toCharArray$$0$$exception;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4 := inline$java.lang.String$toCharArray$$0$$r4;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2 := inline$java.lang.String$toCharArray$$0$$c2;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_r1 := inline$java.lang.String$toCharArray$$0$r1;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4 := inline$java.lang.String$toCharArray$$0$$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3 := inline$java.lang.String$toCharArray$$0$$r3;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_r0 := inline$java.lang.String$toCharArray$$0$r0;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2 := inline$java.lang.String$toCharArray$$0$$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1 := inline$java.lang.String$toCharArray$$0$$i1;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3 := inline$java.lang.String$toCharArray$$0$$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_i3 := inline$java.lang.String$toCharArray$$0$i3;
    havoc inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3;
    inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap := unsafe.$intArrHeap;
    inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$toCharArray$_loop_block20$0$$heap := unsafe.$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$entry;

  inline$java.lang.String$toCharArray$_loop_block20$0$entry:
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$block20;

  inline$java.lang.String$toCharArray$_loop_block20$0$block20:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon17_Then, inline$java.lang.String$toCharArray$_loop_block20$0$anon17_Else;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon17_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3 == unsafe.$null;
    call inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon15:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r1 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r1][inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon15_dummy;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon20_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon15;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon12:
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4][inline$java.lang.String$toCharArray$_loop_block20$0$out_i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon20_Then, inline$java.lang.String$toCharArray$_loop_block20$0$anon20_Else;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon20_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon19_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon12;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon19_Then, inline$java.lang.String$toCharArray$_loop_block20$0$anon19_Else;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon19_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon18_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1
   > inline$java.lang.String$toCharArray$_loop_block20$0$out_i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon9;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon6:
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon18_Then, inline$java.lang.String$toCharArray$_loop_block20$0$anon18_Else;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon18_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
   >= inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon17_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3 != unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon6;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$exit:
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$Return:
    inline$java.lang.String$toCharArray$$0$$return := inline$java.lang.String$toCharArray$_loop_block20$0$out_$return;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception;
    inline$java.lang.String$toCharArray$$0$$r4 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4;
    inline$java.lang.String$toCharArray$$0$$c2 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2;
    inline$java.lang.String$toCharArray$$0$$fakelocal_4 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$$0$$r3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3;
    inline$java.lang.String$toCharArray$$0$$fakelocal_2 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$$0$$i1 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1;
    inline$java.lang.String$toCharArray$$0$$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$$0$i3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_i3;
    goto inline$java.lang.String$toCharArray$$0$block20$1;

  inline$java.lang.String$toCharArray$$0$block20$1:
    goto inline$java.lang.String$toCharArray$$0$block20_last;

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
    inline$java.lang.String$toCharArray$$0$$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
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
    goto inline$java.lang.String$toCharArray$$0$block21;

  inline$java.lang.String$toCharArray$$0$block21:
    assert {:sourceloc "String.java", 15, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$$return := inline$java.lang.String$toCharArray$$0$r1;
    goto inline$java.lang.String$toCharArray$$0$block22;

  inline$java.lang.String$toCharArray$$0$block22:
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$block20_last:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$anon17_Then, inline$java.lang.String$toCharArray$$0$anon17_Else;

  inline$java.lang.String$toCharArray$$0$Return:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r4 := inline$java.lang.String$toCharArray$$0$$return;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception := inline$java.lang.String$toCharArray$$0$$exception;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon12$1;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon12$1:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 80, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$Entry;

  inline$java.lang.String$toCharArray$$1$Entry:
    inline$java.lang.String$toCharArray$$1$$this := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r3;
    havoc inline$java.lang.String$toCharArray$$1$$r4, inline$java.lang.String$toCharArray$$1$$c2, inline$java.lang.String$toCharArray$$1$r1, inline$java.lang.String$toCharArray$$1$$fakelocal_4, inline$java.lang.String$toCharArray$$1$$r2, inline$java.lang.String$toCharArray$$1$$fakelocal_0, inline$java.lang.String$toCharArray$$1$$r3, inline$java.lang.String$toCharArray$$1$r0, inline$java.lang.String$toCharArray$$1$$fakelocal_2, inline$java.lang.String$toCharArray$$1$$i0, inline$java.lang.String$toCharArray$$1$$i1, inline$java.lang.String$toCharArray$$1$$fakelocal_3, inline$java.lang.String$toCharArray$$1$i3, inline$java.lang.String$toCharArray$$1$$fakelocal_1, inline$java.lang.String$toCharArray$$1$$return, inline$java.lang.String$toCharArray$$1$$exception;
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
    inline$java.lang.String$toCharArray$$1$$r2 := unsafe.$heap[inline$java.lang.String$toCharArray$$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
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
    goto inline$java.lang.String$toCharArray$$1$block20;

  inline$java.lang.String$toCharArray$$1$block20:
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Entry;

  inline$java.lang.String$toCharArray$_loop_block20$1$Entry:
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$return := inline$java.lang.String$toCharArray$$1$$return;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception := inline$java.lang.String$toCharArray$$1$$exception;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4 := inline$java.lang.String$toCharArray$$1$$r4;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2 := inline$java.lang.String$toCharArray$$1$$c2;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_r1 := inline$java.lang.String$toCharArray$$1$r1;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4 := inline$java.lang.String$toCharArray$$1$$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3 := inline$java.lang.String$toCharArray$$1$$r3;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_r0 := inline$java.lang.String$toCharArray$$1$r0;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2 := inline$java.lang.String$toCharArray$$1$$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1 := inline$java.lang.String$toCharArray$$1$$i1;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3 := inline$java.lang.String$toCharArray$$1$$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_i3 := inline$java.lang.String$toCharArray$$1$i3;
    havoc inline$java.lang.String$toCharArray$_loop_block20$1$out_$return, inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$out_i3;
    inline$java.lang.String$toCharArray$_loop_block20$1$$intArrHeap := unsafe.$intArrHeap;
    inline$java.lang.String$toCharArray$_loop_block20$1$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$toCharArray$_loop_block20$1$$heap := unsafe.$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$entry;

  inline$java.lang.String$toCharArray$_loop_block20$1$entry:
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return, inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$in_$return, inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$in_i3;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$block20;

  inline$java.lang.String$toCharArray$_loop_block20$1$block20:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block20$1$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon17_Then, inline$java.lang.String$toCharArray$_loop_block20$1$anon17_Else;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon17_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3 == unsafe.$null;
    call inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return, inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$in_$return, inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$1$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$1$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$1$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Return;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon15:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$1$in_r1 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$1$in_r1][inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon15_dummy;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon20_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$1$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$1$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon15;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon12:
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4][inline$java.lang.String$toCharArray$_loop_block20$1$out_i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon20_Then, inline$java.lang.String$toCharArray$_loop_block20$1$anon20_Else;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon20_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block20$1$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$1$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return, inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$in_$return, inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$1$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$1$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$1$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Return;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon19_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$1$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon12;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block20$1$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon19_Then, inline$java.lang.String$toCharArray$_loop_block20$1$anon19_Else;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon19_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block20$1$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return, inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$in_$return, inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$1$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$1$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$1$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Return;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon18_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1
   > inline$java.lang.String$toCharArray$_loop_block20$1$out_i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon9;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon6:
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon18_Then, inline$java.lang.String$toCharArray$_loop_block20$1$anon18_Else;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon18_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$1$out_i3
   >= inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return, inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$in_$return, inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$1$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$1$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$1$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Return;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon17_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3 != unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon6;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Return;

  inline$java.lang.String$toCharArray$_loop_block20$1$exit:
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Return;

  inline$java.lang.String$toCharArray$_loop_block20$1$Return:
    inline$java.lang.String$toCharArray$$1$$return := inline$java.lang.String$toCharArray$_loop_block20$1$out_$return;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception;
    inline$java.lang.String$toCharArray$$1$$r4 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4;
    inline$java.lang.String$toCharArray$$1$$c2 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2;
    inline$java.lang.String$toCharArray$$1$$fakelocal_4 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$$1$$r3 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3;
    inline$java.lang.String$toCharArray$$1$$fakelocal_2 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$$1$$i1 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1;
    inline$java.lang.String$toCharArray$$1$$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$$1$i3 := inline$java.lang.String$toCharArray$_loop_block20$1$out_i3;
    goto inline$java.lang.String$toCharArray$$1$block20$1;

  inline$java.lang.String$toCharArray$$1$block20$1:
    goto inline$java.lang.String$toCharArray$$1$block20_last;

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
    inline$java.lang.String$toCharArray$$1$$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
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
    goto inline$java.lang.String$toCharArray$$1$block21;

  inline$java.lang.String$toCharArray$$1$block21:
    assert {:sourceloc "String.java", 15, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$$return := inline$java.lang.String$toCharArray$$1$r1;
    goto inline$java.lang.String$toCharArray$$1$block22;

  inline$java.lang.String$toCharArray$$1$block22:
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$block20_last:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$anon17_Then, inline$java.lang.String$toCharArray$$1$anon17_Else;

  inline$java.lang.String$toCharArray$$1$Return:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r5 := inline$java.lang.String$toCharArray$$1$$return;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception := inline$java.lang.String$toCharArray$$1$$exception;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon12$2;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon12$2:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 81, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5 := 0;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block9;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block9:
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Entry;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Entry:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i4;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i1;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r5;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_1;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c3;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_2;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r4;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c2;
    havoc inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex := unsafe.$objIndex;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap := unsafe.$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$entry;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$entry:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block9;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block9:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4
   + -1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1
   == 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} {:comment "thenblock"} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 85, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
   + 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 85, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11_dummy;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3
   == inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon21:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := unsafe.$intArrHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5][inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3
   != inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} {:comment "elseblock"} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon21;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon18:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3 := unsafe.$intArrHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4][inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Else:
    assume {:partition} !(inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0);
    call inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return := 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon18;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon15:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Else:
    assume {:partition} !(inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0);
    call inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return := 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1
   != 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon15;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11_dummy:
    assume false;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$exit:
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i4 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i1 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_1 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c3 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block9$1;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block9$1:
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block9_last;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon29_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i1
   != 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon15;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon15:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon30_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon30_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon30_Else:
    assume {:partition} !(inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r4]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5
     >= 0);
    call inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return := 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_1;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon30_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r4]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5
     >= 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon18;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon18:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c3 := unsafe.$intArrHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r4][inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon31_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon31_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon31_Else:
    assume {:partition} !(inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r5]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5
     >= 0);
    call inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return := 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$fakelocal_2;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon31_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r5]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5
     >= 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon21;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon21:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c2 := unsafe.$intArrHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$r5][inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon32_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon32_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon32_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c3
   != inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon24;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon24:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 84, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return := 0;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block12;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon32_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c3
   == inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block11;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block11:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 85, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i5
   + 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 85, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block11_dummy;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon29_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i1
   == 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block10;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block10:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 87, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return := 1;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block12;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon28_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i4
   != inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block8;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block8:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 90, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return := 0;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block12;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon26_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$z0
   == 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 75, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block8;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block11_dummy:
    assume false;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$block9_last:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$i1 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i4 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$i4
   + -1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon29_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$anon29_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$Return:
    $z0 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$return;
    $exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object$0$$exception;
    goto block5$1;

  block5$1:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 65, -1, -1, -1} true;
    $return := $z0;
    goto block6;
}



implementation unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var i4: int;
  var $i1: int;
  var i5: int;
  var r1: ref;
  var r5: ref;
  var $fakelocal_1: ref;
  var $c3: int;
  var $fakelocal_2: ref;
  var r4: ref;
  var r0: ref;
  var r2: ref;
  var $z0: int;
  var $c2: int;
  var $i0: int;
  var r3: ref;
  var $fakelocal_0: ref;
  var inline$java.lang.String$toCharArray$$0$$r4: ref;
  var inline$java.lang.String$toCharArray$$0$$c2: int;
  var inline$java.lang.String$toCharArray$$0$r1: ref;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$$0$$r2: ref;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_0: ref;
  var inline$java.lang.String$toCharArray$$0$$r3: ref;
  var inline$java.lang.String$toCharArray$$0$r0: ref;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$$0$$i0: int;
  var inline$java.lang.String$toCharArray$$0$$i1: int;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$$0$i3: int;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_1: ref;
  var inline$java.lang.String$toCharArray$$0$$this: ref;
  var inline$java.lang.String$toCharArray$$0$$return: ref;
  var inline$java.lang.String$toCharArray$$0$$exception: ref;
  var inline$java.lang.String$toCharArray$$0$$objIndex: int;
  var inline$java.lang.String$toCharArray$$0$$arrSizeHeap: [ref]int;
  var inline$java.lang.String$toCharArray$$0$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$$0$$heap: $heap_type;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_r1: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_r0: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$$heap: $heap_type;
  var inline$java.lang.String$toCharArray$$1$$r4: ref;
  var inline$java.lang.String$toCharArray$$1$$c2: int;
  var inline$java.lang.String$toCharArray$$1$r1: ref;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$$1$$r2: ref;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_0: ref;
  var inline$java.lang.String$toCharArray$$1$$r3: ref;
  var inline$java.lang.String$toCharArray$$1$r0: ref;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$$1$$i0: int;
  var inline$java.lang.String$toCharArray$$1$$i1: int;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$$1$i3: int;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_1: ref;
  var inline$java.lang.String$toCharArray$$1$$this: ref;
  var inline$java.lang.String$toCharArray$$1$$return: ref;
  var inline$java.lang.String$toCharArray$$1$$exception: ref;
  var inline$java.lang.String$toCharArray$$1$$objIndex: int;
  var inline$java.lang.String$toCharArray$$1$$arrSizeHeap: [ref]int;
  var inline$java.lang.String$toCharArray$$1$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$$1$$heap: $heap_type;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_r1: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_r0: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$_loop_block20$1$$objIndex: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$$heap: $heap_type;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type]
   <: unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor;
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} $this != unsafe.$null;
    assume unsafe.$heap[$in_parameter__0, unsafe.$type] <: unsafe.java.lang.String;
    assume unsafe.$heap[$in_parameter__1, unsafe.$type] <: unsafe.java.lang.Object;
    $exception := unsafe.$null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 72, -1, -1, -1} true;
    goto anon25_Then, anon25_Else;

  anon25_Else:
    assume {:partition} r1 == r2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 72, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 73, -1, -1, -1} true;
    $return := 1;
    goto block12;

  block12:
    return;

  anon25_Then:
    assume {:partition} r1 != r2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 72, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  block7:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 75, -1, -1, -1} true;
    $z0 := unsafe.$boolToInt(r2 != unsafe.$null && unsafe.$heap[r2, unsafe.$type] <: unsafe.java.lang.String);
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 75, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 75, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 76, -1, -1, -1} true;
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
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 77, -1, -1, -1} true;
    i4 := unsafe.$stringSizeHeap[r1];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 78, -1, -1, -1} true;
    $i0 := unsafe.$stringSizeHeap[r3];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 78, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} i4 == $i0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 78, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 79, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$Entry;

  inline$java.lang.String$toCharArray$$0$Entry:
    inline$java.lang.String$toCharArray$$0$$this := r1;
    havoc inline$java.lang.String$toCharArray$$0$$r4, inline$java.lang.String$toCharArray$$0$$c2, inline$java.lang.String$toCharArray$$0$r1, inline$java.lang.String$toCharArray$$0$$fakelocal_4, inline$java.lang.String$toCharArray$$0$$r2, inline$java.lang.String$toCharArray$$0$$fakelocal_0, inline$java.lang.String$toCharArray$$0$$r3, inline$java.lang.String$toCharArray$$0$r0, inline$java.lang.String$toCharArray$$0$$fakelocal_2, inline$java.lang.String$toCharArray$$0$$i0, inline$java.lang.String$toCharArray$$0$$i1, inline$java.lang.String$toCharArray$$0$$fakelocal_3, inline$java.lang.String$toCharArray$$0$i3, inline$java.lang.String$toCharArray$$0$$fakelocal_1, inline$java.lang.String$toCharArray$$0$$return, inline$java.lang.String$toCharArray$$0$$exception;
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
    inline$java.lang.String$toCharArray$$0$$r2 := unsafe.$heap[inline$java.lang.String$toCharArray$$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
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
    goto inline$java.lang.String$toCharArray$$0$block20;

  inline$java.lang.String$toCharArray$$0$block20:
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Entry;

  inline$java.lang.String$toCharArray$_loop_block20$0$Entry:
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$return := inline$java.lang.String$toCharArray$$0$$return;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception := inline$java.lang.String$toCharArray$$0$$exception;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4 := inline$java.lang.String$toCharArray$$0$$r4;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2 := inline$java.lang.String$toCharArray$$0$$c2;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_r1 := inline$java.lang.String$toCharArray$$0$r1;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4 := inline$java.lang.String$toCharArray$$0$$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3 := inline$java.lang.String$toCharArray$$0$$r3;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_r0 := inline$java.lang.String$toCharArray$$0$r0;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2 := inline$java.lang.String$toCharArray$$0$$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1 := inline$java.lang.String$toCharArray$$0$$i1;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3 := inline$java.lang.String$toCharArray$$0$$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_i3 := inline$java.lang.String$toCharArray$$0$i3;
    havoc inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3;
    inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap := unsafe.$intArrHeap;
    inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$toCharArray$_loop_block20$0$$heap := unsafe.$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$entry;

  inline$java.lang.String$toCharArray$_loop_block20$0$entry:
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$block20;

  inline$java.lang.String$toCharArray$_loop_block20$0$block20:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon17_Then, inline$java.lang.String$toCharArray$_loop_block20$0$anon17_Else;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon17_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3 == unsafe.$null;
    call inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon15:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r1 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r1][inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon15_dummy;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon20_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon15;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon12:
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4][inline$java.lang.String$toCharArray$_loop_block20$0$out_i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon20_Then, inline$java.lang.String$toCharArray$_loop_block20$0$anon20_Else;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon20_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon19_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon12;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon19_Then, inline$java.lang.String$toCharArray$_loop_block20$0$anon19_Else;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon19_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon18_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1
   > inline$java.lang.String$toCharArray$_loop_block20$0$out_i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon9;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon6:
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon18_Then, inline$java.lang.String$toCharArray$_loop_block20$0$anon18_Else;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon18_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
   >= inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon17_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3 != unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon6;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$exit:
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$Return:
    inline$java.lang.String$toCharArray$$0$$return := inline$java.lang.String$toCharArray$_loop_block20$0$out_$return;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception;
    inline$java.lang.String$toCharArray$$0$$r4 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4;
    inline$java.lang.String$toCharArray$$0$$c2 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2;
    inline$java.lang.String$toCharArray$$0$$fakelocal_4 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$$0$$r3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3;
    inline$java.lang.String$toCharArray$$0$$fakelocal_2 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$$0$$i1 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1;
    inline$java.lang.String$toCharArray$$0$$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$$0$i3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_i3;
    goto inline$java.lang.String$toCharArray$$0$block20$1;

  inline$java.lang.String$toCharArray$$0$block20$1:
    goto inline$java.lang.String$toCharArray$$0$block20_last;

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
    inline$java.lang.String$toCharArray$$0$$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
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
    goto inline$java.lang.String$toCharArray$$0$block21;

  inline$java.lang.String$toCharArray$$0$block21:
    assert {:sourceloc "String.java", 15, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$$return := inline$java.lang.String$toCharArray$$0$r1;
    goto inline$java.lang.String$toCharArray$$0$block22;

  inline$java.lang.String$toCharArray$$0$block22:
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$block20_last:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$anon17_Then, inline$java.lang.String$toCharArray$$0$anon17_Else;

  inline$java.lang.String$toCharArray$$0$Return:
    r4 := inline$java.lang.String$toCharArray$$0$$return;
    $exception := inline$java.lang.String$toCharArray$$0$$exception;
    goto anon12$1;

  anon12$1:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 80, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$Entry;

  inline$java.lang.String$toCharArray$$1$Entry:
    inline$java.lang.String$toCharArray$$1$$this := r3;
    havoc inline$java.lang.String$toCharArray$$1$$r4, inline$java.lang.String$toCharArray$$1$$c2, inline$java.lang.String$toCharArray$$1$r1, inline$java.lang.String$toCharArray$$1$$fakelocal_4, inline$java.lang.String$toCharArray$$1$$r2, inline$java.lang.String$toCharArray$$1$$fakelocal_0, inline$java.lang.String$toCharArray$$1$$r3, inline$java.lang.String$toCharArray$$1$r0, inline$java.lang.String$toCharArray$$1$$fakelocal_2, inline$java.lang.String$toCharArray$$1$$i0, inline$java.lang.String$toCharArray$$1$$i1, inline$java.lang.String$toCharArray$$1$$fakelocal_3, inline$java.lang.String$toCharArray$$1$i3, inline$java.lang.String$toCharArray$$1$$fakelocal_1, inline$java.lang.String$toCharArray$$1$$return, inline$java.lang.String$toCharArray$$1$$exception;
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
    inline$java.lang.String$toCharArray$$1$$r2 := unsafe.$heap[inline$java.lang.String$toCharArray$$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
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
    goto inline$java.lang.String$toCharArray$$1$block20;

  inline$java.lang.String$toCharArray$$1$block20:
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Entry;

  inline$java.lang.String$toCharArray$_loop_block20$1$Entry:
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$return := inline$java.lang.String$toCharArray$$1$$return;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception := inline$java.lang.String$toCharArray$$1$$exception;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4 := inline$java.lang.String$toCharArray$$1$$r4;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2 := inline$java.lang.String$toCharArray$$1$$c2;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_r1 := inline$java.lang.String$toCharArray$$1$r1;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4 := inline$java.lang.String$toCharArray$$1$$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3 := inline$java.lang.String$toCharArray$$1$$r3;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_r0 := inline$java.lang.String$toCharArray$$1$r0;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2 := inline$java.lang.String$toCharArray$$1$$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1 := inline$java.lang.String$toCharArray$$1$$i1;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3 := inline$java.lang.String$toCharArray$$1$$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_i3 := inline$java.lang.String$toCharArray$$1$i3;
    havoc inline$java.lang.String$toCharArray$_loop_block20$1$out_$return, inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$out_i3;
    inline$java.lang.String$toCharArray$_loop_block20$1$$intArrHeap := unsafe.$intArrHeap;
    inline$java.lang.String$toCharArray$_loop_block20$1$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$toCharArray$_loop_block20$1$$heap := unsafe.$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$entry;

  inline$java.lang.String$toCharArray$_loop_block20$1$entry:
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return, inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$in_$return, inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$in_i3;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$block20;

  inline$java.lang.String$toCharArray$_loop_block20$1$block20:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block20$1$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon17_Then, inline$java.lang.String$toCharArray$_loop_block20$1$anon17_Else;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon17_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3 == unsafe.$null;
    call inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return, inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$in_$return, inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$1$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$1$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$1$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Return;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon15:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$1$in_r1 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$1$in_r1][inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon15_dummy;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon20_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$1$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$1$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon15;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon12:
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4][inline$java.lang.String$toCharArray$_loop_block20$1$out_i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon20_Then, inline$java.lang.String$toCharArray$_loop_block20$1$anon20_Else;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon20_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block20$1$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$1$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return, inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$in_$return, inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$1$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$1$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$1$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Return;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon19_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$1$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon12;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block20$1$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon19_Then, inline$java.lang.String$toCharArray$_loop_block20$1$anon19_Else;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon19_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block20$1$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return, inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$in_$return, inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$1$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$1$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$1$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Return;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon18_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1
   > inline$java.lang.String$toCharArray$_loop_block20$1$out_i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon9;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon6:
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon18_Then, inline$java.lang.String$toCharArray$_loop_block20$1$anon18_Else;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon18_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$1$out_i3
   >= inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return, inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$in_$return, inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$1$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$1$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$1$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Return;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon17_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3 != unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon6;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Return;

  inline$java.lang.String$toCharArray$_loop_block20$1$exit:
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Return;

  inline$java.lang.String$toCharArray$_loop_block20$1$Return:
    inline$java.lang.String$toCharArray$$1$$return := inline$java.lang.String$toCharArray$_loop_block20$1$out_$return;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception;
    inline$java.lang.String$toCharArray$$1$$r4 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4;
    inline$java.lang.String$toCharArray$$1$$c2 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2;
    inline$java.lang.String$toCharArray$$1$$fakelocal_4 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$$1$$r3 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3;
    inline$java.lang.String$toCharArray$$1$$fakelocal_2 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$$1$$i1 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1;
    inline$java.lang.String$toCharArray$$1$$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$$1$i3 := inline$java.lang.String$toCharArray$_loop_block20$1$out_i3;
    goto inline$java.lang.String$toCharArray$$1$block20$1;

  inline$java.lang.String$toCharArray$$1$block20$1:
    goto inline$java.lang.String$toCharArray$$1$block20_last;

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
    inline$java.lang.String$toCharArray$$1$$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
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
    goto inline$java.lang.String$toCharArray$$1$block21;

  inline$java.lang.String$toCharArray$$1$block21:
    assert {:sourceloc "String.java", 15, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$$return := inline$java.lang.String$toCharArray$$1$r1;
    goto inline$java.lang.String$toCharArray$$1$block22;

  inline$java.lang.String$toCharArray$$1$block22:
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$block20_last:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$anon17_Then, inline$java.lang.String$toCharArray$$1$anon17_Else;

  inline$java.lang.String$toCharArray$$1$Return:
    r5 := inline$java.lang.String$toCharArray$$1$$return;
    $exception := inline$java.lang.String$toCharArray$$1$$exception;
    goto anon12$2;

  anon12$2:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 81, -1, -1, -1} true;
    i5 := 0;
    goto block9;

  block9:
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Entry;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Entry:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return := $return;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception := $exception;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4 := i4;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1 := $i1;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5 := i5;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5 := r5;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1 := $fakelocal_1;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3 := $c3;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2 := $fakelocal_2;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4 := r4;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2 := $c2;
    havoc inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex := unsafe.$objIndex;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap := unsafe.$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$entry;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$entry:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block9;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block9:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4
   + -1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1
   == 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} {:comment "thenblock"} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 85, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
   + 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 85, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11_dummy;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3
   == inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon21:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := unsafe.$intArrHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5][inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3
   != inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} {:comment "elseblock"} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon21;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon18:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3 := unsafe.$intArrHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4][inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Else:
    assume {:partition} !(inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0);
    call inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return := 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon18;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon15:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Else:
    assume {:partition} !(inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0);
    call inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return := 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1
   != 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon15;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11_dummy:
    assume false;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$exit:
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return:
    $return := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return;
    $exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception;
    i4 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4;
    $i1 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1;
    i5 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5;
    $fakelocal_1 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1;
    $c3 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3;
    $fakelocal_2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2;
    $c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    goto block9$1;

  block9$1:
    goto block9_last;

  anon29_Else:
    assume {:partition} $i1 != 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
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
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
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
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} $c3 != $c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} {:comment "elseblock"} true;
    goto anon24;

  anon24:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 84, -1, -1, -1} true;
    $return := 0;
    goto block12;

  anon32_Then:
    assume {:partition} $c3 == $c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  block11:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 85, -1, -1, -1} true;
    i5 := i5 + 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 85, -1, -1, -1} true;
    goto block11_dummy;

  anon29_Then:
    assume {:partition} $i1 == 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 87, -1, -1, -1} true;
    $return := 1;
    goto block12;

  anon28_Then:
    assume {:partition} i4 != $i0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 90, -1, -1, -1} true;
    $return := 0;
    goto block12;

  anon26_Then:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 75, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block11_dummy:
    assume false;
    return;

  block9_last:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    $i1 := i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    i4 := i4 + -1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;
}



implementation unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $c2: int;
  var z0: int;
  var r0: ref;
  var $fakelocal_1: ref;
  var $fakelocal_4: ref;
  var $fakelocal_0: ref;
  var i4: int;
  var $fakelocal_5: ref;
  var $fakelocal_3: ref;
  var $i0: int;
  var r4: ref;
  var $i1: int;
  var r1: ref;
  var r3: ref;
  var $c3: int;
  var $fakelocal_2: ref;
  var r2: ref;
  var inline$java.lang.String$toCharArray$$0$$r4: ref;
  var inline$java.lang.String$toCharArray$$0$$c2: int;
  var inline$java.lang.String$toCharArray$$0$r1: ref;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$$0$$r2: ref;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_0: ref;
  var inline$java.lang.String$toCharArray$$0$$r3: ref;
  var inline$java.lang.String$toCharArray$$0$r0: ref;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$$0$$i0: int;
  var inline$java.lang.String$toCharArray$$0$$i1: int;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$$0$i3: int;
  var inline$java.lang.String$toCharArray$$0$$fakelocal_1: ref;
  var inline$java.lang.String$toCharArray$$0$$this: ref;
  var inline$java.lang.String$toCharArray$$0$$return: ref;
  var inline$java.lang.String$toCharArray$$0$$exception: ref;
  var inline$java.lang.String$toCharArray$$0$$objIndex: int;
  var inline$java.lang.String$toCharArray$$0$$arrSizeHeap: [ref]int;
  var inline$java.lang.String$toCharArray$$0$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$$0$$heap: $heap_type;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_r1: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_r0: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$$heap: $heap_type;
  var inline$java.lang.String$toCharArray$$1$$r4: ref;
  var inline$java.lang.String$toCharArray$$1$$c2: int;
  var inline$java.lang.String$toCharArray$$1$r1: ref;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$$1$$r2: ref;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_0: ref;
  var inline$java.lang.String$toCharArray$$1$$r3: ref;
  var inline$java.lang.String$toCharArray$$1$r0: ref;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$$1$$i0: int;
  var inline$java.lang.String$toCharArray$$1$$i1: int;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$$1$i3: int;
  var inline$java.lang.String$toCharArray$$1$$fakelocal_1: ref;
  var inline$java.lang.String$toCharArray$$1$$this: ref;
  var inline$java.lang.String$toCharArray$$1$$return: ref;
  var inline$java.lang.String$toCharArray$$1$$exception: ref;
  var inline$java.lang.String$toCharArray$$1$$objIndex: int;
  var inline$java.lang.String$toCharArray$$1$$arrSizeHeap: [ref]int;
  var inline$java.lang.String$toCharArray$$1$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$$1$$heap: $heap_type;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_r1: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_r0: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$in_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$1$out_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$_loop_block20$1$$objIndex: int;
  var inline$java.lang.String$toCharArray$_loop_block20$1$$heap: $heap_type;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$return: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$exception: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c2: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_z0: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_4: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_i4: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_5: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_3: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i0: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r4: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i1: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r3: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c3: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_2: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_z0: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$objIndex: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type]
   <: unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor;
    assume {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} $this != unsafe.$null;
    assume unsafe.$heap[$in_parameter__1, unsafe.$type] <: unsafe.java.lang.String;
    assume unsafe.$heap[$in_parameter__0, unsafe.$type] <: unsafe.java.lang.String;
    $exception := unsafe.$null;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 125, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} r1 == unsafe.$null;
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon28_Then:
    assume {:partition} r1 != unsafe.$null;
    $exception := $exception;
    goto anon3;

  anon3:
    goto inline$java.lang.String$toCharArray$$0$Entry;

  inline$java.lang.String$toCharArray$$0$Entry:
    inline$java.lang.String$toCharArray$$0$$this := r1;
    havoc inline$java.lang.String$toCharArray$$0$$r4, inline$java.lang.String$toCharArray$$0$$c2, inline$java.lang.String$toCharArray$$0$r1, inline$java.lang.String$toCharArray$$0$$fakelocal_4, inline$java.lang.String$toCharArray$$0$$r2, inline$java.lang.String$toCharArray$$0$$fakelocal_0, inline$java.lang.String$toCharArray$$0$$r3, inline$java.lang.String$toCharArray$$0$r0, inline$java.lang.String$toCharArray$$0$$fakelocal_2, inline$java.lang.String$toCharArray$$0$$i0, inline$java.lang.String$toCharArray$$0$$i1, inline$java.lang.String$toCharArray$$0$$fakelocal_3, inline$java.lang.String$toCharArray$$0$i3, inline$java.lang.String$toCharArray$$0$$fakelocal_1, inline$java.lang.String$toCharArray$$0$$return, inline$java.lang.String$toCharArray$$0$$exception;
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
    inline$java.lang.String$toCharArray$$0$$r2 := unsafe.$heap[inline$java.lang.String$toCharArray$$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
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
    goto inline$java.lang.String$toCharArray$$0$block20;

  inline$java.lang.String$toCharArray$$0$block20:
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Entry;

  inline$java.lang.String$toCharArray$_loop_block20$0$Entry:
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$return := inline$java.lang.String$toCharArray$$0$$return;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception := inline$java.lang.String$toCharArray$$0$$exception;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4 := inline$java.lang.String$toCharArray$$0$$r4;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2 := inline$java.lang.String$toCharArray$$0$$c2;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_r1 := inline$java.lang.String$toCharArray$$0$r1;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4 := inline$java.lang.String$toCharArray$$0$$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3 := inline$java.lang.String$toCharArray$$0$$r3;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_r0 := inline$java.lang.String$toCharArray$$0$r0;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2 := inline$java.lang.String$toCharArray$$0$$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1 := inline$java.lang.String$toCharArray$$0$$i1;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3 := inline$java.lang.String$toCharArray$$0$$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_i3 := inline$java.lang.String$toCharArray$$0$i3;
    havoc inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3;
    inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap := unsafe.$intArrHeap;
    inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$toCharArray$_loop_block20$0$$heap := unsafe.$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$entry;

  inline$java.lang.String$toCharArray$_loop_block20$0$entry:
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$block20;

  inline$java.lang.String$toCharArray$_loop_block20$0$block20:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon17_Then, inline$java.lang.String$toCharArray$_loop_block20$0$anon17_Else;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon17_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3 == unsafe.$null;
    call inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon15:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r1 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r1][inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon15_dummy;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon20_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon15;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon12:
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4][inline$java.lang.String$toCharArray$_loop_block20$0$out_i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon20_Then, inline$java.lang.String$toCharArray$_loop_block20$0$anon20_Else;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon20_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon19_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon12;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon19_Then, inline$java.lang.String$toCharArray$_loop_block20$0$anon19_Else;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon19_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon18_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1
   > inline$java.lang.String$toCharArray$_loop_block20$0$out_i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon9;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon6:
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon18_Then, inline$java.lang.String$toCharArray$_loop_block20$0$anon18_Else;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon18_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
   >= inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon17_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3 != unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon6;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$exit:
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$Return:
    inline$java.lang.String$toCharArray$$0$$return := inline$java.lang.String$toCharArray$_loop_block20$0$out_$return;
    inline$java.lang.String$toCharArray$$0$$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception;
    inline$java.lang.String$toCharArray$$0$$r4 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4;
    inline$java.lang.String$toCharArray$$0$$c2 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2;
    inline$java.lang.String$toCharArray$$0$$fakelocal_4 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$$0$$r3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3;
    inline$java.lang.String$toCharArray$$0$$fakelocal_2 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$$0$$i1 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1;
    inline$java.lang.String$toCharArray$$0$$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$$0$i3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_i3;
    goto inline$java.lang.String$toCharArray$$0$block20$1;

  inline$java.lang.String$toCharArray$$0$block20$1:
    goto inline$java.lang.String$toCharArray$$0$block20_last;

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
    inline$java.lang.String$toCharArray$$0$$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
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
    goto inline$java.lang.String$toCharArray$$0$block21;

  inline$java.lang.String$toCharArray$$0$block21:
    assert {:sourceloc "String.java", 15, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$$return := inline$java.lang.String$toCharArray$$0$r1;
    goto inline$java.lang.String$toCharArray$$0$block22;

  inline$java.lang.String$toCharArray$$0$block22:
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$block20_last:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$anon17_Then, inline$java.lang.String$toCharArray$$0$anon17_Else;

  inline$java.lang.String$toCharArray$$0$Return:
    r3 := inline$java.lang.String$toCharArray$$0$$return;
    $exception := inline$java.lang.String$toCharArray$$0$$exception;
    goto anon3$1;

  anon3$1:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 126, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} r2 == unsafe.$null;
    call $fakelocal_1 := unsafe.$new(unsafe.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon29_Then:
    assume {:partition} r2 != unsafe.$null;
    $exception := $exception;
    goto anon6;

  anon6:
    goto inline$java.lang.String$toCharArray$$1$Entry;

  inline$java.lang.String$toCharArray$$1$Entry:
    inline$java.lang.String$toCharArray$$1$$this := r2;
    havoc inline$java.lang.String$toCharArray$$1$$r4, inline$java.lang.String$toCharArray$$1$$c2, inline$java.lang.String$toCharArray$$1$r1, inline$java.lang.String$toCharArray$$1$$fakelocal_4, inline$java.lang.String$toCharArray$$1$$r2, inline$java.lang.String$toCharArray$$1$$fakelocal_0, inline$java.lang.String$toCharArray$$1$$r3, inline$java.lang.String$toCharArray$$1$r0, inline$java.lang.String$toCharArray$$1$$fakelocal_2, inline$java.lang.String$toCharArray$$1$$i0, inline$java.lang.String$toCharArray$$1$$i1, inline$java.lang.String$toCharArray$$1$$fakelocal_3, inline$java.lang.String$toCharArray$$1$i3, inline$java.lang.String$toCharArray$$1$$fakelocal_1, inline$java.lang.String$toCharArray$$1$$return, inline$java.lang.String$toCharArray$$1$$exception;
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
    inline$java.lang.String$toCharArray$$1$$r2 := unsafe.$heap[inline$java.lang.String$toCharArray$$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
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
    goto inline$java.lang.String$toCharArray$$1$block20;

  inline$java.lang.String$toCharArray$$1$block20:
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Entry;

  inline$java.lang.String$toCharArray$_loop_block20$1$Entry:
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$return := inline$java.lang.String$toCharArray$$1$$return;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception := inline$java.lang.String$toCharArray$$1$$exception;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4 := inline$java.lang.String$toCharArray$$1$$r4;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2 := inline$java.lang.String$toCharArray$$1$$c2;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_r1 := inline$java.lang.String$toCharArray$$1$r1;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4 := inline$java.lang.String$toCharArray$$1$$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3 := inline$java.lang.String$toCharArray$$1$$r3;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_r0 := inline$java.lang.String$toCharArray$$1$r0;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2 := inline$java.lang.String$toCharArray$$1$$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1 := inline$java.lang.String$toCharArray$$1$$i1;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3 := inline$java.lang.String$toCharArray$$1$$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block20$1$in_i3 := inline$java.lang.String$toCharArray$$1$i3;
    havoc inline$java.lang.String$toCharArray$_loop_block20$1$out_$return, inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$out_i3;
    inline$java.lang.String$toCharArray$_loop_block20$1$$intArrHeap := unsafe.$intArrHeap;
    inline$java.lang.String$toCharArray$_loop_block20$1$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$toCharArray$_loop_block20$1$$heap := unsafe.$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$entry;

  inline$java.lang.String$toCharArray$_loop_block20$1$entry:
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return, inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$in_$return, inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$in_i3;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$block20;

  inline$java.lang.String$toCharArray$_loop_block20$1$block20:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block20$1$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon17_Then, inline$java.lang.String$toCharArray$_loop_block20$1$anon17_Else;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon17_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3 == unsafe.$null;
    call inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return, inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$in_$return, inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$1$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$1$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$1$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Return;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon15:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$1$in_r1 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$1$in_r1][inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon15_dummy;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon20_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$1$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$1$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon15;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon12:
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4][inline$java.lang.String$toCharArray$_loop_block20$1$out_i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon20_Then, inline$java.lang.String$toCharArray$_loop_block20$1$anon20_Else;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon20_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block20$1$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$1$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return, inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$in_$return, inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$1$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$1$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$1$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Return;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon19_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$1$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon12;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block20$1$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon19_Then, inline$java.lang.String$toCharArray$_loop_block20$1$anon19_Else;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon19_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block20$1$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return, inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$in_$return, inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$1$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$1$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$1$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Return;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon18_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1
   > inline$java.lang.String$toCharArray$_loop_block20$1$out_i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon9;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon6:
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon18_Then, inline$java.lang.String$toCharArray$_loop_block20$1$anon18_Else;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon18_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$1$out_i3
   >= inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$return, inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$1$in_$return, inline$java.lang.String$toCharArray$_loop_block20$1$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$1$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$1$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$1$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$1$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$1$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$1$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$1$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Return;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon17_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3 != unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$anon6;

  inline$java.lang.String$toCharArray$_loop_block20$1$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Return;

  inline$java.lang.String$toCharArray$_loop_block20$1$exit:
    goto inline$java.lang.String$toCharArray$_loop_block20$1$Return;

  inline$java.lang.String$toCharArray$_loop_block20$1$Return:
    inline$java.lang.String$toCharArray$$1$$return := inline$java.lang.String$toCharArray$_loop_block20$1$out_$return;
    inline$java.lang.String$toCharArray$$1$$exception := inline$java.lang.String$toCharArray$_loop_block20$1$out_$exception;
    inline$java.lang.String$toCharArray$$1$$r4 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$r4;
    inline$java.lang.String$toCharArray$$1$$c2 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$c2;
    inline$java.lang.String$toCharArray$$1$$fakelocal_4 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$$1$$r3 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$r3;
    inline$java.lang.String$toCharArray$$1$$fakelocal_2 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$$1$$i1 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$i1;
    inline$java.lang.String$toCharArray$$1$$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block20$1$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$$1$i3 := inline$java.lang.String$toCharArray$_loop_block20$1$out_i3;
    goto inline$java.lang.String$toCharArray$$1$block20$1;

  inline$java.lang.String$toCharArray$$1$block20$1:
    goto inline$java.lang.String$toCharArray$$1$block20_last;

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
    inline$java.lang.String$toCharArray$$1$$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
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
    goto inline$java.lang.String$toCharArray$$1$block21;

  inline$java.lang.String$toCharArray$$1$block21:
    assert {:sourceloc "String.java", 15, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$$return := inline$java.lang.String$toCharArray$$1$r1;
    goto inline$java.lang.String$toCharArray$$1$block22;

  inline$java.lang.String$toCharArray$$1$block22:
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$block20_last:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$anon17_Then, inline$java.lang.String$toCharArray$$1$anon17_Else;

  inline$java.lang.String$toCharArray$$1$Return:
    r4 := inline$java.lang.String$toCharArray$$1$$return;
    $exception := inline$java.lang.String$toCharArray$$1$$exception;
    goto anon6$1;

  anon6$1:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 128, -1, -1, -1} true;
    z0 := 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    i4 := 0;
    goto block13;

  block13:
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$Entry;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$Entry:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$return := $return;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$exception := $exception;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c2 := $c2;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_z0 := z0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_4 := $fakelocal_4;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_i4 := i4;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_5 := $fakelocal_5;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_3 := $fakelocal_3;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i0 := $i0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r4 := r4;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i1 := $i1;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r3 := r3;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c3 := $c3;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_2 := $fakelocal_2;
    havoc inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$objIndex := unsafe.$objIndex;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$heap := unsafe.$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$entry;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$entry:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_2;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$block13;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$block13:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon30_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon30_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon30_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r3
   == unsafe.$null;
    call inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return := 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$block15:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
   + 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$block15_dummy;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon27:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 132, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_z0 := 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 132, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$block15;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$block16:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 134, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$block15;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon33_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
   >= inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$block15;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon15:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1 := unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon33_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon33_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon32_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r4
   != unsafe.$null;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon15;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon12:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon32_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon32_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon32_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r4
   == unsafe.$null;
    call inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return := 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon31_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0
   > inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon12;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon9:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0 := unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r3];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon31_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon31_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon31_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
   >= inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} {:comment "thenblock"} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon30_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r3
   != unsafe.$null;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon9;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon36_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3
   == inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$block16;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon24:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2 := unsafe.$intArrHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r4][inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon36_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon36_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon35_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r4]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
     >= 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon24;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon21:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3 := unsafe.$intArrHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r3][inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon35_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon35_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon35_Else:
    assume {:partition} !(inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r4]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
     >= 0);
    call inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return := 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon34_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r3]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
     >= 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon21;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon18:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon34_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon34_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon34_Else:
    assume {:partition} !(inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r3]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
     >= 0);
    call inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return := 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon33_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1
   > inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon18;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon36_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3
   != inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon27;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$block15_dummy:
    assume false;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$exit:
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$Return:
    $return := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return;
    $exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception;
    $c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2;
    z0 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_z0;
    $fakelocal_4 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4;
    i4 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4;
    $fakelocal_5 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5;
    $fakelocal_3 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3;
    $i0 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0;
    $i1 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1;
    $c3 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3;
    $fakelocal_2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2;
    goto block13$1;

  block13$1:
    goto block13_last;

  anon30_Else:
    assume {:partition} r3 == unsafe.$null;
    call $fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon30_Then:
    assume {:partition} r3 != unsafe.$null;
    $exception := $exception;
    goto anon9;

  anon9:
    $i0 := unsafe.$arrSizeHeap[r3];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} $i0 > i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} r4 == unsafe.$null;
    call $fakelocal_3 := unsafe.$new(unsafe.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon32_Then:
    assume {:partition} r4 != unsafe.$null;
    $exception := $exception;
    goto anon15;

  anon15:
    $i1 := unsafe.$arrSizeHeap[r4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} $i1 > i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} {:comment "elseblock"} true;
    goto anon18;

  anon18:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} !(i4 < unsafe.$arrSizeHeap[r3] && i4 >= 0);
    call $fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon34_Then:
    assume {:partition} i4 < unsafe.$arrSizeHeap[r3] && i4 >= 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $c3 := unsafe.$intArrHeap[r3][i4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} !(i4 < unsafe.$arrSizeHeap[r4] && i4 >= 0);
    call $fakelocal_5 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon35_Then:
    assume {:partition} i4 < unsafe.$arrSizeHeap[r4] && i4 >= 0;
    $exception := $exception;
    goto anon24;

  anon24:
    $c2 := unsafe.$intArrHeap[r4][i4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} $c3 != $c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} {:comment "elseblock"} true;
    goto anon27;

  anon27:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 132, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 132, -1, -1, -1} true;
    goto block15;

  block15:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    i4 := i4 + 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    goto block15_dummy;

  anon36_Then:
    assume {:partition} $c3 == $c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  block16:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 134, -1, -1, -1} true;
    goto block15;

  anon33_Then:
    assume {:partition} i4 >= $i1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  anon31_Then:
    assume {:partition} i4 >= $i0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 141, -1, -1, -1} true;
    $return := z0;
    goto block17;

  block17:
    return;

  block15_dummy:
    assume false;
    return;

  block13_last:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;
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
    goto block18;

  block18:
    return;
}



implementation unsafe.java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var $r1: ref;
  var $c1: int;
  var i0: int;
  var r0: ref;
  var $fakelocal_0: ref;

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
    goto block19;

  block19:
    return;
}



implementation unsafe.java.lang.String$toCharArray$($this: ref) returns ($return: ref, $exception: ref)
{
  var $r4: ref;
  var $c2: int;
  var r1: ref;
  var $fakelocal_4: ref;
  var $r2: ref;
  var $fakelocal_0: ref;
  var $r3: ref;
  var r0: ref;
  var $fakelocal_2: ref;
  var $i0: int;
  var $i1: int;
  var $fakelocal_3: ref;
  var i3: int;
  var $fakelocal_1: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_r1: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_r0: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$$heap: $heap_type;

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
    $r2 := unsafe.$heap[r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
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
    goto block20;

  block20:
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Entry;

  inline$java.lang.String$toCharArray$_loop_block20$0$Entry:
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$return := $return;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception := $exception;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4 := $r4;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2 := $c2;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_r1 := r1;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4 := $fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3 := $r3;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_r0 := r0;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2 := $fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1 := $i1;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3 := $fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_i3 := i3;
    havoc inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3;
    inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap := unsafe.$intArrHeap;
    inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$toCharArray$_loop_block20$0$$heap := unsafe.$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$entry;

  inline$java.lang.String$toCharArray$_loop_block20$0$entry:
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$block20;

  inline$java.lang.String$toCharArray$_loop_block20$0$block20:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon17_Then, inline$java.lang.String$toCharArray$_loop_block20$0$anon17_Else;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon17_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3 == unsafe.$null;
    call inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon15:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r1 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r1][inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon15_dummy;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon20_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon15;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon12:
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4][inline$java.lang.String$toCharArray$_loop_block20$0$out_i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon20_Then, inline$java.lang.String$toCharArray$_loop_block20$0$anon20_Else;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon20_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon19_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon12;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon19_Then, inline$java.lang.String$toCharArray$_loop_block20$0$anon19_Else;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon19_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon18_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1
   > inline$java.lang.String$toCharArray$_loop_block20$0$out_i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon9;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon6:
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon18_Then, inline$java.lang.String$toCharArray$_loop_block20$0$anon18_Else;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon18_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
   >= inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon17_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3 != unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon6;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$exit:
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$Return:
    $return := inline$java.lang.String$toCharArray$_loop_block20$0$out_$return;
    $exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception;
    $r4 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4;
    $c2 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2;
    $fakelocal_4 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4;
    $r3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3;
    $fakelocal_2 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2;
    $i1 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1;
    $fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3;
    i3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_i3;
    goto block20$1;

  block20$1:
    goto block20_last;

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
    $r4 := unsafe.$heap[r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
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
    goto block21;

  block21:
    assert {:sourceloc "String.java", 15, -1, -1, -1} true;
    $return := r1;
    goto block22;

  block22:
    return;

  anon15_dummy:
    assume false;
    return;

  block20_last:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    $r3 := unsafe.$heap[r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;
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
    goto block23;

  block23:
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$block23;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$block23:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    $exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    $return := $r0;
    goto block24;

  block24:
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
    goto block25;

  block25:
    return;
}



implementation unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := unsafe.$null;
    return;
}



implementation unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9(in_$return: int, 
    in_$exception: ref, 
    in_i4: int, 
    in_$i1: int, 
    in_i5: int, 
    in_r5: ref, 
    in_$fakelocal_1: ref, 
    in_$c3: int, 
    in_$fakelocal_2: ref, 
    in_r4: ref, 
    in_$c2: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_i4: int, 
    out_$i1: int, 
    out_i5: int, 
    out_$fakelocal_1: ref, 
    out_$c3: int, 
    out_$fakelocal_2: ref, 
    out_$c2: int)
{
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap: $heap_type;

  entry:
    out_$return, out_$exception, out_i4, out_$i1, out_i5, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2 := in_$return, in_$exception, in_i4, in_$i1, in_i5, in_$fakelocal_1, in_$c3, in_$fakelocal_2, in_$c2;
    goto block9;

  block9:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    out_$i1 := out_i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    out_i4 := out_i4 + -1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Then:
    assume {:partition} out_$i1 == 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_i4, out_$i1, out_i5, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2 := in_$return, in_$exception, in_i4, in_$i1, in_i5, in_$fakelocal_1, in_$c3, in_$fakelocal_2, in_$c2;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  block11:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 85, -1, -1, -1} true;
    out_i5 := out_i5 + 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 85, -1, -1, -1} true;
    goto block11_dummy;

  anon32_Then:
    assume {:partition} out_$c3 == out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  anon21:
    out_$c2 := unsafe.$intArrHeap[in_r5][out_i5];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} out_$c3 != out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} {:comment "elseblock"} true;
    out_$return, out_$exception, out_i4, out_$i1, out_i5, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2 := in_$return, in_$exception, in_i4, in_$i1, in_i5, in_$fakelocal_1, in_$c3, in_$fakelocal_2, in_$c2;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon31_Then:
    assume {:partition} out_i5 < unsafe.$arrSizeHeap[in_r5] && out_i5 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    out_$c3 := unsafe.$intArrHeap[in_r4][out_i5];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(out_i5 < unsafe.$arrSizeHeap[in_r5] && out_i5 >= 0);
    call out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_i4, out_$i1, out_i5, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2 := in_$return, in_$exception, in_i4, in_$i1, in_i5, in_$fakelocal_1, in_$c3, in_$fakelocal_2, in_$c2;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon30_Then:
    assume {:partition} out_i5 < unsafe.$arrSizeHeap[in_r4] && out_i5 >= 0;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(out_i5 < unsafe.$arrSizeHeap[in_r4] && out_i5 >= 0);
    call out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_i4, out_$i1, out_i5, out_$fakelocal_1, out_$c3, out_$fakelocal_2, out_$c2 := in_$return, in_$exception, in_i4, in_$i1, in_i5, in_$fakelocal_1, in_$c3, in_$fakelocal_2, in_$c2;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon29_Else:
    assume {:partition} out_$i1 != 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  block11_dummy:
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Entry;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Entry:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return := out_$return;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception := out_$exception;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4 := out_i4;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1 := out_$i1;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5 := out_i5;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5 := in_r5;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1 := out_$fakelocal_1;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3 := out_$c3;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2 := out_$fakelocal_2;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4 := in_r4;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2 := out_$c2;
    havoc inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex := unsafe.$objIndex;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap := unsafe.$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$entry;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$entry:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block9;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block9:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4
   + -1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1
   == 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} {:comment "thenblock"} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 85, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
   + 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 85, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11_dummy;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3
   == inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon21:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := unsafe.$intArrHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5][inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon32_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3
   != inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} {:comment "elseblock"} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon21;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon18:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3 := unsafe.$intArrHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4][inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon31_Else:
    assume {:partition} !(inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r5]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0);
    call inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return := 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon18;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon15:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 83, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon30_Else:
    assume {:partition} !(inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_r4]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5
     >= 0);
    call inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return := 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_i5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$fakelocal_2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$in_$c2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon29_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1
   != 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 82, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$anon15;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$block11_dummy:
    assume false;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$exit:
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$Return:
    out_$return := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$return;
    out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$exception;
    out_i4 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i4;
    out_$i1 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$i1;
    out_i5 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_i5;
    out_$fakelocal_1 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_1;
    out_$c3 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c3;
    out_$fakelocal_2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$fakelocal_2;
    out_$c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_unsafe$java.lang.String_java.lang.Object_loop_block9$0$out_$c2;
    goto block11_dummy$1;

  block11_dummy$1:
    return;

  exit:
    return;
}



implementation unsafe.org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13(in_$return: int, 
    in_$exception: ref, 
    in_$c2: int, 
    in_z0: int, 
    in_$fakelocal_4: ref, 
    in_i4: int, 
    in_$fakelocal_5: ref, 
    in_$fakelocal_3: ref, 
    in_$i0: int, 
    in_r4: ref, 
    in_$i1: int, 
    in_r3: ref, 
    in_$c3: int, 
    in_$fakelocal_2: ref)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$c2: int, 
    out_z0: int, 
    out_$fakelocal_4: ref, 
    out_i4: int, 
    out_$fakelocal_5: ref, 
    out_$fakelocal_3: ref, 
    out_$i0: int, 
    out_$i1: int, 
    out_$c3: int, 
    out_$fakelocal_2: ref)
{
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$return: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$exception: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c2: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_z0: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_4: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_i4: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_5: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_3: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i0: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r4: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i1: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r3: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c3: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_2: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_z0: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2: ref;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$objIndex: int;
  var inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$heap: $heap_type;

  entry:
    out_$return, out_$exception, out_$c2, out_z0, out_$fakelocal_4, out_i4, out_$fakelocal_5, out_$fakelocal_3, out_$i0, out_$i1, out_$c3, out_$fakelocal_2 := in_$return, in_$exception, in_$c2, in_z0, in_$fakelocal_4, in_i4, in_$fakelocal_5, in_$fakelocal_3, in_$i0, in_$i1, in_$c3, in_$fakelocal_2;
    goto block13;

  block13:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} in_r3 == unsafe.$null;
    call out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$c2, out_z0, out_$fakelocal_4, out_i4, out_$fakelocal_5, out_$fakelocal_3, out_$i0, out_$i1, out_$c3, out_$fakelocal_2 := in_$return, in_$exception, in_$c2, in_z0, in_$fakelocal_4, in_i4, in_$fakelocal_5, in_$fakelocal_3, in_$i0, in_$i1, in_$c3, in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  block15:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    out_i4 := out_i4 + 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    goto block15_dummy;

  anon27:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 132, -1, -1, -1} true;
    out_z0 := 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 132, -1, -1, -1} true;
    goto block15;

  block16:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 134, -1, -1, -1} true;
    goto block15;

  anon33_Then:
    assume {:partition} out_i4 >= out_$i1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} {:comment "thenblock"} true;
    goto block15;

  anon15:
    out_$i1 := unsafe.$arrSizeHeap[in_r4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon32_Then:
    assume {:partition} in_r4 != unsafe.$null;
    out_$exception := out_$exception;
    goto anon15;

  anon12:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} in_r4 == unsafe.$null;
    call out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.NullPointerException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$c2, out_z0, out_$fakelocal_4, out_i4, out_$fakelocal_5, out_$fakelocal_3, out_$i0, out_$i1, out_$c3, out_$fakelocal_2 := in_$return, in_$exception, in_$c2, in_z0, in_$fakelocal_4, in_i4, in_$fakelocal_5, in_$fakelocal_3, in_$i0, in_$i1, in_$c3, in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon31_Else:
    assume {:partition} out_$i0 > out_i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon9:
    out_$i0 := unsafe.$arrSizeHeap[in_r3];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Then:
    assume {:partition} out_i4 >= out_$i0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$c2, out_z0, out_$fakelocal_4, out_i4, out_$fakelocal_5, out_$fakelocal_3, out_$i0, out_$i1, out_$c3, out_$fakelocal_2 := in_$return, in_$exception, in_$c2, in_z0, in_$fakelocal_4, in_i4, in_$fakelocal_5, in_$fakelocal_3, in_$i0, in_$i1, in_$c3, in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon30_Then:
    assume {:partition} in_r3 != unsafe.$null;
    out_$exception := out_$exception;
    goto anon9;

  anon36_Then:
    assume {:partition} out_$c3 == out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;

  anon24:
    out_$c2 := unsafe.$intArrHeap[in_r4][out_i4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} true;
    goto anon36_Then, anon36_Else;

  anon35_Then:
    assume {:partition} out_i4 < unsafe.$arrSizeHeap[in_r4] && out_i4 >= 0;
    out_$exception := out_$exception;
    goto anon24;

  anon21:
    out_$c3 := unsafe.$intArrHeap[in_r3][out_i4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} !(out_i4 < unsafe.$arrSizeHeap[in_r4] && out_i4 >= 0);
    call out_$fakelocal_5 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$c2, out_z0, out_$fakelocal_4, out_i4, out_$fakelocal_5, out_$fakelocal_3, out_$i0, out_$i1, out_$c3, out_$fakelocal_2 := in_$return, in_$exception, in_$c2, in_z0, in_$fakelocal_4, in_i4, in_$fakelocal_5, in_$fakelocal_3, in_$i0, in_$i1, in_$c3, in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon34_Then:
    assume {:partition} out_i4 < unsafe.$arrSizeHeap[in_r3] && out_i4 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} !(out_i4 < unsafe.$arrSizeHeap[in_r3] && out_i4 >= 0);
    call out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$c2, out_z0, out_$fakelocal_4, out_i4, out_$fakelocal_5, out_$fakelocal_3, out_$i0, out_$i1, out_$c3, out_$fakelocal_2 := in_$return, in_$exception, in_$c2, in_z0, in_$fakelocal_4, in_i4, in_$fakelocal_5, in_$fakelocal_3, in_$i0, in_$i1, in_$c3, in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon33_Else:
    assume {:partition} out_$i1 > out_i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} {:comment "elseblock"} true;
    goto anon18;

  anon36_Else:
    assume {:partition} out_$c3 != out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} {:comment "elseblock"} true;
    goto anon27;

  block15_dummy:
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$Entry;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$Entry:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$return := out_$return;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$exception := out_$exception;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c2 := out_$c2;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_z0 := out_z0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_4 := out_$fakelocal_4;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_i4 := out_i4;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_5 := out_$fakelocal_5;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_3 := out_$fakelocal_3;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i0 := out_$i0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r4 := in_r4;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i1 := out_$i1;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r3 := in_r3;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c3 := out_$c3;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_2 := out_$fakelocal_2;
    havoc inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$objIndex := unsafe.$objIndex;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$heap := unsafe.$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$entry;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$entry:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_2;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$block13;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$block13:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon30_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon30_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon30_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r3
   == unsafe.$null;
    call inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return := 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$block15:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
   + 1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$block15_dummy;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon27:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 132, -1, -1, -1} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_z0 := 0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 132, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$block15;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$block16:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 134, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$block15;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon33_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
   >= inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$block15;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon15:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1 := unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon33_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon33_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon32_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r4
   != unsafe.$null;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon15;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon12:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon32_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon32_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon32_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r4
   == unsafe.$null;
    call inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return := 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon31_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0
   > inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon12;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon9:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0 := unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r3];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon31_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon31_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon31_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
   >= inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 129, -1, -1, -1} {:comment "thenblock"} true;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon30_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r3
   != unsafe.$null;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon9;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon36_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3
   == inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$block16;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon24:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2 := unsafe.$intArrHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r4][inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon36_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon36_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon35_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r4]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
     >= 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon24;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon21:
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3 := unsafe.$intArrHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r3][inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4];
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon35_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon35_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon35_Else:
    assume {:partition} !(inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r4]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
     >= 0);
    call inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return := 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon34_Then:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r3]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
     >= 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon21;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon18:
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon34_Then, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon34_Else;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon34_Else:
    assume {:partition} !(inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
     < unsafe.$arrSizeHeap[inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_r3]
   && inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4
     >= 0);
    call inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return := 0;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4;
    inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$return, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$exception, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c2, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_z0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_i4, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_5, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i0, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$i1, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$c3, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$in_$fakelocal_2;
    unsafe.$objIndex, unsafe.$heap := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$objIndex, inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$$heap;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon33_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1
   > inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 130, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon18;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon36_Else:
    assume {:partition} inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3
   != inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2;
    assert {:sourceloc "ClearTextPasswordEncryptor.java", 131, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$anon27;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$block15_dummy:
    assume false;
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$exit:
    goto inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$Return;

  inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$Return:
    out_$return := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$return;
    out_$exception := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$exception;
    out_$c2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c2;
    out_z0 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_z0;
    out_$fakelocal_4 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_4;
    out_i4 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_i4;
    out_$fakelocal_5 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_5;
    out_$fakelocal_3 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_3;
    out_$i0 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i0;
    out_$i1 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$i1;
    out_$c3 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$c3;
    out_$fakelocal_2 := inline$org.apache.ftpserver.usermanager.ClearTextPasswordEncryptor$isEqual_safe$java.lang.String_java.lang.String_loop_block13$0$out_$fakelocal_2;
    goto block15_dummy$1;

  block15_dummy$1:
    return;

  exit:
    return;
}



implementation unsafe.java.lang.String$toCharArray$_loop_block20(in_$return: ref, 
    in_$exception: ref, 
    in_$r4: ref, 
    in_$c2: int, 
    in_r1: ref, 
    in_$fakelocal_4: ref, 
    in_$r3: ref, 
    in_r0: ref, 
    in_$fakelocal_2: ref, 
    in_$i1: int, 
    in_$fakelocal_3: ref, 
    in_i3: int)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$r4: ref, 
    out_$c2: int, 
    out_$fakelocal_4: ref, 
    out_$r3: ref, 
    out_$fakelocal_2: ref, 
    out_$i1: int, 
    out_$fakelocal_3: ref, 
    out_i3: int)
{
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_r1: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_r0: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$in_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$return: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3: ref;
  var inline$java.lang.String$toCharArray$_loop_block20$0$out_i3: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap: intArrHeap_type;
  var inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex: int;
  var inline$java.lang.String$toCharArray$_loop_block20$0$$heap: $heap_type;

  entry:
    out_$return, out_$exception, out_$r4, out_$c2, out_$fakelocal_4, out_$r3, out_$fakelocal_2, out_$i1, out_$fakelocal_3, out_i3 := in_$return, in_$exception, in_$r4, in_$c2, in_$fakelocal_4, in_$r3, in_$fakelocal_2, in_$i1, in_$fakelocal_3, in_i3;
    goto block20;

  block20:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    out_$r3 := unsafe.$heap[in_r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} out_$r3 == unsafe.$null;
    call out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    out_$return := unsafe.$null;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$r4, out_$c2, out_$fakelocal_4, out_$r3, out_$fakelocal_2, out_$i1, out_$fakelocal_3, out_i3 := in_$return, in_$exception, in_$r4, in_$c2, in_$fakelocal_4, in_$r3, in_$fakelocal_2, in_$i1, in_$fakelocal_3, in_i3;
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
    out_$return, out_$exception, out_$r4, out_$c2, out_$fakelocal_4, out_$r3, out_$fakelocal_2, out_$i1, out_$fakelocal_3, out_i3 := in_$return, in_$exception, in_$r4, in_$c2, in_$fakelocal_4, in_$r3, in_$fakelocal_2, in_$i1, in_$fakelocal_3, in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon19_Then:
    assume {:partition} out_i3 < unsafe.$arrSizeHeap[out_$r4] && out_i3 >= 0;
    out_$exception := out_$exception;
    goto anon12;

  anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    out_$r4 := unsafe.$heap[in_r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} !(out_i3 < unsafe.$arrSizeHeap[out_$r4] && out_i3 >= 0);
    call out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := unsafe.$null;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$r4, out_$c2, out_$fakelocal_4, out_$r3, out_$fakelocal_2, out_$i1, out_$fakelocal_3, out_i3 := in_$return, in_$exception, in_$r4, in_$c2, in_$fakelocal_4, in_$r3, in_$fakelocal_2, in_$i1, in_$fakelocal_3, in_i3;
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
    out_$return, out_$exception, out_$r4, out_$c2, out_$fakelocal_4, out_$r3, out_$fakelocal_2, out_$i1, out_$fakelocal_3, out_i3 := in_$return, in_$exception, in_$r4, in_$c2, in_$fakelocal_4, in_$r3, in_$fakelocal_2, in_$i1, in_$fakelocal_3, in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := old(unsafe.$intArrHeap), old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon17_Then:
    assume {:partition} out_$r3 != unsafe.$null;
    out_$exception := out_$exception;
    goto anon6;

  anon15_dummy:
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Entry;

  inline$java.lang.String$toCharArray$_loop_block20$0$Entry:
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$return := out_$return;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception := out_$exception;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4 := out_$r4;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2 := out_$c2;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_r1 := in_r1;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4 := out_$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3 := out_$r3;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_r0 := in_r0;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2 := out_$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1 := out_$i1;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3 := out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block20$0$in_i3 := out_i3;
    havoc inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3;
    inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap := unsafe.$intArrHeap;
    inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex := unsafe.$objIndex;
    inline$java.lang.String$toCharArray$_loop_block20$0$$heap := unsafe.$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$entry;

  inline$java.lang.String$toCharArray$_loop_block20$0$entry:
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$block20;

  inline$java.lang.String$toCharArray$_loop_block20$0$block20:
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon17_Then, inline$java.lang.String$toCharArray$_loop_block20$0$anon17_Else;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon17_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3 == unsafe.$null;
    call inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.NullPointerException);
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon15:
    unsafe.$intArrHeap := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r1 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r1][inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2]];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 + 1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon15_dummy;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon20_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon15;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon12:
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2 := unsafe.$intArrHeap[inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4][inline$java.lang.String$toCharArray$_loop_block20$0$out_i3];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon20_Then, inline$java.lang.String$toCharArray$_loop_block20$0$anon20_Else;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon20_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r1]
   && inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon19_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 >= 0;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon12;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon9:
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4 := unsafe.$heap[inline$java.lang.String$toCharArray$_loop_block20$0$in_r0, unsafe.char$lp$$rp$$java.lang.String$chars300];
    assert {:sourceloc "String.java", 13, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon19_Then, inline$java.lang.String$toCharArray$_loop_block20$0$anon19_Else;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon19_Else:
    assume {:partition} !(inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
     < unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4]
   && inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 >= 0);
    call inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return := unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon18_Else:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1
   > inline$java.lang.String$toCharArray$_loop_block20$0$out_i3;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon9;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon6:
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1 := unsafe.$arrSizeHeap[inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3];
    assert {:sourceloc "String.java", 12, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon18_Then, inline$java.lang.String$toCharArray$_loop_block20$0$anon18_Else;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon18_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_i3
   >= inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1;
    assert {:sourceloc "String.java", 12, -1, -1, -1} {:comment "thenblock"} true;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$return, inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$in_$return, inline$java.lang.String$toCharArray$_loop_block20$0$in_$exception, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$c2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_4, inline$java.lang.String$toCharArray$_loop_block20$0$in_$r3, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_2, inline$java.lang.String$toCharArray$_loop_block20$0$in_$i1, inline$java.lang.String$toCharArray$_loop_block20$0$in_$fakelocal_3, inline$java.lang.String$toCharArray$_loop_block20$0$in_i3;
    unsafe.$intArrHeap, unsafe.$objIndex, unsafe.$heap := inline$java.lang.String$toCharArray$_loop_block20$0$$intArrHeap, inline$java.lang.String$toCharArray$_loop_block20$0$$objIndex, inline$java.lang.String$toCharArray$_loop_block20$0$$heap;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon17_Then:
    assume {:partition} inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3 != unsafe.$null;
    inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$anon6;

  inline$java.lang.String$toCharArray$_loop_block20$0$anon15_dummy:
    assume false;
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$exit:
    goto inline$java.lang.String$toCharArray$_loop_block20$0$Return;

  inline$java.lang.String$toCharArray$_loop_block20$0$Return:
    out_$return := inline$java.lang.String$toCharArray$_loop_block20$0$out_$return;
    out_$exception := inline$java.lang.String$toCharArray$_loop_block20$0$out_$exception;
    out_$r4 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$r4;
    out_$c2 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$c2;
    out_$fakelocal_4 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_4;
    out_$r3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$r3;
    out_$fakelocal_2 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_2;
    out_$i1 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$i1;
    out_$fakelocal_3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_$fakelocal_3;
    out_i3 := inline$java.lang.String$toCharArray$_loop_block20$0$out_i3;
    goto anon15_dummy$1;

  anon15_dummy$1:
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
