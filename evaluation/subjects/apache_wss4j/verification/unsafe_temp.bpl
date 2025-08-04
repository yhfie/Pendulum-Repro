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

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique unsafe.java.lang.Boolean: javaType extends unique unsafe.java.lang.Object complete;

const {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} unique unsafe.SimplifiedUsernameTokenValidatorImpl: javaType extends unique unsafe.java.lang.Object complete;

const {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} unique unsafe.java.lang.Comparable: javaType extends complete;

const {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} unique unsafe.java.lang.CharSequence: javaType extends complete;

const {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} unique unsafe.java.lang.ClassCastException: javaType extends unique unsafe.java.lang.RuntimeException complete;

const {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} unique unsafe.org.apache.wss4j.binding.wss10.PasswordString: javaType extends complete;

const {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} unique unsafe.org.apache.ws.security.WSSecurityException: javaType extends complete;

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
  free ensures unsafe.$heap[$other, unsafe.$type] == unsafe.$heap[$this, unsafe.$type];
  free ensures unsafe.$heap[$other, unsafe.$alloc] <==> true;



procedure {:prefix "unsafe"} unsafe.int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure {:prefix "unsafe"} unsafe.java.lang.String$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.String$toCharArray$($this: ref) returns ($return: ref, $exception: ref);



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "unsafe"} unsafe.SimplifiedUsernameTokenValidatorImpl$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.SimplifiedUsernameTokenValidatorImpl$verifyPlaintextPassword$org.apache.wss4j.binding.wss10.PasswordString_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref) returns ($exception: ref);
  modifies unsafe.$objIndex, unsafe.$heap;



procedure {:prefix "unsafe"} unsafe.org.apache.wss4j.binding.wss10.PasswordString$getValue$($this: ref) returns ($return: ref, $exception: ref);



procedure {:prefix "unsafe"} unsafe.org.apache.ws.security.WSSecurityException$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.org.apache.wss4j.binding.wss10.PasswordString$setValue$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure {:prefix "unsafe"} unsafe.SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10(in_$return: int, 
    in_$exception: ref, 
    in_r4: ref, 
    in_$c2: int, 
    in_$c3: int, 
    in_$fakelocal_1: ref, 
    in_i4: int, 
    in_$i1: int, 
    in_$fakelocal_2: ref, 
    in_r3: ref, 
    in_i5: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$c2: int, 
    out_$c3: int, 
    out_$fakelocal_1: ref, 
    out_i4: int, 
    out_$i1: int, 
    out_$fakelocal_2: ref, 
    out_i5: int);
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
  var $c1: int;
  var r0: ref;
  var $r1: ref;
  var $fakelocal_0: ref;
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
  var $r1: ref;
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
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    $r1 := unsafe.$heap[r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    $return := $r1;
    goto block3;

  block3:
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
    goto block4;

  block4:
    return;
}



implementation unsafe.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var $r0: ref;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    $exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    $return := $r0;
    goto block5;

  block5:
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
    goto block6;

  block6:
    return;
}



implementation unsafe.SimplifiedUsernameTokenValidatorImpl$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} unsafe.$heap[$this, unsafe.$type] <: unsafe.SimplifiedUsernameTokenValidatorImpl;
    assume {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} $this != unsafe.$null;
    $exception := unsafe.$null;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 24, -1, -1, -1} true;
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
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 24, -1, -1, -1} true;
    goto block7;

  block7:
    return;
}



