type ref;

type javaType;

type Field _;

type $heap_type = <$GenericType__0>[ref,Field $GenericType__0]$GenericType__0;

type boolArrHeap_type = [ref][int]bool;

type refArrHeap_type = [ref][int]ref;

type realArrHeap_type = [ref][int]int;

type intArrHeap_type = [ref][int]int;

var fixed.$heap: $heap_type;

var fixed.$intArrayType: javaType;

var fixed.$charArrayType: javaType;

var fixed.$boolArrayType: javaType;

var fixed.$byteArrayType: javaType;

var fixed.$longArrayType: javaType;

var fixed.$arrSizeHeap: [ref]int;

var fixed.$stringSizeHeap: [ref]int;

var fixed.$boolArrHeap: boolArrHeap_type;

var fixed.$refArrHeap: refArrHeap_type;

var fixed.$realArrHeap: realArrHeap_type;

var fixed.$intArrHeap: intArrHeap_type;

var fixed.$objIndex: int;

var fixed.char$lp$$rp$$java.lang.String$chars259: Field ref;

var fixed.boolean$java.lang.Boolean$value0: Field int;

const unique fixed.$type: Field javaType;

const unique fixed.$alloc: Field bool;

const unique fixed.$null: ref;

const {:sourceloc "String.java", -1, -1, -1, -1} unique fixed.java.lang.Object: javaType extends complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique fixed.java.lang.String: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique fixed.java.io.Serializable: javaType extends complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique fixed.java.lang.Throwable: javaType extends unique fixed.java.lang.Object, fixed.java.io.Serializable complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique fixed.java.lang.Exception: javaType extends unique fixed.java.lang.Throwable complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique fixed.java.lang.RuntimeException: javaType extends unique fixed.java.lang.Exception complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique fixed.java.lang.IndexOutOfBoundsException: javaType extends unique fixed.java.lang.RuntimeException complete;

const {:sourceloc "String.java", -1, -1, -1, -1} unique fixed.java.lang.ArrayIndexOutOfBoundsException: javaType extends unique fixed.java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique fixed.java.lang.Boolean: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "Safe.java", -1, -1, -1, -1} unique fixed.sg.edu.nus.comp.tsunami.safe.Safe: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} unique fixed.SimplifiedUsernameTokenValidatorImpl: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} unique fixed.java.lang.Comparable: javaType extends complete;

const {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} unique fixed.java.lang.CharSequence: javaType extends complete;

const {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} unique fixed.java.lang.ClassCastException: javaType extends unique fixed.java.lang.RuntimeException complete;

const {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} unique fixed.org.apache.wss4j.binding.wss10.PasswordString: javaType extends complete;

const {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} unique fixed.org.apache.ws.security.WSSecurityException: javaType extends complete;

function fixed.$arrayType(t: javaType) : javaType;

function fixed.$intToReal(x: int) : real;

function fixed.$intToBool(x: int) : bool;

function fixed.$refToBool(x: ref) : bool;

function fixed.$boolToInt(x: bool) : int;

function fixed.$cmpBool(x: bool, y: bool) : int;

function fixed.$cmpRef(x: ref, y: ref) : int;

function fixed.$cmpReal(x: real, y: real) : int;

function fixed.$cmpInt(x: int, y: int) : int;

function fixed.$bitOr(x: int, y: int) : int;

function fixed.$bitAnd(x: int, y: int) : int;

function fixed.$xorInt(x: int, y: int) : int;

function fixed.$shlInt(x: int, y: int) : int;

function fixed.$ushrInt(x: int, y: int) : int;

function fixed.$shrInt(x: int, y: int) : int;

function fixed.$mulInt(x: int, y: int) : int;

function fixed.$divInt(x: int, y: int) : int;

function fixed.$modInt(x: int, y: int) : int;

function fixed.$intToRef(id: int) : ref;

axiom (forall x: int :: 
  { fixed.$intToBool(x): bool } 
  fixed.$intToBool(x): bool <==> (if x == 0 then false else true));

axiom (forall x: ref :: 
  { fixed.$refToBool(x): bool } 
  fixed.$refToBool(x): bool <==> (if x == fixed.$null then false else true));

axiom (forall x: bool :: 
  { fixed.$boolToInt(x): int } 
  fixed.$boolToInt(x): int == (if x <==> true then 1 else 0));

axiom (forall x: real, y: real :: 
  { fixed.$cmpReal(x, y): int } 
  fixed.$cmpReal(x, y): int == (if x > y then 1 else (if x < y then -1 else 0)));

axiom (forall x: int, y: int :: 
  { fixed.$cmpInt(x, y): int } 
  fixed.$cmpInt(x, y): int == (if x > y then 1 else (if x < y then -1 else 0)));

axiom (forall index: int :: fixed.$intToRef(index) != fixed.$null);

axiom (forall i1: int, i2: int :: 
  i1 == i2 <==> fixed.$intToRef(i1) == fixed.$intToRef(i2));

procedure {:prefix "fixed"} fixed.$new(obj_type: javaType) returns ($obj: ref);
  modifies fixed.$objIndex, fixed.$heap;
  free ensures !old(fixed.$heap[$obj, fixed.$alloc]);
  free ensures fixed.$objIndex == old(fixed.$objIndex) + 1;
  free ensures fixed.$heap
   == old(fixed.$heap)[$obj, fixed.$alloc := true][$obj, fixed.$type := obj_type];
  free ensures $obj != fixed.$null;
  free ensures $obj == fixed.$intToRef(old(fixed.$objIndex));



procedure {:prefix "fixed"} fixed.java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  free ensures fixed.$heap[$other, fixed.$type] == fixed.$heap[$this, fixed.$type];
  free ensures fixed.$heap[$other, fixed.$alloc] <==> true;
  free ensures $other != fixed.$null;



procedure {:prefix "fixed"} fixed.int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure {:prefix "fixed"} fixed.java.lang.String$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "fixed"} fixed.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "fixed"} fixed.java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "fixed"} fixed.java.lang.String$toCharArray$($this: ref) returns ($return: ref, $exception: ref);



procedure {:prefix "fixed"} fixed.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies fixed.$heap;



procedure {:prefix "fixed"} fixed.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "fixed"} fixed.java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0: int) returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);



procedure {:prefix "fixed"} fixed.SimplifiedUsernameTokenValidatorImpl$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "fixed"} fixed.SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "fixed"} fixed.SimplifiedUsernameTokenValidatorImpl$verifyPlaintextPassword$org.apache.wss4j.binding.wss10.PasswordString_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref) returns ($exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "fixed"} fixed.org.apache.wss4j.binding.wss10.PasswordString$getValue$($this: ref) returns ($return: ref, $exception: ref);



procedure {:prefix "fixed"} fixed.org.apache.ws.security.WSSecurityException$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref);



procedure {:prefix "fixed"} fixed.org.apache.wss4j.binding.wss10.PasswordString$setValue$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure {:prefix "fixed"} fixed.SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61(in_$return: int, 
    in_$exception: ref, 
    in_$i1: int, 
    in_$r22: ref, 
    in_$r17: ref, 
    in_r4: ref, 
    in_$r21: ref, 
    in_$c2: int, 
    in_$fakelocal_6: ref, 
    in_$r20: ref, 
    in_z4: int, 
    in_$fakelocal_4: ref, 
    in_$l5: int, 
    in_$r13: ref, 
    in_$c3: int, 
    in_z5: int, 
    in_$r19: ref, 
    in_i7: int, 
    in_$r14: ref, 
    in_$fakelocal_5: ref, 
    in_i6: int, 
    in_$r16: ref, 
    in_$r18: ref, 
    in_$fakelocal_1: ref, 
    in_$l4: int, 
    in_$r15: ref, 
    in_r3: ref, 
    in_$fakelocal_2: ref, 
    in_$fakelocal_3: ref, 
    in_z0: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$i1: int, 
    out_$r22: ref, 
    out_$r17: ref, 
    out_$r21: ref, 
    out_$c2: int, 
    out_$fakelocal_6: ref, 
    out_$r20: ref, 
    out_z4: int, 
    out_$fakelocal_4: ref, 
    out_$l5: int, 
    out_$r13: ref, 
    out_$c3: int, 
    out_z5: int, 
    out_$r19: ref, 
    out_i7: int, 
    out_$r14: ref, 
    out_$fakelocal_5: ref, 
    out_i6: int, 
    out_$r16: ref, 
    out_$r18: ref, 
    out_$fakelocal_1: ref, 
    out_$l4: int, 
    out_$r15: ref, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_3: ref, 
    out_z0: int);
  modifies fixed.$objIndex, fixed.$heap;



implementation fixed.java.lang.String$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "String.java", 3, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$java.lang.Object$$la$init$ra$$$0$$this := r0;
    havoc inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
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



implementation fixed.java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var i0: int;
  var r0: ref;
  var $fakelocal_0: ref;
  var $r1: ref;
  var $c1: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    $r1 := fixed.$heap[r0, fixed.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} !(i0 < fixed.$arrSizeHeap[$r1] && i0 >= 0);
    call $fakelocal_0 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon4_Then:
    assume {:partition} i0 < fixed.$arrSizeHeap[$r1] && i0 >= 0;
    $exception := $exception;
    goto anon3;

  anon3:
    $c1 := fixed.$intArrHeap[$r1][i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    $return := $c1;
    goto block2;

  block2:
    return;
}



implementation fixed.java.lang.String$toCharArray$($this: ref) returns ($return: ref, $exception: ref)
{
  var $r1: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    $r1 := fixed.$heap[r0, fixed.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    $return := $r1;
    goto block3;

  block3:
    return;
}



implementation fixed.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var r0: ref;
  var z0: int;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
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
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    $exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[r0, fixed.boolean$java.lang.Boolean$value0 := z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto block4;

  block4:
    return;
}



implementation fixed.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
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
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$return, fixed.$type] <: fixed.java.lang.Boolean;
    $exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call $fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    $r0 := $fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this := $r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0 := z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception := fixed.$null;
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
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0];
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



implementation fixed.java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $z0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    $z0 := fixed.$heap[r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    $return := $z0;
    goto block6;

  block6:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Safe.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.sg.edu.nus.comp.tsunami.safe.Safe;
    assume {:sourceloc "Safe.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Safe.java", 3, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$java.lang.Object$$la$init$ra$$$0$$this := r0;
    havoc inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    $exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Safe.java", 3, -1, -1, -1} true;
    goto block7;

  block7:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var z1: int;
  var z0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", 5, -1, -1, -1} true;
    z1 := 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 0;
    goto block8;

  block8:
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 1;
    goto block9;

  block9:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    $return := z1;
    goto block10;

  block10:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block9;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block8;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z1: int;
  var $z2: int;
  var z0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 12, -1, -1, -1} true;
    $z2 := fixed.$bitAnd(z0, z1);
    assert {:sourceloc "Safe.java", 12, -1, -1, -1} true;
    $return := $z2;
    goto block11;

  block11:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z1: int;
  var $z2: int;
  var z0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 16, -1, -1, -1} true;
    $z2 := fixed.$bitOr(z0, z1);
    assert {:sourceloc "Safe.java", 16, -1, -1, -1} true;
    $return := $z2;
    goto block12;

  block12:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b3: int;
  var l0: int;
  var z0: int;
  var $b2: int;
  var l1: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 20, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} true;
    $b2 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 < $b2;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    z0 := 1;
    goto block13;

  block13:
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} true;
    $b3 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 >= $b3;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    z0 := 0;
    goto block14;

  block14:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    $return := z0;
    goto block15;

  block15:
    return;

  anon8_Then:
    assume {:partition} $b3 > 0;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block14;

  anon7_Then:
    assume {:partition} $b2 <= 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    goto block13;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b3: int;
  var z0: int;
  var $b2: int;
  var l0: int;
  var l1: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 27, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} true;
    $b2 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 > $b2;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    z0 := 1;
    goto block16;

  block16:
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} true;
    $b3 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 <= $b3;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    z0 := 0;
    goto block17;

  block17:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    $return := z0;
    goto block18;

  block18:
    return;

  anon8_Then:
    assume {:partition} $b3 < 0;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block17;

  anon7_Then:
    assume {:partition} $b2 >= 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block16;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var l1: int;
  var l0: int;
  var z0: int;
  var $b3: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 34, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} true;
    $b2 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 <= $b2;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    z0 := 1;
    goto block19;

  block19:
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} true;
    $b3 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 > $b3;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    z0 := 0;
    goto block20;

  block20:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    $return := z0;
    goto block21;

  block21:
    return;

  anon8_Then:
    assume {:partition} $b3 >= 0;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block20;

  anon7_Then:
    assume {:partition} $b2 < 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block19;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l1: int;
  var z0: int;
  var $b3: int;
  var $b2: int;
  var l0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 41, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} true;
    $b2 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 >= $b2;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    z0 := 1;
    goto block22;

  block22:
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} true;
    $b3 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 < $b3;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    z0 := 0;
    goto block23;

  block23:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    $return := z0;
    goto block24;

  block24:
    return;

  anon8_Then:
    assume {:partition} $b3 <= 0;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block23;

  anon7_Then:
    assume {:partition} $b2 > 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b3: int;
  var $b2: int;
  var l1: int;
  var l0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 48, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    $b2 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    z0 := 1;
    goto block25;

  block25:
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    $b3 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    z0 := 0;
    goto block26;

  block26:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    $return := z0;
    goto block27;

  block27:
    return;

  anon8_Then:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block26;

  anon7_Then:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto block25;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l0: int;
  var z0: int;
  var $b2: int;
  var $b3: int;
  var l1: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 55, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    $b2 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    z0 := 1;
    goto block28;

  block28:
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    $b3 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    z0 := 0;
    goto block29;

  block29:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    $return := z0;
    goto block30;

  block30:
    return;

  anon8_Then:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto block29;

  anon7_Then:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block28;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d1: int;
  var z0: int;
  var d0: int;
  var $b0: int;
  var $b1: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 62, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} true;
    $b0 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 < $b0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    z0 := 1;
    goto block31;

  block31:
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} true;
    $b1 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 >= $b1;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    z0 := 0;
    goto block32;

  block32:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    $return := z0;
    goto block33;

  block33:
    return;

  anon8_Then:
    assume {:partition} $b1 > 0;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "thenblock"} true;
    goto block32;

  anon7_Then:
    assume {:partition} $b0 <= 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "thenblock"} true;
    goto block31;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b0: int;
  var z0: int;
  var d0: int;
  var d1: int;
  var $b1: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 69, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} true;
    $b0 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 > $b0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    z0 := 1;
    goto block34;

  block34:
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} true;
    $b1 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 <= $b1;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    z0 := 0;
    goto block35;

  block35:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    $return := z0;
    goto block36;

  block36:
    return;

  anon8_Then:
    assume {:partition} $b1 < 0;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block35;

  anon7_Then:
    assume {:partition} $b0 >= 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block34;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b1: int;
  var d1: int;
  var $b0: int;
  var d0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 76, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} true;
    $b0 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 <= $b0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    z0 := 1;
    goto block37;

  block37:
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} true;
    $b1 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 > $b1;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    z0 := 0;
    goto block38;

  block38:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    $return := z0;
    goto block39;

  block39:
    return;

  anon8_Then:
    assume {:partition} $b1 >= 0;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block38;

  anon7_Then:
    assume {:partition} $b0 < 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block37;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b1: int;
  var $b0: int;
  var d1: int;
  var z0: int;
  var d0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 83, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} true;
    $b0 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 >= $b0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    z0 := 1;
    goto block40;

  block40:
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} true;
    $b1 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 < $b1;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    z0 := 0;
    goto block41;

  block41:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    $return := z0;
    goto block42;

  block42:
    return;

  anon8_Then:
    assume {:partition} $b1 <= 0;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "thenblock"} true;
    goto block41;

  anon7_Then:
    assume {:partition} $b0 > 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block40;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b0: int;
  var d1: int;
  var d0: int;
  var z0: int;
  var $b1: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 90, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} true;
    $b0 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    z0 := 1;
    goto block43;

  block43:
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} true;
    $b1 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    z0 := 0;
    goto block44;

  block44:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    $return := z0;
    goto block45;

  block45:
    return;

  anon8_Then:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "thenblock"} true;
    goto block44;

  anon7_Then:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "thenblock"} true;
    goto block43;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d1: int;
  var z0: int;
  var $b0: int;
  var $b1: int;
  var d0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 97, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} true;
    $b0 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    z0 := 1;
    goto block46;

  block46:
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} true;
    $b1 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    z0 := 0;
    goto block47;

  block47:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    $return := z0;
    goto block48;

  block48:
    return;

  anon8_Then:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "thenblock"} true;
    goto block47;

  anon7_Then:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "thenblock"} true;
    goto block46;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var r1: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$in_parameter__1, fixed.$type] <: fixed.java.lang.Object;
    assume fixed.$heap[$in_parameter__0, fixed.$type] <: fixed.java.lang.Object;
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 104, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 1;
    goto block49;

  block49:
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 0;
    goto block50;

  block50:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    $return := z0;
    goto block51;

  block51:
    return;

  anon8_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block50;

  anon7_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block49;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r0: ref;
  var z0: int;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$in_parameter__0, fixed.$type] <: fixed.java.lang.Object;
    assume fixed.$heap[$in_parameter__1, fixed.$type] <: fixed.java.lang.Object;
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 111, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 1;
    goto block52;

  block52:
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 0;
    goto block53;

  block53:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    $return := z0;
    goto block54;

  block54:
    return;

  anon8_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block53;

  anon7_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block52;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var r1: ref;
  var r0: ref;
  var r2: ref;
  var z0: int;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$return, fixed.$type] <: fixed.java.lang.Object;
    assume fixed.$heap[$in_parameter__1, fixed.$type] <: fixed.java.lang.Object;
    assume fixed.$heap[$in_parameter__2, fixed.$type] <: fixed.java.lang.Object;
    $exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r0;
    goto block55;

  block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r1;
    goto block56;

  block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    $return := r2;
    goto block57;

  block57:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block56;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block55;
}



implementation fixed.SimplifiedUsernameTokenValidatorImpl$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.SimplifiedUsernameTokenValidatorImpl;
    assume {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 26, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$java.lang.Object$$la$init$ra$$$0$$this := r0;
    havoc inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    $exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 26, -1, -1, -1} true;
    goto block58;

  block58:
    return;
}



