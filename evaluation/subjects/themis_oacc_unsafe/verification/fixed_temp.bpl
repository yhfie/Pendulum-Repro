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

var fixed.char$lp$$rp$$com.acciente.oacc.PasswordCredentials$Impl$password259: Field ref;

var fixed.boolean$java.lang.Boolean$value0: Field int;

const unique fixed.$type: Field javaType;

const unique fixed.$alloc: Field bool;

const unique fixed.$null: ref;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique fixed.java.lang.Object: javaType extends complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique fixed.com.acciente.oacc.Credentials: javaType extends complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique fixed.com.acciente.oacc.PasswordCredentials: javaType extends unique fixed.java.lang.Object, fixed.com.acciente.oacc.Credentials complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique fixed.com.acciente.oacc.PasswordCredentials$Impl: javaType extends unique fixed.com.acciente.oacc.PasswordCredentials complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique fixed.java.io.Serializable: javaType extends complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique fixed.java.lang.reflect.AnnotatedElement: javaType extends complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique fixed.java.lang.reflect.GenericDeclaration: javaType extends fixed.java.lang.reflect.AnnotatedElement complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique fixed.java.lang.reflect.Type: javaType extends complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique fixed.java.lang.Class: javaType extends unique fixed.java.lang.Object, fixed.java.io.Serializable, fixed.java.lang.reflect.GenericDeclaration, fixed.java.lang.reflect.Type, fixed.java.lang.reflect.AnnotatedElement complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique fixed.java.lang.Throwable: javaType extends unique fixed.java.lang.Object, fixed.java.io.Serializable complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique fixed.java.lang.Exception: javaType extends unique fixed.java.lang.Throwable complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique fixed.java.lang.RuntimeException: javaType extends unique fixed.java.lang.Exception complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique fixed.java.lang.ClassCastException: javaType extends unique fixed.java.lang.RuntimeException complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique fixed.java.lang.NullPointerException: javaType extends unique fixed.java.lang.RuntimeException complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique fixed.java.lang.IndexOutOfBoundsException: javaType extends unique fixed.java.lang.RuntimeException complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique fixed.java.lang.ArrayIndexOutOfBoundsException: javaType extends unique fixed.java.lang.IndexOutOfBoundsException complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique fixed.sg.edu.nus.comp.tsunami.safe.Safe: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique fixed.java.lang.Comparable: javaType extends complete;

const {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} unique fixed.java.util.Arrays: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique fixed.java.lang.Boolean: javaType extends unique fixed.java.lang.Object complete;

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
  free ensures fixed.$objIndex == old(fixed.$objIndex) + 1;
  free ensures fixed.$heap
   == old(fixed.$heap)[$obj, fixed.$alloc := true][$obj, fixed.$type := obj_type];
  free ensures $obj != fixed.$null;
  free ensures !old(fixed.$heap[$obj, fixed.$alloc]);
  free ensures $obj == fixed.$intToRef(old(fixed.$objIndex));



procedure {:prefix "fixed"} fixed.java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  free ensures $other != fixed.$null;
  free ensures fixed.$heap[$other, fixed.$alloc] <==> true;
  free ensures fixed.$heap[$other, fixed.$type] == fixed.$heap[$this, fixed.$type];



procedure {:prefix "fixed"} fixed.int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure {:prefix "fixed"} fixed.com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref);
  modifies fixed.$heap;



procedure {:prefix "fixed"} fixed.com.acciente.oacc.PasswordCredentials$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "fixed"} fixed.com.acciente.oacc.PasswordCredentials$Impl$getPassword$($this: ref) returns ($return: ref, $exception: ref);



procedure {:prefix "fixed"} fixed.com.acciente.oacc.PasswordCredentials$Impl$equals$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "fixed"} fixed.java.lang.Object$getClass$($this: ref) returns ($return: ref, $exception: ref);



procedure {:prefix "fixed"} fixed.com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);