implementation unsafe.SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $i0: int;
  var r4: ref;
  var $z0: int;
  var $c2: int;
  var $c3: int;
  var $fakelocal_1: ref;
  var i4: int;
  var r1: ref;
  var r2: ref;
  var $i1: int;
  var $fakelocal_0: ref;
  var r0: ref;
  var $fakelocal_2: ref;
  var r3: ref;
  var i5: int;
  var inline$java.lang.String$toCharArray$$0$$r1: ref;
  var inline$java.lang.String$toCharArray$$0$r0: ref;
  var inline$java.lang.String$toCharArray$$0$$this: ref;
  var inline$java.lang.String$toCharArray$$0$$return: ref;
  var inline$java.lang.String$toCharArray$$0$$exception: ref;
  var inline$java.lang.String$toCharArray$$1$$r1: ref;
  var inline$java.lang.String$toCharArray$$1$r0: ref;
  var inline$java.lang.String$toCharArray$$1$$this: ref;
  var inline$java.lang.String$toCharArray$$1$$return: ref;
  var inline$java.lang.String$toCharArray$$1$$exception: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r4: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r3: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$objIndex: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume unsafe.$heap[$in_parameter__1, unsafe.$type] <: unsafe.java.lang.Object;
    assume unsafe.$heap[$in_parameter__0, unsafe.$type] <: unsafe.java.lang.String;
    $exception := unsafe.$null;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 27, -1, -1, -1} true;
    goto anon25_Then, anon25_Else;

  anon25_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 27, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 28, -1, -1, -1} true;
    $return := 1;
    goto block13;

  block13:
    return;

  anon25_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 27, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 30, -1, -1, -1} true;
    $z0 := unsafe.$boolToInt(r1 != unsafe.$null && unsafe.$heap[r1, unsafe.$type] <: unsafe.java.lang.String);
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 30, -1, -1, -1} true;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 30, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 31, -1, -1, -1} true;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} !(unsafe.$heap[r1, unsafe.$type] <: unsafe.java.lang.String);
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon27_Then:
    assume {:partition} unsafe.$heap[r1, unsafe.$type] <: unsafe.java.lang.String;
    $exception := $exception;
    goto anon9;

  anon9:
    r2 := r1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 32, -1, -1, -1} true;
    i4 := unsafe.$stringSizeHeap[r0];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 33, -1, -1, -1} true;
    $i0 := unsafe.$stringSizeHeap[r2];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 33, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} i4 == $i0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 33, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 34, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$Entry;

  inline$java.lang.String$toCharArray$$0$Entry:
    inline$java.lang.String$toCharArray$$0$$this := r0;
    havoc inline$java.lang.String$toCharArray$$0$$r1, inline$java.lang.String$toCharArray$$0$r0, inline$java.lang.String$toCharArray$$0$$return, inline$java.lang.String$toCharArray$$0$$exception;
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
    inline$java.lang.String$toCharArray$$0$$r1 := unsafe.$heap[inline$java.lang.String$toCharArray$$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$$return := inline$java.lang.String$toCharArray$$0$$r1;
    goto inline$java.lang.String$toCharArray$$0$block3;

  inline$java.lang.String$toCharArray$$0$block3:
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$Return:
    r3 := inline$java.lang.String$toCharArray$$0$$return;
    $exception := inline$java.lang.String$toCharArray$$0$$exception;
    goto anon12$1;

  anon12$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 35, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$Entry;

  inline$java.lang.String$toCharArray$$1$Entry:
    inline$java.lang.String$toCharArray$$1$$this := r2;
    havoc inline$java.lang.String$toCharArray$$1$$r1, inline$java.lang.String$toCharArray$$1$r0, inline$java.lang.String$toCharArray$$1$$return, inline$java.lang.String$toCharArray$$1$$exception;
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
    inline$java.lang.String$toCharArray$$1$$r1 := unsafe.$heap[inline$java.lang.String$toCharArray$$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$$return := inline$java.lang.String$toCharArray$$1$$r1;
    goto inline$java.lang.String$toCharArray$$1$block3;

  inline$java.lang.String$toCharArray$$1$block3:
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$Return:
    r4 := inline$java.lang.String$toCharArray$$1$$return;
    $exception := inline$java.lang.String$toCharArray$$1$$exception;
    goto anon12$2;

  anon12$2:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 36, -1, -1, -1} true;
    i5 := 0;
    goto block10;

  block10:
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Entry;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Entry:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return := $return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception := $exception;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r4 := r4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2 := $c2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3 := $c3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1 := $fakelocal_1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4 := i4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1 := $i1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2 := $fakelocal_2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r3 := r3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5 := i5;
    havoc inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$objIndex := unsafe.$objIndex;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$heap := unsafe.$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$entry;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$entry:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$block10;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$block10:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4
   + -1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon29_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon29_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon29_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1
   == 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} {:comment "thenblock"} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5;
    unsafe.$objIndex, unsafe.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$block12:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 40, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
   + 1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 40, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$block12_dummy;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon32_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3
   == inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$block12;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon21:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2 := unsafe.$intArrHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r4][inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon32_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon32_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon32_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3
   != inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} {:comment "elseblock"} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5;
    unsafe.$objIndex, unsafe.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon31_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     < unsafe.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r4]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     >= 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon21;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon18:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3 := unsafe.$intArrHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r3][inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon31_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon31_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon31_Else:
    assume {:partition} !(inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     < unsafe.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r4]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     >= 0);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5;
    unsafe.$objIndex, unsafe.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon30_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     < unsafe.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r3]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     >= 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon18;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon15:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon30_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon30_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon30_Else:
    assume {:partition} !(inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     < unsafe.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r3]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     >= 0);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5;
    unsafe.$objIndex, unsafe.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon29_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1
   != 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon15;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$block12_dummy:
    assume false;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$exit:
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return:
    $return := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return;
    $exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception;
    $c2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2;
    $c3 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3;
    $fakelocal_1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1;
    i4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4;
    $i1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1;
    $fakelocal_2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2;
    i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5;
    goto block10$1;

  block10$1:
    goto block10_last;

  anon29_Else:
    assume {:partition} $i1 != 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(i5 < unsafe.$arrSizeHeap[r3] && i5 >= 0);
    call $fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon30_Then:
    assume {:partition} i5 < unsafe.$arrSizeHeap[r3] && i5 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $c3 := unsafe.$intArrHeap[r3][i5];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(i5 < unsafe.$arrSizeHeap[r4] && i5 >= 0);
    call $fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon31_Then:
    assume {:partition} i5 < unsafe.$arrSizeHeap[r4] && i5 >= 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $c2 := unsafe.$intArrHeap[r4][i5];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} $c3 != $c2;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} {:comment "elseblock"} true;
    goto anon24;

  anon24:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 39, -1, -1, -1} true;
    $return := 0;
    goto block13;

  anon32_Then:
    assume {:partition} $c3 == $c2;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} {:comment "thenblock"} true;
    goto block12;

  block12:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 40, -1, -1, -1} true;
    i5 := i5 + 1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 40, -1, -1, -1} true;
    goto block12_dummy;

  anon29_Then:
    assume {:partition} $i1 == 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} {:comment "thenblock"} true;
    goto block11;

  block11:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    $return := 1;
    goto block13;

  anon28_Then:
    assume {:partition} i4 != $i0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 33, -1, -1, -1} {:comment "thenblock"} true;
    goto block9;

  block9:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 45, -1, -1, -1} true;
    $return := 0;
    goto block13;

  anon26_Then:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 30, -1, -1, -1} {:comment "thenblock"} true;
    goto block9;

  block12_dummy:
    assume false;
    return;

  block10_last:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    $i1 := i4;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    i4 := i4 + -1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;
}