implementation fixed.SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r2: ref;
  var r1: ref;
  var $r7: ref;
  var $r12: ref;
  var $i1: int;
  var $i0: int;
  var $r22: ref;
  var $r17: ref;
  var r4: ref;
  var $r21: ref;
  var $z2: int;
  var $c2: int;
  var r0: ref;
  var $fakelocal_6: ref;
  var $r6: ref;
  var $r20: ref;
  var z4: int;
  var $fakelocal_8: ref;
  var $r8: ref;
  var $fakelocal_9: ref;
  var $z3: int;
  var $fakelocal_4: ref;
  var $l5: int;
  var $fakelocal_0: ref;
  var $r10: ref;
  var $r9: ref;
  var $r13: ref;
  var $c3: int;
  var z5: int;
  var $r19: ref;
  var $r5: ref;
  var $fakelocal_10: ref;
  var i7: int;
  var $r14: ref;
  var $fakelocal_5: ref;
  var i6: int;
  var $r11: ref;
  var $r16: ref;
  var $r18: ref;
  var $fakelocal_1: ref;
  var $fakelocal_7: ref;
  var $l4: int;
  var $r15: ref;
  var r3: ref;
  var $fakelocal_2: ref;
  var $z1: int;
  var $fakelocal_3: ref;
  var z0: int;
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
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r4: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r3: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap: $heap_type;
  var inline$java.lang.Boolean$booleanValue$$0$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$0$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$0$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$0$$return: int;
  var inline$java.lang.Boolean$booleanValue$$0$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$1$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$1$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$1$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$1$$return: int;
  var inline$java.lang.Boolean$booleanValue$$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$1$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$1$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$2$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$3$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$3$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$4$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$4$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$5$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$5$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$6$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$6$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$7$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$7$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$2$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$2$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$2$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$2$$return: int;
  var inline$java.lang.Boolean$booleanValue$$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$8$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$8$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$9$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$9$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$3$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$3$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$3$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$3$$return: int;
  var inline$java.lang.Boolean$booleanValue$$3$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$10$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$10$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$10$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$10$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$10$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$11$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$11$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$11$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$11$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$11$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$4$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$4$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$4$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$4$$return: int;
  var inline$java.lang.Boolean$booleanValue$$4$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$12$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$12$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$12$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$12$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$12$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$13$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$13$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$13$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$13$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$13$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$5$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$5$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$5$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$5$$return: int;
  var inline$java.lang.Boolean$booleanValue$$5$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$in_parameter__1, fixed.$type] <: fixed.java.lang.Object;
    assume fixed.$heap[$in_parameter__0, fixed.$type] <: fixed.java.lang.String;
    $exception := fixed.$null;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 29, -1, -1, -1} true;
    z4 := 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 30, -1, -1, -1} true;
    z5 := 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 31, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 31, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 32, -1, -1, -1} true;
    $return := 1;
    goto block63;

  block63:
    return;

  anon46_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 31, -1, -1, -1} {:comment "thenblock"} true;
    goto block59;

  block59:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 34, -1, -1, -1} true;
    $z1 := fixed.$boolToInt(r1 != fixed.$null && fixed.$heap[r1, fixed.$type] <: fixed.java.lang.String);
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 34, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} $z1 != 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 34, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 35, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} !(fixed.$heap[r1, fixed.$type] <: fixed.java.lang.String);
    call $fakelocal_0 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon48_Then:
    assume {:partition} fixed.$heap[r1, fixed.$type] <: fixed.java.lang.String;
    $exception := $exception;
    goto anon9;

  anon9:
    r2 := r1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 36, -1, -1, -1} true;
    i6 := fixed.$stringSizeHeap[r0];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    $i0 := fixed.$stringSizeHeap[r2];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    goto anon49_Then, anon49_Else;

  anon49_Else:
    assume {:partition} i6 == $i0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} {:comment "elseblock"} true;
    goto anon12;

  anon12:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$Entry;

  inline$java.lang.String$toCharArray$$0$Entry:
    inline$java.lang.String$toCharArray$$0$$this := r0;
    havoc inline$java.lang.String$toCharArray$$0$$r1, inline$java.lang.String$toCharArray$$0$r0, inline$java.lang.String$toCharArray$$0$$return, inline$java.lang.String$toCharArray$$0$$exception;
    goto inline$java.lang.String$toCharArray$$0$anon0;

  inline$java.lang.String$toCharArray$$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.String$toCharArray$$0$$this, fixed.$type]
   <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$toCharArray$$0$$this != fixed.$null;
    inline$java.lang.String$toCharArray$$0$$exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$r0 := inline$java.lang.String$toCharArray$$0$$this;
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$$r1 := fixed.$heap[inline$java.lang.String$toCharArray$$0$r0, fixed.char$lp$$rp$$java.lang.String$chars259];
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
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 39, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$Entry;

  inline$java.lang.String$toCharArray$$1$Entry:
    inline$java.lang.String$toCharArray$$1$$this := r2;
    havoc inline$java.lang.String$toCharArray$$1$$r1, inline$java.lang.String$toCharArray$$1$r0, inline$java.lang.String$toCharArray$$1$$return, inline$java.lang.String$toCharArray$$1$$exception;
    goto inline$java.lang.String$toCharArray$$1$anon0;

  inline$java.lang.String$toCharArray$$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.String$toCharArray$$1$$this, fixed.$type]
   <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$toCharArray$$1$$this != fixed.$null;
    inline$java.lang.String$toCharArray$$1$$exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$r0 := inline$java.lang.String$toCharArray$$1$$this;
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$$r1 := fixed.$heap[inline$java.lang.String$toCharArray$$1$r0, fixed.char$lp$$rp$$java.lang.String$chars259];
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
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 40, -1, -1, -1} true;
    i7 := 0;
    goto block61;

  block61:
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Entry;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Entry:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return := $return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception := $exception;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1 := $i1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22 := $r22;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17 := $r17;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r4 := r4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21 := $r21;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2 := $c2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6 := $fakelocal_6;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20 := $r20;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4 := z4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4 := $fakelocal_4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5 := $l5;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13 := $r13;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3 := $c3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5 := z5;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19 := $r19;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7 := i7;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14 := $r14;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5 := $fakelocal_5;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6 := i6;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16 := $r16;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18 := $r18;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1 := $fakelocal_1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4 := $l4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15 := $r15;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r3 := r3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2 := $fakelocal_2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3 := $fakelocal_3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0 := z0;
    havoc inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex := fixed.$objIndex;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap := fixed.$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$entry;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$entry:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$block61;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$block61:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6
   + -1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon50_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon50_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon50_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1
   == 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} {:comment "thenblock"} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon33:
    goto inline$java.lang.Boolean$booleanValue$$0$Entry;

  inline$java.lang.Boolean$booleanValue$$0$Entry:
    inline$java.lang.Boolean$booleanValue$$0$$this := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22;
    havoc inline$java.lang.Boolean$booleanValue$$0$r0, inline$java.lang.Boolean$booleanValue$$0$$z0, inline$java.lang.Boolean$booleanValue$$0$$return, inline$java.lang.Boolean$booleanValue$$0$$exception;
    goto inline$java.lang.Boolean$booleanValue$$0$anon0;

  inline$java.lang.Boolean$booleanValue$$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$0$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$0$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$0$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$0$r0 := inline$java.lang.Boolean$booleanValue$$0$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$0$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$0$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$0$$return := inline$java.lang.Boolean$booleanValue$$0$$z0;
    goto inline$java.lang.Boolean$booleanValue$$0$block6;

  inline$java.lang.Boolean$booleanValue$$0$block6:
    goto inline$java.lang.Boolean$booleanValue$$0$Return;

  inline$java.lang.Boolean$booleanValue$$0$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5 := inline$java.lang.Boolean$booleanValue$$0$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$booleanValue$$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon33$1;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon33$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 46, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
   + 1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 47, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon33_dummy;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon56_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22
   != fixed.$null;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon33;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon30:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon56_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon56_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon56_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22
   == fixed.$null;
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon55_Then:
    assume {:partition} fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon30;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27:
    goto inline$java.lang.Boolean$booleanValue$$1$Entry;

  inline$java.lang.Boolean$booleanValue$$1$Entry:
    inline$java.lang.Boolean$booleanValue$$1$$this := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18;
    havoc inline$java.lang.Boolean$booleanValue$$1$r0, inline$java.lang.Boolean$booleanValue$$1$$z0, inline$java.lang.Boolean$booleanValue$$1$$return, inline$java.lang.Boolean$booleanValue$$1$$exception;
    goto inline$java.lang.Boolean$booleanValue$$1$anon0;

  inline$java.lang.Boolean$booleanValue$$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$1$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$1$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$1$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$1$r0 := inline$java.lang.Boolean$booleanValue$$1$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$1$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$1$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$1$$return := inline$java.lang.Boolean$booleanValue$$1$$z0;
    goto inline$java.lang.Boolean$booleanValue$$1$block6;

  inline$java.lang.Boolean$booleanValue$$1$block6:
    goto inline$java.lang.Boolean$booleanValue$$1$Return;

  inline$java.lang.Boolean$booleanValue$$1$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4 := inline$java.lang.Boolean$booleanValue$$1$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$booleanValue$$1$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$1;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$0$Entry;

  inline$java.lang.Boolean$valueOf$boolean$0$Entry:
    inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$0$z0, inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$0$$r0, inline$java.lang.Boolean$valueOf$boolean$0$$return, inline$java.lang.Boolean$valueOf$boolean$0$$exception;
    inline$java.lang.Boolean$valueOf$boolean$0$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$0$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$0$anon0;

  inline$java.lang.Boolean$valueOf$boolean$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$0$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$0$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$0$z0 := inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$0$$r0 := inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this := inline$java.lang.Boolean$valueOf$boolean$0$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$0$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception := fixed.$null;
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
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    inline$java.lang.Boolean$valueOf$boolean$0$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$0$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$0$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$0$$return := inline$java.lang.Boolean$valueOf$boolean$0$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$0$block5;

  inline$java.lang.Boolean$valueOf$boolean$0$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$0$Return;

  inline$java.lang.Boolean$valueOf$boolean$0$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19 := inline$java.lang.Boolean$valueOf$boolean$0$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$2;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$2:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$1$Entry;

  inline$java.lang.Boolean$valueOf$boolean$1$Entry:
    inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5;
    havoc inline$java.lang.Boolean$valueOf$boolean$1$z0, inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$1$$r0, inline$java.lang.Boolean$valueOf$boolean$1$$return, inline$java.lang.Boolean$valueOf$boolean$1$$exception;
    inline$java.lang.Boolean$valueOf$boolean$1$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$1$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$1$anon0;

  inline$java.lang.Boolean$valueOf$boolean$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$1$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$1$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$1$z0 := inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$1$$r0 := inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this := inline$java.lang.Boolean$valueOf$boolean$1$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$1$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$1$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$1$Entry;

  inline$java.lang.Object$$la$init$ra$$$1$Entry:
    inline$java.lang.Object$$la$init$ra$$$1$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$1$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$1$anon0;

  inline$java.lang.Object$$la$init$ra$$$1$anon0:
    inline$java.lang.Object$$la$init$ra$$$1$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$1$Return;

  inline$java.lang.Object$$la$init$ra$$$1$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception := inline$java.lang.Object$$la$init$ra$$$1$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$Return:
    inline$java.lang.Boolean$valueOf$boolean$1$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$1$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$1$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$1$$return := inline$java.lang.Boolean$valueOf$boolean$1$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$1$block5;

  inline$java.lang.Boolean$valueOf$boolean$1$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$1$Return;

  inline$java.lang.Boolean$valueOf$boolean$1$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20 := inline$java.lang.Boolean$valueOf$boolean$1$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$1$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$3;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$3:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$4;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$4:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon55_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon55_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon55_Else:
    assume {:partition} !(fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon54_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18
   != fixed.$null;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon24:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon54_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon54_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon54_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18
   == fixed.$null;
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon53_Then:
    assume {:partition} fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon24;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3 := fixed.$intArrHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r4][inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1;
    assert {:sourceloc "Safe.java", 55, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0 := 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 != 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon3:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block28;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block28:
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 == 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon6:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block29;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block29:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block30;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block30:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block29;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block28;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$1;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$2$Entry;

  inline$java.lang.Boolean$valueOf$boolean$2$Entry:
    inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$2$z0, inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$2$$r0, inline$java.lang.Boolean$valueOf$boolean$2$$return, inline$java.lang.Boolean$valueOf$boolean$2$$exception;
    inline$java.lang.Boolean$valueOf$boolean$2$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$2$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$2$anon0;

  inline$java.lang.Boolean$valueOf$boolean$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$2$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$2$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$2$z0 := inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$2$$r0 := inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this := inline$java.lang.Boolean$valueOf$boolean$2$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$2$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$2$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$2$Entry;

  inline$java.lang.Object$$la$init$ra$$$2$Entry:
    inline$java.lang.Object$$la$init$ra$$$2$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$2$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$2$anon0;

  inline$java.lang.Object$$la$init$ra$$$2$anon0:
    inline$java.lang.Object$$la$init$ra$$$2$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$2$Return;

  inline$java.lang.Object$$la$init$ra$$$2$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception := inline$java.lang.Object$$la$init$ra$$$2$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$Return:
    inline$java.lang.Boolean$valueOf$boolean$2$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$2$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$2$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$2$$return := inline$java.lang.Boolean$valueOf$boolean$2$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$2$block5;

  inline$java.lang.Boolean$valueOf$boolean$2$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$2$Return;

  inline$java.lang.Boolean$valueOf$boolean$2$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13 := inline$java.lang.Boolean$valueOf$boolean$2$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$2$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$2;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$2:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$3$Entry;

  inline$java.lang.Boolean$valueOf$boolean$3$Entry:
    inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0 := 0;
    havoc inline$java.lang.Boolean$valueOf$boolean$3$z0, inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$3$$r0, inline$java.lang.Boolean$valueOf$boolean$3$$return, inline$java.lang.Boolean$valueOf$boolean$3$$exception;
    inline$java.lang.Boolean$valueOf$boolean$3$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$3$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$3$anon0;

  inline$java.lang.Boolean$valueOf$boolean$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$3$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$3$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$3$z0 := inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$3$$r0 := inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this := inline$java.lang.Boolean$valueOf$boolean$3$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$3$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$3$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$3$Entry;

  inline$java.lang.Object$$la$init$ra$$$3$Entry:
    inline$java.lang.Object$$la$init$ra$$$3$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$3$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$3$anon0;

  inline$java.lang.Object$$la$init$ra$$$3$anon0:
    inline$java.lang.Object$$la$init$ra$$$3$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$3$Return;

  inline$java.lang.Object$$la$init$ra$$$3$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception := inline$java.lang.Object$$la$init$ra$$$3$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$Return:
    inline$java.lang.Boolean$valueOf$boolean$3$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$3$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$3$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$3$$return := inline$java.lang.Boolean$valueOf$boolean$3$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$3$block5;

  inline$java.lang.Boolean$valueOf$boolean$3$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$3$Return;

  inline$java.lang.Boolean$valueOf$boolean$3$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14 := inline$java.lang.Boolean$valueOf$boolean$3$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$3$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$3;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$3:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$4;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$4:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$4$Entry;

  inline$java.lang.Boolean$valueOf$boolean$4$Entry:
    inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$4$z0, inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$4$$r0, inline$java.lang.Boolean$valueOf$boolean$4$$return, inline$java.lang.Boolean$valueOf$boolean$4$$exception;
    inline$java.lang.Boolean$valueOf$boolean$4$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$4$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$4$anon0;

  inline$java.lang.Boolean$valueOf$boolean$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$4$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$4$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$4$z0 := inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$4$$r0 := inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this := inline$java.lang.Boolean$valueOf$boolean$4$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$4$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$4$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$4$Entry;

  inline$java.lang.Object$$la$init$ra$$$4$Entry:
    inline$java.lang.Object$$la$init$ra$$$4$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$4$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$4$anon0;

  inline$java.lang.Object$$la$init$ra$$$4$anon0:
    inline$java.lang.Object$$la$init$ra$$$4$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$4$Return;

  inline$java.lang.Object$$la$init$ra$$$4$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception := inline$java.lang.Object$$la$init$ra$$$4$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$Return:
    inline$java.lang.Boolean$valueOf$boolean$4$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$4$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$4$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$4$$return := inline$java.lang.Boolean$valueOf$boolean$4$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$4$block5;

  inline$java.lang.Boolean$valueOf$boolean$4$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$4$Return;

  inline$java.lang.Boolean$valueOf$boolean$4$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16 := inline$java.lang.Boolean$valueOf$boolean$4$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$4$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$5;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$5:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$6;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$6:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon53_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon53_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon53_Else:
    assume {:partition} !(fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon52_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     < fixed.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r4]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     >= 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon18:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2 := fixed.$intArrHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r3][inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon52_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon52_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon52_Else:
    assume {:partition} !(inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     < fixed.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r4]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     >= 0);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon51_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     < fixed.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r3]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     >= 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon18;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon15:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon51_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon51_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon51_Else:
    assume {:partition} !(inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     < fixed.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r3]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     >= 0);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon50_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1
   != 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon15;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon33_dummy:
    assume false;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$exit:
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return:
    $return := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return;
    $exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    $i1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1;
    $r22 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22;
    $r17 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17;
    $r21 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21;
    $c2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2;
    $fakelocal_6 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6;
    $r20 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20;
    z4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4;
    $fakelocal_4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4;
    $l5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5;
    $r13 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13;
    $c3 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3;
    z5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5;
    $r19 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19;
    i7 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7;
    $r14 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14;
    $fakelocal_5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5;
    i6 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6;
    $r16 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16;
    $r18 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18;
    $fakelocal_1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1;
    $l4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4;
    $r15 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15;
    $fakelocal_2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2;
    $fakelocal_3 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3;
    z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0;
    goto block61$1;

  block61$1:
    goto block61_last;

  anon50_Else:
    assume {:partition} $i1 != 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon15:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    goto anon51_Then, anon51_Else;

  anon51_Else:
    assume {:partition} !(i7 < fixed.$arrSizeHeap[r3] && i7 >= 0);
    call $fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon51_Then:
    assume {:partition} i7 < fixed.$arrSizeHeap[r3] && i7 >= 0;
    $exception := $exception;
    goto anon18;

  anon18:
    $c2 := fixed.$intArrHeap[r3][i7];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    $l5 := $c2;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} !(i7 < fixed.$arrSizeHeap[r4] && i7 >= 0);
    call $fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon52_Then:
    assume {:partition} i7 < fixed.$arrSizeHeap[r4] && i7 >= 0;
    $exception := $exception;
    goto anon21;

  anon21:
    $c3 := fixed.$intArrHeap[r4][i7];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    $l4 := $c3;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__0 := $l5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__1 := $l4;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__1;
    assert {:sourceloc "Safe.java", 55, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0 := 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1);
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2 != 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon3:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block28;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block28:
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1);
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3 == 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon6:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block29;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block29:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block30;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block30:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block29;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block28;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Return:
    z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception;
    goto anon21$1;

  anon21$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$5$Entry;

  inline$java.lang.Boolean$valueOf$boolean$5$Entry:
    inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0 := z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$5$z0, inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$5$$r0, inline$java.lang.Boolean$valueOf$boolean$5$$return, inline$java.lang.Boolean$valueOf$boolean$5$$exception;
    inline$java.lang.Boolean$valueOf$boolean$5$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$5$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$5$anon0;

  inline$java.lang.Boolean$valueOf$boolean$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$5$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$5$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$5$z0 := inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$5$$r0 := inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this := inline$java.lang.Boolean$valueOf$boolean$5$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$5$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$5$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$5$Entry;

  inline$java.lang.Object$$la$init$ra$$$5$Entry:
    inline$java.lang.Object$$la$init$ra$$$5$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$5$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$5$anon0;

  inline$java.lang.Object$$la$init$ra$$$5$anon0:
    inline$java.lang.Object$$la$init$ra$$$5$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$5$Return;

  inline$java.lang.Object$$la$init$ra$$$5$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception := inline$java.lang.Object$$la$init$ra$$$5$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$Return:
    inline$java.lang.Boolean$valueOf$boolean$5$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$5$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$5$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$5$$return := inline$java.lang.Boolean$valueOf$boolean$5$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$5$block5;

  inline$java.lang.Boolean$valueOf$boolean$5$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$5$Return;

  inline$java.lang.Boolean$valueOf$boolean$5$Return:
    $r13 := inline$java.lang.Boolean$valueOf$boolean$5$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$5$$exception;
    goto anon21$2;

  anon21$2:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$6$Entry;

  inline$java.lang.Boolean$valueOf$boolean$6$Entry:
    inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0 := 0;
    havoc inline$java.lang.Boolean$valueOf$boolean$6$z0, inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$6$$r0, inline$java.lang.Boolean$valueOf$boolean$6$$return, inline$java.lang.Boolean$valueOf$boolean$6$$exception;
    inline$java.lang.Boolean$valueOf$boolean$6$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$6$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$6$anon0;

  inline$java.lang.Boolean$valueOf$boolean$6$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$6$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$6$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$6$z0 := inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$6$$r0 := inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this := inline$java.lang.Boolean$valueOf$boolean$6$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$6$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$6$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$6$Entry;

  inline$java.lang.Object$$la$init$ra$$$6$Entry:
    inline$java.lang.Object$$la$init$ra$$$6$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$6$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$6$anon0;

  inline$java.lang.Object$$la$init$ra$$$6$anon0:
    inline$java.lang.Object$$la$init$ra$$$6$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$6$Return;

  inline$java.lang.Object$$la$init$ra$$$6$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception := inline$java.lang.Object$$la$init$ra$$$6$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$Return:
    inline$java.lang.Boolean$valueOf$boolean$6$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$6$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$6$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$6$$return := inline$java.lang.Boolean$valueOf$boolean$6$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$6$block5;

  inline$java.lang.Boolean$valueOf$boolean$6$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$6$Return;

  inline$java.lang.Boolean$valueOf$boolean$6$Return:
    $r14 := inline$java.lang.Boolean$valueOf$boolean$6$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$6$$exception;
    goto anon21$3;

  anon21$3:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0 := z5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1 := $r13;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2 := $r14;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Return:
    $r15 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception;
    goto anon21$4;

  anon21$4:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$7$Entry;

  inline$java.lang.Boolean$valueOf$boolean$7$Entry:
    inline$java.lang.Boolean$valueOf$boolean$7$$in_parameter__0 := z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$7$z0, inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$7$$r0, inline$java.lang.Boolean$valueOf$boolean$7$$return, inline$java.lang.Boolean$valueOf$boolean$7$$exception;
    inline$java.lang.Boolean$valueOf$boolean$7$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$7$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$7$anon0;

  inline$java.lang.Boolean$valueOf$boolean$7$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$7$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$7$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$7$z0 := inline$java.lang.Boolean$valueOf$boolean$7$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$7$$r0 := inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this := inline$java.lang.Boolean$valueOf$boolean$7$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$7$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$7$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$7$Entry;

  inline$java.lang.Object$$la$init$ra$$$7$Entry:
    inline$java.lang.Object$$la$init$ra$$$7$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$7$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$7$anon0;

  inline$java.lang.Object$$la$init$ra$$$7$anon0:
    inline$java.lang.Object$$la$init$ra$$$7$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$7$Return;

  inline$java.lang.Object$$la$init$ra$$$7$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception := inline$java.lang.Object$$la$init$ra$$$7$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$Return:
    inline$java.lang.Boolean$valueOf$boolean$7$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$7$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$7$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$7$$return := inline$java.lang.Boolean$valueOf$boolean$7$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$7$block5;

  inline$java.lang.Boolean$valueOf$boolean$7$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$7$Return;

  inline$java.lang.Boolean$valueOf$boolean$7$Return:
    $r16 := inline$java.lang.Boolean$valueOf$boolean$7$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$7$$exception;
    goto anon21$5;

  anon21$5:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__0 := z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1 := $r15;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2 := $r16;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Return:
    $r17 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception;
    goto anon21$6;

  anon21$6:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} !(fixed.$heap[$r17, fixed.$type] <: fixed.java.lang.Boolean);
    call $fakelocal_3 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon53_Then:
    assume {:partition} fixed.$heap[$r17, fixed.$type] <: fixed.java.lang.Boolean;
    $exception := $exception;
    goto anon24;

  anon24:
    $r18 := $r17;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto anon54_Then, anon54_Else;

  anon54_Else:
    assume {:partition} $r18 == fixed.$null;
    call $fakelocal_4 := fixed.$new(fixed.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon54_Then:
    assume {:partition} $r18 != fixed.$null;
    $exception := $exception;
    goto anon27;

  anon27:
    goto inline$java.lang.Boolean$booleanValue$$2$Entry;

  inline$java.lang.Boolean$booleanValue$$2$Entry:
    inline$java.lang.Boolean$booleanValue$$2$$this := $r18;
    havoc inline$java.lang.Boolean$booleanValue$$2$r0, inline$java.lang.Boolean$booleanValue$$2$$z0, inline$java.lang.Boolean$booleanValue$$2$$return, inline$java.lang.Boolean$booleanValue$$2$$exception;
    goto inline$java.lang.Boolean$booleanValue$$2$anon0;

  inline$java.lang.Boolean$booleanValue$$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$2$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$2$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$2$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$2$r0 := inline$java.lang.Boolean$booleanValue$$2$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$2$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$2$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$2$$return := inline$java.lang.Boolean$booleanValue$$2$$z0;
    goto inline$java.lang.Boolean$booleanValue$$2$block6;

  inline$java.lang.Boolean$booleanValue$$2$block6:
    goto inline$java.lang.Boolean$booleanValue$$2$Return;

  inline$java.lang.Boolean$booleanValue$$2$Return:
    z4 := inline$java.lang.Boolean$booleanValue$$2$$return;
    $exception := inline$java.lang.Boolean$booleanValue$$2$$exception;
    goto anon27$1;

  anon27$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$8$Entry;

  inline$java.lang.Boolean$valueOf$boolean$8$Entry:
    inline$java.lang.Boolean$valueOf$boolean$8$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$8$z0, inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$8$$r0, inline$java.lang.Boolean$valueOf$boolean$8$$return, inline$java.lang.Boolean$valueOf$boolean$8$$exception;
    inline$java.lang.Boolean$valueOf$boolean$8$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$8$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$8$anon0;

  inline$java.lang.Boolean$valueOf$boolean$8$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$8$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$8$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$8$z0 := inline$java.lang.Boolean$valueOf$boolean$8$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$8$$r0 := inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this := inline$java.lang.Boolean$valueOf$boolean$8$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$8$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$8$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$8$Entry;

  inline$java.lang.Object$$la$init$ra$$$8$Entry:
    inline$java.lang.Object$$la$init$ra$$$8$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$8$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$8$anon0;

  inline$java.lang.Object$$la$init$ra$$$8$anon0:
    inline$java.lang.Object$$la$init$ra$$$8$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$8$Return;

  inline$java.lang.Object$$la$init$ra$$$8$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception := inline$java.lang.Object$$la$init$ra$$$8$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$Return:
    inline$java.lang.Boolean$valueOf$boolean$8$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$8$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$8$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$8$$return := inline$java.lang.Boolean$valueOf$boolean$8$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$8$block5;

  inline$java.lang.Boolean$valueOf$boolean$8$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$8$Return;

  inline$java.lang.Boolean$valueOf$boolean$8$Return:
    $r19 := inline$java.lang.Boolean$valueOf$boolean$8$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$8$$exception;
    goto anon27$2;

  anon27$2:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$9$Entry;

  inline$java.lang.Boolean$valueOf$boolean$9$Entry:
    inline$java.lang.Boolean$valueOf$boolean$9$$in_parameter__0 := z5;
    havoc inline$java.lang.Boolean$valueOf$boolean$9$z0, inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$9$$r0, inline$java.lang.Boolean$valueOf$boolean$9$$return, inline$java.lang.Boolean$valueOf$boolean$9$$exception;
    inline$java.lang.Boolean$valueOf$boolean$9$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$9$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$9$anon0;

  inline$java.lang.Boolean$valueOf$boolean$9$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$9$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$9$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$9$z0 := inline$java.lang.Boolean$valueOf$boolean$9$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$9$$r0 := inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this := inline$java.lang.Boolean$valueOf$boolean$9$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$9$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$9$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$9$Entry;

  inline$java.lang.Object$$la$init$ra$$$9$Entry:
    inline$java.lang.Object$$la$init$ra$$$9$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$9$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$9$anon0;

  inline$java.lang.Object$$la$init$ra$$$9$anon0:
    inline$java.lang.Object$$la$init$ra$$$9$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$9$Return;

  inline$java.lang.Object$$la$init$ra$$$9$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception := inline$java.lang.Object$$la$init$ra$$$9$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$Return:
    inline$java.lang.Boolean$valueOf$boolean$9$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$9$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$9$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$9$$return := inline$java.lang.Boolean$valueOf$boolean$9$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$9$block5;

  inline$java.lang.Boolean$valueOf$boolean$9$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$9$Return;

  inline$java.lang.Boolean$valueOf$boolean$9$Return:
    $r20 := inline$java.lang.Boolean$valueOf$boolean$9$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$9$$exception;
    goto anon27$3;

  anon27$3:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__0 := z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1 := $r19;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2 := $r20;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Return:
    $r21 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception;
    goto anon27$4;

  anon27$4:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto anon55_Then, anon55_Else;

  anon55_Else:
    assume {:partition} !(fixed.$heap[$r21, fixed.$type] <: fixed.java.lang.Boolean);
    call $fakelocal_5 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon55_Then:
    assume {:partition} fixed.$heap[$r21, fixed.$type] <: fixed.java.lang.Boolean;
    $exception := $exception;
    goto anon30;

  anon30:
    $r22 := $r21;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto anon56_Then, anon56_Else;

  anon56_Else:
    assume {:partition} $r22 == fixed.$null;
    call $fakelocal_6 := fixed.$new(fixed.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon56_Then:
    assume {:partition} $r22 != fixed.$null;
    $exception := $exception;
    goto anon33;

  anon33:
    goto inline$java.lang.Boolean$booleanValue$$3$Entry;

  inline$java.lang.Boolean$booleanValue$$3$Entry:
    inline$java.lang.Boolean$booleanValue$$3$$this := $r22;
    havoc inline$java.lang.Boolean$booleanValue$$3$r0, inline$java.lang.Boolean$booleanValue$$3$$z0, inline$java.lang.Boolean$booleanValue$$3$$return, inline$java.lang.Boolean$booleanValue$$3$$exception;
    goto inline$java.lang.Boolean$booleanValue$$3$anon0;

  inline$java.lang.Boolean$booleanValue$$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$3$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$3$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$3$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$3$r0 := inline$java.lang.Boolean$booleanValue$$3$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$3$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$3$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$3$$return := inline$java.lang.Boolean$booleanValue$$3$$z0;
    goto inline$java.lang.Boolean$booleanValue$$3$block6;

  inline$java.lang.Boolean$booleanValue$$3$block6:
    goto inline$java.lang.Boolean$booleanValue$$3$Return;

  inline$java.lang.Boolean$booleanValue$$3$Return:
    z5 := inline$java.lang.Boolean$booleanValue$$3$$return;
    $exception := inline$java.lang.Boolean$booleanValue$$3$$exception;
    goto anon33$1;

  anon33$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 46, -1, -1, -1} true;
    i7 := i7 + 1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 47, -1, -1, -1} true;
    goto anon33_dummy;

  anon50_Then:
    assume {:partition} $i1 == 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} {:comment "thenblock"} true;
    goto block62;

  block62:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 48, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$10$Entry;

  inline$java.lang.Boolean$valueOf$boolean$10$Entry:
    inline$java.lang.Boolean$valueOf$boolean$10$$in_parameter__0 := z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$10$z0, inline$java.lang.Boolean$valueOf$boolean$10$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$10$$r0, inline$java.lang.Boolean$valueOf$boolean$10$$return, inline$java.lang.Boolean$valueOf$boolean$10$$exception;
    inline$java.lang.Boolean$valueOf$boolean$10$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$10$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$10$anon0;

  inline$java.lang.Boolean$valueOf$boolean$10$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$10$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$10$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$10$z0 := inline$java.lang.Boolean$valueOf$boolean$10$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$10$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$10$$r0 := inline$java.lang.Boolean$valueOf$boolean$10$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$10$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$10$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$$this := inline$java.lang.Boolean$valueOf$boolean$10$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$10$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$10$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$10$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$10$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$10$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$10$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$10$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$10$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$10$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$10$Entry;

  inline$java.lang.Object$$la$init$ra$$$10$Entry:
    inline$java.lang.Object$$la$init$ra$$$10$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$10$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$10$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$10$anon0;

  inline$java.lang.Object$$la$init$ra$$$10$anon0:
    inline$java.lang.Object$$la$init$ra$$$10$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$10$Return;

  inline$java.lang.Object$$la$init$ra$$$10$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception := inline$java.lang.Object$$la$init$ra$$$10$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$10$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$10$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$10$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$10$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$10$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$10$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$10$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$10$Return:
    inline$java.lang.Boolean$valueOf$boolean$10$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$10$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$10$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$10$$return := inline$java.lang.Boolean$valueOf$boolean$10$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$10$block5;

  inline$java.lang.Boolean$valueOf$boolean$10$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$10$Return;

  inline$java.lang.Boolean$valueOf$boolean$10$Return:
    $r9 := inline$java.lang.Boolean$valueOf$boolean$10$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$10$$exception;
    goto block62$1;

  block62$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 48, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$11$Entry;

  inline$java.lang.Boolean$valueOf$boolean$11$Entry:
    inline$java.lang.Boolean$valueOf$boolean$11$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$11$z0, inline$java.lang.Boolean$valueOf$boolean$11$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$11$$r0, inline$java.lang.Boolean$valueOf$boolean$11$$return, inline$java.lang.Boolean$valueOf$boolean$11$$exception;
    inline$java.lang.Boolean$valueOf$boolean$11$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$11$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$11$anon0;

  inline$java.lang.Boolean$valueOf$boolean$11$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$11$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$11$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$11$z0 := inline$java.lang.Boolean$valueOf$boolean$11$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$11$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$11$$r0 := inline$java.lang.Boolean$valueOf$boolean$11$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$11$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$11$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$$this := inline$java.lang.Boolean$valueOf$boolean$11$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$11$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$11$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$11$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$11$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$11$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$11$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$11$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$11$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$11$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$11$Entry;

  inline$java.lang.Object$$la$init$ra$$$11$Entry:
    inline$java.lang.Object$$la$init$ra$$$11$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$11$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$11$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$11$anon0;

  inline$java.lang.Object$$la$init$ra$$$11$anon0:
    inline$java.lang.Object$$la$init$ra$$$11$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$11$Return;

  inline$java.lang.Object$$la$init$ra$$$11$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception := inline$java.lang.Object$$la$init$ra$$$11$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$11$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$11$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$11$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$11$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$11$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$11$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$11$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$11$Return:
    inline$java.lang.Boolean$valueOf$boolean$11$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$11$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$11$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$11$$return := inline$java.lang.Boolean$valueOf$boolean$11$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$11$block5;

  inline$java.lang.Boolean$valueOf$boolean$11$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$11$Return;

  inline$java.lang.Boolean$valueOf$boolean$11$Return:
    $r10 := inline$java.lang.Boolean$valueOf$boolean$11$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$11$$exception;
    goto block62$2;

  block62$2:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 48, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__0 := z5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__1 := $r9;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__2 := $r10;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$Return:
    $r11 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$exception;
    goto block62$3;

  block62$3:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 48, -1, -1, -1} true;
    goto anon57_Then, anon57_Else;

  anon57_Else:
    assume {:partition} !(fixed.$heap[$r11, fixed.$type] <: fixed.java.lang.Boolean);
    call $fakelocal_7 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_7;
    return;

  anon57_Then:
    assume {:partition} fixed.$heap[$r11, fixed.$type] <: fixed.java.lang.Boolean;
    $exception := $exception;
    goto anon36;

  anon36:
    $r12 := $r11;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 48, -1, -1, -1} true;
    goto anon58_Then, anon58_Else;

  anon58_Else:
    assume {:partition} $r12 == fixed.$null;
    call $fakelocal_8 := fixed.$new(fixed.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_8;
    return;

  anon58_Then:
    assume {:partition} $r12 != fixed.$null;
    $exception := $exception;
    goto anon39;

  anon39:
    goto inline$java.lang.Boolean$booleanValue$$4$Entry;

  inline$java.lang.Boolean$booleanValue$$4$Entry:
    inline$java.lang.Boolean$booleanValue$$4$$this := $r12;
    havoc inline$java.lang.Boolean$booleanValue$$4$r0, inline$java.lang.Boolean$booleanValue$$4$$z0, inline$java.lang.Boolean$booleanValue$$4$$return, inline$java.lang.Boolean$booleanValue$$4$$exception;
    goto inline$java.lang.Boolean$booleanValue$$4$anon0;

  inline$java.lang.Boolean$booleanValue$$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$4$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$4$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$4$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$4$r0 := inline$java.lang.Boolean$booleanValue$$4$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$4$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$4$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$4$$return := inline$java.lang.Boolean$booleanValue$$4$$z0;
    goto inline$java.lang.Boolean$booleanValue$$4$block6;

  inline$java.lang.Boolean$booleanValue$$4$block6:
    goto inline$java.lang.Boolean$booleanValue$$4$Return;

  inline$java.lang.Boolean$booleanValue$$4$Return:
    $z3 := inline$java.lang.Boolean$booleanValue$$4$$return;
    $exception := inline$java.lang.Boolean$booleanValue$$4$$exception;
    goto anon39$1;

  anon39$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 48, -1, -1, -1} true;
    $return := $z3;
    goto block63;

  anon49_Then:
    assume {:partition} i6 != $i0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} {:comment "thenblock"} true;
    goto block60;

  block60:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 51, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$12$Entry;

  inline$java.lang.Boolean$valueOf$boolean$12$Entry:
    inline$java.lang.Boolean$valueOf$boolean$12$$in_parameter__0 := z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$12$z0, inline$java.lang.Boolean$valueOf$boolean$12$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$12$$r0, inline$java.lang.Boolean$valueOf$boolean$12$$return, inline$java.lang.Boolean$valueOf$boolean$12$$exception;
    inline$java.lang.Boolean$valueOf$boolean$12$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$12$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$12$anon0;

  inline$java.lang.Boolean$valueOf$boolean$12$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$12$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$12$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$12$z0 := inline$java.lang.Boolean$valueOf$boolean$12$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$12$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$12$$r0 := inline$java.lang.Boolean$valueOf$boolean$12$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$12$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$12$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$$this := inline$java.lang.Boolean$valueOf$boolean$12$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$12$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$12$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$12$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$12$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$12$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$12$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$12$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$12$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$12$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$12$Entry;

  inline$java.lang.Object$$la$init$ra$$$12$Entry:
    inline$java.lang.Object$$la$init$ra$$$12$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$12$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$12$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$12$anon0;

  inline$java.lang.Object$$la$init$ra$$$12$anon0:
    inline$java.lang.Object$$la$init$ra$$$12$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$12$Return;

  inline$java.lang.Object$$la$init$ra$$$12$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception := inline$java.lang.Object$$la$init$ra$$$12$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$12$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$12$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$12$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$12$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$12$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$12$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$12$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$12$Return:
    inline$java.lang.Boolean$valueOf$boolean$12$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$12$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$12$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$12$$return := inline$java.lang.Boolean$valueOf$boolean$12$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$12$block5;

  inline$java.lang.Boolean$valueOf$boolean$12$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$12$Return;

  inline$java.lang.Boolean$valueOf$boolean$12$Return:
    $r5 := inline$java.lang.Boolean$valueOf$boolean$12$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$12$$exception;
    goto block60$1;

  block60$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 51, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$13$Entry;

  inline$java.lang.Boolean$valueOf$boolean$13$Entry:
    inline$java.lang.Boolean$valueOf$boolean$13$$in_parameter__0 := 0;
    havoc inline$java.lang.Boolean$valueOf$boolean$13$z0, inline$java.lang.Boolean$valueOf$boolean$13$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$13$$r0, inline$java.lang.Boolean$valueOf$boolean$13$$return, inline$java.lang.Boolean$valueOf$boolean$13$$exception;
    inline$java.lang.Boolean$valueOf$boolean$13$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$13$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$13$anon0;

  inline$java.lang.Boolean$valueOf$boolean$13$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$13$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$13$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$13$z0 := inline$java.lang.Boolean$valueOf$boolean$13$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$13$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$13$$r0 := inline$java.lang.Boolean$valueOf$boolean$13$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$13$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$13$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$$this := inline$java.lang.Boolean$valueOf$boolean$13$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$13$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$13$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$13$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$13$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$13$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$13$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$13$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$13$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$13$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$13$Entry;

  inline$java.lang.Object$$la$init$ra$$$13$Entry:
    inline$java.lang.Object$$la$init$ra$$$13$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$13$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$13$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$13$anon0;

  inline$java.lang.Object$$la$init$ra$$$13$anon0:
    inline$java.lang.Object$$la$init$ra$$$13$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$13$Return;

  inline$java.lang.Object$$la$init$ra$$$13$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception := inline$java.lang.Object$$la$init$ra$$$13$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$13$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$13$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$13$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$13$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$13$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$13$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$13$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$13$Return:
    inline$java.lang.Boolean$valueOf$boolean$13$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$13$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$13$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$13$$return := inline$java.lang.Boolean$valueOf$boolean$13$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$13$block5;

  inline$java.lang.Boolean$valueOf$boolean$13$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$13$Return;

  inline$java.lang.Boolean$valueOf$boolean$13$Return:
    $r6 := inline$java.lang.Boolean$valueOf$boolean$13$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$13$$exception;
    goto block60$2;

  block60$2:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 51, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__0 := z5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__1 := $r5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__2 := $r6;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$Return:
    $r7 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$exception;
    goto block60$3;

  block60$3:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 51, -1, -1, -1} true;
    goto anon59_Then, anon59_Else;

  anon59_Else:
    assume {:partition} !(fixed.$heap[$r7, fixed.$type] <: fixed.java.lang.Boolean);
    call $fakelocal_9 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_9;
    return;

  anon59_Then:
    assume {:partition} fixed.$heap[$r7, fixed.$type] <: fixed.java.lang.Boolean;
    $exception := $exception;
    goto anon42;

  anon42:
    $r8 := $r7;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 51, -1, -1, -1} true;
    goto anon60_Then, anon60_Else;

  anon60_Else:
    assume {:partition} $r8 == fixed.$null;
    call $fakelocal_10 := fixed.$new(fixed.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_10;
    return;

  anon60_Then:
    assume {:partition} $r8 != fixed.$null;
    $exception := $exception;
    goto anon45;

  anon45:
    goto inline$java.lang.Boolean$booleanValue$$5$Entry;

  inline$java.lang.Boolean$booleanValue$$5$Entry:
    inline$java.lang.Boolean$booleanValue$$5$$this := $r8;
    havoc inline$java.lang.Boolean$booleanValue$$5$r0, inline$java.lang.Boolean$booleanValue$$5$$z0, inline$java.lang.Boolean$booleanValue$$5$$return, inline$java.lang.Boolean$booleanValue$$5$$exception;
    goto inline$java.lang.Boolean$booleanValue$$5$anon0;

  inline$java.lang.Boolean$booleanValue$$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$5$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$5$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$5$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$5$r0 := inline$java.lang.Boolean$booleanValue$$5$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$5$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$5$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$5$$return := inline$java.lang.Boolean$booleanValue$$5$$z0;
    goto inline$java.lang.Boolean$booleanValue$$5$block6;

  inline$java.lang.Boolean$booleanValue$$5$block6:
    goto inline$java.lang.Boolean$booleanValue$$5$Return;

  inline$java.lang.Boolean$booleanValue$$5$Return:
    $z2 := inline$java.lang.Boolean$booleanValue$$5$$return;
    $exception := inline$java.lang.Boolean$booleanValue$$5$$exception;
    goto anon45$1;

  anon45$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 51, -1, -1, -1} true;
    $return := $z2;
    goto block63;

  anon47_Then:
    assume {:partition} $z1 == 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 34, -1, -1, -1} {:comment "thenblock"} true;
    goto block60;

  anon33_dummy:
    assume false;
    return;

  block61_last:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} true;
    $i1 := i6;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} true;
    i6 := i6 + -1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} true;
    goto anon50_Then, anon50_Else;
}