procedure {:prefix "fixed"} fixed.com.acciente.oacc.PasswordCredentials$Impl$hashCode$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.java.util.Arrays$hashCode$char$lp$$rp$($in_parameter__0: ref) returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "fixed"} fixed.com.acciente.oacc.PasswordCredentials$newInstance$char$lp$$rp$($in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



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



implementation fixed.com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref)
{
  var r1: ref;
  var r0: ref;
  var inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$r0: ref;
  var inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$this: ref;
  var inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$exception: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type]
   <: fixed.com.acciente.oacc.PasswordCredentials$Impl;
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "PasswordCredentials.java", 49, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$Entry;

  inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$Entry:
    inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$this := r0;
    havoc inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$r0, inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$anon0;

  inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} fixed.$heap[inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$this, fixed.$type]
   <: fixed.com.acciente.oacc.PasswordCredentials;
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$this
   != fixed.$null;
    inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$exception := fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$r0 := inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$this;
    assert {:sourceloc "PasswordCredentials.java", 34, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$java.lang.Object$$la$init$ra$$$0$$this := inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$anon0$1;

  inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$anon0$1:
    assert {:sourceloc "PasswordCredentials.java", 34, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$block15;

  inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$block15:
    goto inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$Return:
    $exception := inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "PasswordCredentials.java", 50, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[r0, fixed.char$lp$$rp$$com.acciente.oacc.PasswordCredentials$Impl$password259 := r1];
    assert {:sourceloc "PasswordCredentials.java", 51, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation fixed.com.acciente.oacc.PasswordCredentials$Impl$getPassword$($this: ref) returns ($return: ref, $exception: ref)
{
  var $r1: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type]
   <: fixed.com.acciente.oacc.PasswordCredentials$Impl;
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "PasswordCredentials.java", 55, -1, -1, -1} true;
    $r1 := fixed.$heap[r0, fixed.char$lp$$rp$$com.acciente.oacc.PasswordCredentials$Impl$password259];
    assert {:sourceloc "PasswordCredentials.java", 55, -1, -1, -1} true;
    $return := $r1;
    goto block2;

  block2:
    return;
}



implementation fixed.com.acciente.oacc.PasswordCredentials$Impl$equals$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var $z0: int;
  var r1: ref;
  var $r3: ref;
  var $r5: ref;
  var $fakelocal_0: ref;
  var r0: ref;
  var r2: ref;
  var $r6: ref;
  var $r4: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r5: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$z2: int;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r4: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_3: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_7: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r2: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r10: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i0: int;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r14: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_8: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_2: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$c2: int;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r11: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$z0: int;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$c3: int;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$i1: int;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r6: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_9: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r3: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r12: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$l5: int;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_5: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r8: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r15: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i6: int;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$z1: int;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_0: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_4: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r13: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_1: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r9: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_6: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$l4: int;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r7: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$z3: int;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$in_parameter__0: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$in_parameter__1: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return: int;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$objIndex: int;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$heap: $heap_type;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$z0: int;
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
  var inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$z0: int;
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
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$z0: int;
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
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$0$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$0$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$0$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$0$$return: int;
  var inline$java.lang.Boolean$booleanValue$$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$z0: int;
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
  var inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$z0: int;
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
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$1$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$1$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$1$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$1$$return: int;
  var inline$java.lang.Boolean$booleanValue$$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$z0: int;
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
  var inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$z0: int;
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
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$2$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$2$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$2$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$2$$return: int;
  var inline$java.lang.Boolean$booleanValue$$2$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type]
   <: fixed.com.acciente.oacc.PasswordCredentials$Impl;
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} $this != fixed.$null;
    assume fixed.$heap[$in_parameter__0, fixed.$type] <: fixed.java.lang.Object;
    $exception := fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "PasswordCredentials.java", 60, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "PasswordCredentials.java", 60, -1, -1, -1} {:comment "thenblock"} true;
    goto block3;

  anon12_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "PasswordCredentials.java", 60, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "PasswordCredentials.java", 61, -1, -1, -1} true;
    $return := 1;
    goto block6;

  block3:
    assert {:sourceloc "PasswordCredentials.java", 63, -1, -1, -1} true;
    goto anon13_Then, anon13_Else;

  anon13_Then:
    assume {:partition} r1 == fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", 63, -1, -1, -1} {:comment "thenblock"} true;
    goto block4;

  anon13_Else:
    assume {:partition} r1 != fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", 63, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "PasswordCredentials.java", 64, -1, -1, -1} true;
    call $r3, $exception := fixed.java.lang.Object$getClass$(r0);
    assert {:sourceloc "PasswordCredentials.java", 64, -1, -1, -1} true;
    call $r4, $exception := fixed.java.lang.Object$getClass$(r1);
    assert {:sourceloc "PasswordCredentials.java", 64, -1, -1, -1} true;
    goto anon14_Then, anon14_Else;

  anon14_Then:
    assume {:partition} $r3 == $r4;
    assert {:sourceloc "PasswordCredentials.java", 64, -1, -1, -1} {:comment "thenblock"} true;
    goto block5;

  anon14_Else:
    assume {:partition} $r3 != $r4;
    assert {:sourceloc "PasswordCredentials.java", 64, -1, -1, -1} {:comment "elseblock"} true;
    goto block4;

  block4:
    assert {:sourceloc "PasswordCredentials.java", 64, -1, -1, -1} true;
    $return := 0;
    goto block6;

  block5:
    assert {:sourceloc "PasswordCredentials.java", 67, -1, -1, -1} true;
    goto anon15_Then, anon15_Else;

  anon15_Then:
    assume {:partition} fixed.$heap[r1, fixed.$type] <: fixed.com.acciente.oacc.PasswordCredentials$Impl;
    $exception := $exception;
    goto anon11;

  anon15_Else:
    assume {:partition} !(fixed.$heap[r1, fixed.$type]
   <: fixed.com.acciente.oacc.PasswordCredentials$Impl);
    call $fakelocal_0 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon11:
    r2 := r1;
    assert {:sourceloc "PasswordCredentials.java", 70, -1, -1, -1} true;
    $r6 := fixed.$heap[r0, fixed.char$lp$$rp$$com.acciente.oacc.PasswordCredentials$Impl$password259];
    assert {:sourceloc "PasswordCredentials.java", 70, -1, -1, -1} true;
    $r5 := fixed.$heap[r2, fixed.char$lp$$rp$$com.acciente.oacc.PasswordCredentials$Impl$password259];
    assert {:sourceloc "PasswordCredentials.java", 70, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Entry;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Entry:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$in_parameter__0 := $r6;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$in_parameter__1 := $r5;
    havoc inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r5, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$z2, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r4, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_3, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_7, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r2, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r10, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i0, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r14, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_8, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_2, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$c2, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r11, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$z0, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$c3, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$i1, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r6, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_9, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r3, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r12, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$l5, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_5, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r8, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r15, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i6, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$z1, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_0, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_4, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r13, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_1, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r9, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_6, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$l4, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r7, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$z3, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$objIndex := fixed.$objIndex;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$heap := fixed.$heap;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon0;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$in_parameter__0;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$in_parameter__1;
    assert {:sourceloc "PasswordCredentials.java", 75, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$z2 := 0;
    assert {:sourceloc "PasswordCredentials.java", 76, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$z3 := 0;
    assert {:sourceloc "PasswordCredentials.java", 77, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon45_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon45_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon45_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0
   != inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1;
    assert {:sourceloc "PasswordCredentials.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block7;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon45_Else:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0
   == inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1;
    assert {:sourceloc "PasswordCredentials.java", 77, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon3;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon3:
    assert {:sourceloc "PasswordCredentials.java", 78, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 1;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block13;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block7:
    assert {:sourceloc "PasswordCredentials.java", 79, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon46_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon46_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon46_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0
   == fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", 79, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block8;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon46_Else:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0
   != fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", 79, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon6;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon6:
    assert {:sourceloc "PasswordCredentials.java", 80, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon47_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon47_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon47_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1
   != fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", 80, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block9;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon47_Else:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1
   == fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", 80, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block8;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block8:
    assert {:sourceloc "PasswordCredentials.java", 80, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 0;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block13;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block9:
    assert {:sourceloc "PasswordCredentials.java", 82, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon48_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon48_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon48_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0
   != fixed.$null;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon11;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon48_Else:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0
   == fixed.$null;
    call inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_0 := fixed.$new(fixed.java.lang.NullPointerException);
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 0;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_0;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon11:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i0 := fixed.$arrSizeHeap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0];
    assert {:sourceloc "PasswordCredentials.java", 83, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon49_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon49_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon49_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1
   != fixed.$null;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon14;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon49_Else:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1
   == fixed.$null;
    call inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_1 := fixed.$new(fixed.java.lang.NullPointerException);
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 0;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_1;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon14:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$i1 := fixed.$arrSizeHeap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1];
    assert {:sourceloc "PasswordCredentials.java", 83, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon50_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon50_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon50_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$i1
   == inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i0;
    assert {:sourceloc "PasswordCredentials.java", 83, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block10;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon50_Else:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$i1
   != inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i0;
    assert {:sourceloc "PasswordCredentials.java", 83, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon17;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon17:
    assert {:sourceloc "PasswordCredentials.java", 84, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 0;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block13;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block10:
    assert {:sourceloc "PasswordCredentials.java", 86, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i6 := 0;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block11;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block11:
    assert {:sourceloc "PasswordCredentials.java", 86, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon51_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon51_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon51_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i6
   >= inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i0;
    assert {:sourceloc "PasswordCredentials.java", 86, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block12;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon51_Else:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i0
   > inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i6;
    assert {:sourceloc "PasswordCredentials.java", 86, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon20;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon20:
    assert {:sourceloc "PasswordCredentials.java", 89, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon52_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon52_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon52_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i6
     < fixed.$arrSizeHeap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0]
   && inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i6
     >= 0;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon23;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon52_Else:
    assume {:partition} !(inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i6
     < fixed.$arrSizeHeap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0]
   && inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i6
     >= 0);
    call inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 0;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_2;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon23:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$c2 := fixed.$intArrHeap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r0][inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i6];
    assert {:sourceloc "PasswordCredentials.java", 89, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$l5 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$c2;
    assert {:sourceloc "PasswordCredentials.java", 89, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon53_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon53_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon53_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i6
     < fixed.$arrSizeHeap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1]
   && inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i6
     >= 0;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon26;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon53_Else:
    assume {:partition} !(inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i6
     < fixed.$arrSizeHeap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1]
   && inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i6
     >= 0);
    call inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 0;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_3;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon26:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$c3 := fixed.$intArrHeap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$r1][inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i6];
    assert {:sourceloc "PasswordCredentials.java", 89, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$l4 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$c3;
    assert {:sourceloc "PasswordCredentials.java", 89, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$l5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$l4;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception;
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

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block41;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 != 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon3:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block41;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block41:
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block42;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 == 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon6:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block42;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block42:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block43;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block43:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Return:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon26$1;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon26$1:
    assert {:sourceloc "PasswordCredentials.java", 90, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$0$Entry;

  inline$java.lang.Boolean$valueOf$boolean$0$Entry:
    inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$z2;
    havoc inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$0$z0, inline$java.lang.Boolean$valueOf$boolean$0$$r0, inline$java.lang.Boolean$valueOf$boolean$0$$return, inline$java.lang.Boolean$valueOf$boolean$0$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$block17;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$block17:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    inline$java.lang.Boolean$valueOf$boolean$0$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$0$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$0$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$0$$return := inline$java.lang.Boolean$valueOf$boolean$0$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$0$block18;

  inline$java.lang.Boolean$valueOf$boolean$0$block18:
    goto inline$java.lang.Boolean$valueOf$boolean$0$Return;

  inline$java.lang.Boolean$valueOf$boolean$0$Return:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r6 := inline$java.lang.Boolean$valueOf$boolean$0$$return;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$java.lang.Boolean$valueOf$boolean$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon26$2;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon26$2:
    assert {:sourceloc "PasswordCredentials.java", 90, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$1$Entry;

  inline$java.lang.Boolean$valueOf$boolean$1$Entry:
    inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0 := 0;
    havoc inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$1$z0, inline$java.lang.Boolean$valueOf$boolean$1$$r0, inline$java.lang.Boolean$valueOf$boolean$1$$return, inline$java.lang.Boolean$valueOf$boolean$1$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$block17;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$block17:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$Return:
    inline$java.lang.Boolean$valueOf$boolean$1$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$1$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$1$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$1$$return := inline$java.lang.Boolean$valueOf$boolean$1$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$1$block18;

  inline$java.lang.Boolean$valueOf$boolean$1$block18:
    goto inline$java.lang.Boolean$valueOf$boolean$1$Return;

  inline$java.lang.Boolean$valueOf$boolean$1$Return:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r7 := inline$java.lang.Boolean$valueOf$boolean$1$$return;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$java.lang.Boolean$valueOf$boolean$1$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon26$3;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon26$3:
    assert {:sourceloc "PasswordCredentials.java", 90, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$z3;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r6;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r7;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1, fixed.$type]
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

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block68:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block69;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block69;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block69:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block70;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block70:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r8 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon26$4;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon26$4:
    assert {:sourceloc "PasswordCredentials.java", 90, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$2$Entry;

  inline$java.lang.Boolean$valueOf$boolean$2$Entry:
    inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$z2;
    havoc inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$2$z0, inline$java.lang.Boolean$valueOf$boolean$2$$r0, inline$java.lang.Boolean$valueOf$boolean$2$$return, inline$java.lang.Boolean$valueOf$boolean$2$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$block17;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$block17:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$Return:
    inline$java.lang.Boolean$valueOf$boolean$2$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$2$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$2$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$2$$return := inline$java.lang.Boolean$valueOf$boolean$2$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$2$block18;

  inline$java.lang.Boolean$valueOf$boolean$2$block18:
    goto inline$java.lang.Boolean$valueOf$boolean$2$Return;

  inline$java.lang.Boolean$valueOf$boolean$2$Return:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r9 := inline$java.lang.Boolean$valueOf$boolean$2$$return;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$java.lang.Boolean$valueOf$boolean$2$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon26$5;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon26$5:
    assert {:sourceloc "PasswordCredentials.java", 90, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r8;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r9;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1, fixed.$type]
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

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block68:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block69;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block69;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block69:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block70;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block70:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r10 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon26$6;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon26$6:
    assert {:sourceloc "PasswordCredentials.java", 90, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon54_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon54_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon54_Then:
    assume {:partition} fixed.$heap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r10, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon29;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon54_Else:
    assume {:partition} !(fixed.$heap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r10, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_4 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 0;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_4;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon29:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r11 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r10;
    assert {:sourceloc "PasswordCredentials.java", 90, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon55_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon55_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon55_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r11
   != fixed.$null;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon32;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon55_Else:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r11
   == fixed.$null;
    call inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_5 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 0;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_5;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon32:
    goto inline$java.lang.Boolean$booleanValue$$0$Entry;

  inline$java.lang.Boolean$booleanValue$$0$Entry:
    inline$java.lang.Boolean$booleanValue$$0$$this := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r11;
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
    goto inline$java.lang.Boolean$booleanValue$$0$block19;

  inline$java.lang.Boolean$booleanValue$$0$block19:
    goto inline$java.lang.Boolean$booleanValue$$0$Return;

  inline$java.lang.Boolean$booleanValue$$0$Return:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$z2 := inline$java.lang.Boolean$booleanValue$$0$$return;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$java.lang.Boolean$booleanValue$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon32$1;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon32$1:
    assert {:sourceloc "PasswordCredentials.java", 91, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$3$Entry;

  inline$java.lang.Boolean$valueOf$boolean$3$Entry:
    inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$3$z0, inline$java.lang.Boolean$valueOf$boolean$3$$r0, inline$java.lang.Boolean$valueOf$boolean$3$$return, inline$java.lang.Boolean$valueOf$boolean$3$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$block17;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$block17:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$Return:
    inline$java.lang.Boolean$valueOf$boolean$3$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$3$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$3$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$3$$return := inline$java.lang.Boolean$valueOf$boolean$3$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$3$block18;

  inline$java.lang.Boolean$valueOf$boolean$3$block18:
    goto inline$java.lang.Boolean$valueOf$boolean$3$Return;

  inline$java.lang.Boolean$valueOf$boolean$3$Return:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r12 := inline$java.lang.Boolean$valueOf$boolean$3$$return;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$java.lang.Boolean$valueOf$boolean$3$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon32$2;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon32$2:
    assert {:sourceloc "PasswordCredentials.java", 91, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$4$Entry;

  inline$java.lang.Boolean$valueOf$boolean$4$Entry:
    inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$z3;
    havoc inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$4$z0, inline$java.lang.Boolean$valueOf$boolean$4$$r0, inline$java.lang.Boolean$valueOf$boolean$4$$return, inline$java.lang.Boolean$valueOf$boolean$4$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$block17;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$block17:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$Return:
    inline$java.lang.Boolean$valueOf$boolean$4$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$4$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$4$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$4$$return := inline$java.lang.Boolean$valueOf$boolean$4$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$4$block18;

  inline$java.lang.Boolean$valueOf$boolean$4$block18:
    goto inline$java.lang.Boolean$valueOf$boolean$4$Return;

  inline$java.lang.Boolean$valueOf$boolean$4$Return:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r13 := inline$java.lang.Boolean$valueOf$boolean$4$$return;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$java.lang.Boolean$valueOf$boolean$4$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon32$3;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon32$3:
    assert {:sourceloc "PasswordCredentials.java", 91, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r12;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r13;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1, fixed.$type]
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

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block68:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block69;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block69;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block69:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block70;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block70:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Return:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r14 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon32$4;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon32$4:
    assert {:sourceloc "PasswordCredentials.java", 91, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon56_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon56_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon56_Then:
    assume {:partition} fixed.$heap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r14, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon35;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon56_Else:
    assume {:partition} !(fixed.$heap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r14, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_6 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 0;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_6;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon35:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r15 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r14;
    assert {:sourceloc "PasswordCredentials.java", 91, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon57_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon57_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon57_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r15
   != fixed.$null;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon38;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon57_Else:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r15
   == fixed.$null;
    call inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_7 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 0;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_7;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon38:
    goto inline$java.lang.Boolean$booleanValue$$1$Entry;

  inline$java.lang.Boolean$booleanValue$$1$Entry:
    inline$java.lang.Boolean$booleanValue$$1$$this := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r15;
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
    goto inline$java.lang.Boolean$booleanValue$$1$block19;

  inline$java.lang.Boolean$booleanValue$$1$block19:
    goto inline$java.lang.Boolean$booleanValue$$1$Return;

  inline$java.lang.Boolean$booleanValue$$1$Return:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$z3 := inline$java.lang.Boolean$booleanValue$$1$$return;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$java.lang.Boolean$booleanValue$$1$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon38$1;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon38$1:
    assert {:sourceloc "PasswordCredentials.java", 86, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i6 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$i6
   + 1;
    assert {:sourceloc "PasswordCredentials.java", 86, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block11;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block12:
    assert {:sourceloc "PasswordCredentials.java", 96, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$5$Entry;

  inline$java.lang.Boolean$valueOf$boolean$5$Entry:
    inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$z2;
    havoc inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$5$z0, inline$java.lang.Boolean$valueOf$boolean$5$$r0, inline$java.lang.Boolean$valueOf$boolean$5$$return, inline$java.lang.Boolean$valueOf$boolean$5$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$block17;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$block17:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$Return:
    inline$java.lang.Boolean$valueOf$boolean$5$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$5$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$5$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$5$$return := inline$java.lang.Boolean$valueOf$boolean$5$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$5$block18;

  inline$java.lang.Boolean$valueOf$boolean$5$block18:
    goto inline$java.lang.Boolean$valueOf$boolean$5$Return;

  inline$java.lang.Boolean$valueOf$boolean$5$Return:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r2 := inline$java.lang.Boolean$valueOf$boolean$5$$return;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$java.lang.Boolean$valueOf$boolean$5$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block12$1;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block12$1:
    assert {:sourceloc "PasswordCredentials.java", 96, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$6$Entry;

  inline$java.lang.Boolean$valueOf$boolean$6$Entry:
    inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$6$z0, inline$java.lang.Boolean$valueOf$boolean$6$$r0, inline$java.lang.Boolean$valueOf$boolean$6$$return, inline$java.lang.Boolean$valueOf$boolean$6$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$block17;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$block17:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$Return:
    inline$java.lang.Boolean$valueOf$boolean$6$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$6$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$6$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$6$$return := inline$java.lang.Boolean$valueOf$boolean$6$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$6$block18;

  inline$java.lang.Boolean$valueOf$boolean$6$block18:
    goto inline$java.lang.Boolean$valueOf$boolean$6$Return;

  inline$java.lang.Boolean$valueOf$boolean$6$Return:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r3 := inline$java.lang.Boolean$valueOf$boolean$6$$return;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$java.lang.Boolean$valueOf$boolean$6$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block12$2;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block12$2:
    assert {:sourceloc "PasswordCredentials.java", 96, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$z3;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r2;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r3;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1, fixed.$type]
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

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block68:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block69;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block69;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block69:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block70;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block70:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Return:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r4 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block12$3;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block12$3:
    assert {:sourceloc "PasswordCredentials.java", 96, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon58_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon58_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon58_Then:
    assume {:partition} fixed.$heap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r4, fixed.$type]
   <: fixed.java.lang.Boolean;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon41;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon58_Else:
    assume {:partition} !(fixed.$heap[inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r4, fixed.$type]
   <: fixed.java.lang.Boolean);
    call inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_8 := fixed.$new(fixed.java.lang.ClassCastException);
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 0;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_8;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon41:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r5 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r4;
    assert {:sourceloc "PasswordCredentials.java", 96, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon59_Then, inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon59_Else;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon59_Then:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r5
   != fixed.$null;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon44;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon59_Else:
    assume {:partition} inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r5
   == fixed.$null;
    call inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_9 := fixed.$new(fixed.java.lang.RuntimeException);
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := 0;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$fakelocal_9;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon44:
    goto inline$java.lang.Boolean$booleanValue$$2$Entry;

  inline$java.lang.Boolean$booleanValue$$2$Entry:
    inline$java.lang.Boolean$booleanValue$$2$$this := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$r5;
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
    goto inline$java.lang.Boolean$booleanValue$$2$block19;

  inline$java.lang.Boolean$booleanValue$$2$block19:
    goto inline$java.lang.Boolean$booleanValue$$2$Return;

  inline$java.lang.Boolean$booleanValue$$2$Return:
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$z1 := inline$java.lang.Boolean$booleanValue$$2$$return;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception := inline$java.lang.Boolean$booleanValue$$2$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon44$1;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$anon44$1:
    assert {:sourceloc "PasswordCredentials.java", 96, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$z1;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block13;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$block13:
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$Return:
    $z0 := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$return;
    $exception := inline$com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$$0$$exception;
    goto anon11$1;

  anon11$1:
    assert {:sourceloc "PasswordCredentials.java", 70, -1, -1, -1} true;
    $return := $z0;
    goto block6;

  block6:
    return;
}



implementation fixed.com.acciente.oacc.PasswordCredentials$Impl$ArraysIsEquals$char$lp$$rp$_char$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $r5: ref;
  var r1: ref;
  var z2: int;
  var $r4: ref;
  var $fakelocal_3: ref;
  var $fakelocal_7: ref;
  var $r2: ref;
  var $r10: ref;
  var r0: ref;
  var i0: int;
  var $r14: ref;
  var $fakelocal_8: ref;
  var $fakelocal_2: ref;
  var $c2: int;
  var $r11: ref;
  var z0: int;
  var $c3: int;
  var $i1: int;
  var $r6: ref;
  var $fakelocal_9: ref;
  var $r3: ref;
  var $r12: ref;
  var $l5: int;
  var $fakelocal_5: ref;
  var $r8: ref;
  var $r15: ref;
  var i6: int;
  var $z1: int;
  var $fakelocal_0: ref;
  var $fakelocal_4: ref;
  var $r13: ref;
  var $fakelocal_1: ref;
  var $r9: ref;
  var $fakelocal_6: ref;
  var $l4: int;
  var $r7: ref;
  var z3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$0$z0: int;
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
  var inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$1$z0: int;
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
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$2$z0: int;
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
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$0$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$0$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$0$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$0$$return: int;
  var inline$java.lang.Boolean$booleanValue$$0$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$3$z0: int;
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
  var inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$4$z0: int;
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
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$1$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$1$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$1$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$1$$return: int;
  var inline$java.lang.Boolean$booleanValue$$1$$exception: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$5$z0: int;
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
  var inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0: ref;
  var inline$java.lang.Boolean$valueOf$boolean$6$z0: int;
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
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return: ref;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception: ref;
  var inline$java.lang.Boolean$booleanValue$$2$r0: ref;
  var inline$java.lang.Boolean$booleanValue$$2$$z0: int;
  var inline$java.lang.Boolean$booleanValue$$2$$this: ref;
  var inline$java.lang.Boolean$booleanValue$$2$$return: int;
  var inline$java.lang.Boolean$booleanValue$$2$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    $exception := fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "PasswordCredentials.java", 75, -1, -1, -1} true;
    z2 := 0;
    assert {:sourceloc "PasswordCredentials.java", 76, -1, -1, -1} true;
    z3 := 0;
    assert {:sourceloc "PasswordCredentials.java", 77, -1, -1, -1} true;
    goto anon45_Then, anon45_Else;

  anon45_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "PasswordCredentials.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block7;

  anon45_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "PasswordCredentials.java", 77, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "PasswordCredentials.java", 78, -1, -1, -1} true;
    $return := 1;
    goto block13;

  block7:
    assert {:sourceloc "PasswordCredentials.java", 79, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Then:
    assume {:partition} r0 == fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", 79, -1, -1, -1} {:comment "thenblock"} true;
    goto block8;

  anon46_Else:
    assume {:partition} r0 != fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", 79, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "PasswordCredentials.java", 80, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Then:
    assume {:partition} r1 != fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", 80, -1, -1, -1} {:comment "thenblock"} true;
    goto block9;

  anon47_Else:
    assume {:partition} r1 == fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", 80, -1, -1, -1} {:comment "elseblock"} true;
    goto block8;

  block8:
    assert {:sourceloc "PasswordCredentials.java", 80, -1, -1, -1} true;
    $return := 0;
    goto block13;

  block9:
    assert {:sourceloc "PasswordCredentials.java", 82, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Then:
    assume {:partition} r0 != fixed.$null;
    $exception := $exception;
    goto anon11;

  anon48_Else:
    assume {:partition} r0 == fixed.$null;
    call $fakelocal_0 := fixed.$new(fixed.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon11:
    i0 := fixed.$arrSizeHeap[r0];
    assert {:sourceloc "PasswordCredentials.java", 83, -1, -1, -1} true;
    goto anon49_Then, anon49_Else;

  anon49_Then:
    assume {:partition} r1 != fixed.$null;
    $exception := $exception;
    goto anon14;

  anon49_Else:
    assume {:partition} r1 == fixed.$null;
    call $fakelocal_1 := fixed.$new(fixed.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon14:
    $i1 := fixed.$arrSizeHeap[r1];
    assert {:sourceloc "PasswordCredentials.java", 83, -1, -1, -1} true;
    goto anon50_Then, anon50_Else;

  anon50_Then:
    assume {:partition} $i1 == i0;
    assert {:sourceloc "PasswordCredentials.java", 83, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  anon50_Else:
    assume {:partition} $i1 != i0;
    assert {:sourceloc "PasswordCredentials.java", 83, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "PasswordCredentials.java", 84, -1, -1, -1} true;
    $return := 0;
    goto block13;

  block10:
    assert {:sourceloc "PasswordCredentials.java", 86, -1, -1, -1} true;
    i6 := 0;
    goto block11;

  block11:
    assert {:sourceloc "PasswordCredentials.java", 86, -1, -1, -1} true;
    goto anon51_Then, anon51_Else;

  anon51_Then:
    assume {:partition} i6 >= i0;
    assert {:sourceloc "PasswordCredentials.java", 86, -1, -1, -1} {:comment "thenblock"} true;
    goto block12;

  anon51_Else:
    assume {:partition} i0 > i6;
    assert {:sourceloc "PasswordCredentials.java", 86, -1, -1, -1} {:comment "elseblock"} true;
    goto anon20;

  anon20:
    assert {:sourceloc "PasswordCredentials.java", 89, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Then:
    assume {:partition} i6 < fixed.$arrSizeHeap[r0] && i6 >= 0;
    $exception := $exception;
    goto anon23;

  anon52_Else:
    assume {:partition} !(i6 < fixed.$arrSizeHeap[r0] && i6 >= 0);
    call $fakelocal_2 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon23:
    $c2 := fixed.$intArrHeap[r0][i6];
    assert {:sourceloc "PasswordCredentials.java", 89, -1, -1, -1} true;
    $l5 := $c2;
    assert {:sourceloc "PasswordCredentials.java", 89, -1, -1, -1} true;
    goto anon53_Then, anon53_Else;

  anon53_Then:
    assume {:partition} i6 < fixed.$arrSizeHeap[r1] && i6 >= 0;
    $exception := $exception;
    goto anon26;

  anon53_Else:
    assume {:partition} !(i6 < fixed.$arrSizeHeap[r1] && i6 >= 0);
    call $fakelocal_3 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon26:
    $c3 := fixed.$intArrHeap[r1][i6];
    assert {:sourceloc "PasswordCredentials.java", 89, -1, -1, -1} true;
    $l4 := $c3;
    assert {:sourceloc "PasswordCredentials.java", 89, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__0 := $l5;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$in_parameter__1 := $l4;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception;
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

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block41;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b2 != 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon3:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block41;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block41:
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block42;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$b3 == 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$anon6:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block42;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block42:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block43;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$block43:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$Return:
    z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long$0$$exception;
    goto anon26$1;

  anon26$1:
    assert {:sourceloc "PasswordCredentials.java", 90, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$0$Entry;

  inline$java.lang.Boolean$valueOf$boolean$0$Entry:
    inline$java.lang.Boolean$valueOf$boolean$0$$in_parameter__0 := z2;
    havoc inline$java.lang.Boolean$valueOf$boolean$0$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$0$z0, inline$java.lang.Boolean$valueOf$boolean$0$$r0, inline$java.lang.Boolean$valueOf$boolean$0$$return, inline$java.lang.Boolean$valueOf$boolean$0$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$block17;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$block17:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    inline$java.lang.Boolean$valueOf$boolean$0$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$0$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$0$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$0$$return := inline$java.lang.Boolean$valueOf$boolean$0$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$0$block18;

  inline$java.lang.Boolean$valueOf$boolean$0$block18:
    goto inline$java.lang.Boolean$valueOf$boolean$0$Return;

  inline$java.lang.Boolean$valueOf$boolean$0$Return:
    $r6 := inline$java.lang.Boolean$valueOf$boolean$0$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$0$$exception;
    goto anon26$2;

  anon26$2:
    assert {:sourceloc "PasswordCredentials.java", 90, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$1$Entry;

  inline$java.lang.Boolean$valueOf$boolean$1$Entry:
    inline$java.lang.Boolean$valueOf$boolean$1$$in_parameter__0 := 0;
    havoc inline$java.lang.Boolean$valueOf$boolean$1$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$1$z0, inline$java.lang.Boolean$valueOf$boolean$1$$r0, inline$java.lang.Boolean$valueOf$boolean$1$$return, inline$java.lang.Boolean$valueOf$boolean$1$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$block17;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$block17:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$1$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$1$Return:
    inline$java.lang.Boolean$valueOf$boolean$1$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$1$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$1$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$1$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$1$$return := inline$java.lang.Boolean$valueOf$boolean$1$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$1$block18;

  inline$java.lang.Boolean$valueOf$boolean$1$block18:
    goto inline$java.lang.Boolean$valueOf$boolean$1$Return;

  inline$java.lang.Boolean$valueOf$boolean$1$Return:
    $r7 := inline$java.lang.Boolean$valueOf$boolean$1$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$1$$exception;
    goto anon26$3;

  anon26$3:
    assert {:sourceloc "PasswordCredentials.java", 90, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__0 := z3;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1 := $r6;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2 := $r7;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$in_parameter__1, fixed.$type]
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

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block68:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block69;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block69;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block69:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block70;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$block70:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$Return:
    $r8 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$0$$exception;
    goto anon26$4;

  anon26$4:
    assert {:sourceloc "PasswordCredentials.java", 90, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$2$Entry;

  inline$java.lang.Boolean$valueOf$boolean$2$Entry:
    inline$java.lang.Boolean$valueOf$boolean$2$$in_parameter__0 := z2;
    havoc inline$java.lang.Boolean$valueOf$boolean$2$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$2$z0, inline$java.lang.Boolean$valueOf$boolean$2$$r0, inline$java.lang.Boolean$valueOf$boolean$2$$return, inline$java.lang.Boolean$valueOf$boolean$2$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$block17;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$block17:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$2$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$2$Return:
    inline$java.lang.Boolean$valueOf$boolean$2$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$2$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$2$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$2$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$2$$return := inline$java.lang.Boolean$valueOf$boolean$2$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$2$block18;

  inline$java.lang.Boolean$valueOf$boolean$2$block18:
    goto inline$java.lang.Boolean$valueOf$boolean$2$Return;

  inline$java.lang.Boolean$valueOf$boolean$2$Return:
    $r9 := inline$java.lang.Boolean$valueOf$boolean$2$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$2$$exception;
    goto anon26$5;

  anon26$5:
    assert {:sourceloc "PasswordCredentials.java", 90, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__0 := z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1 := $r8;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2 := $r9;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$in_parameter__1, fixed.$type]
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

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block68:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block69;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block69;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block69:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block70;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$block70:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$Return:
    $r10 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$1$$exception;
    goto anon26$6;

  anon26$6:
    assert {:sourceloc "PasswordCredentials.java", 90, -1, -1, -1} true;
    goto anon54_Then, anon54_Else;

  anon54_Then:
    assume {:partition} fixed.$heap[$r10, fixed.$type] <: fixed.java.lang.Boolean;
    $exception := $exception;
    goto anon29;

  anon54_Else:
    assume {:partition} !(fixed.$heap[$r10, fixed.$type] <: fixed.java.lang.Boolean);
    call $fakelocal_4 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon29:
    $r11 := $r10;
    assert {:sourceloc "PasswordCredentials.java", 90, -1, -1, -1} true;
    goto anon55_Then, anon55_Else;

  anon55_Then:
    assume {:partition} $r11 != fixed.$null;
    $exception := $exception;
    goto anon32;

  anon55_Else:
    assume {:partition} $r11 == fixed.$null;
    call $fakelocal_5 := fixed.$new(fixed.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon32:
    goto inline$java.lang.Boolean$booleanValue$$0$Entry;

  inline$java.lang.Boolean$booleanValue$$0$Entry:
    inline$java.lang.Boolean$booleanValue$$0$$this := $r11;
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
    goto inline$java.lang.Boolean$booleanValue$$0$block19;

  inline$java.lang.Boolean$booleanValue$$0$block19:
    goto inline$java.lang.Boolean$booleanValue$$0$Return;

  inline$java.lang.Boolean$booleanValue$$0$Return:
    z2 := inline$java.lang.Boolean$booleanValue$$0$$return;
    $exception := inline$java.lang.Boolean$booleanValue$$0$$exception;
    goto anon32$1;

  anon32$1:
    assert {:sourceloc "PasswordCredentials.java", 91, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$3$Entry;

  inline$java.lang.Boolean$valueOf$boolean$3$Entry:
    inline$java.lang.Boolean$valueOf$boolean$3$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$3$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$3$z0, inline$java.lang.Boolean$valueOf$boolean$3$$r0, inline$java.lang.Boolean$valueOf$boolean$3$$return, inline$java.lang.Boolean$valueOf$boolean$3$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$block17;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$block17:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$3$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$3$Return:
    inline$java.lang.Boolean$valueOf$boolean$3$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$3$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$3$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$3$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$3$$return := inline$java.lang.Boolean$valueOf$boolean$3$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$3$block18;

  inline$java.lang.Boolean$valueOf$boolean$3$block18:
    goto inline$java.lang.Boolean$valueOf$boolean$3$Return;

  inline$java.lang.Boolean$valueOf$boolean$3$Return:
    $r12 := inline$java.lang.Boolean$valueOf$boolean$3$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$3$$exception;
    goto anon32$2;

  anon32$2:
    assert {:sourceloc "PasswordCredentials.java", 91, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$4$Entry;

  inline$java.lang.Boolean$valueOf$boolean$4$Entry:
    inline$java.lang.Boolean$valueOf$boolean$4$$in_parameter__0 := z3;
    havoc inline$java.lang.Boolean$valueOf$boolean$4$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$4$z0, inline$java.lang.Boolean$valueOf$boolean$4$$r0, inline$java.lang.Boolean$valueOf$boolean$4$$return, inline$java.lang.Boolean$valueOf$boolean$4$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$block17;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$block17:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$4$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$4$Return:
    inline$java.lang.Boolean$valueOf$boolean$4$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$4$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$4$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$4$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$4$$return := inline$java.lang.Boolean$valueOf$boolean$4$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$4$block18;

  inline$java.lang.Boolean$valueOf$boolean$4$block18:
    goto inline$java.lang.Boolean$valueOf$boolean$4$Return;

  inline$java.lang.Boolean$valueOf$boolean$4$Return:
    $r13 := inline$java.lang.Boolean$valueOf$boolean$4$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$4$$exception;
    goto anon32$3;

  anon32$3:
    assert {:sourceloc "PasswordCredentials.java", 91, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__0 := z0;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1 := $r12;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2 := $r13;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$in_parameter__1, fixed.$type]
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

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block68:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block69;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block69;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block69:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block70;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$block70:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$Return:
    $r14 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$2$$exception;
    goto anon32$4;

  anon32$4:
    assert {:sourceloc "PasswordCredentials.java", 91, -1, -1, -1} true;
    goto anon56_Then, anon56_Else;

  anon56_Then:
    assume {:partition} fixed.$heap[$r14, fixed.$type] <: fixed.java.lang.Boolean;
    $exception := $exception;
    goto anon35;

  anon56_Else:
    assume {:partition} !(fixed.$heap[$r14, fixed.$type] <: fixed.java.lang.Boolean);
    call $fakelocal_6 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon35:
    $r15 := $r14;
    assert {:sourceloc "PasswordCredentials.java", 91, -1, -1, -1} true;
    goto anon57_Then, anon57_Else;

  anon57_Then:
    assume {:partition} $r15 != fixed.$null;
    $exception := $exception;
    goto anon38;

  anon57_Else:
    assume {:partition} $r15 == fixed.$null;
    call $fakelocal_7 := fixed.$new(fixed.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_7;
    return;

  anon38:
    goto inline$java.lang.Boolean$booleanValue$$1$Entry;

  inline$java.lang.Boolean$booleanValue$$1$Entry:
    inline$java.lang.Boolean$booleanValue$$1$$this := $r15;
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
    goto inline$java.lang.Boolean$booleanValue$$1$block19;

  inline$java.lang.Boolean$booleanValue$$1$block19:
    goto inline$java.lang.Boolean$booleanValue$$1$Return;

  inline$java.lang.Boolean$booleanValue$$1$Return:
    z3 := inline$java.lang.Boolean$booleanValue$$1$$return;
    $exception := inline$java.lang.Boolean$booleanValue$$1$$exception;
    goto anon38$1;

  anon38$1:
    assert {:sourceloc "PasswordCredentials.java", 86, -1, -1, -1} true;
    i6 := i6 + 1;
    assert {:sourceloc "PasswordCredentials.java", 86, -1, -1, -1} true;
    goto block11;

  block12:
    assert {:sourceloc "PasswordCredentials.java", 96, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$5$Entry;

  inline$java.lang.Boolean$valueOf$boolean$5$Entry:
    inline$java.lang.Boolean$valueOf$boolean$5$$in_parameter__0 := z2;
    havoc inline$java.lang.Boolean$valueOf$boolean$5$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$5$z0, inline$java.lang.Boolean$valueOf$boolean$5$$r0, inline$java.lang.Boolean$valueOf$boolean$5$$return, inline$java.lang.Boolean$valueOf$boolean$5$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$block17;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$block17:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$5$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$5$Return:
    inline$java.lang.Boolean$valueOf$boolean$5$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$5$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$5$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$5$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$5$$return := inline$java.lang.Boolean$valueOf$boolean$5$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$5$block18;

  inline$java.lang.Boolean$valueOf$boolean$5$block18:
    goto inline$java.lang.Boolean$valueOf$boolean$5$Return;

  inline$java.lang.Boolean$valueOf$boolean$5$Return:
    $r2 := inline$java.lang.Boolean$valueOf$boolean$5$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$5$$exception;
    goto block12$1;

  block12$1:
    assert {:sourceloc "PasswordCredentials.java", 96, -1, -1, -1} true;
    goto inline$java.lang.Boolean$valueOf$boolean$6$Entry;

  inline$java.lang.Boolean$valueOf$boolean$6$Entry:
    inline$java.lang.Boolean$valueOf$boolean$6$$in_parameter__0 := 1;
    havoc inline$java.lang.Boolean$valueOf$boolean$6$$fakelocal_0, inline$java.lang.Boolean$valueOf$boolean$6$z0, inline$java.lang.Boolean$valueOf$boolean$6$$r0, inline$java.lang.Boolean$valueOf$boolean$6$$return, inline$java.lang.Boolean$valueOf$boolean$6$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$block17;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$block17:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$6$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$6$Return:
    inline$java.lang.Boolean$valueOf$boolean$6$$exception := inline$java.lang.Boolean$$la$init$ra$$boolean$6$$exception;
    goto inline$java.lang.Boolean$valueOf$boolean$6$anon0$1;

  inline$java.lang.Boolean$valueOf$boolean$6$anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    inline$java.lang.Boolean$valueOf$boolean$6$$return := inline$java.lang.Boolean$valueOf$boolean$6$$r0;
    goto inline$java.lang.Boolean$valueOf$boolean$6$block18;

  inline$java.lang.Boolean$valueOf$boolean$6$block18:
    goto inline$java.lang.Boolean$valueOf$boolean$6$Return;

  inline$java.lang.Boolean$valueOf$boolean$6$Return:
    $r3 := inline$java.lang.Boolean$valueOf$boolean$6$$return;
    $exception := inline$java.lang.Boolean$valueOf$boolean$6$$exception;
    goto block12$2;

  block12$2:
    assert {:sourceloc "PasswordCredentials.java", 96, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__0 := z3;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1 := $r2;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2 := $r3;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__2, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return, fixed.$type]
   <: fixed.java.lang.Object;
    assume fixed.$heap[inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$in_parameter__1, fixed.$type]
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

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block68;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block68:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block69;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$z0
   == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block69;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block69:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$r2;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block70;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$block70:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$Return:
    $r4 := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object$3$$exception;
    goto block12$3;

  block12$3:
    assert {:sourceloc "PasswordCredentials.java", 96, -1, -1, -1} true;
    goto anon58_Then, anon58_Else;

  anon58_Then:
    assume {:partition} fixed.$heap[$r4, fixed.$type] <: fixed.java.lang.Boolean;
    $exception := $exception;
    goto anon41;

  anon58_Else:
    assume {:partition} !(fixed.$heap[$r4, fixed.$type] <: fixed.java.lang.Boolean);
    call $fakelocal_8 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_8;
    return;

  anon41:
    $r5 := $r4;
    assert {:sourceloc "PasswordCredentials.java", 96, -1, -1, -1} true;
    goto anon59_Then, anon59_Else;

  anon59_Then:
    assume {:partition} $r5 != fixed.$null;
    $exception := $exception;
    goto anon44;

  anon59_Else:
    assume {:partition} $r5 == fixed.$null;
    call $fakelocal_9 := fixed.$new(fixed.java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_9;
    return;

  anon44:
    goto inline$java.lang.Boolean$booleanValue$$2$Entry;

  inline$java.lang.Boolean$booleanValue$$2$Entry:
    inline$java.lang.Boolean$booleanValue$$2$$this := $r5;
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
    goto inline$java.lang.Boolean$booleanValue$$2$block19;

  inline$java.lang.Boolean$booleanValue$$2$block19:
    goto inline$java.lang.Boolean$booleanValue$$2$Return;

  inline$java.lang.Boolean$booleanValue$$2$Return:
    $z1 := inline$java.lang.Boolean$booleanValue$$2$$return;
    $exception := inline$java.lang.Boolean$booleanValue$$2$$exception;
    goto anon44$1;

  anon44$1:
    assert {:sourceloc "PasswordCredentials.java", 96, -1, -1, -1} true;
    $return := $z1;
    goto block13;

  block13:
    return;
}



implementation fixed.com.acciente.oacc.PasswordCredentials$Impl$hashCode$($this: ref) returns ($return: int, $exception: ref)
{
  var $r1: ref;
  var $i0: int;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type]
   <: fixed.com.acciente.oacc.PasswordCredentials$Impl;
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "PasswordCredentials.java", 101, -1, -1, -1} true;
    $r1 := fixed.$heap[r0, fixed.char$lp$$rp$$com.acciente.oacc.PasswordCredentials$Impl$password259];
    assert {:sourceloc "PasswordCredentials.java", 101, -1, -1, -1} true;
    call $i0, $exception := fixed.java.util.Arrays$hashCode$char$lp$$rp$($r1);
    assert {:sourceloc "PasswordCredentials.java", 101, -1, -1, -1} true;
    $return := $i0;
    goto block14;

  block14:
    return;
}



implementation fixed.com.acciente.oacc.PasswordCredentials$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.com.acciente.oacc.PasswordCredentials;
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "PasswordCredentials.java", 34, -1, -1, -1} true;
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
    assert {:sourceloc "PasswordCredentials.java", 34, -1, -1, -1} true;
    goto block15;

  block15:
    return;
}



implementation fixed.com.acciente.oacc.PasswordCredentials$newInstance$char$lp$$rp$($in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var r0: ref;
  var $r1: ref;
  var $fakelocal_0: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$r1: ref;
  var inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$r0: ref;
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
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$return, fixed.$type] <: fixed.com.acciente.oacc.PasswordCredentials;
    $exception := fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "PasswordCredentials.java", 43, -1, -1, -1} true;
    call $fakelocal_0 := fixed.$new(fixed.com.acciente.oacc.PasswordCredentials$Impl);
    $r1 := $fakelocal_0;
    assert {:sourceloc "PasswordCredentials.java", 43, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$Entry;

  inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$Entry:
    inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$this := $r1;
    inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$in_parameter__0 := r0;
    havoc inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$r1, inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$r0, inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$exception;
    inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$heap := fixed.$heap;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$anon0;

  inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} fixed.$heap[inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$this, fixed.$type]
   <: fixed.com.acciente.oacc.PasswordCredentials$Impl;
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$this
   != fixed.$null;
    inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$exception := fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$r0 := inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$this;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$r1 := inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$in_parameter__0;
    assert {:sourceloc "PasswordCredentials.java", 49, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$Entry;

  inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$Entry:
    inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$this := inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$r0;
    havoc inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$r0, inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$anon0;

  inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} fixed.$heap[inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$this, fixed.$type]
   <: fixed.com.acciente.oacc.PasswordCredentials;
    assume {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$this
   != fixed.$null;
    inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$exception := fixed.$null;
    assert {:sourceloc "PasswordCredentials.java", -1, -1, -1, -1} true;
    inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$r0 := inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$this;
    assert {:sourceloc "PasswordCredentials.java", 34, -1, -1, -1} true;
    goto inline$java.lang.Object$$la$init$ra$$$0$Entry;

  inline$java.lang.Object$$la$init$ra$$$0$Entry:
    inline$java.lang.Object$$la$init$ra$$$0$$this := inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$r0;
    havoc inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Object$$la$init$ra$$$0$anon0;

  inline$java.lang.Object$$la$init$ra$$$0$anon0:
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$anon0$1;

  inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$anon0$1:
    assert {:sourceloc "PasswordCredentials.java", 34, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$block15;

  inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$block15:
    goto inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$Return:
    inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$exception := inline$com.acciente.oacc.PasswordCredentials$$la$init$ra$$$0$$exception;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$anon0$1;

  inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$anon0$1:
    assert {:sourceloc "PasswordCredentials.java", 50, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$r0, fixed.char$lp$$rp$$com.acciente.oacc.PasswordCredentials$Impl$password259 := inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$r1];
    assert {:sourceloc "PasswordCredentials.java", 51, -1, -1, -1} true;
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$block1;

  inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$block1:
    goto inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$Return;

  inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$Return:
    $exception := inline$com.acciente.oacc.PasswordCredentials$Impl$$la$init$ra$$char$lp$$rp$$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "PasswordCredentials.java", 43, -1, -1, -1} true;
    $return := $r1;
    goto block16;

  block16:
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
    goto block17;

  block17:
    return;
}



implementation fixed.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var z0: int;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$block17;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$block17:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    $exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    $return := $r0;
    goto block18;

  block18:
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
    goto block19;

  block19:
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
    goto block20;

  block20:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var z0: int;
  var z1: int;

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

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block21;

  anon7_Else:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 0;
    goto block21;

  block21:
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block22;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 1;
    goto block22;

  block22:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    $return := z1;
    goto block23;

  block23:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $z2: int;
  var z0: int;
  var z1: int;

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
    goto block24;

  block24:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $z2: int;
  var z1: int;
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
    goto block25;

  block25:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var $b3: int;
  var z0: int;
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
    assert {:sourceloc "Safe.java", 20, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} true;
    $b2 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} $b2 <= 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    goto block26;

  anon7_Else:
    assume {:partition} 0 < $b2;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    z0 := 1;
    goto block26;

  block26:
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} true;
    $b3 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} $b3 > 0;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block27;

  anon8_Else:
    assume {:partition} 0 >= $b3;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    z0 := 0;
    goto block27;

  block27:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    $return := z0;
    goto block28;

  block28:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l0: int;
  var $b3: int;
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
    assert {:sourceloc "Safe.java", 27, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} true;
    $b2 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} $b2 >= 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block29;

  anon7_Else:
    assume {:partition} 0 > $b2;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    z0 := 1;
    goto block29;

  block29:
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} true;
    $b3 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} $b3 < 0;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block30;

  anon8_Else:
    assume {:partition} 0 <= $b3;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    z0 := 0;
    goto block30;

  block30:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    $return := z0;
    goto block31;

  block31:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b3: int;
  var l0: int;
  var z0: int;
  var l1: int;
  var $b2: int;

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

  anon7_Then:
    assume {:partition} $b2 < 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block32;

  anon7_Else:
    assume {:partition} 0 <= $b2;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    z0 := 1;
    goto block32;

  block32:
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} true;
    $b3 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} $b3 >= 0;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block33;

  anon8_Else:
    assume {:partition} 0 > $b3;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    z0 := 0;
    goto block33;

  block33:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    $return := z0;
    goto block34;

  block34:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
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
    assert {:sourceloc "Safe.java", 41, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} true;
    $b2 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} $b2 > 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block35;

  anon7_Else:
    assume {:partition} 0 >= $b2;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    z0 := 1;
    goto block35;

  block35:
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} true;
    $b3 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} $b3 <= 0;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block36;

  anon8_Else:
    assume {:partition} 0 < $b3;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    z0 := 0;
    goto block36;

  block36:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    $return := z0;
    goto block37;

  block37:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l0: int;
  var $b3: int;
  var l1: int;
  var z0: int;
  var $b2: int;

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

  anon7_Then:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto block38;

  anon7_Else:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    z0 := 1;
    goto block38;

  block38:
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    $b3 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block39;

  anon8_Else:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    z0 := 0;
    goto block39;

  block39:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    $return := z0;
    goto block40;

  block40:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var l1: int;
  var $b3: int;
  var l0: int;
  var z0: int;

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

  anon7_Then:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block41;

  anon7_Else:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    z0 := 1;
    goto block41;

  block41:
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    $b3 := fixed.$cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto block42;

  anon8_Else:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    z0 := 0;
    goto block42;

  block42:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    $return := z0;
    goto block43;

  block43:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var $b0: int;
  var z0: int;
  var $b1: int;
  var d1: int;

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

  anon7_Then:
    assume {:partition} $b0 <= 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "thenblock"} true;
    goto block44;

  anon7_Else:
    assume {:partition} 0 < $b0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    z0 := 1;
    goto block44;

  block44:
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} true;
    $b1 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} $b1 > 0;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "thenblock"} true;
    goto block45;

  anon8_Else:
    assume {:partition} 0 >= $b1;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    z0 := 0;
    goto block45;

  block45:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    $return := z0;
    goto block46;

  block46:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var z0: int;
  var $b1: int;
  var d1: int;
  var $b0: int;

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

  anon7_Then:
    assume {:partition} $b0 >= 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block47;

  anon7_Else:
    assume {:partition} 0 > $b0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    z0 := 1;
    goto block47;

  block47:
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} true;
    $b1 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} $b1 < 0;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block48;

  anon8_Else:
    assume {:partition} 0 <= $b1;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    z0 := 0;
    goto block48;

  block48:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    $return := z0;
    goto block49;

  block49:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d1: int;
  var $b0: int;
  var z0: int;
  var d0: int;
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
    assert {:sourceloc "Safe.java", 76, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} true;
    $b0 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} $b0 < 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block50;

  anon7_Else:
    assume {:partition} 0 <= $b0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    z0 := 1;
    goto block50;

  block50:
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} true;
    $b1 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} $b1 >= 0;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block51;

  anon8_Else:
    assume {:partition} 0 > $b1;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    z0 := 0;
    goto block51;

  block51:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    $return := z0;
    goto block52;

  block52:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var d1: int;
  var d0: int;
  var $b1: int;
  var $b0: int;

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

  anon7_Then:
    assume {:partition} $b0 > 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block53;

  anon7_Else:
    assume {:partition} 0 >= $b0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    z0 := 1;
    goto block53;

  block53:
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} true;
    $b1 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} $b1 <= 0;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "thenblock"} true;
    goto block54;

  anon8_Else:
    assume {:partition} 0 < $b1;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    z0 := 0;
    goto block54;

  block54:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    $return := z0;
    goto block55;

  block55:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d1: int;
  var $b1: int;
  var d0: int;
  var z0: int;
  var $b0: int;

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

  anon7_Then:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "thenblock"} true;
    goto block56;

  anon7_Else:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    z0 := 1;
    goto block56;

  block56:
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} true;
    $b1 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "thenblock"} true;
    goto block57;

  anon8_Else:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    z0 := 0;
    goto block57;

  block57:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    $return := z0;
    goto block58;

  block58:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var d0: int;
  var $b0: int;
  var z0: int;
  var $b1: int;
  var d1: int;

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

  anon7_Then:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "thenblock"} true;
    goto block59;

  anon7_Else:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    z0 := 1;
    goto block59;

  block59:
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} true;
    $b1 := fixed.$cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "thenblock"} true;
    goto block60;

  anon8_Else:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    z0 := 0;
    goto block60;

  block60:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    $return := z0;
    goto block61;

  block61:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r0: ref;
  var z0: int;
  var r1: ref;

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

  anon7_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block62;

  anon7_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 1;
    goto block62;

  block62:
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block63;

  anon8_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 0;
    goto block63;

  block63:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    $return := z0;
    goto block64;

  block64:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r1: ref;
  var r0: ref;
  var z0: int;

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
    assert {:sourceloc "Safe.java", 111, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block65;

  anon7_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 1;
    goto block65;

  block65:
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block66;

  anon8_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 0;
    goto block66;

  block66:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    $return := z0;
    goto block67;

  block67:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var z0: int;
  var r1: ref;
  var r2: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$in_parameter__2, fixed.$type] <: fixed.java.lang.Object;
    assume fixed.$heap[$return, fixed.$type] <: fixed.java.lang.Object;
    assume fixed.$heap[$in_parameter__1, fixed.$type] <: fixed.java.lang.Object;
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

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block68;

  anon7_Else:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r0;
    goto block68;

  block68:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block69;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r1;
    goto block69;

  block69:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    $return := r2;
    goto block70;

  block70:
    return;
}



implementation fixed.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := fixed.$null;
    return;
}