implementation unsafe.SimplifiedUsernameTokenValidatorImpl$verifyPlaintextPassword$org.apache.wss4j.binding.wss10.PasswordString_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref) returns ($exception: ref)
{
  var $r2: ref;
  var $fakelocal_2: ref;
  var r0: ref;
  var $fakelocal_0: ref;
  var r4: ref;
  var r1: ref;
  var r5: ref;
  var $fakelocal_1: ref;
  var $z0: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i0: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r4: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$z0: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c2: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c3: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_1: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r1: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r2: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i1: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_0: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r0: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_2: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r3: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$in_parameter__0: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$in_parameter__1: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$objIndex: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$heap: $heap_type;
  var inline$java.lang.String$toCharArray$$0$$r1: ref;
  var inline$java.lang.String$toCharArray$$0$r0: ref;
  var inline$java.lang.String$toCharArray$$0$$this: ref;
  var inline$java.lang.String$toCharArray$$0$$return: ref;
  var inline$java.lang.String$toCharArray$$0$$exception: ref;
  var inline$java.lang.String$toCharArray$$1$$r1: ref;
  var inline$java.lang.String$toCharArray$$1$r0: ref;
  var inline$java.lang.String$toCharArray$$1$$this: ref;
  var inline$java.lang.String$toCharArray$$1$$return: ref;
  var inline$java.lang.String$toCharArray$$1$$exception: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r4: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r3: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$objIndex: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume unsafe.$heap[$in_parameter__0, unsafe.$type]
   <: unsafe.org.apache.wss4j.binding.wss10.PasswordString;
    assume unsafe.$heap[$in_parameter__1, unsafe.$type] <: unsafe.java.lang.String;
    $exception := unsafe.$null;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 56, -1, -1, -1} true;
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} r0 == unsafe.$null;
    call $fakelocal_0 := unsafe.$new(unsafe.java.lang.RuntimeException);
    $exception := $fakelocal_0;
    return;

  anon10_Then:
    assume {:partition} r0 != unsafe.$null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $r2, $exception := unsafe.org.apache.wss4j.binding.wss10.PasswordString$getValue$(r0);
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 56, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Entry;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Entry:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$in_parameter__0 := $r2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$in_parameter__1 := r1;
    havoc inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i0, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$z0, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_0, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r0, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$objIndex := unsafe.$objIndex;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$heap := unsafe.$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon0;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon0:
    assume (forall T: javaType :: unsafe.$heap[unsafe.$null, unsafe.$type] <: T);
    assume (forall _r: ref :: unsafe.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: unsafe.$stringSizeHeap[_r] >= 0);
    assume unsafe.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$in_parameter__1, unsafe.$type]
   <: unsafe.java.lang.Object;
    assume unsafe.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$in_parameter__0, unsafe.$type]
   <: unsafe.java.lang.String;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := unsafe.$null;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$in_parameter__0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$in_parameter__1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 27, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon25_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon25_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon25_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r0
   == inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 27, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon3;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon3:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 28, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := 1;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block13;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block13:
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon25_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r0
   != inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 27, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block8;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block8:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 30, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$z0 := unsafe.$boolToInt(inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r1
       != unsafe.$null
     && unsafe.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r1, unsafe.$type]
       <: unsafe.java.lang.String);
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 30, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon26_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon26_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon26_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$z0
   != 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 30, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon6;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon6:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 31, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon27_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon27_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon27_Else:
    assume {:partition} !(unsafe.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r1, unsafe.$type]
   <: unsafe.java.lang.String);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_0 := unsafe.$new(unsafe.java.lang.ClassCastException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_0;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon27_Then:
    assume {:partition} unsafe.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r1, unsafe.$type]
   <: unsafe.java.lang.String;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon9;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon9:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 32, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i4 := unsafe.$stringSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r0];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 33, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i0 := unsafe.$stringSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r2];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 33, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon28_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon28_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon28_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i4
   == inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 33, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon12;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon12:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 34, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$Entry;

  inline$java.lang.String$toCharArray$$0$Entry:
    inline$java.lang.String$toCharArray$$0$$this := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r0;
    havoc inline$java.lang.String$toCharArray$$0$$r1, inline$java.lang.String$toCharArray$$0$r0, inline$java.lang.String$toCharArray$$0$$return, inline$java.lang.String$toCharArray$$0$$exception;
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
    inline$java.lang.String$toCharArray$$0$$r1 := unsafe.$heap[inline$java.lang.String$toCharArray$$0$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$$return := inline$java.lang.String$toCharArray$$0$$r1;
    goto inline$java.lang.String$toCharArray$$0$block3;

  inline$java.lang.String$toCharArray$$0$block3:
    goto inline$java.lang.String$toCharArray$$0$Return;

  inline$java.lang.String$toCharArray$$0$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r3 := inline$java.lang.String$toCharArray$$0$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$java.lang.String$toCharArray$$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon12$1;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon12$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 35, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$Entry;

  inline$java.lang.String$toCharArray$$1$Entry:
    inline$java.lang.String$toCharArray$$1$$this := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r2;
    havoc inline$java.lang.String$toCharArray$$1$$r1, inline$java.lang.String$toCharArray$$1$r0, inline$java.lang.String$toCharArray$$1$$return, inline$java.lang.String$toCharArray$$1$$exception;
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
    inline$java.lang.String$toCharArray$$1$$r1 := unsafe.$heap[inline$java.lang.String$toCharArray$$1$r0, unsafe.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$$return := inline$java.lang.String$toCharArray$$1$$r1;
    goto inline$java.lang.String$toCharArray$$1$block3;

  inline$java.lang.String$toCharArray$$1$block3:
    goto inline$java.lang.String$toCharArray$$1$Return;

  inline$java.lang.String$toCharArray$$1$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r4 := inline$java.lang.String$toCharArray$$1$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$java.lang.String$toCharArray$$1$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon12$2;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon12$2:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 36, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i5 := 0;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block10;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block10:
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Entry;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Entry:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r3 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i5;
    havoc inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$objIndex := unsafe.$objIndex;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$heap := unsafe.$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$entry;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$entry:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$block10;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$block10:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4
   + -1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon29_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon29_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon29_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1
   == 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} {:comment "thenblock"} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5;
    unsafe.$objIndex, unsafe.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$block12:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 40, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
   + 1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 40, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$block12_dummy;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon32_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3
   == inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$block12;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon21:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2 := unsafe.$intArrHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r4][inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon32_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon32_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon32_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3
   != inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} {:comment "elseblock"} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5;
    unsafe.$objIndex, unsafe.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon31_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     < unsafe.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r4]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     >= 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon21;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon18:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3 := unsafe.$intArrHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r3][inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon31_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon31_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon31_Else:
    assume {:partition} !(inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     < unsafe.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r4]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     >= 0);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5;
    unsafe.$objIndex, unsafe.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon30_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     < unsafe.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r3]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     >= 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon18;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon15:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon30_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon30_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon30_Else:
    assume {:partition} !(inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     < unsafe.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r3]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     >= 0);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5;
    unsafe.$objIndex, unsafe.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon29_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1
   != 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon15;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$block12_dummy:
    assume false;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$exit:
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c3 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block10$1;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block10$1:
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block10_last;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon29_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i1
   != 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon15;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon15:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon30_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon30_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon30_Else:
    assume {:partition} !(inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i5
     < unsafe.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r3]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i5
     >= 0);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_1;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon30_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i5
     < unsafe.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r3]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i5
     >= 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon18;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon18:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c3 := unsafe.$intArrHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r3][inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i5];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon31_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon31_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon31_Else:
    assume {:partition} !(inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i5
     < unsafe.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r4]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i5
     >= 0);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_2;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon31_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i5
     < unsafe.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r4]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i5
     >= 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon21;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon21:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c2 := unsafe.$intArrHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r4][inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i5];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon32_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon32_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon32_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c3
   != inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c2;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon24;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon24:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 39, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := 0;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block13;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon32_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c3
   == inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c2;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block12;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block12:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 40, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i5
   + 1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 40, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block12_dummy;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon29_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i1
   == 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block11;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block11:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := 1;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block13;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon28_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i4
   != inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 33, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block9;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block9:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 45, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := 0;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block13;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon26_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$z0
   == 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 30, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block9;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block12_dummy:
    assume false;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block10_last:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i4;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i4
   + -1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon29_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon29_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Return:
    $z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return;
    $exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception;
    goto anon3$1;

  anon3$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 56, -1, -1, -1} true;
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 57, -1, -1, -1} true;
    call $fakelocal_1 := unsafe.$new(unsafe.org.apache.ws.security.WSSecurityException);
    r4 := $fakelocal_1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 57, -1, -1, -1} true;
    call $exception := unsafe.org.apache.ws.security.WSSecurityException$$la$init$ra$$int(r4, 5);
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !(unsafe.$heap[r4, unsafe.$type] <: unsafe.java.lang.Throwable);
    call $fakelocal_2 := unsafe.$new(unsafe.java.lang.ClassCastException);
    $exception := $fakelocal_2;
    return;

  anon12_Then:
    assume {:partition} unsafe.$heap[r4, unsafe.$type] <: unsafe.java.lang.Throwable;
    $exception := $exception;
    goto anon9;

  anon9:
    r5 := r4;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 57, -1, -1, -1} true;
    $exception := r5;
    goto block15;

  block15:
    return;

  anon11_Then:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  block14:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 59, -1, -1, -1} true;
    call $exception := unsafe.org.apache.wss4j.binding.wss10.PasswordString$setValue$java.lang.String(r0, r1);
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 60, -1, -1, -1} true;
    goto block15;
}