implementation fixed.SimplifiedUsernameTokenValidatorImpl$verifyPlaintextPassword$org.apache.wss4j.binding.wss10.PasswordString_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref) returns ($exception: ref)
{
  var $r2: ref;
  var r5: ref;
  var $z0: int;
  var $fakelocal_0: ref;
  var r0: ref;
  var $fakelocal_2: ref;
  var r4: ref;
  var r1: ref;
  var $fakelocal_1: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r2: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r1: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r7: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r12: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i1: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i0: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r22: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r17: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r4: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r21: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$z2: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c2: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r0: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_6: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r6: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r20: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_8: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r8: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_9: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$z3: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_4: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$l5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_0: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r10: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r9: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r13: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c3: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r19: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r5: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_10: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i7: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r14: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_5: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i6: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r11: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r16: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r18: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_1: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_7: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$l4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r15: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r3: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_2: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$z1: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_3: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z0: int;
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
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r4: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r3: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap: $heap_type;
  var inline$java.lang.Boolean$booleanValue$$0$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$0$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$0$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$0$$return: int;
  var inline$java.lang.Boolean$booleanValue$$0$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$1$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$1$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$1$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$1$$return: int;
  var inline$java.lang.Boolean$booleanValue$$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$1$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$1$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$2$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$3$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$3$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$4$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$4$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$5$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$5$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$6$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$6$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$7$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$7$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$2$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$2$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$2$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$2$$return: int;
  var inline$java.lang.Boolean$booleanValue$$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$8$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$8$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$9$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$9$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$3$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$3$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$3$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$3$$return: int;
  var inline$java.lang.Boolean$booleanValue$$3$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$10$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$10$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$10$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$10$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$10$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$10$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$10$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$11$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$11$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$11$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$11$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$11$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$11$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$11$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$4$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$4$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$4$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$4$$return: int;
  var inline$java.lang.Boolean$booleanValue$$4$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$12$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$12$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$12$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$12$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$12$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$12$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$12$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$13$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$13$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$13$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$13$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$13$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$13$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$13$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$5$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$5$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$5$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$5$$return: int;
  var inline$java.lang.Boolean$booleanValue$$5$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$in_parameter__0, fixed.$type]
   <: fixed.org.apache.wss4j.binding.wss10.PasswordString;
    assume fixed.$heap[$in_parameter__1, fixed.$type] <: fixed.java.lang.String;
    $exception := fixed.$null;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 62, -1, -1, -1} true;
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} r0 == fixed.$null;
    call $fakelocal_0 := fixed.$new(fixed.java.lang.RuntimeException);
    $exception := $fakelocal_0;
    return;

  anon10_Then:
    assume {:partition} r0 != fixed.$null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $r2, $exception := fixed.org.apache.wss4j.binding.wss10.PasswordString$getValue$(r0);
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 62, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Entry;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Entry:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$in_parameter__0 := $r2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$in_parameter__1 := r1;
    havoc inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r12, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i0, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$z2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r0, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_8, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r8, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_9, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$z3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_0, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r10, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r9, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_10, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r11, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$z1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z0, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$objIndex := fixed.$objIndex;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$heap := fixed.$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon0;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$in_parameter__0, fixed.$type]
   <: fixed.java.lang.String;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := fixed.$null;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$in_parameter__0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$in_parameter__1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 29, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z4 := 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 30, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z5 := 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 31, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon46_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon46_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon46_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r0
   == inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 31, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon3;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon3:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 32, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := 1;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block63;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block63:
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon46_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r0
   != inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 31, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block59;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block59:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 34, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$z1 := fixed.$boolToInt(inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r1
       != fixed.$null
     && fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r1, fixed.$type]
       <: fixed.java.lang.String);
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 34, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon47_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon47_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon47_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$z1
   != 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 34, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon6;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon6:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 35, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon48_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon48_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon48_Else:
    assume {:partition} !(fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r1, fixed.$type]
   <: fixed.java.lang.String);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_0 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_0;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon48_Then:
    assume {:partition} fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r1, fixed.$type]
   <: fixed.java.lang.String;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon9;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon9:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 36, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i6 := fixed.$stringSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r0];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i0 := fixed.$stringSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r2];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon49_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon49_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon49_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i6
   == inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon12;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon12:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 38, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$0$Entry;

  inline$java.lang.String$toCharArray$$0$Entry:
    inline$java.lang.String$toCharArray$$0$$this := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r0;
    havoc inline$java.lang.String$toCharArray$$0$$r1, inline$java.lang.String$toCharArray$$0$r0, inline$java.lang.String$toCharArray$$0$$return, inline$java.lang.String$toCharArray$$0$$exception;
    goto inline$java.lang.String$toCharArray$$0$anon0;

  inline$java.lang.String$toCharArray$$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.String$toCharArray$$0$$this, fixed.$type]
   <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$toCharArray$$0$$this != fixed.$null;
    inline$java.lang.String$toCharArray$$0$$exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$r0 := inline$java.lang.String$toCharArray$$0$$this;
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$0$$r1 := fixed.$heap[inline$java.lang.String$toCharArray$$0$r0, fixed.char$lp$$rp$$java.lang.String$chars259];
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
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 39, -1, -1, -1} true;
    goto inline$java.lang.String$toCharArray$$1$Entry;

  inline$java.lang.String$toCharArray$$1$Entry:
    inline$java.lang.String$toCharArray$$1$$this := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r2;
    havoc inline$java.lang.String$toCharArray$$1$$r1, inline$java.lang.String$toCharArray$$1$r0, inline$java.lang.String$toCharArray$$1$$return, inline$java.lang.String$toCharArray$$1$$exception;
    goto inline$java.lang.String$toCharArray$$1$anon0;

  inline$java.lang.String$toCharArray$$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.String$toCharArray$$1$$this, fixed.$type]
   <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$toCharArray$$1$$this != fixed.$null;
    inline$java.lang.String$toCharArray$$1$$exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$r0 := inline$java.lang.String$toCharArray$$1$$this;
    assert {:sourceloc "String.java", 11, -1, -1, -1} true;
    inline$java.lang.String$toCharArray$$1$$r1 := fixed.$heap[inline$java.lang.String$toCharArray$$1$r0, fixed.char$lp$$rp$$java.lang.String$chars259];
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
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 40, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i7 := 0;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block61;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block61:
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Entry;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Entry:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r22;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r17;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r21;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_6;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r20;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$l5;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r13;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z5;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r19;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i7;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r14;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_5;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i6;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r16;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r18;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$l4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r15;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r3 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z0;
    havoc inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex := fixed.$objIndex;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap := fixed.$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$entry;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$entry:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$block61;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$block61:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6
   + -1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon50_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon50_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon50_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1
   == 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} {:comment "thenblock"} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon33:
    goto inline$java.lang.Boolean$booleanValue$$0$Entry;

  inline$java.lang.Boolean$booleanValue$$0$Entry:
    inline$java.lang.Boolean$booleanValue$$0$$this := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22;
    havoc inline$java.lang.Boolean$booleanValue$$0$r0, inline$java.lang.Boolean$booleanValue$$0$$z0, inline$java.lang.Boolean$booleanValue$$0$$return, inline$java.lang.Boolean$booleanValue$$0$$exception;
    goto inline$java.lang.Boolean$booleanValue$$0$anon0;

  inline$java.lang.Boolean$booleanValue$$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$0$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$0$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$0$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$0$r0 := inline$java.lang.Boolean$booleanValue$$0$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$0$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$0$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$0$$return := inline$java.lang.Boolean$booleanValue$$0$$z0;
    goto inline$java.lang.Boolean$booleanValue$$0$block6;

  inline$java.lang.Boolean$booleanValue$$0$block6:
    goto inline$java.lang.Boolean$booleanValue$$0$Return;

  inline$java.lang.Boolean$booleanValue$$0$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5 := inline$java.lang.Boolean$booleanValue$$0$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$booleanValue$$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon33$1;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon33$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 46, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
   + 1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 47, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon33_dummy;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon56_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22
   != fixed.$null;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon33;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon30:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon56_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon56_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon56_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22
   == fixed.$null;
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon55_Then:
    assume {:partition} fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon30;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27:
    goto inline$java.lang.Boolean$booleanValue$$1$Entry;

  inline$java.lang.Boolean$booleanValue$$1$Entry:
    inline$java.lang.Boolean$booleanValue$$1$$this := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18;
    havoc inline$java.lang.Boolean$booleanValue$$1$r0, inline$java.lang.Boolean$booleanValue$$1$$z0, inline$java.lang.Boolean$booleanValue$$1$$return, inline$java.lang.Boolean$booleanValue$$1$$exception;
    goto inline$java.lang.Boolean$booleanValue$$1$anon0;

  inline$java.lang.Boolean$booleanValue$$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$1$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$1$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$1$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$1$r0 := inline$java.lang.Boolean$booleanValue$$1$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$1$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$1$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$1$$return := inline$java.lang.Boolean$booleanValue$$1$$z0;
    goto inline$java.lang.Boolean$booleanValue$$1$block6;

  inline$java.lang.Boolean$booleanValue$$1$block6:
    goto inline$java.lang.Boolean$booleanValue$$1$Return;

  inline$java.lang.Boolean$booleanValue$$1$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4 := inline$java.lang.Boolean$booleanValue$$1$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$booleanValue$$1$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$1;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$0$Entry;

  inline$java.lang.Boolean$valueOf$boolean$0$Entry:
    inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$0$z0, inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$0$$r0, inline$java.lang.Boolean$valueOf$boolean$0$$return, inline$java.lang.Boolean$valueOf$boolean$0$$exception;
    inline$java.lang.Boolean$valueOf$boolean$0$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$0$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$0$anon0;

  inline$java.lang.Boolean$valueOf$boolean$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$0$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$0$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$0$z0 := inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$0$$r0 := inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this := inline$java.lang.Boolean$valueOf$boolean$0$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$0$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception := fixed.$null;
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
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    inline$java.lang.Boolean$valueOf$boolean$0$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$0$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$0$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$0$$return := inline$java.lang.Boolean$valueOf$boolean$0$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$0$block5;

  inline$java.lang.Boolean$valueOf$boolean$0$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$0$Return;

  inline$java.lang.Boolean$valueOf$boolean$0$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19 := inline$java.lang.Boolean$valueOf$boolean$0$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$2;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$2:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$1$Entry;

  inline$java.lang.Boolean$valueOf$boolean$1$Entry:
    inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5;
    havoc inline$java.lang.Boolean$valueOf$boolean$1$z0, inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$1$$r0, inline$java.lang.Boolean$valueOf$boolean$1$$return, inline$java.lang.Boolean$valueOf$boolean$1$$exception;
    inline$java.lang.Boolean$valueOf$boolean$1$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$1$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$1$anon0;

  inline$java.lang.Boolean$valueOf$boolean$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$1$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$1$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$1$z0 := inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$1$$r0 := inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this := inline$java.lang.Boolean$valueOf$boolean$1$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$1$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$1$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$1$Entry;

  inline$java.lang.Object$$la$init$ra$$$1$Entry:
    inline$java.lang.Object$$la$init$ra$$$1$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$1$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$1$anon0;

  inline$java.lang.Object$$la$init$ra$$$1$anon0:
    inline$java.lang.Object$$la$init$ra$$$1$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$1$Return;

  inline$java.lang.Object$$la$init$ra$$$1$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception := inline$java.lang.Object$$la$init$ra$$$1$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$Return:
    inline$java.lang.Boolean$valueOf$boolean$1$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$1$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$1$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$1$$return := inline$java.lang.Boolean$valueOf$boolean$1$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$1$block5;

  inline$java.lang.Boolean$valueOf$boolean$1$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$1$Return;

  inline$java.lang.Boolean$valueOf$boolean$1$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20 := inline$java.lang.Boolean$valueOf$boolean$1$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$1$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$3;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$3:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$4;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$4:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon55_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon55_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon55_Else:
    assume {:partition} !(fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon54_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18
   != fixed.$null;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon24:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon54_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon54_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon54_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18
   == fixed.$null;
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon53_Then:
    assume {:partition} fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon24;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3 := fixed.$intArrHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r4][inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1;
    assert {:sourceloc "Safe.java", 55, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0 := 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 != 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon3:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block28;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block28:
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 == 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon6:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block29;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block29:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block30;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block30:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block29;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block28;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$1;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$2$Entry;

  inline$java.lang.Boolean$valueOf$boolean$2$Entry:
    inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$2$z0, inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$2$$r0, inline$java.lang.Boolean$valueOf$boolean$2$$return, inline$java.lang.Boolean$valueOf$boolean$2$$exception;
    inline$java.lang.Boolean$valueOf$boolean$2$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$2$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$2$anon0;

  inline$java.lang.Boolean$valueOf$boolean$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$2$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$2$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$2$z0 := inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$2$$r0 := inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this := inline$java.lang.Boolean$valueOf$boolean$2$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$2$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$2$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$2$Entry;

  inline$java.lang.Object$$la$init$ra$$$2$Entry:
    inline$java.lang.Object$$la$init$ra$$$2$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$2$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$2$anon0;

  inline$java.lang.Object$$la$init$ra$$$2$anon0:
    inline$java.lang.Object$$la$init$ra$$$2$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$2$Return;

  inline$java.lang.Object$$la$init$ra$$$2$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception := inline$java.lang.Object$$la$init$ra$$$2$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$Return:
    inline$java.lang.Boolean$valueOf$boolean$2$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$2$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$2$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$2$$return := inline$java.lang.Boolean$valueOf$boolean$2$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$2$block5;

  inline$java.lang.Boolean$valueOf$boolean$2$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$2$Return;

  inline$java.lang.Boolean$valueOf$boolean$2$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13 := inline$java.lang.Boolean$valueOf$boolean$2$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$2$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$2;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$2:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$3$Entry;

  inline$java.lang.Boolean$valueOf$boolean$3$Entry:
    inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0 := 0;
    havoc inline$java.lang.Boolean$valueOf$boolean$3$z0, inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$3$$r0, inline$java.lang.Boolean$valueOf$boolean$3$$return, inline$java.lang.Boolean$valueOf$boolean$3$$exception;
    inline$java.lang.Boolean$valueOf$boolean$3$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$3$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$3$anon0;

  inline$java.lang.Boolean$valueOf$boolean$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$3$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$3$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$3$z0 := inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$3$$r0 := inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this := inline$java.lang.Boolean$valueOf$boolean$3$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$3$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$3$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$3$Entry;

  inline$java.lang.Object$$la$init$ra$$$3$Entry:
    inline$java.lang.Object$$la$init$ra$$$3$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$3$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$3$anon0;

  inline$java.lang.Object$$la$init$ra$$$3$anon0:
    inline$java.lang.Object$$la$init$ra$$$3$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$3$Return;

  inline$java.lang.Object$$la$init$ra$$$3$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception := inline$java.lang.Object$$la$init$ra$$$3$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$Return:
    inline$java.lang.Boolean$valueOf$boolean$3$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$3$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$3$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$3$$return := inline$java.lang.Boolean$valueOf$boolean$3$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$3$block5;

  inline$java.lang.Boolean$valueOf$boolean$3$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$3$Return;

  inline$java.lang.Boolean$valueOf$boolean$3$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14 := inline$java.lang.Boolean$valueOf$boolean$3$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$3$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$3;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$3:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$4;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$4:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$4$Entry;

  inline$java.lang.Boolean$valueOf$boolean$4$Entry:
    inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$4$z0, inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$4$$r0, inline$java.lang.Boolean$valueOf$boolean$4$$return, inline$java.lang.Boolean$valueOf$boolean$4$$exception;
    inline$java.lang.Boolean$valueOf$boolean$4$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$4$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$4$anon0;

  inline$java.lang.Boolean$valueOf$boolean$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$4$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$4$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$4$z0 := inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$4$$r0 := inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this := inline$java.lang.Boolean$valueOf$boolean$4$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$4$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$4$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$4$Entry;

  inline$java.lang.Object$$la$init$ra$$$4$Entry:
    inline$java.lang.Object$$la$init$ra$$$4$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$4$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$4$anon0;

  inline$java.lang.Object$$la$init$ra$$$4$anon0:
    inline$java.lang.Object$$la$init$ra$$$4$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$4$Return;

  inline$java.lang.Object$$la$init$ra$$$4$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception := inline$java.lang.Object$$la$init$ra$$$4$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$Return:
    inline$java.lang.Boolean$valueOf$boolean$4$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$4$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$4$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$4$$return := inline$java.lang.Boolean$valueOf$boolean$4$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$4$block5;

  inline$java.lang.Boolean$valueOf$boolean$4$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$4$Return;

  inline$java.lang.Boolean$valueOf$boolean$4$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16 := inline$java.lang.Boolean$valueOf$boolean$4$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$4$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$5;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$5:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$6;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$6:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon53_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon53_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon53_Else:
    assume {:partition} !(fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon52_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     < fixed.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r4]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     >= 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon18:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2 := fixed.$intArrHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r3][inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon52_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon52_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon52_Else:
    assume {:partition} !(inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     < fixed.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r4]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     >= 0);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon51_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     < fixed.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r3]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     >= 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon18;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon15:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon51_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon51_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon51_Else:
    assume {:partition} !(inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     < fixed.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r3]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     >= 0);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon50_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1
   != 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon15;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon33_dummy:
    assume false;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$exit:
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r22 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r17 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r21 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_6 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r20 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$l5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r13 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c3 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r19 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i7 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r14 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i6 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r16 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r18 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$l4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r15 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_3 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block61$1;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block61$1:
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block61_last;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon50_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i1
   != 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon15;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon15:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon51_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon51_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon51_Else:
    assume {:partition} !(inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i7
     < fixed.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r3]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i7
     >= 0);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_1;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon51_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i7
     < fixed.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r3]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i7
     >= 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon18;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon18:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c2 := fixed.$intArrHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r3][inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i7];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$l5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c2;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon52_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon52_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon52_Else:
    assume {:partition} !(inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i7
     < fixed.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r4]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i7
     >= 0);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_2;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon52_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i7
     < fixed.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r4]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i7
     >= 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon21;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon21:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c3 := fixed.$intArrHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$r4][inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i7];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$l4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$c3;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$l5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$l4;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__1;
    assert {:sourceloc "Safe.java", 55, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0 := 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1);
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2 != 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon3:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block28;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block28:
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1);
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3 == 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon6:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block29;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block29:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block30;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block30:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block29;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block28;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon21$1;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon21$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$5$Entry;

  inline$java.lang.Boolean$valueOf$boolean$5$Entry:
    inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$5$z0, inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$5$$r0, inline$java.lang.Boolean$valueOf$boolean$5$$return, inline$java.lang.Boolean$valueOf$boolean$5$$exception;
    inline$java.lang.Boolean$valueOf$boolean$5$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$5$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$5$anon0;

  inline$java.lang.Boolean$valueOf$boolean$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$5$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$5$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$5$z0 := inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$5$$r0 := inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this := inline$java.lang.Boolean$valueOf$boolean$5$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$5$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$5$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$5$Entry;

  inline$java.lang.Object$$la$init$ra$$$5$Entry:
    inline$java.lang.Object$$la$init$ra$$$5$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$5$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$5$anon0;

  inline$java.lang.Object$$la$init$ra$$$5$anon0:
    inline$java.lang.Object$$la$init$ra$$$5$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$5$Return;

  inline$java.lang.Object$$la$init$ra$$$5$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception := inline$java.lang.Object$$la$init$ra$$$5$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$Return:
    inline$java.lang.Boolean$valueOf$boolean$5$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$5$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$5$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$5$$return := inline$java.lang.Boolean$valueOf$boolean$5$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$5$block5;

  inline$java.lang.Boolean$valueOf$boolean$5$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$5$Return;

  inline$java.lang.Boolean$valueOf$boolean$5$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r13 := inline$java.lang.Boolean$valueOf$boolean$5$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$java.lang.Boolean$valueOf$boolean$5$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon21$2;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon21$2:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$6$Entry;

  inline$java.lang.Boolean$valueOf$boolean$6$Entry:
    inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0 := 0;
    havoc inline$java.lang.Boolean$valueOf$boolean$6$z0, inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$6$$r0, inline$java.lang.Boolean$valueOf$boolean$6$$return, inline$java.lang.Boolean$valueOf$boolean$6$$exception;
    inline$java.lang.Boolean$valueOf$boolean$6$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$6$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$6$anon0;

  inline$java.lang.Boolean$valueOf$boolean$6$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$6$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$6$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$6$z0 := inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$6$$r0 := inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this := inline$java.lang.Boolean$valueOf$boolean$6$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$6$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$6$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$6$Entry;

  inline$java.lang.Object$$la$init$ra$$$6$Entry:
    inline$java.lang.Object$$la$init$ra$$$6$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$6$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$6$anon0;

  inline$java.lang.Object$$la$init$ra$$$6$anon0:
    inline$java.lang.Object$$la$init$ra$$$6$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$6$Return;

  inline$java.lang.Object$$la$init$ra$$$6$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception := inline$java.lang.Object$$la$init$ra$$$6$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$Return:
    inline$java.lang.Boolean$valueOf$boolean$6$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$6$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$6$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$6$$return := inline$java.lang.Boolean$valueOf$boolean$6$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$6$block5;

  inline$java.lang.Boolean$valueOf$boolean$6$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$6$Return;

  inline$java.lang.Boolean$valueOf$boolean$6$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r14 := inline$java.lang.Boolean$valueOf$boolean$6$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$java.lang.Boolean$valueOf$boolean$6$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon21$3;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon21$3:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r13;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r14;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r15 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon21$4;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon21$4:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$7$Entry;

  inline$java.lang.Boolean$valueOf$boolean$7$Entry:
    inline$java.lang.Boolean$valueOf$boolean$7$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$7$z0, inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$7$$r0, inline$java.lang.Boolean$valueOf$boolean$7$$return, inline$java.lang.Boolean$valueOf$boolean$7$$exception;
    inline$java.lang.Boolean$valueOf$boolean$7$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$7$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$7$anon0;

  inline$java.lang.Boolean$valueOf$boolean$7$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$7$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$7$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$7$z0 := inline$java.lang.Boolean$valueOf$boolean$7$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$7$$r0 := inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this := inline$java.lang.Boolean$valueOf$boolean$7$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$7$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$7$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$7$Entry;

  inline$java.lang.Object$$la$init$ra$$$7$Entry:
    inline$java.lang.Object$$la$init$ra$$$7$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$7$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$7$anon0;

  inline$java.lang.Object$$la$init$ra$$$7$anon0:
    inline$java.lang.Object$$la$init$ra$$$7$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$7$Return;

  inline$java.lang.Object$$la$init$ra$$$7$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception := inline$java.lang.Object$$la$init$ra$$$7$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$Return:
    inline$java.lang.Boolean$valueOf$boolean$7$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$7$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$7$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$7$$return := inline$java.lang.Boolean$valueOf$boolean$7$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$7$block5;

  inline$java.lang.Boolean$valueOf$boolean$7$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$7$Return;

  inline$java.lang.Boolean$valueOf$boolean$7$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r16 := inline$java.lang.Boolean$valueOf$boolean$7$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$java.lang.Boolean$valueOf$boolean$7$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon21$5;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon21$5:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r15;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r16;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r17 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon21$6;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon21$6:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon53_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon53_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon53_Else:
    assume {:partition} !(fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r17, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_3 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_3;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon53_Then:
    assume {:partition} fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r17, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon24;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon24:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r18 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r17;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon54_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon54_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon54_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r18
   == fixed.$null;
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_4 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_4;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon54_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r18
   != fixed.$null;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon27;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon27:
    goto inline$java.lang.Boolean$booleanValue$$2$Entry;

  inline$java.lang.Boolean$booleanValue$$2$Entry:
    inline$java.lang.Boolean$booleanValue$$2$$this := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r18;
    havoc inline$java.lang.Boolean$booleanValue$$2$r0, inline$java.lang.Boolean$booleanValue$$2$$z0, inline$java.lang.Boolean$booleanValue$$2$$return, inline$java.lang.Boolean$booleanValue$$2$$exception;
    goto inline$java.lang.Boolean$booleanValue$$2$anon0;

  inline$java.lang.Boolean$booleanValue$$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$2$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$2$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$2$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$2$r0 := inline$java.lang.Boolean$booleanValue$$2$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$2$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$2$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$2$$return := inline$java.lang.Boolean$booleanValue$$2$$z0;
    goto inline$java.lang.Boolean$booleanValue$$2$block6;

  inline$java.lang.Boolean$booleanValue$$2$block6:
    goto inline$java.lang.Boolean$booleanValue$$2$Return;

  inline$java.lang.Boolean$booleanValue$$2$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z4 := inline$java.lang.Boolean$booleanValue$$2$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$java.lang.Boolean$booleanValue$$2$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon27$1;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon27$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$8$Entry;

  inline$java.lang.Boolean$valueOf$boolean$8$Entry:
    inline$java.lang.Boolean$valueOf$boolean$8$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$8$z0, inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$8$$r0, inline$java.lang.Boolean$valueOf$boolean$8$$return, inline$java.lang.Boolean$valueOf$boolean$8$$exception;
    inline$java.lang.Boolean$valueOf$boolean$8$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$8$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$8$anon0;

  inline$java.lang.Boolean$valueOf$boolean$8$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$8$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$8$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$8$z0 := inline$java.lang.Boolean$valueOf$boolean$8$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$8$$r0 := inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this := inline$java.lang.Boolean$valueOf$boolean$8$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$8$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$8$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$8$Entry;

  inline$java.lang.Object$$la$init$ra$$$8$Entry:
    inline$java.lang.Object$$la$init$ra$$$8$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$8$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$8$anon0;

  inline$java.lang.Object$$la$init$ra$$$8$anon0:
    inline$java.lang.Object$$la$init$ra$$$8$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$8$Return;

  inline$java.lang.Object$$la$init$ra$$$8$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception := inline$java.lang.Object$$la$init$ra$$$8$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$Return:
    inline$java.lang.Boolean$valueOf$boolean$8$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$8$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$8$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$8$$return := inline$java.lang.Boolean$valueOf$boolean$8$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$8$block5;

  inline$java.lang.Boolean$valueOf$boolean$8$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$8$Return;

  inline$java.lang.Boolean$valueOf$boolean$8$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r19 := inline$java.lang.Boolean$valueOf$boolean$8$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$java.lang.Boolean$valueOf$boolean$8$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon27$2;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon27$2:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$9$Entry;

  inline$java.lang.Boolean$valueOf$boolean$9$Entry:
    inline$java.lang.Boolean$valueOf$boolean$9$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z5;
    havoc inline$java.lang.Boolean$valueOf$boolean$9$z0, inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$9$$r0, inline$java.lang.Boolean$valueOf$boolean$9$$return, inline$java.lang.Boolean$valueOf$boolean$9$$exception;
    inline$java.lang.Boolean$valueOf$boolean$9$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$9$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$9$anon0;

  inline$java.lang.Boolean$valueOf$boolean$9$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$9$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$9$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$9$z0 := inline$java.lang.Boolean$valueOf$boolean$9$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$9$$r0 := inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this := inline$java.lang.Boolean$valueOf$boolean$9$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$9$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$9$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$9$Entry;

  inline$java.lang.Object$$la$init$ra$$$9$Entry:
    inline$java.lang.Object$$la$init$ra$$$9$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$9$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$9$anon0;

  inline$java.lang.Object$$la$init$ra$$$9$anon0:
    inline$java.lang.Object$$la$init$ra$$$9$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$9$Return;

  inline$java.lang.Object$$la$init$ra$$$9$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception := inline$java.lang.Object$$la$init$ra$$$9$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$Return:
    inline$java.lang.Boolean$valueOf$boolean$9$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$9$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$9$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$9$$return := inline$java.lang.Boolean$valueOf$boolean$9$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$9$block5;

  inline$java.lang.Boolean$valueOf$boolean$9$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$9$Return;

  inline$java.lang.Boolean$valueOf$boolean$9$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r20 := inline$java.lang.Boolean$valueOf$boolean$9$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$java.lang.Boolean$valueOf$boolean$9$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon27$3;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon27$3:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r19;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r20;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r21 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon27$4;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon27$4:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon55_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon55_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon55_Else:
    assume {:partition} !(fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r21, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_5 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_5;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon55_Then:
    assume {:partition} fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r21, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon30;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon30:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r22 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r21;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon56_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon56_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon56_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r22
   == fixed.$null;
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_6 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_6;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon56_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r22
   != fixed.$null;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon33;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon33:
    goto inline$java.lang.Boolean$booleanValue$$3$Entry;

  inline$java.lang.Boolean$booleanValue$$3$Entry:
    inline$java.lang.Boolean$booleanValue$$3$$this := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r22;
    havoc inline$java.lang.Boolean$booleanValue$$3$r0, inline$java.lang.Boolean$booleanValue$$3$$z0, inline$java.lang.Boolean$booleanValue$$3$$return, inline$java.lang.Boolean$booleanValue$$3$$exception;
    goto inline$java.lang.Boolean$booleanValue$$3$anon0;

  inline$java.lang.Boolean$booleanValue$$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$3$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$3$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$3$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$3$r0 := inline$java.lang.Boolean$booleanValue$$3$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$3$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$3$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$3$$return := inline$java.lang.Boolean$booleanValue$$3$$z0;
    goto inline$java.lang.Boolean$booleanValue$$3$block6;

  inline$java.lang.Boolean$booleanValue$$3$block6:
    goto inline$java.lang.Boolean$booleanValue$$3$Return;

  inline$java.lang.Boolean$booleanValue$$3$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z5 := inline$java.lang.Boolean$booleanValue$$3$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$java.lang.Boolean$booleanValue$$3$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon33$1;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon33$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 46, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i7 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i7
   + 1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 47, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon33_dummy;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon50_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i1
   == 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block62;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block62:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 48, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$10$Entry;

  inline$java.lang.Boolean$valueOf$boolean$10$Entry:
    inline$java.lang.Boolean$valueOf$boolean$10$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$10$z0, inline$java.lang.Boolean$valueOf$boolean$10$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$10$$r0, inline$java.lang.Boolean$valueOf$boolean$10$$return, inline$java.lang.Boolean$valueOf$boolean$10$$exception;
    inline$java.lang.Boolean$valueOf$boolean$10$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$10$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$10$anon0;

  inline$java.lang.Boolean$valueOf$boolean$10$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$10$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$10$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$10$z0 := inline$java.lang.Boolean$valueOf$boolean$10$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$10$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$10$$r0 := inline$java.lang.Boolean$valueOf$boolean$10$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$10$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$10$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$$this := inline$java.lang.Boolean$valueOf$boolean$10$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$10$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$10$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$10$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$10$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$10$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$10$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$10$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$10$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$10$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$10$Entry;

  inline$java.lang.Object$$la$init$ra$$$10$Entry:
    inline$java.lang.Object$$la$init$ra$$$10$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$10$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$10$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$10$anon0;

  inline$java.lang.Object$$la$init$ra$$$10$anon0:
    inline$java.lang.Object$$la$init$ra$$$10$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$10$Return;

  inline$java.lang.Object$$la$init$ra$$$10$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception := inline$java.lang.Object$$la$init$ra$$$10$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$10$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$10$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$10$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$10$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$10$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$10$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$10$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$10$Return:
    inline$java.lang.Boolean$valueOf$boolean$10$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$10$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$10$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$10$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$10$$return := inline$java.lang.Boolean$valueOf$boolean$10$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$10$block5;

  inline$java.lang.Boolean$valueOf$boolean$10$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$10$Return;

  inline$java.lang.Boolean$valueOf$boolean$10$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r9 := inline$java.lang.Boolean$valueOf$boolean$10$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$java.lang.Boolean$valueOf$boolean$10$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block62$1;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block62$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 48, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$11$Entry;

  inline$java.lang.Boolean$valueOf$boolean$11$Entry:
    inline$java.lang.Boolean$valueOf$boolean$11$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$11$z0, inline$java.lang.Boolean$valueOf$boolean$11$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$11$$r0, inline$java.lang.Boolean$valueOf$boolean$11$$return, inline$java.lang.Boolean$valueOf$boolean$11$$exception;
    inline$java.lang.Boolean$valueOf$boolean$11$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$11$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$11$anon0;

  inline$java.lang.Boolean$valueOf$boolean$11$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$11$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$11$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$11$z0 := inline$java.lang.Boolean$valueOf$boolean$11$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$11$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$11$$r0 := inline$java.lang.Boolean$valueOf$boolean$11$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$11$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$11$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$$this := inline$java.lang.Boolean$valueOf$boolean$11$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$11$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$11$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$11$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$11$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$11$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$11$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$11$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$11$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$11$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$11$Entry;

  inline$java.lang.Object$$la$init$ra$$$11$Entry:
    inline$java.lang.Object$$la$init$ra$$$11$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$11$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$11$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$11$anon0;

  inline$java.lang.Object$$la$init$ra$$$11$anon0:
    inline$java.lang.Object$$la$init$ra$$$11$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$11$Return;

  inline$java.lang.Object$$la$init$ra$$$11$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception := inline$java.lang.Object$$la$init$ra$$$11$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$11$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$11$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$11$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$11$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$11$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$11$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$11$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$11$Return:
    inline$java.lang.Boolean$valueOf$boolean$11$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$11$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$11$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$11$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$11$$return := inline$java.lang.Boolean$valueOf$boolean$11$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$11$block5;

  inline$java.lang.Boolean$valueOf$boolean$11$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$11$Return;

  inline$java.lang.Boolean$valueOf$boolean$11$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r10 := inline$java.lang.Boolean$valueOf$boolean$11$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$java.lang.Boolean$valueOf$boolean$11$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block62$2;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block62$2:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 48, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r9;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r10;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r11 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$6$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block62$3;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block62$3:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 48, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon57_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon57_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon57_Else:
    assume {:partition} !(fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r11, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_7 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_7;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon57_Then:
    assume {:partition} fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r11, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon36;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon36:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r12 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r11;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 48, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon58_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon58_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon58_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r12
   == fixed.$null;
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_8 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_8;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon58_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r12
   != fixed.$null;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon39;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon39:
    goto inline$java.lang.Boolean$booleanValue$$4$Entry;

  inline$java.lang.Boolean$booleanValue$$4$Entry:
    inline$java.lang.Boolean$booleanValue$$4$$this := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r12;
    havoc inline$java.lang.Boolean$booleanValue$$4$r0, inline$java.lang.Boolean$booleanValue$$4$$z0, inline$java.lang.Boolean$booleanValue$$4$$return, inline$java.lang.Boolean$booleanValue$$4$$exception;
    goto inline$java.lang.Boolean$booleanValue$$4$anon0;

  inline$java.lang.Boolean$booleanValue$$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$4$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$4$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$4$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$4$r0 := inline$java.lang.Boolean$booleanValue$$4$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$4$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$4$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$4$$return := inline$java.lang.Boolean$booleanValue$$4$$z0;
    goto inline$java.lang.Boolean$booleanValue$$4$block6;

  inline$java.lang.Boolean$booleanValue$$4$block6:
    goto inline$java.lang.Boolean$booleanValue$$4$Return;

  inline$java.lang.Boolean$booleanValue$$4$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$z3 := inline$java.lang.Boolean$booleanValue$$4$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$java.lang.Boolean$booleanValue$$4$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon39$1;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon39$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 48, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$z3;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block63;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon49_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i6
   != inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 37, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block60;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block60:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 51, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$12$Entry;

  inline$java.lang.Boolean$valueOf$boolean$12$Entry:
    inline$java.lang.Boolean$valueOf$boolean$12$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$12$z0, inline$java.lang.Boolean$valueOf$boolean$12$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$12$$r0, inline$java.lang.Boolean$valueOf$boolean$12$$return, inline$java.lang.Boolean$valueOf$boolean$12$$exception;
    inline$java.lang.Boolean$valueOf$boolean$12$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$12$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$12$anon0;

  inline$java.lang.Boolean$valueOf$boolean$12$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$12$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$12$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$12$z0 := inline$java.lang.Boolean$valueOf$boolean$12$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$12$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$12$$r0 := inline$java.lang.Boolean$valueOf$boolean$12$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$12$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$12$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$$this := inline$java.lang.Boolean$valueOf$boolean$12$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$12$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$12$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$12$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$12$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$12$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$12$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$12$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$12$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$12$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$12$Entry;

  inline$java.lang.Object$$la$init$ra$$$12$Entry:
    inline$java.lang.Object$$la$init$ra$$$12$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$12$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$12$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$12$anon0;

  inline$java.lang.Object$$la$init$ra$$$12$anon0:
    inline$java.lang.Object$$la$init$ra$$$12$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$12$Return;

  inline$java.lang.Object$$la$init$ra$$$12$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception := inline$java.lang.Object$$la$init$ra$$$12$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$12$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$12$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$12$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$12$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$12$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$12$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$12$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$12$Return:
    inline$java.lang.Boolean$valueOf$boolean$12$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$12$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$12$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$12$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$12$$return := inline$java.lang.Boolean$valueOf$boolean$12$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$12$block5;

  inline$java.lang.Boolean$valueOf$boolean$12$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$12$Return;

  inline$java.lang.Boolean$valueOf$boolean$12$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r5 := inline$java.lang.Boolean$valueOf$boolean$12$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$java.lang.Boolean$valueOf$boolean$12$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block60$1;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block60$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 51, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$13$Entry;

  inline$java.lang.Boolean$valueOf$boolean$13$Entry:
    inline$java.lang.Boolean$valueOf$boolean$13$$in_parameter__0 := 0;
    havoc inline$java.lang.Boolean$valueOf$boolean$13$z0, inline$java.lang.Boolean$valueOf$boolean$13$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$13$$r0, inline$java.lang.Boolean$valueOf$boolean$13$$return, inline$java.lang.Boolean$valueOf$boolean$13$$exception;
    inline$java.lang.Boolean$valueOf$boolean$13$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$13$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$13$anon0;

  inline$java.lang.Boolean$valueOf$boolean$13$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$13$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$13$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$13$z0 := inline$java.lang.Boolean$valueOf$boolean$13$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$13$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$13$$r0 := inline$java.lang.Boolean$valueOf$boolean$13$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$13$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$13$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$$this := inline$java.lang.Boolean$valueOf$boolean$13$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$13$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$13$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$13$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$13$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$13$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$13$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$13$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$13$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$13$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$13$Entry;

  inline$java.lang.Object$$la$init$ra$$$13$Entry:
    inline$java.lang.Object$$la$init$ra$$$13$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$13$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$13$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$13$anon0;

  inline$java.lang.Object$$la$init$ra$$$13$anon0:
    inline$java.lang.Object$$la$init$ra$$$13$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$13$Return;

  inline$java.lang.Object$$la$init$ra$$$13$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception := inline$java.lang.Object$$la$init$ra$$$13$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$13$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$13$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$13$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$13$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$13$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$13$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$13$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$13$Return:
    inline$java.lang.Boolean$valueOf$boolean$13$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$13$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$13$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$13$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$13$$return := inline$java.lang.Boolean$valueOf$boolean$13$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$13$block5;

  inline$java.lang.Boolean$valueOf$boolean$13$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$13$Return;

  inline$java.lang.Boolean$valueOf$boolean$13$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r6 := inline$java.lang.Boolean$valueOf$boolean$13$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$java.lang.Boolean$valueOf$boolean$13$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block60$2;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block60$2:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 51, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$z5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r6;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r7 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$7$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block60$3;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block60$3:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 51, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon59_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon59_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon59_Else:
    assume {:partition} !(fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r7, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_9 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_9;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon59_Then:
    assume {:partition} fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r7, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon42;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon42:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r8 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r7;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 51, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon60_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon60_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon60_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r8
   == fixed.$null;
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_10 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$fakelocal_10;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon60_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r8
   != fixed.$null;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon45;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon45:
    goto inline$java.lang.Boolean$booleanValue$$5$Entry;

  inline$java.lang.Boolean$booleanValue$$5$Entry:
    inline$java.lang.Boolean$booleanValue$$5$$this := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$r8;
    havoc inline$java.lang.Boolean$booleanValue$$5$r0, inline$java.lang.Boolean$booleanValue$$5$$z0, inline$java.lang.Boolean$booleanValue$$5$$return, inline$java.lang.Boolean$booleanValue$$5$$exception;
    goto inline$java.lang.Boolean$booleanValue$$5$anon0;

  inline$java.lang.Boolean$booleanValue$$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$5$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$5$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$5$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$5$r0 := inline$java.lang.Boolean$booleanValue$$5$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$5$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$5$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$5$$return := inline$java.lang.Boolean$booleanValue$$5$$z0;
    goto inline$java.lang.Boolean$booleanValue$$5$block6;

  inline$java.lang.Boolean$booleanValue$$5$block6:
    goto inline$java.lang.Boolean$booleanValue$$5$Return;

  inline$java.lang.Boolean$booleanValue$$5$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$z2 := inline$java.lang.Boolean$booleanValue$$5$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception := inline$java.lang.Boolean$booleanValue$$5$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon45$1;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon45$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 51, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$z2;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block63;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon47_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$z1
   == 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 34, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block60;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon33_dummy:
    assume false;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$block61_last:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$i1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i6;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i6 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$i6
   + -1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon50_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$anon50_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$Return:
    $z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$return;
    $exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object$0$$exception;
    goto anon3$1;

  anon3$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 62, -1, -1, -1} true;
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 62, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 63, -1, -1, -1} true;
    call $fakelocal_1 := fixed.$new(fixed.org.apache.ws.security.WSSecurityException);
    r4 := $fakelocal_1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 63, -1, -1, -1} true;
    call $exception := fixed.org.apache.ws.security.WSSecurityException$$la$init$ra$$int(r4, 5);
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", -1, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !(fixed.$heap[r4, fixed.$type] <: fixed.java.lang.Throwable);
    call $fakelocal_2 := fixed.$new(fixed.java.lang.ClassCastException);
    $exception := $fakelocal_2;
    return;

  anon12_Then:
    assume {:partition} fixed.$heap[r4, fixed.$type] <: fixed.java.lang.Throwable;
    $exception := $exception;
    goto anon9;

  anon9:
    r5 := r4;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 63, -1, -1, -1} true;
    $exception := r5;
    goto block65;

  block65:
    return;

  anon11_Then:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 62, -1, -1, -1} {:comment "thenblock"} true;
    goto block64;

  block64:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 65, -1, -1, -1} true;
    call $exception := fixed.org.apache.wss4j.binding.wss10.PasswordString$setValue$java.lang.String(r0, r1);
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 66, -1, -1, -1} true;
    goto block65;
}



implementation fixed.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := fixed.$null;
    return;
}



implementation fixed.SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61(in_$return: int, 
    in_$exception: ref, 
    in_$i1: int, 
    in_$r22: ref, 
    in_$r17: ref, 
    in_r4: ref, 
    in_$r21: ref, 
    in_$c2: int, 
    in_$fakelocal_6: ref, 
    in_$r20: ref, 
    in_z4: int, 
    in_$fakelocal_4: ref, 
    in_$l5: int, 
    in_$r13: ref, 
    in_$c3: int, 
    in_z5: int, 
    in_$r19: ref, 
    in_i7: int, 
    in_$r14: ref, 
    in_$fakelocal_5: ref, 
    in_i6: int, 
    in_$r16: ref, 
    in_$r18: ref, 
    in_$fakelocal_1: ref, 
    in_$l4: int, 
    in_$r15: ref, 
    in_r3: ref, 
    in_$fakelocal_2: ref, 
    in_$fakelocal_3: ref, 
    in_z0: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$i1: int, 
    out_$r22: ref, 
    out_$r17: ref, 
    out_$r21: ref, 
    out_$c2: int, 
    out_$fakelocal_6: ref, 
    out_$r20: ref, 
    out_z4: int, 
    out_$fakelocal_4: ref, 
    out_$l5: int, 
    out_$r13: ref, 
    out_$c3: int, 
    out_z5: int, 
    out_$r19: ref, 
    out_i7: int, 
    out_$r14: ref, 
    out_$fakelocal_5: ref, 
    out_i6: int, 
    out_$r16: ref, 
    out_$r18: ref, 
    out_$fakelocal_1: ref, 
    out_$l4: int, 
    out_$r15: ref, 
    out_$fakelocal_2: ref, 
    out_$fakelocal_3: ref, 
    out_z0: int)
{
  var inline$java.lang.Boolean$booleanValue$$0$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$0$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$0$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$0$$return: int;
  var inline$java.lang.Boolean$booleanValue$$0$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$1$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$1$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$1$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$1$$return: int;
  var inline$java.lang.Boolean$booleanValue$$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$0$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$1$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$1$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$1$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$1$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$2$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$2$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$2$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$2$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$3$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$3$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$3$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$3$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$4$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$4$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$4$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$4$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r4: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r3: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3: ref;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex: int;
  var inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap: $heap_type;
  var inline$java.lang.Boolean$booleanValue$$2$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$2$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$2$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$2$$return: int;
  var inline$java.lang.Boolean$booleanValue$$2$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$3$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$3$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$3$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$3$$return: int;
  var inline$java.lang.Boolean$booleanValue$$3$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$5$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$5$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$5$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$5$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$6$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$6$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$6$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$6$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$7$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$7$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$7$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$7$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$7$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$8$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$8$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$8$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$8$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$8$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$z0: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$r0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$in_parameter__0: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$return: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$9$$objIndex: int;
  var inline$java.lang.Boolean$valueOf$boolean$9$$heap: $heap_type;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$in_parameter__0: int;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception: ref;
  var inline$java.lang.Boolean$$la$init$ra$$boolean$9$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$9$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$9$$exception: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception: ref;

  entry:
    out_$return, out_$exception, out_$i1, out_$r22, out_$r17, out_$r21, out_$c2, out_$fakelocal_6, out_$r20, out_z4, out_$fakelocal_4, out_$l5, out_$r13, out_$c3, out_z5, out_$r19, out_i7, out_$r14, out_$fakelocal_5, out_i6, out_$r16, out_$r18, out_$fakelocal_1, out_$l4, out_$r15, out_$fakelocal_2, out_$fakelocal_3, out_z0 := in_$return, in_$exception, in_$i1, in_$r22, in_$r17, in_$r21, in_$c2, in_$fakelocal_6, in_$r20, in_z4, in_$fakelocal_4, in_$l5, in_$r13, in_$c3, in_z5, in_$r19, in_i7, in_$r14, in_$fakelocal_5, in_i6, in_$r16, in_$r18, in_$fakelocal_1, in_$l4, in_$r15, in_$fakelocal_2, in_$fakelocal_3, in_z0;
    goto block61;

  block61:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} true;
    out_$i1 := out_i6;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} true;
    out_i6 := out_i6 + -1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} true;
    goto anon50_Then, anon50_Else;

  anon50_Then:
    assume {:partition} out_$i1 == 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$i1, out_$r22, out_$r17, out_$r21, out_$c2, out_$fakelocal_6, out_$r20, out_z4, out_$fakelocal_4, out_$l5, out_$r13, out_$c3, out_z5, out_$r19, out_i7, out_$r14, out_$fakelocal_5, out_i6, out_$r16, out_$r18, out_$fakelocal_1, out_$l4, out_$r15, out_$fakelocal_2, out_$fakelocal_3, out_z0 := in_$return, in_$exception, in_$i1, in_$r22, in_$r17, in_$r21, in_$c2, in_$fakelocal_6, in_$r20, in_z4, in_$fakelocal_4, in_$l5, in_$r13, in_$c3, in_z5, in_$r19, in_i7, in_$r14, in_$fakelocal_5, in_i6, in_$r16, in_$r18, in_$fakelocal_1, in_$l4, in_$r15, in_$fakelocal_2, in_$fakelocal_3, in_z0;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon33:
    goto inline$java.lang.Boolean$booleanValue$$0$Entry;

  inline$java.lang.Boolean$booleanValue$$0$Entry:
    inline$java.lang.Boolean$booleanValue$$0$$this := out_$r22;
    havoc inline$java.lang.Boolean$booleanValue$$0$r0, inline$java.lang.Boolean$booleanValue$$0$$z0, inline$java.lang.Boolean$booleanValue$$0$$return, inline$java.lang.Boolean$booleanValue$$0$$exception;
    goto inline$java.lang.Boolean$booleanValue$$0$anon0;

  inline$java.lang.Boolean$booleanValue$$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$0$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$0$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$0$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$0$r0 := inline$java.lang.Boolean$booleanValue$$0$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$0$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$0$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$0$$return := inline$java.lang.Boolean$booleanValue$$0$$z0;
    goto inline$java.lang.Boolean$booleanValue$$0$block6;

  inline$java.lang.Boolean$booleanValue$$0$block6:
    goto inline$java.lang.Boolean$booleanValue$$0$Return;

  inline$java.lang.Boolean$booleanValue$$0$Return:
    out_z5 := inline$java.lang.Boolean$booleanValue$$0$$return;
    out_$exception := inline$java.lang.Boolean$booleanValue$$0$$exception;
    goto anon33$1;

  anon33$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 46, -1, -1, -1} true;
    out_i7 := out_i7 + 1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 47, -1, -1, -1} true;
    goto anon33_dummy;

  anon56_Then:
    assume {:partition} out_$r22 != fixed.$null;
    out_$exception := out_$exception;
    goto anon33;

  anon30:
    out_$r22 := out_$r21;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto anon56_Then, anon56_Else;

  anon56_Else:
    assume {:partition} out_$r22 == fixed.$null;
    call out_$fakelocal_6 := fixed.$new(fixed.java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_6;
    out_$return, out_$exception, out_$i1, out_$r22, out_$r17, out_$r21, out_$c2, out_$fakelocal_6, out_$r20, out_z4, out_$fakelocal_4, out_$l5, out_$r13, out_$c3, out_z5, out_$r19, out_i7, out_$r14, out_$fakelocal_5, out_i6, out_$r16, out_$r18, out_$fakelocal_1, out_$l4, out_$r15, out_$fakelocal_2, out_$fakelocal_3, out_z0 := in_$return, in_$exception, in_$i1, in_$r22, in_$r17, in_$r21, in_$c2, in_$fakelocal_6, in_$r20, in_z4, in_$fakelocal_4, in_$l5, in_$r13, in_$c3, in_z5, in_$r19, in_i7, in_$r14, in_$fakelocal_5, in_i6, in_$r16, in_$r18, in_$fakelocal_1, in_$l4, in_$r15, in_$fakelocal_2, in_$fakelocal_3, in_z0;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon55_Then:
    assume {:partition} fixed.$heap[out_$r21, fixed.$type] <: fixed.java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon30;

  anon27:
    goto inline$java.lang.Boolean$booleanValue$$1$Entry;

  inline$java.lang.Boolean$booleanValue$$1$Entry:
    inline$java.lang.Boolean$booleanValue$$1$$this := out_$r18;
    havoc inline$java.lang.Boolean$booleanValue$$1$r0, inline$java.lang.Boolean$booleanValue$$1$$z0, inline$java.lang.Boolean$booleanValue$$1$$return, inline$java.lang.Boolean$booleanValue$$1$$exception;
    goto inline$java.lang.Boolean$booleanValue$$1$anon0;

  inline$java.lang.Boolean$booleanValue$$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$1$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$1$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$1$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$1$r0 := inline$java.lang.Boolean$booleanValue$$1$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$1$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$1$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$1$$return := inline$java.lang.Boolean$booleanValue$$1$$z0;
    goto inline$java.lang.Boolean$booleanValue$$1$block6;

  inline$java.lang.Boolean$booleanValue$$1$block6:
    goto inline$java.lang.Boolean$booleanValue$$1$Return;

  inline$java.lang.Boolean$booleanValue$$1$Return:
    out_z4 := inline$java.lang.Boolean$booleanValue$$1$$return;
    out_$exception := inline$java.lang.Boolean$booleanValue$$1$$exception;
    goto anon27$1;

  anon27$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$0$Entry;

  inline$java.lang.Boolean$valueOf$boolean$0$Entry:
    inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$0$z0, inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$0$$r0, inline$java.lang.Boolean$valueOf$boolean$0$$return, inline$java.lang.Boolean$valueOf$boolean$0$$exception;
    inline$java.lang.Boolean$valueOf$boolean$0$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$0$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$0$anon0;

  inline$java.lang.Boolean$valueOf$boolean$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$0$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$0$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$0$z0 := inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$0$$r0 := inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this := inline$java.lang.Boolean$valueOf$boolean$0$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$0$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$0$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception := fixed.$null;
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
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    inline$java.lang.Boolean$valueOf$boolean$0$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$0$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$0$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$0$$return := inline$java.lang.Boolean$valueOf$boolean$0$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$0$block5;

  inline$java.lang.Boolean$valueOf$boolean$0$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$0$Return;

  inline$java.lang.Boolean$valueOf$boolean$0$Return:
    out_$r19 := inline$java.lang.Boolean$valueOf$boolean$0$$return;
    out_$exception := inline$java.lang.Boolean$valueOf$boolean$0$$exception;
    goto anon27$2;

  anon27$2:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$1$Entry;

  inline$java.lang.Boolean$valueOf$boolean$1$Entry:
    inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0 := out_z5;
    havoc inline$java.lang.Boolean$valueOf$boolean$1$z0, inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$1$$r0, inline$java.lang.Boolean$valueOf$boolean$1$$return, inline$java.lang.Boolean$valueOf$boolean$1$$exception;
    inline$java.lang.Boolean$valueOf$boolean$1$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$1$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$1$anon0;

  inline$java.lang.Boolean$valueOf$boolean$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$1$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$1$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$1$z0 := inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$1$$r0 := inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this := inline$java.lang.Boolean$valueOf$boolean$1$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$1$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$1$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$1$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$1$Entry;

  inline$java.lang.Object$$la$init$ra$$$1$Entry:
    inline$java.lang.Object$$la$init$ra$$$1$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$1$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$1$anon0;

  inline$java.lang.Object$$la$init$ra$$$1$anon0:
    inline$java.lang.Object$$la$init$ra$$$1$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$1$Return;

  inline$java.lang.Object$$la$init$ra$$$1$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception := inline$java.lang.Object$$la$init$ra$$$1$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$1$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$1$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$Return:
    inline$java.lang.Boolean$valueOf$boolean$1$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$1$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$1$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$1$$return := inline$java.lang.Boolean$valueOf$boolean$1$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$1$block5;

  inline$java.lang.Boolean$valueOf$boolean$1$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$1$Return;

  inline$java.lang.Boolean$valueOf$boolean$1$Return:
    out_$r20 := inline$java.lang.Boolean$valueOf$boolean$1$$return;
    out_$exception := inline$java.lang.Boolean$valueOf$boolean$1$$exception;
    goto anon27$3;

  anon27$3:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0 := out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1 := out_$r19;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2 := out_$r20;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return:
    out_$r21 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return;
    out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto anon27$4;

  anon27$4:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto anon55_Then, anon55_Else;

  anon55_Else:
    assume {:partition} !(fixed.$heap[out_$r21, fixed.$type] <: fixed.java.lang.Boolean);
    call out_$fakelocal_5 := fixed.$new(fixed.java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$i1, out_$r22, out_$r17, out_$r21, out_$c2, out_$fakelocal_6, out_$r20, out_z4, out_$fakelocal_4, out_$l5, out_$r13, out_$c3, out_z5, out_$r19, out_i7, out_$r14, out_$fakelocal_5, out_i6, out_$r16, out_$r18, out_$fakelocal_1, out_$l4, out_$r15, out_$fakelocal_2, out_$fakelocal_3, out_z0 := in_$return, in_$exception, in_$i1, in_$r22, in_$r17, in_$r21, in_$c2, in_$fakelocal_6, in_$r20, in_z4, in_$fakelocal_4, in_$l5, in_$r13, in_$c3, in_z5, in_$r19, in_i7, in_$r14, in_$fakelocal_5, in_i6, in_$r16, in_$r18, in_$fakelocal_1, in_$l4, in_$r15, in_$fakelocal_2, in_$fakelocal_3, in_z0;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon54_Then:
    assume {:partition} out_$r18 != fixed.$null;
    out_$exception := out_$exception;
    goto anon27;

  anon24:
    out_$r18 := out_$r17;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto anon54_Then, anon54_Else;

  anon54_Else:
    assume {:partition} out_$r18 == fixed.$null;
    call out_$fakelocal_4 := fixed.$new(fixed.java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$i1, out_$r22, out_$r17, out_$r21, out_$c2, out_$fakelocal_6, out_$r20, out_z4, out_$fakelocal_4, out_$l5, out_$r13, out_$c3, out_z5, out_$r19, out_i7, out_$r14, out_$fakelocal_5, out_i6, out_$r16, out_$r18, out_$fakelocal_1, out_$l4, out_$r15, out_$fakelocal_2, out_$fakelocal_3, out_z0 := in_$return, in_$exception, in_$i1, in_$r22, in_$r17, in_$r21, in_$c2, in_$fakelocal_6, in_$r20, in_z4, in_$fakelocal_4, in_$l5, in_$r13, in_$c3, in_z5, in_$r19, in_i7, in_$r14, in_$fakelocal_5, in_i6, in_$r16, in_$r18, in_$fakelocal_1, in_$l4, in_$r15, in_$fakelocal_2, in_$fakelocal_3, in_z0;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon53_Then:
    assume {:partition} fixed.$heap[out_$r17, fixed.$type] <: fixed.java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon24;

  anon21:
    out_$c3 := fixed.$intArrHeap[in_r4][out_i7];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    out_$l4 := out_$c3;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0 := out_$l5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1 := out_$l4;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1;
    assert {:sourceloc "Safe.java", 55, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0 := 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 != 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon3:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block28;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block28:
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 == 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon6:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block29;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block29:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block30;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block30:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block29;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block28;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Return:
    out_z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return;
    out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception;
    goto anon21$1;

  anon21$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$2$Entry;

  inline$java.lang.Boolean$valueOf$boolean$2$Entry:
    inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0 := out_z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$2$z0, inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$2$$r0, inline$java.lang.Boolean$valueOf$boolean$2$$return, inline$java.lang.Boolean$valueOf$boolean$2$$exception;
    inline$java.lang.Boolean$valueOf$boolean$2$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$2$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$2$anon0;

  inline$java.lang.Boolean$valueOf$boolean$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$2$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$2$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$2$z0 := inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$2$$r0 := inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this := inline$java.lang.Boolean$valueOf$boolean$2$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$2$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$2$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$2$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$2$Entry;

  inline$java.lang.Object$$la$init$ra$$$2$Entry:
    inline$java.lang.Object$$la$init$ra$$$2$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$2$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$2$anon0;

  inline$java.lang.Object$$la$init$ra$$$2$anon0:
    inline$java.lang.Object$$la$init$ra$$$2$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$2$Return;

  inline$java.lang.Object$$la$init$ra$$$2$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception := inline$java.lang.Object$$la$init$ra$$$2$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$2$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$2$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$Return:
    inline$java.lang.Boolean$valueOf$boolean$2$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$2$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$2$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$2$$return := inline$java.lang.Boolean$valueOf$boolean$2$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$2$block5;

  inline$java.lang.Boolean$valueOf$boolean$2$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$2$Return;

  inline$java.lang.Boolean$valueOf$boolean$2$Return:
    out_$r13 := inline$java.lang.Boolean$valueOf$boolean$2$$return;
    out_$exception := inline$java.lang.Boolean$valueOf$boolean$2$$exception;
    goto anon21$2;

  anon21$2:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$3$Entry;

  inline$java.lang.Boolean$valueOf$boolean$3$Entry:
    inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0 := 0;
    havoc inline$java.lang.Boolean$valueOf$boolean$3$z0, inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$3$$r0, inline$java.lang.Boolean$valueOf$boolean$3$$return, inline$java.lang.Boolean$valueOf$boolean$3$$exception;
    inline$java.lang.Boolean$valueOf$boolean$3$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$3$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$3$anon0;

  inline$java.lang.Boolean$valueOf$boolean$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$3$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$3$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$3$z0 := inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$3$$r0 := inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this := inline$java.lang.Boolean$valueOf$boolean$3$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$3$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$3$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$3$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$3$Entry;

  inline$java.lang.Object$$la$init$ra$$$3$Entry:
    inline$java.lang.Object$$la$init$ra$$$3$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$3$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$3$anon0;

  inline$java.lang.Object$$la$init$ra$$$3$anon0:
    inline$java.lang.Object$$la$init$ra$$$3$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$3$Return;

  inline$java.lang.Object$$la$init$ra$$$3$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception := inline$java.lang.Object$$la$init$ra$$$3$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$3$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$3$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$Return:
    inline$java.lang.Boolean$valueOf$boolean$3$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$3$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$3$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$3$$return := inline$java.lang.Boolean$valueOf$boolean$3$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$3$block5;

  inline$java.lang.Boolean$valueOf$boolean$3$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$3$Return;

  inline$java.lang.Boolean$valueOf$boolean$3$Return:
    out_$r14 := inline$java.lang.Boolean$valueOf$boolean$3$$return;
    out_$exception := inline$java.lang.Boolean$valueOf$boolean$3$$exception;
    goto anon21$3;

  anon21$3:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0 := out_z5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1 := out_$r13;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2 := out_$r14;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return:
    out_$r15 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return;
    out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto anon21$4;

  anon21$4:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$4$Entry;

  inline$java.lang.Boolean$valueOf$boolean$4$Entry:
    inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0 := out_z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$4$z0, inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$4$$r0, inline$java.lang.Boolean$valueOf$boolean$4$$return, inline$java.lang.Boolean$valueOf$boolean$4$$exception;
    inline$java.lang.Boolean$valueOf$boolean$4$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$4$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$4$anon0;

  inline$java.lang.Boolean$valueOf$boolean$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$4$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$4$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$4$z0 := inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$4$$r0 := inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this := inline$java.lang.Boolean$valueOf$boolean$4$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$4$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$4$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$4$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$4$Entry;

  inline$java.lang.Object$$la$init$ra$$$4$Entry:
    inline$java.lang.Object$$la$init$ra$$$4$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$4$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$4$anon0;

  inline$java.lang.Object$$la$init$ra$$$4$anon0:
    inline$java.lang.Object$$la$init$ra$$$4$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$4$Return;

  inline$java.lang.Object$$la$init$ra$$$4$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception := inline$java.lang.Object$$la$init$ra$$$4$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$4$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$4$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$Return:
    inline$java.lang.Boolean$valueOf$boolean$4$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$4$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$4$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$4$$return := inline$java.lang.Boolean$valueOf$boolean$4$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$4$block5;

  inline$java.lang.Boolean$valueOf$boolean$4$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$4$Return;

  inline$java.lang.Boolean$valueOf$boolean$4$Return:
    out_$r16 := inline$java.lang.Boolean$valueOf$boolean$4$$return;
    out_$exception := inline$java.lang.Boolean$valueOf$boolean$4$$exception;
    goto anon21$5;

  anon21$5:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0 := out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1 := out_$r15;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2 := out_$r16;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Return:
    out_$r17 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return;
    out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception;
    goto anon21$6;

  anon21$6:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} !(fixed.$heap[out_$r17, fixed.$type] <: fixed.java.lang.Boolean);
    call out_$fakelocal_3 := fixed.$new(fixed.java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$i1, out_$r22, out_$r17, out_$r21, out_$c2, out_$fakelocal_6, out_$r20, out_z4, out_$fakelocal_4, out_$l5, out_$r13, out_$c3, out_z5, out_$r19, out_i7, out_$r14, out_$fakelocal_5, out_i6, out_$r16, out_$r18, out_$fakelocal_1, out_$l4, out_$r15, out_$fakelocal_2, out_$fakelocal_3, out_z0 := in_$return, in_$exception, in_$i1, in_$r22, in_$r17, in_$r21, in_$c2, in_$fakelocal_6, in_$r20, in_z4, in_$fakelocal_4, in_$l5, in_$r13, in_$c3, in_z5, in_$r19, in_i7, in_$r14, in_$fakelocal_5, in_i6, in_$r16, in_$r18, in_$fakelocal_1, in_$l4, in_$r15, in_$fakelocal_2, in_$fakelocal_3, in_z0;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon52_Then:
    assume {:partition} out_i7 < fixed.$arrSizeHeap[in_r4] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon21;

  anon18:
    out_$c2 := fixed.$intArrHeap[in_r3][out_i7];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    out_$l5 := out_$c2;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} !(out_i7 < fixed.$arrSizeHeap[in_r4] && out_i7 >= 0);
    call out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$i1, out_$r22, out_$r17, out_$r21, out_$c2, out_$fakelocal_6, out_$r20, out_z4, out_$fakelocal_4, out_$l5, out_$r13, out_$c3, out_z5, out_$r19, out_i7, out_$r14, out_$fakelocal_5, out_i6, out_$r16, out_$r18, out_$fakelocal_1, out_$l4, out_$r15, out_$fakelocal_2, out_$fakelocal_3, out_z0 := in_$return, in_$exception, in_$i1, in_$r22, in_$r17, in_$r21, in_$c2, in_$fakelocal_6, in_$r20, in_z4, in_$fakelocal_4, in_$l5, in_$r13, in_$c3, in_z5, in_$r19, in_i7, in_$r14, in_$fakelocal_5, in_i6, in_$r16, in_$r18, in_$fakelocal_1, in_$l4, in_$r15, in_$fakelocal_2, in_$fakelocal_3, in_z0;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon51_Then:
    assume {:partition} out_i7 < fixed.$arrSizeHeap[in_r3] && out_i7 >= 0;
    out_$exception := out_$exception;
    goto anon18;

  anon15:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    goto anon51_Then, anon51_Else;

  anon51_Else:
    assume {:partition} !(out_i7 < fixed.$arrSizeHeap[in_r3] && out_i7 >= 0);
    call out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_1;
    out_$return, out_$exception, out_$i1, out_$r22, out_$r17, out_$r21, out_$c2, out_$fakelocal_6, out_$r20, out_z4, out_$fakelocal_4, out_$l5, out_$r13, out_$c3, out_z5, out_$r19, out_i7, out_$r14, out_$fakelocal_5, out_i6, out_$r16, out_$r18, out_$fakelocal_1, out_$l4, out_$r15, out_$fakelocal_2, out_$fakelocal_3, out_z0 := in_$return, in_$exception, in_$i1, in_$r22, in_$r17, in_$r21, in_$c2, in_$fakelocal_6, in_$r20, in_z4, in_$fakelocal_4, in_$l5, in_$r13, in_$c3, in_z5, in_$r19, in_i7, in_$r14, in_$fakelocal_5, in_i6, in_$r16, in_$r18, in_$fakelocal_1, in_$l4, in_$r15, in_$fakelocal_2, in_$fakelocal_3, in_z0;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon50_Else:
    assume {:partition} out_$i1 != 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} {:comment "elseblock"} true;
    goto anon15;

  anon33_dummy:
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Entry;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Entry:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return := out_$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception := out_$exception;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1 := out_$i1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22 := out_$r22;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17 := out_$r17;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r4 := in_r4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21 := out_$r21;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2 := out_$c2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6 := out_$fakelocal_6;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20 := out_$r20;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4 := out_z4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4 := out_$fakelocal_4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5 := out_$l5;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13 := out_$r13;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3 := out_$c3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5 := out_z5;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19 := out_$r19;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7 := out_i7;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14 := out_$r14;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5 := out_$fakelocal_5;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6 := out_i6;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16 := out_$r16;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18 := out_$r18;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1 := out_$fakelocal_1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4 := out_$l4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15 := out_$r15;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r3 := in_r3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2 := out_$fakelocal_2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3 := out_$fakelocal_3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0 := out_z0;
    havoc inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex := fixed.$objIndex;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap := fixed.$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$entry;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$entry:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$block61;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$block61:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6
   + -1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon50_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon50_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon50_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1
   == 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} {:comment "thenblock"} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon33:
    goto inline$java.lang.Boolean$booleanValue$$2$Entry;

  inline$java.lang.Boolean$booleanValue$$2$Entry:
    inline$java.lang.Boolean$booleanValue$$2$$this := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22;
    havoc inline$java.lang.Boolean$booleanValue$$2$r0, inline$java.lang.Boolean$booleanValue$$2$$z0, inline$java.lang.Boolean$booleanValue$$2$$return, inline$java.lang.Boolean$booleanValue$$2$$exception;
    goto inline$java.lang.Boolean$booleanValue$$2$anon0;

  inline$java.lang.Boolean$booleanValue$$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$2$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$2$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$2$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$2$r0 := inline$java.lang.Boolean$booleanValue$$2$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$2$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$2$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$2$$return := inline$java.lang.Boolean$booleanValue$$2$$z0;
    goto inline$java.lang.Boolean$booleanValue$$2$block6;

  inline$java.lang.Boolean$booleanValue$$2$block6:
    goto inline$java.lang.Boolean$booleanValue$$2$Return;

  inline$java.lang.Boolean$booleanValue$$2$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5 := inline$java.lang.Boolean$booleanValue$$2$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$booleanValue$$2$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon33$1;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon33$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 46, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
   + 1;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 47, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon33_dummy;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon56_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22
   != fixed.$null;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon33;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon30:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon56_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon56_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon56_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22
   == fixed.$null;
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon55_Then:
    assume {:partition} fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon30;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27:
    goto inline$java.lang.Boolean$booleanValue$$3$Entry;

  inline$java.lang.Boolean$booleanValue$$3$Entry:
    inline$java.lang.Boolean$booleanValue$$3$$this := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18;
    havoc inline$java.lang.Boolean$booleanValue$$3$r0, inline$java.lang.Boolean$booleanValue$$3$$z0, inline$java.lang.Boolean$booleanValue$$3$$return, inline$java.lang.Boolean$booleanValue$$3$$exception;
    goto inline$java.lang.Boolean$booleanValue$$3$anon0;

  inline$java.lang.Boolean$booleanValue$$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$booleanValue$$3$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$booleanValue$$3$$this != fixed.$null;
    inline$java.lang.Boolean$booleanValue$$3$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$3$r0 := inline$java.lang.Boolean$booleanValue$$3$$this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$3$$z0 := fixed.$heap[inline$java.lang.Boolean$booleanValue$$3$r0, fixed.boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    inline$java.lang.Boolean$booleanValue$$3$$return := inline$java.lang.Boolean$booleanValue$$3$$z0;
    goto inline$java.lang.Boolean$booleanValue$$3$block6;

  inline$java.lang.Boolean$booleanValue$$3$block6:
    goto inline$java.lang.Boolean$booleanValue$$3$Return;

  inline$java.lang.Boolean$booleanValue$$3$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4 := inline$java.lang.Boolean$booleanValue$$3$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$booleanValue$$3$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$1;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$5$Entry;

  inline$java.lang.Boolean$valueOf$boolean$5$Entry:
    inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$5$z0, inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$5$$r0, inline$java.lang.Boolean$valueOf$boolean$5$$return, inline$java.lang.Boolean$valueOf$boolean$5$$exception;
    inline$java.lang.Boolean$valueOf$boolean$5$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$5$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$5$anon0;

  inline$java.lang.Boolean$valueOf$boolean$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$5$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$5$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$5$z0 := inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$5$$r0 := inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this := inline$java.lang.Boolean$valueOf$boolean$5$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$5$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$5$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$5$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$5$Entry;

  inline$java.lang.Object$$la$init$ra$$$5$Entry:
    inline$java.lang.Object$$la$init$ra$$$5$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$5$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$5$anon0;

  inline$java.lang.Object$$la$init$ra$$$5$anon0:
    inline$java.lang.Object$$la$init$ra$$$5$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$5$Return;

  inline$java.lang.Object$$la$init$ra$$$5$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception := inline$java.lang.Object$$la$init$ra$$$5$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$5$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$5$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$Return:
    inline$java.lang.Boolean$valueOf$boolean$5$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$5$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$5$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$5$$return := inline$java.lang.Boolean$valueOf$boolean$5$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$5$block5;

  inline$java.lang.Boolean$valueOf$boolean$5$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$5$Return;

  inline$java.lang.Boolean$valueOf$boolean$5$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19 := inline$java.lang.Boolean$valueOf$boolean$5$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$5$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$2;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$2:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$6$Entry;

  inline$java.lang.Boolean$valueOf$boolean$6$Entry:
    inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5;
    havoc inline$java.lang.Boolean$valueOf$boolean$6$z0, inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$6$$r0, inline$java.lang.Boolean$valueOf$boolean$6$$return, inline$java.lang.Boolean$valueOf$boolean$6$$exception;
    inline$java.lang.Boolean$valueOf$boolean$6$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$6$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$6$anon0;

  inline$java.lang.Boolean$valueOf$boolean$6$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$6$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$6$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$6$z0 := inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$6$$r0 := inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this := inline$java.lang.Boolean$valueOf$boolean$6$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$6$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$6$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$6$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$6$Entry;

  inline$java.lang.Object$$la$init$ra$$$6$Entry:
    inline$java.lang.Object$$la$init$ra$$$6$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$6$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$6$anon0;

  inline$java.lang.Object$$la$init$ra$$$6$anon0:
    inline$java.lang.Object$$la$init$ra$$$6$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$6$Return;

  inline$java.lang.Object$$la$init$ra$$$6$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception := inline$java.lang.Object$$la$init$ra$$$6$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$6$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$6$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$Return:
    inline$java.lang.Boolean$valueOf$boolean$6$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$6$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$6$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$6$$return := inline$java.lang.Boolean$valueOf$boolean$6$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$6$block5;

  inline$java.lang.Boolean$valueOf$boolean$6$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$6$Return;

  inline$java.lang.Boolean$valueOf$boolean$6$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20 := inline$java.lang.Boolean$valueOf$boolean$6$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$6$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$3;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$3:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$4;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27$4:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 44, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon55_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon55_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon55_Else:
    assume {:partition} !(fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon54_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18
   != fixed.$null;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon27;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon24:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon54_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon54_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon54_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18
   == fixed.$null;
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon53_Then:
    assume {:partition} fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon24;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3 := fixed.$intArrHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r4][inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$in_parameter__1;
    assert {:sourceloc "Safe.java", 55, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0 := 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1);
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2 != 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon3:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block28;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block28:
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$l1);
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3 == 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon6:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block29;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block29:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block30;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block30:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block29;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$block28;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$1$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$1;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$1:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$7$Entry;

  inline$java.lang.Boolean$valueOf$boolean$7$Entry:
    inline$java.lang.Boolean$valueOf$boolean$7$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$7$z0, inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$7$$r0, inline$java.lang.Boolean$valueOf$boolean$7$$return, inline$java.lang.Boolean$valueOf$boolean$7$$exception;
    inline$java.lang.Boolean$valueOf$boolean$7$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$7$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$7$anon0;

  inline$java.lang.Boolean$valueOf$boolean$7$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$7$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$7$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$7$z0 := inline$java.lang.Boolean$valueOf$boolean$7$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$7$$r0 := inline$java.lang.Boolean$valueOf$boolean$7$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this := inline$java.lang.Boolean$valueOf$boolean$7$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$7$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$7$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$7$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$7$Entry;

  inline$java.lang.Object$$la$init$ra$$$7$Entry:
    inline$java.lang.Object$$la$init$ra$$$7$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$7$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$7$anon0;

  inline$java.lang.Object$$la$init$ra$$$7$anon0:
    inline$java.lang.Object$$la$init$ra$$$7$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$7$Return;

  inline$java.lang.Object$$la$init$ra$$$7$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception := inline$java.lang.Object$$la$init$ra$$$7$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$7$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$7$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$7$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$7$Return:
    inline$java.lang.Boolean$valueOf$boolean$7$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$7$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$7$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$7$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$7$$return := inline$java.lang.Boolean$valueOf$boolean$7$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$7$block5;

  inline$java.lang.Boolean$valueOf$boolean$7$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$7$Return;

  inline$java.lang.Boolean$valueOf$boolean$7$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13 := inline$java.lang.Boolean$valueOf$boolean$7$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$7$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$2;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$2:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$8$Entry;

  inline$java.lang.Boolean$valueOf$boolean$8$Entry:
    inline$java.lang.Boolean$valueOf$boolean$8$$in_parameter__0 := 0;
    havoc inline$java.lang.Boolean$valueOf$boolean$8$z0, inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$8$$r0, inline$java.lang.Boolean$valueOf$boolean$8$$return, inline$java.lang.Boolean$valueOf$boolean$8$$exception;
    inline$java.lang.Boolean$valueOf$boolean$8$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$8$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$8$anon0;

  inline$java.lang.Boolean$valueOf$boolean$8$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$8$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$8$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$8$z0 := inline$java.lang.Boolean$valueOf$boolean$8$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$8$$r0 := inline$java.lang.Boolean$valueOf$boolean$8$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this := inline$java.lang.Boolean$valueOf$boolean$8$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$8$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$8$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$8$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$8$Entry;

  inline$java.lang.Object$$la$init$ra$$$8$Entry:
    inline$java.lang.Object$$la$init$ra$$$8$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$8$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$8$anon0;

  inline$java.lang.Object$$la$init$ra$$$8$anon0:
    inline$java.lang.Object$$la$init$ra$$$8$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$8$Return;

  inline$java.lang.Object$$la$init$ra$$$8$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception := inline$java.lang.Object$$la$init$ra$$$8$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$8$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$8$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$8$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$8$Return:
    inline$java.lang.Boolean$valueOf$boolean$8$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$8$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$8$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$8$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$8$$return := inline$java.lang.Boolean$valueOf$boolean$8$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$8$block5;

  inline$java.lang.Boolean$valueOf$boolean$8$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$8$Return;

  inline$java.lang.Boolean$valueOf$boolean$8$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14 := inline$java.lang.Boolean$valueOf$boolean$8$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$8$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$3;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$3:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$4$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$4;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$4:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$9$Entry;

  inline$java.lang.Boolean$valueOf$boolean$9$Entry:
    inline$java.lang.Boolean$valueOf$boolean$9$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4;
    havoc inline$java.lang.Boolean$valueOf$boolean$9$z0, inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$9$$r0, inline$java.lang.Boolean$valueOf$boolean$9$$return, inline$java.lang.Boolean$valueOf$boolean$9$$exception;
    inline$java.lang.Boolean$valueOf$boolean$9$$objIndex := fixed.$objIndex;
    inline$java.lang.Boolean$valueOf$boolean$9$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$valueOf$boolean$9$anon0;

  inline$java.lang.Boolean$valueOf$boolean$9$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$java.lang.Boolean$valueOf$boolean$9$$return, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$java.lang.Boolean$valueOf$boolean$9$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$9$z0 := inline$java.lang.Boolean$valueOf$boolean$9$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0 := fixed.$new(fixed.java.lang.Boolean);
    inline$java.lang.Boolean$valueOf$boolean$9$$r0 := inline$java.lang.Boolean$valueOf$boolean$9$$fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$Entry;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$Entry:
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this := inline$java.lang.Boolean$valueOf$boolean$9$$r0;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$in_parameter__0 := inline$java.lang.Boolean$valueOf$boolean$9$z0;
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$heap := fixed.$heap;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$anon0;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this, fixed.$type]
   <: fixed.java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this != fixed.$null;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception := fixed.$null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0 := inline$java.lang.Boolean$$la$init$ra$$boolean$9$$this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0 := inline$java.lang.Boolean$$la$init$ra$$boolean$9$$in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$9$Entry;

  inline$java.lang.Object$$la$init$ra$$$9$Entry:
    inline$java.lang.Object$$la$init$ra$$$9$$this := inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$9$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$9$anon0;

  inline$java.lang.Object$$la$init$ra$$$9$anon0:
    inline$java.lang.Object$$la$init$ra$$$9$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$9$Return;

  inline$java.lang.Object$$la$init$ra$$$9$Return:
    inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception := inline$java.lang.Object$$la$init$ra$$$9$$exception;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$anon0$1;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$anon0$1:
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Boolean$$la$init$ra$$boolean$9$r0, fixed.boolean$java.lang.Boolean$value0 := inline$java.lang.Boolean$$la$init$ra$$boolean$9$z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$block4;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$block4:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$9$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$9$Return:
    inline$java.lang.Boolean$valueOf$boolean$9$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$9$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$9$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$9$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$9$$return := inline$java.lang.Boolean$valueOf$boolean$9$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$9$block5;

  inline$java.lang.Boolean$valueOf$boolean$9$block5:
    goto inline$java.lang.Boolean$valueOf$boolean$9$Return;

  inline$java.lang.Boolean$valueOf$boolean$9$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16 := inline$java.lang.Boolean$valueOf$boolean$9$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$java.lang.Boolean$valueOf$boolean$9$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$5;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$5:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2 := fixed.$null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block55:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block56:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block57;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block57:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block56;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$block55;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$Return:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$return;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$5$$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$6;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21$6:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 43, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon53_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon53_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon53_Else:
    assume {:partition} !(fixed.$heap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon52_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     < fixed.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r4]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     >= 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon21;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon18:
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2 := fixed.$intArrHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r3][inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7];
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon52_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon52_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon52_Else:
    assume {:partition} !(inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     < fixed.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r4]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     >= 0);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon51_Then:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     < fixed.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r3]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     >= 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon18;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon15:
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 42, -1, -1, -1} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon51_Then, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon51_Else;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon51_Else:
    assume {:partition} !(inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     < fixed.$arrSizeHeap[inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_r3]
   && inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7
     >= 0);
    call inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return := 0;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1;
    inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$return, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$exception, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$i1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r22, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r17, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r21, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r20, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r13, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$c3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r19, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i7, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r14, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_5, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_i6, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r16, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r18, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_1, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$l4, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$r15, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_2, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_$fakelocal_3, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$in_z0;
    fixed.$objIndex, fixed.$heap := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$objIndex, inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$$heap;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon50_Else:
    assume {:partition} inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1
   != 0;
    assert {:sourceloc "SimplifiedUsernameTokenValidatorImpl.java", 41, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon15;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$anon33_dummy:
    assume false;
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$exit:
    goto inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return;

  inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$Return:
    out_$return := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$return;
    out_$exception := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$exception;
    out_$i1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$i1;
    out_$r22 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r22;
    out_$r17 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r17;
    out_$r21 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r21;
    out_$c2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c2;
    out_$fakelocal_6 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_6;
    out_$r20 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r20;
    out_z4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z4;
    out_$fakelocal_4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_4;
    out_$l5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l5;
    out_$r13 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r13;
    out_$c3 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$c3;
    out_z5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z5;
    out_$r19 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r19;
    out_i7 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i7;
    out_$r14 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r14;
    out_$fakelocal_5 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_5;
    out_i6 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_i6;
    out_$r16 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r16;
    out_$r18 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r18;
    out_$fakelocal_1 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_1;
    out_$l4 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$l4;
    out_$r15 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$r15;
    out_$fakelocal_2 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_2;
    out_$fakelocal_3 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_$fakelocal_3;
    out_z0 := inline$SimplifiedUsernameTokenValidatorImpl$unsafe_String_equals$java.lang.String_java.lang.Object_loop_block61$0$out_z0;
    goto anon33_dummy$1;

  anon33_dummy$1:
    return;

  exit:
    return;
}