implementation unsafe.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := unsafe.$null;
    return;
}



implementation unsafe.SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10(in_$return: int, 
    in_$exception: ref, 
    in_r4: ref, 
    in_$c2: int, 
    in_$c3: int, 
    in_$fakelocal_1: ref, 
    in_i4: int, 
    in_$i1: int, 
    in_$fakelocal_2: ref, 
    in_r3: ref, 
    in_i5: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$c2: int, 
    out_$c3: int, 
    out_$fakelocal_1: ref, 
    out_i4: int, 
    out_$i1: int, 
    out_$fakelocal_2: ref, 
    out_i5: int)
{
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r4: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r3: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$objIndex: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$heap: $heap_type;

  entry:
    out_$return, out_$exception, out_$c2, out_$c3, out_$fakelocal_1, out_i4, out_$i1, out_$fakelocal_2, out_i5 := in_$return, in_$exception, in_$c2, in_$c3, in_$fakelocal_1, in_i4, in_$i1, in_$fakelocal_2, in_i5;
    goto block10;

  block10:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    out_$i1 := out_i4;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    out_i4 := out_i4 + -1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    goto anon29_Then, anon29_Else;

  anon29_Then:
    assume {:partition} out_$i1 == 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$c2, out_$c3, out_$fakelocal_1, out_i4, out_$i1, out_$fakelocal_2, out_i5 := in_$return, in_$exception, in_$c2, in_$c3, in_$fakelocal_1, in_i4, in_$i1, in_$fakelocal_2, in_i5;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  block12:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 40, -1, -1, -1} true;
    out_i5 := out_i5 + 1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 40, -1, -1, -1} true;
    goto block12_dummy;

  anon32_Then:
    assume {:partition} out_$c3 == out_$c2;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} {:comment "thenblock"} true;
    goto block12;

  anon21:
    out_$c2 := unsafe.$intArrHeap[in_r4][out_i5];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} out_$c3 != out_$c2;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} {:comment "elseblock"} true;
    out_$return, out_$exception, out_$c2, out_$c3, out_$fakelocal_1, out_i4, out_$i1, out_$fakelocal_2, out_i5 := in_$return, in_$exception, in_$c2, in_$c3, in_$fakelocal_1, in_i4, in_$i1, in_$fakelocal_2, in_i5;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon31_Then:
    assume {:partition} out_i5 < unsafe.$arrSizeHeap[in_r4] && out_i5 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    out_$c3 := unsafe.$intArrHeap[in_r3][out_i5];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} !(out_i5 < unsafe.$arrSizeHeap[in_r4] && out_i5 >= 0);
    call out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$c2, out_$c3, out_$fakelocal_1, out_i4, out_$i1, out_$fakelocal_2, out_i5 := in_$return, in_$exception, in_$c2, in_$c3, in_$fakelocal_1, in_i4, in_$i1, in_$fakelocal_2, in_i5;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon30_Then:
    assume {:partition} out_i5 < unsafe.$arrSizeHeap[in_r3] && out_i5 >= 0;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !(out_i5 < unsafe.$arrSizeHeap[in_r3] && out_i5 >= 0);
    call out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$c2, out_$c3, out_$fakelocal_1, out_i4, out_$i1, out_$fakelocal_2, out_i5 := in_$return, in_$exception, in_$c2, in_$c3, in_$fakelocal_1, in_i4, in_$i1, in_$fakelocal_2, in_i5;
    unsafe.$objIndex, unsafe.$heap := old(unsafe.$objIndex), old(unsafe.$heap);
    return;

  anon29_Else:
    assume {:partition} out_$i1 != 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  block12_dummy:
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Entry;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Entry:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return := out_$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception := out_$exception;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r4 := in_r4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2 := out_$c2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3 := out_$c3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1 := out_$fakelocal_1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4 := out_i4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1 := out_$i1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2 := out_$fakelocal_2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r3 := in_r3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5 := out_i5;
    havoc inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$objIndex := unsafe.$objIndex;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$heap := unsafe.$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$entry;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$entry:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$block10;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$block10:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4
   + -1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon29_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon29_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon29_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1
   == 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} {:comment "thenblock"} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5;
    unsafe.$objIndex, unsafe.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$block12:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 40, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
   + 1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 40, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$block12_dummy;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon32_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3
   == inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$block12;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon21:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2 := unsafe.$intArrHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r4][inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon32_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon32_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon32_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3
   != inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} {:comment "elseblock"} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5;
    unsafe.$objIndex, unsafe.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon31_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     < unsafe.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r4]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     >= 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon21;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon18:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3 := unsafe.$intArrHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r3][inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon31_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon31_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon31_Else:
    assume {:partition} !(inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     < unsafe.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r4]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     >= 0);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5;
    unsafe.$objIndex, unsafe.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon30_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     < unsafe.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r3]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     >= 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon18;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon15:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon30_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon30_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon30_Else:
    assume {:partition} !(inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     < unsafe.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_r3]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5
     >= 0);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1 := unsafe.$new(unsafe.java.lang.ArrayIndexOutOfBoundsException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$in_i5;
    unsafe.$objIndex, unsafe.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon29_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1
   != 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$anon15;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$block12_dummy:
    assume false;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$exit:
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$Return:
    out_$return := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$return;
    out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$exception;
    out_$c2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c2;
    out_$c3 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$c3;
    out_$fakelocal_1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_1;
    out_i4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i4;
    out_$i1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$i1;
    out_$fakelocal_2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_$fakelocal_2;
    out_i5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block10$0$out_i5;
    goto block12_dummy$1;

  block12_dummy$1:
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
