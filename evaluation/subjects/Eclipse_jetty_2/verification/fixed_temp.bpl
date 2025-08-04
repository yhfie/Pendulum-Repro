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

var fixed.int$java.lang.Integer$value0: Field int;

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

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.lang.Comparable: javaType extends complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.lang.Integer: javaType extends unique fixed.java.lang.Object, fixed.java.io.Serializable, fixed.java.lang.Comparable complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.lang.NullPointerException: javaType extends unique fixed.java.lang.RuntimeException complete;

const {:sourceloc "Integer.java", -1, -1, -1, -1} unique fixed.java.lang.ClassCastException: javaType extends unique fixed.java.lang.RuntimeException complete;

const {:sourceloc "Safe.java", -1, -1, -1, -1} unique fixed.sg.edu.nus.comp.tsunami.safe.Safe: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "Credential.java", -1, -1, -1, -1} unique fixed.Credential: javaType extends unique fixed.java.lang.Object complete;

const {:sourceloc "Credential.java", -1, -1, -1, -1} unique fixed.java.lang.CharSequence: javaType extends complete;

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
  free ensures fixed.$heap
   == old(fixed.$heap)[$obj, fixed.$alloc := true][$obj, fixed.$type := obj_type];
  free ensures fixed.$objIndex == old(fixed.$objIndex) + 1;
  free ensures !old(fixed.$heap[$obj, fixed.$alloc]);
  free ensures $obj != fixed.$null;
  free ensures $obj == fixed.$intToRef(old(fixed.$objIndex));



procedure {:prefix "fixed"} fixed.java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  free ensures $other != fixed.$null;
  free ensures fixed.$heap[$other, fixed.$type] == fixed.$heap[$this, fixed.$type];
  free ensures fixed.$heap[$other, fixed.$alloc] <==> true;



procedure {:prefix "fixed"} fixed.int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure {:prefix "fixed"} fixed.java.lang.String$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "fixed"} fixed.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "fixed"} fixed.java.lang.String$charAt$int($this: ref, $in_parameter__0: int) returns ($return: int, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "fixed"} fixed.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies fixed.$heap;



procedure {:prefix "fixed"} fixed.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "fixed"} fixed.java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.java.lang.Integer$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies fixed.$heap;



procedure {:prefix "fixed"} fixed.java.lang.Integer$valueOf$int($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "fixed"} fixed.java.lang.Integer$intValue$($this: ref) returns ($return: int, $exception: ref);



procedure {:prefix "fixed"} fixed.java.lang.Integer$compareTo$java.lang.Integer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "fixed"} fixed.java.lang.Integer$compareTo$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



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



procedure {:prefix "fixed"} fixed.Credential$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure {:prefix "fixed"} fixed.Credential$stringEquals_original$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies fixed.$objIndex, fixed.$heap;



procedure {:prefix "fixed"} fixed.Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68(in_$exception: ref, 
    in_r0: ref, 
    in_$z0: int, 
    in_z1: int, 
    in_r1: ref, 
    in_$c5: int, 
    in_$l6: int, 
    in_$i2: int, 
    in_$c3: int, 
    in_i7: int, 
    in_$l4: int)
   returns (out_$exception: ref, 
    out_$z0: int, 
    out_z1: int, 
    out_$c5: int, 
    out_$l6: int, 
    out_$i2: int, 
    out_$c3: int, 
    out_i7: int, 
    out_$l4: int);
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
  var $c1: int;
  var r0: ref;
  var $r1: ref;
  var $fakelocal_0: ref;

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



implementation fixed.java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var z0: int;
  var r0: ref;
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
    goto block3;

  block3:
    return;
}



implementation fixed.java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $r0: ref;
  var $fakelocal_0: ref;
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
    havoc inline$java.lang.Boolean$$la$init$ra$$boolean$0$z0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$r0, inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
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
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$block3;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$block3:
    goto inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return;

  inline$java.lang.Boolean$$la$init$ra$$boolean$0$Return:
    $exception := inline$java.lang.Boolean$$la$init$ra$$boolean$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    $return := $r0;
    goto block4;

  block4:
    return;
}



implementation fixed.java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref)
{
  var $z0: int;
  var r0: ref;

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
    goto block5;

  block5:
    return;
}



implementation fixed.java.lang.Integer$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var r0: ref;
  var i0: int;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
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
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    $exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Integer.java", 9, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[r0, fixed.int$java.lang.Integer$value0 := i0];
    assert {:sourceloc "Integer.java", 10, -1, -1, -1} true;
    goto block6;

  block6:
    return;
}



implementation fixed.java.lang.Integer$valueOf$int($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var i0: int;
  var $r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$r0: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$i0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$this: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$in_parameter__0: int;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$exception: ref;
  var inline$java.lang.Integer$$la$init$ra$$int$0$$heap: $heap_type;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$return, fixed.$type] <: fixed.java.lang.Integer;
    $exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    call $fakelocal_0 := fixed.$new(fixed.java.lang.Integer);
    $r0 := $fakelocal_0;
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$Entry;

  inline$java.lang.Integer$$la$init$ra$$int$0$Entry:
    inline$java.lang.Integer$$la$init$ra$$int$0$$this := $r0;
    inline$java.lang.Integer$$la$init$ra$$int$0$$in_parameter__0 := i0;
    havoc inline$java.lang.Integer$$la$init$ra$$int$0$r0, inline$java.lang.Integer$$la$init$ra$$int$0$i0, inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
    inline$java.lang.Integer$$la$init$ra$$int$0$$heap := fixed.$heap;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$anon0;

  inline$java.lang.Integer$$la$init$ra$$int$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$0$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$$la$init$ra$$int$0$$this != fixed.$null;
    inline$java.lang.Integer$$la$init$ra$$int$0$$exception := fixed.$null;
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
    inline$java.lang.Object$$la$init$ra$$$0$$exception := fixed.$null;
    goto inline$java.lang.Object$$la$init$ra$$$0$Return;

  inline$java.lang.Object$$la$init$ra$$$0$Return:
    inline$java.lang.Integer$$la$init$ra$$int$0$$exception := inline$java.lang.Object$$la$init$ra$$$0$$exception;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$anon0$1;

  inline$java.lang.Integer$$la$init$ra$$int$0$anon0$1:
    assert {:sourceloc "Integer.java", 9, -1, -1, -1} true;
    fixed.$heap := fixed.$heap[inline$java.lang.Integer$$la$init$ra$$int$0$r0, fixed.int$java.lang.Integer$value0 := inline$java.lang.Integer$$la$init$ra$$int$0$i0];
    assert {:sourceloc "Integer.java", 10, -1, -1, -1} true;
    goto inline$java.lang.Integer$$la$init$ra$$int$0$block6;

  inline$java.lang.Integer$$la$init$ra$$int$0$block6:
    goto inline$java.lang.Integer$$la$init$ra$$int$0$Return;

  inline$java.lang.Integer$$la$init$ra$$int$0$Return:
    $exception := inline$java.lang.Integer$$la$init$ra$$int$0$$exception;
    goto anon0$1;

  anon0$1:
    assert {:sourceloc "Integer.java", 13, -1, -1, -1} true;
    $return := $r0;
    goto block7;

  block7:
    return;
}



implementation fixed.java.lang.Integer$intValue$($this: ref) returns ($return: int, $exception: ref)
{
  var $i0: int;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    $i0 := fixed.$heap[r0, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 17, -1, -1, -1} true;
    $return := $i0;
    goto block8;

  block8:
    return;
}



implementation fixed.java.lang.Integer$compareTo$java.lang.Integer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var $i3: int;
  var $i2: int;
  var r1: ref;
  var $i0: int;
  var $fakelocal_0: ref;
  var $i1: int;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != fixed.$null;
    assume fixed.$heap[$in_parameter__0, fixed.$type] <: fixed.java.lang.Integer;
    $exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    $i1 := fixed.$heap[r0, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} r1 == fixed.$null;
    call $fakelocal_0 := fixed.$new(fixed.java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon10_Then:
    assume {:partition} r1 != fixed.$null;
    $exception := $exception;
    goto anon3;

  anon3:
    $i0 := fixed.$heap[r1, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} $i0 < $i1;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Integer.java", 23, -1, -1, -1} true;
    $return := 1;
    goto block11;

  block11:
    return;

  anon11_Then:
    assume {:partition} $i1 <= $i0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block9;

  block9:
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    $i3 := fixed.$heap[r0, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    $i2 := fixed.$heap[r1, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} $i2 > $i3;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "Integer.java", 25, -1, -1, -1} true;
    $return := -1;
    goto block11;

  anon12_Then:
    assume {:partition} $i3 >= $i2;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "thenblock"} true;
    goto block10;

  block10:
    assert {:sourceloc "Integer.java", 27, -1, -1, -1} true;
    $return := 0;
    goto block11;
}



implementation fixed.java.lang.Integer$compareTo$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var $r2: ref;
  var $fakelocal_0: ref;
  var $i0: int;
  var r0: ref;
  var r1: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$this: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$in_parameter__0: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception: ref;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$objIndex: int;
  var inline$java.lang.Integer$compareTo$java.lang.Integer$0$$heap: $heap_type;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} $this != fixed.$null;
    assume fixed.$heap[$in_parameter__0, fixed.$type] <: fixed.java.lang.Object;
    $exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Integer.java", 5, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} !(fixed.$heap[r1, fixed.$type] <: fixed.java.lang.Integer);
    call $fakelocal_0 := fixed.$new(fixed.java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon4_Then:
    assume {:partition} fixed.$heap[r1, fixed.$type] <: fixed.java.lang.Integer;
    $exception := $exception;
    goto anon3;

  anon3:
    $r2 := r1;
    assert {:sourceloc "Integer.java", 5, -1, -1, -1} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$Entry;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$Entry:
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$this := r0;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$in_parameter__0 := $r2;
    havoc inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2, inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1, inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return, inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$objIndex := fixed.$objIndex;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$heap := fixed.$heap;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon0;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$$this, fixed.$type]
   <: fixed.java.lang.Integer;
    assume {:sourceloc "Integer.java", -1, -1, -1, -1} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$this != fixed.$null;
    assume fixed.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$$in_parameter__0, fixed.$type]
   <: fixed.java.lang.Integer;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception := fixed.$null;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0 := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$this;
    assert {:sourceloc "Integer.java", -1, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1 := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$in_parameter__0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1 := fixed.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon10_Then, inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon10_Else;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon10_Else:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1 == fixed.$null;
    call inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0 := fixed.$new(fixed.java.lang.NullPointerException);
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return := 0;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$fakelocal_0;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$Return;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon10_Then:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1 != fixed.$null;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon3;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon3:
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0 := fixed.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1, fixed.int$java.lang.Integer$value0];
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
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block11;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block11:
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$Return;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon11_Then:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i1
   <= inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i0;
    assert {:sourceloc "Integer.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block9;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block9:
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3 := fixed.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$r0, fixed.int$java.lang.Integer$value0];
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2 := fixed.$heap[inline$java.lang.Integer$compareTo$java.lang.Integer$0$r1, fixed.int$java.lang.Integer$value0];
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
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block11;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$anon12_Then:
    assume {:partition} inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i3
   >= inline$java.lang.Integer$compareTo$java.lang.Integer$0$$i2;
    assert {:sourceloc "Integer.java", 24, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block10;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$block10:
    assert {:sourceloc "Integer.java", 27, -1, -1, -1} true;
    inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return := 0;
    goto inline$java.lang.Integer$compareTo$java.lang.Integer$0$block11;

  inline$java.lang.Integer$compareTo$java.lang.Integer$0$Return:
    $i0 := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$return;
    $exception := inline$java.lang.Integer$compareTo$java.lang.Integer$0$$exception;
    goto anon3$1;

  anon3$1:
    assert {:sourceloc "Integer.java", 5, -1, -1, -1} true;
    $return := $i0;
    goto block12;

  block12:
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
    goto block13;

  block13:
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
    goto block14;

  block14:
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 1;
    goto block15;

  block15:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    $return := z1;
    goto block16;

  block16:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block15;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block14;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $z2: int;
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
    goto block17;

  block17:
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
    goto block18;

  block18:
    return;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l1: int;
  var z0: int;
  var l0: int;
  var $b3: int;
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
    goto block19;

  block19:
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
    goto block20;

  block20:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    $return := z0;
    goto block21;

  block21:
    return;

  anon8_Then:
    assume {:partition} $b3 > 0;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block20;

  anon7_Then:
    assume {:partition} $b2 <= 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    goto block19;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l0: int;
  var $b3: int;
  var $b2: int;
  var z0: int;
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
    goto block22;

  block22:
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
    goto block23;

  block23:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    $return := z0;
    goto block24;

  block24:
    return;

  anon8_Then:
    assume {:partition} $b3 < 0;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block23;

  anon7_Then:
    assume {:partition} $b2 >= 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block22;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var $b3: int;
  var l0: int;
  var l1: int;
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
    goto block25;

  block25:
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
    goto block26;

  block26:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    $return := z0;
    goto block27;

  block27:
    return;

  anon8_Then:
    assume {:partition} $b3 >= 0;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block26;

  anon7_Then:
    assume {:partition} $b2 < 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block25;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l0: int;
  var l1: int;
  var $b2: int;
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
    goto block28;

  block28:
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
    goto block29;

  block29:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    $return := z0;
    goto block30;

  block30:
    return;

  anon8_Then:
    assume {:partition} $b3 <= 0;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block29;

  anon7_Then:
    assume {:partition} $b2 > 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block28;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var z0: int;
  var l0: int;
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
    goto block31;

  block31:
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
    goto block32;

  block32:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    $return := z0;
    goto block33;

  block33:
    return;

  anon8_Then:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block32;

  anon7_Then:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto block31;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var l0: int;
  var $b3: int;
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
    goto block34;

  block34:
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
    goto block35;

  block35:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    $return := z0;
    goto block36;

  block36:
    return;

  anon8_Then:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto block35;

  anon7_Then:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block34;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b0: int;
  var z0: int;
  var d1: int;
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
    goto block37;

  block37:
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
    goto block38;

  block38:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    $return := z0;
    goto block39;

  block39:
    return;

  anon8_Then:
    assume {:partition} $b1 > 0;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "thenblock"} true;
    goto block38;

  anon7_Then:
    assume {:partition} $b0 <= 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "thenblock"} true;
    goto block37;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b0: int;
  var z0: int;
  var $b1: int;
  var d0: int;
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
    goto block40;

  block40:
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
    goto block41;

  block41:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    $return := z0;
    goto block42;

  block42:
    return;

  anon8_Then:
    assume {:partition} $b1 < 0;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block41;

  anon7_Then:
    assume {:partition} $b0 >= 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block40;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
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
    goto block43;

  block43:
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
    goto block44;

  block44:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    $return := z0;
    goto block45;

  block45:
    return;

  anon8_Then:
    assume {:partition} $b1 >= 0;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block44;

  anon7_Then:
    assume {:partition} $b0 < 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block43;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b0: int;
  var d1: int;
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
    goto block46;

  block46:
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
    goto block47;

  block47:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    $return := z0;
    goto block48;

  block48:
    return;

  anon8_Then:
    assume {:partition} $b1 <= 0;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "thenblock"} true;
    goto block47;

  anon7_Then:
    assume {:partition} $b0 > 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block46;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b1: int;
  var z0: int;
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
    goto block49;

  block49:
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
    goto block50;

  block50:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    $return := z0;
    goto block51;

  block51:
    return;

  anon8_Then:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "thenblock"} true;
    goto block50;

  anon7_Then:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "thenblock"} true;
    goto block49;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
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
    goto block52;

  block52:
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
    goto block53;

  block53:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    $return := z0;
    goto block54;

  block54:
    return;

  anon8_Then:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "thenblock"} true;
    goto block53;

  anon7_Then:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "thenblock"} true;
    goto block52;
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
    assume fixed.$heap[$in_parameter__0, fixed.$type] <: fixed.java.lang.Object;
    assume fixed.$heap[$in_parameter__1, fixed.$type] <: fixed.java.lang.Object;
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
    goto block55;

  block55:
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 0;
    goto block56;

  block56:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    $return := z0;
    goto block57;

  block57:
    return;

  anon8_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block56;

  anon7_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block55;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r0: ref;
  var r1: ref;
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

  anon7_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 1;
    goto block58;

  block58:
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 0;
    goto block59;

  block59:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    $return := z0;
    goto block60;

  block60:
    return;

  anon8_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block59;

  anon7_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block58;
}



implementation fixed.sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var r2: ref;
  var r0: ref;
  var r1: ref;
  var z0: int;

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

  anon7_Else:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r0;
    goto block61;

  block61:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r1;
    goto block62;

  block62:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    $return := r2;
    goto block63;

  block63:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block62;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block61;
}



implementation fixed.Credential$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$this: ref;
  var inline$java.lang.Object$$la$init$ra$$$0$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Credential.java", -1, -1, -1, -1} fixed.$heap[$this, fixed.$type] <: fixed.Credential;
    assume {:sourceloc "Credential.java", -1, -1, -1, -1} $this != fixed.$null;
    $exception := fixed.$null;
    assert {:sourceloc "Credential.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Credential.java", 5, -1, -1, -1} true;
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
    assert {:sourceloc "Credential.java", 5, -1, -1, -1} true;
    goto block64;

  block64:
    return;
}



implementation fixed.Credential$stringEquals_original$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $i0: int;
  var $i1: int;
  var r0: ref;
  var $z0: int;
  var z1: int;
  var r1: ref;
  var $c5: int;
  var $l6: int;
  var $i2: int;
  var $c3: int;
  var i7: int;
  var $l4: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$exception: ref;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_r0: ref;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$z0: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_z1: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_r1: ref;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$c5: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$l6: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$i2: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$c3: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_i7: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$l4: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$exception: ref;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$z0: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_z1: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c5: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l6: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$i2: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c3: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l4: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$$objIndex: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$$heap: $heap_type;
  var inline$java.lang.String$charAt$int$0$i0: int;
  var inline$java.lang.String$charAt$int$0$$c1: int;
  var inline$java.lang.String$charAt$int$0$r0: ref;
  var inline$java.lang.String$charAt$int$0$$r1: ref;
  var inline$java.lang.String$charAt$int$0$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$0$$this: ref;
  var inline$java.lang.String$charAt$int$0$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$0$$return: int;
  var inline$java.lang.String$charAt$int$0$$exception: ref;
  var inline$java.lang.String$charAt$int$0$$objIndex: int;
  var inline$java.lang.String$charAt$int$0$$heap: $heap_type;
  var inline$java.lang.String$charAt$int$1$i0: int;
  var inline$java.lang.String$charAt$int$1$$c1: int;
  var inline$java.lang.String$charAt$int$1$r0: ref;
  var inline$java.lang.String$charAt$int$1$$r1: ref;
  var inline$java.lang.String$charAt$int$1$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$1$$this: ref;
  var inline$java.lang.String$charAt$int$1$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$1$$return: int;
  var inline$java.lang.String$charAt$int$1$$exception: ref;
  var inline$java.lang.String$charAt$int$1$$objIndex: int;
  var inline$java.lang.String$charAt$int$1$$heap: $heap_type;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$exception: ref;
  var inline$java.lang.String$charAt$int$2$i0: int;
  var inline$java.lang.String$charAt$int$2$$c1: int;
  var inline$java.lang.String$charAt$int$2$r0: ref;
  var inline$java.lang.String$charAt$int$2$$r1: ref;
  var inline$java.lang.String$charAt$int$2$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$2$$this: ref;
  var inline$java.lang.String$charAt$int$2$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$2$$return: int;
  var inline$java.lang.String$charAt$int$2$$exception: ref;
  var inline$java.lang.String$charAt$int$2$$objIndex: int;
  var inline$java.lang.String$charAt$int$2$$heap: $heap_type;
  var inline$java.lang.String$charAt$int$3$i0: int;
  var inline$java.lang.String$charAt$int$3$$c1: int;
  var inline$java.lang.String$charAt$int$3$r0: ref;
  var inline$java.lang.String$charAt$int$3$$r1: ref;
  var inline$java.lang.String$charAt$int$3$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$3$$this: ref;
  var inline$java.lang.String$charAt$int$3$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$3$$return: int;
  var inline$java.lang.String$charAt$int$3$$exception: ref;
  var inline$java.lang.String$charAt$int$3$$objIndex: int;
  var inline$java.lang.String$charAt$int$3$$heap: $heap_type;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$exception: ref;

  anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume fixed.$heap[$in_parameter__0, fixed.$type] <: fixed.java.lang.String;
    assume fixed.$heap[$in_parameter__1, fixed.$type] <: fixed.java.lang.String;
    $exception := fixed.$null;
    assert {:sourceloc "Credential.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Credential.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "Credential.java", 8, -1, -1, -1} true;
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Credential.java", 8, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Credential.java", 9, -1, -1, -1} true;
    $return := 1;
    goto block70;

  block70:
    return;

  anon15_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Credential.java", 8, -1, -1, -1} {:comment "thenblock"} true;
    goto block65;

  block65:
    assert {:sourceloc "Credential.java", 10, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} r0 != fixed.$null;
    assert {:sourceloc "Credential.java", 10, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} r1 != fixed.$null;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} {:comment "elseblock"} true;
    goto anon9;

  anon9:
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    $i0 := fixed.$stringSizeHeap[r0];
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    $i1 := fixed.$stringSizeHeap[r1];
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} $i0 != $i1;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} {:comment "elseblock"} true;
    goto block66;

  block66:
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} true;
    $return := 0;
    goto block70;

  anon18_Then:
    assume {:partition} $i0 == $i1;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} {:comment "thenblock"} true;
    goto block67;

  block67:
    assert {:sourceloc "Credential.java", 12, -1, -1, -1} true;
    z1 := 1;
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} true;
    i7 := 0;
    goto block68;

  block68:
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$Entry;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$Entry:
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$exception := $exception;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_r0 := r0;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$z0 := $z0;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_z1 := z1;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_r1 := r1;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$c5 := $c5;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$l6 := $l6;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$i2 := $i2;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$c3 := $c3;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_i7 := i7;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$l4 := $l4;
    havoc inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$exception, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$z0, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_z1, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c5, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l6, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$i2, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c3, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l4;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$$objIndex := fixed.$objIndex;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$$heap := fixed.$heap;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$entry;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$entry:
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$exception, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$z0, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_z1, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c5, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l6, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$i2, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c3, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l4 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$exception, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$z0, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_z1, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$c5, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$l6, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$i2, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$c3, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_i7, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$l4;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$block68;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$block68:
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$i2 := fixed.$stringSizeHeap[inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_r0];
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} true;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon19_Then, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon19_Else;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon19_Then:
    assume {:partition} inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7
   >= inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$i2;
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$exception, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$z0, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_z1, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c5, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l6, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$i2, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c3, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l4 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$exception, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$z0, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_z1, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$c5, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$l6, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$i2, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$c3, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_i7, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$l4;
    fixed.$objIndex, fixed.$heap := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$$objIndex, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$$heap;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$Return;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon14:
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$0$Entry;

  inline$java.lang.String$charAt$int$0$Entry:
    inline$java.lang.String$charAt$int$0$$this := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_r0;
    inline$java.lang.String$charAt$int$0$$in_parameter__0 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7;
    havoc inline$java.lang.String$charAt$int$0$i0, inline$java.lang.String$charAt$int$0$$c1, inline$java.lang.String$charAt$int$0$r0, inline$java.lang.String$charAt$int$0$$r1, inline$java.lang.String$charAt$int$0$$fakelocal_0, inline$java.lang.String$charAt$int$0$$return, inline$java.lang.String$charAt$int$0$$exception;
    inline$java.lang.String$charAt$int$0$$objIndex := fixed.$objIndex;
    inline$java.lang.String$charAt$int$0$$heap := fixed.$heap;
    goto inline$java.lang.String$charAt$int$0$anon0;

  inline$java.lang.String$charAt$int$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.String$charAt$int$0$$this, fixed.$type]
   <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$0$$this != fixed.$null;
    inline$java.lang.String$charAt$int$0$$exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$r0 := inline$java.lang.String$charAt$int$0$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$i0 := inline$java.lang.String$charAt$int$0$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$$r1 := fixed.$heap[inline$java.lang.String$charAt$int$0$r0, fixed.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$0$anon4_Then, inline$java.lang.String$charAt$int$0$anon4_Else;

  inline$java.lang.String$charAt$int$0$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$0$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$0$$r1]
   && inline$java.lang.String$charAt$int$0$i0 >= 0);
    call inline$java.lang.String$charAt$int$0$$fakelocal_0 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$0$$return := 0;
    inline$java.lang.String$charAt$int$0$$exception := inline$java.lang.String$charAt$int$0$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$0$Return;

  inline$java.lang.String$charAt$int$0$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$0$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$0$$r1]
   && inline$java.lang.String$charAt$int$0$i0 >= 0;
    inline$java.lang.String$charAt$int$0$$exception := inline$java.lang.String$charAt$int$0$$exception;
    goto inline$java.lang.String$charAt$int$0$anon3;

  inline$java.lang.String$charAt$int$0$anon3:
    inline$java.lang.String$charAt$int$0$$c1 := fixed.$intArrHeap[inline$java.lang.String$charAt$int$0$$r1][inline$java.lang.String$charAt$int$0$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$$return := inline$java.lang.String$charAt$int$0$$c1;
    goto inline$java.lang.String$charAt$int$0$block2;

  inline$java.lang.String$charAt$int$0$block2:
    goto inline$java.lang.String$charAt$int$0$Return;

  inline$java.lang.String$charAt$int$0$Return:
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c3 := inline$java.lang.String$charAt$int$0$$return;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$exception := inline$java.lang.String$charAt$int$0$$exception;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon14$1;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon14$1:
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l4 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c3;
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$1$Entry;

  inline$java.lang.String$charAt$int$1$Entry:
    inline$java.lang.String$charAt$int$1$$this := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_r1;
    inline$java.lang.String$charAt$int$1$$in_parameter__0 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7;
    havoc inline$java.lang.String$charAt$int$1$i0, inline$java.lang.String$charAt$int$1$$c1, inline$java.lang.String$charAt$int$1$r0, inline$java.lang.String$charAt$int$1$$r1, inline$java.lang.String$charAt$int$1$$fakelocal_0, inline$java.lang.String$charAt$int$1$$return, inline$java.lang.String$charAt$int$1$$exception;
    inline$java.lang.String$charAt$int$1$$objIndex := fixed.$objIndex;
    inline$java.lang.String$charAt$int$1$$heap := fixed.$heap;
    goto inline$java.lang.String$charAt$int$1$anon0;

  inline$java.lang.String$charAt$int$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.String$charAt$int$1$$this, fixed.$type]
   <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$1$$this != fixed.$null;
    inline$java.lang.String$charAt$int$1$$exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$r0 := inline$java.lang.String$charAt$int$1$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$i0 := inline$java.lang.String$charAt$int$1$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$$r1 := fixed.$heap[inline$java.lang.String$charAt$int$1$r0, fixed.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$1$anon4_Then, inline$java.lang.String$charAt$int$1$anon4_Else;

  inline$java.lang.String$charAt$int$1$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$1$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$1$$r1]
   && inline$java.lang.String$charAt$int$1$i0 >= 0);
    call inline$java.lang.String$charAt$int$1$$fakelocal_0 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$1$$return := 0;
    inline$java.lang.String$charAt$int$1$$exception := inline$java.lang.String$charAt$int$1$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$1$Return;

  inline$java.lang.String$charAt$int$1$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$1$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$1$$r1]
   && inline$java.lang.String$charAt$int$1$i0 >= 0;
    inline$java.lang.String$charAt$int$1$$exception := inline$java.lang.String$charAt$int$1$$exception;
    goto inline$java.lang.String$charAt$int$1$anon3;

  inline$java.lang.String$charAt$int$1$anon3:
    inline$java.lang.String$charAt$int$1$$c1 := fixed.$intArrHeap[inline$java.lang.String$charAt$int$1$$r1][inline$java.lang.String$charAt$int$1$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$$return := inline$java.lang.String$charAt$int$1$$c1;
    goto inline$java.lang.String$charAt$int$1$block2;

  inline$java.lang.String$charAt$int$1$block2:
    goto inline$java.lang.String$charAt$int$1$Return;

  inline$java.lang.String$charAt$int$1$Return:
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c5 := inline$java.lang.String$charAt$int$1$$return;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$exception := inline$java.lang.String$charAt$int$1$$exception;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon14$2;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon14$2:
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l6 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c5;
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__0 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l4;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__1 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l6;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__1;
    assert {:sourceloc "Safe.java", 48, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0 := 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2 == 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon3:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block31;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block31:
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3 != 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon6:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block32;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block32:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block33;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block33:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block32;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block31;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$Return:
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$return;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$exception;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon14$3;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon14$3:
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_z1 := fixed.$bitAnd(inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_z1, 
  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$z0);
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7
   + 1;
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} true;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon14_dummy;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon19_Else:
    assume {:partition} inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$i2
   > inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7;
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon14;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon14_dummy:
    assume false;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$Return;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$exit:
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$Return;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$Return:
    $exception := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$exception;
    $z0 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$z0;
    z1 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_z1;
    $c5 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c5;
    $l6 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l6;
    $i2 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$i2;
    $c3 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c3;
    i7 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7;
    $l4 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l4;
    goto block68$1;

  block68$1:
    goto block68_last;

  anon19_Else:
    assume {:partition} $i2 > i7;
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto anon14;

  anon14:
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$2$Entry;

  inline$java.lang.String$charAt$int$2$Entry:
    inline$java.lang.String$charAt$int$2$$this := r0;
    inline$java.lang.String$charAt$int$2$$in_parameter__0 := i7;
    havoc inline$java.lang.String$charAt$int$2$i0, inline$java.lang.String$charAt$int$2$$c1, inline$java.lang.String$charAt$int$2$r0, inline$java.lang.String$charAt$int$2$$r1, inline$java.lang.String$charAt$int$2$$fakelocal_0, inline$java.lang.String$charAt$int$2$$return, inline$java.lang.String$charAt$int$2$$exception;
    inline$java.lang.String$charAt$int$2$$objIndex := fixed.$objIndex;
    inline$java.lang.String$charAt$int$2$$heap := fixed.$heap;
    goto inline$java.lang.String$charAt$int$2$anon0;

  inline$java.lang.String$charAt$int$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.String$charAt$int$2$$this, fixed.$type]
   <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$2$$this != fixed.$null;
    inline$java.lang.String$charAt$int$2$$exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$r0 := inline$java.lang.String$charAt$int$2$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$i0 := inline$java.lang.String$charAt$int$2$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$$r1 := fixed.$heap[inline$java.lang.String$charAt$int$2$r0, fixed.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$2$anon4_Then, inline$java.lang.String$charAt$int$2$anon4_Else;

  inline$java.lang.String$charAt$int$2$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$2$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$2$$r1]
   && inline$java.lang.String$charAt$int$2$i0 >= 0);
    call inline$java.lang.String$charAt$int$2$$fakelocal_0 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$2$$return := 0;
    inline$java.lang.String$charAt$int$2$$exception := inline$java.lang.String$charAt$int$2$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$2$Return;

  inline$java.lang.String$charAt$int$2$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$2$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$2$$r1]
   && inline$java.lang.String$charAt$int$2$i0 >= 0;
    inline$java.lang.String$charAt$int$2$$exception := inline$java.lang.String$charAt$int$2$$exception;
    goto inline$java.lang.String$charAt$int$2$anon3;

  inline$java.lang.String$charAt$int$2$anon3:
    inline$java.lang.String$charAt$int$2$$c1 := fixed.$intArrHeap[inline$java.lang.String$charAt$int$2$$r1][inline$java.lang.String$charAt$int$2$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$$return := inline$java.lang.String$charAt$int$2$$c1;
    goto inline$java.lang.String$charAt$int$2$block2;

  inline$java.lang.String$charAt$int$2$block2:
    goto inline$java.lang.String$charAt$int$2$Return;

  inline$java.lang.String$charAt$int$2$Return:
    $c3 := inline$java.lang.String$charAt$int$2$$return;
    $exception := inline$java.lang.String$charAt$int$2$$exception;
    goto anon14$1;

  anon14$1:
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    $l4 := $c3;
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$3$Entry;

  inline$java.lang.String$charAt$int$3$Entry:
    inline$java.lang.String$charAt$int$3$$this := r1;
    inline$java.lang.String$charAt$int$3$$in_parameter__0 := i7;
    havoc inline$java.lang.String$charAt$int$3$i0, inline$java.lang.String$charAt$int$3$$c1, inline$java.lang.String$charAt$int$3$r0, inline$java.lang.String$charAt$int$3$$r1, inline$java.lang.String$charAt$int$3$$fakelocal_0, inline$java.lang.String$charAt$int$3$$return, inline$java.lang.String$charAt$int$3$$exception;
    inline$java.lang.String$charAt$int$3$$objIndex := fixed.$objIndex;
    inline$java.lang.String$charAt$int$3$$heap := fixed.$heap;
    goto inline$java.lang.String$charAt$int$3$anon0;

  inline$java.lang.String$charAt$int$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.String$charAt$int$3$$this, fixed.$type]
   <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$3$$this != fixed.$null;
    inline$java.lang.String$charAt$int$3$$exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$r0 := inline$java.lang.String$charAt$int$3$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$i0 := inline$java.lang.String$charAt$int$3$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$$r1 := fixed.$heap[inline$java.lang.String$charAt$int$3$r0, fixed.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$3$anon4_Then, inline$java.lang.String$charAt$int$3$anon4_Else;

  inline$java.lang.String$charAt$int$3$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$3$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$3$$r1]
   && inline$java.lang.String$charAt$int$3$i0 >= 0);
    call inline$java.lang.String$charAt$int$3$$fakelocal_0 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$3$$return := 0;
    inline$java.lang.String$charAt$int$3$$exception := inline$java.lang.String$charAt$int$3$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$3$Return;

  inline$java.lang.String$charAt$int$3$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$3$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$3$$r1]
   && inline$java.lang.String$charAt$int$3$i0 >= 0;
    inline$java.lang.String$charAt$int$3$$exception := inline$java.lang.String$charAt$int$3$$exception;
    goto inline$java.lang.String$charAt$int$3$anon3;

  inline$java.lang.String$charAt$int$3$anon3:
    inline$java.lang.String$charAt$int$3$$c1 := fixed.$intArrHeap[inline$java.lang.String$charAt$int$3$$r1][inline$java.lang.String$charAt$int$3$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$$return := inline$java.lang.String$charAt$int$3$$c1;
    goto inline$java.lang.String$charAt$int$3$block2;

  inline$java.lang.String$charAt$int$3$block2:
    goto inline$java.lang.String$charAt$int$3$Return;

  inline$java.lang.String$charAt$int$3$Return:
    $c5 := inline$java.lang.String$charAt$int$3$$return;
    $exception := inline$java.lang.String$charAt$int$3$$exception;
    goto anon14$2;

  anon14$2:
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    $l6 := $c5;
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__0 := $l4;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__1 := $l6;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__1;
    assert {:sourceloc "Safe.java", 48, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0 := 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b2 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l1);
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b2 == 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon3:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block31;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block31:
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l1);
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b3 != 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon6:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block32;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block32:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block33;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block33:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block32;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block31;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$Return:
    $z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$return;
    $exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$exception;
    goto anon14$3;

  anon14$3:
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    z1 := fixed.$bitAnd(z1, $z0);
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} true;
    i7 := i7 + 1;
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} true;
    goto anon14_dummy;

  anon19_Then:
    assume {:partition} i7 >= $i2;
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    goto block69;

  block69:
    assert {:sourceloc "Credential.java", 15, -1, -1, -1} true;
    $return := z1;
    goto block70;

  anon17_Then:
    assume {:partition} r1 == fixed.$null;
    assert {:sourceloc "Credential.java", 11, -1, -1, -1} {:comment "thenblock"} true;
    goto block66;

  anon16_Then:
    assume {:partition} r0 == fixed.$null;
    assert {:sourceloc "Credential.java", 10, -1, -1, -1} {:comment "thenblock"} true;
    goto block66;

  anon14_dummy:
    assume false;
    return;

  block68_last:
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} true;
    $i2 := fixed.$stringSizeHeap[r0];
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;
}



implementation fixed.java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := fixed.$null;
    return;
}



implementation fixed.Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68(in_$exception: ref, 
    in_r0: ref, 
    in_$z0: int, 
    in_z1: int, 
    in_r1: ref, 
    in_$c5: int, 
    in_$l6: int, 
    in_$i2: int, 
    in_$c3: int, 
    in_i7: int, 
    in_$l4: int)
   returns (out_$exception: ref, 
    out_$z0: int, 
    out_z1: int, 
    out_$c5: int, 
    out_$l6: int, 
    out_$i2: int, 
    out_$c3: int, 
    out_i7: int, 
    out_$l4: int)
{
  var inline$java.lang.String$charAt$int$0$i0: int;
  var inline$java.lang.String$charAt$int$0$$c1: int;
  var inline$java.lang.String$charAt$int$0$r0: ref;
  var inline$java.lang.String$charAt$int$0$$r1: ref;
  var inline$java.lang.String$charAt$int$0$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$0$$this: ref;
  var inline$java.lang.String$charAt$int$0$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$0$$return: int;
  var inline$java.lang.String$charAt$int$0$$exception: ref;
  var inline$java.lang.String$charAt$int$0$$objIndex: int;
  var inline$java.lang.String$charAt$int$0$$heap: $heap_type;
  var inline$java.lang.String$charAt$int$1$i0: int;
  var inline$java.lang.String$charAt$int$1$$c1: int;
  var inline$java.lang.String$charAt$int$1$r0: ref;
  var inline$java.lang.String$charAt$int$1$$r1: ref;
  var inline$java.lang.String$charAt$int$1$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$1$$this: ref;
  var inline$java.lang.String$charAt$int$1$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$1$$return: int;
  var inline$java.lang.String$charAt$int$1$$exception: ref;
  var inline$java.lang.String$charAt$int$1$$objIndex: int;
  var inline$java.lang.String$charAt$int$1$$heap: $heap_type;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$exception: ref;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$exception: ref;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_r0: ref;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$z0: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_z1: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_r1: ref;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$c5: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$l6: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$i2: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$c3: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_i7: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$l4: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$exception: ref;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$z0: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_z1: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c5: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l6: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$i2: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c3: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l4: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$$objIndex: int;
  var inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$$heap: $heap_type;
  var inline$java.lang.String$charAt$int$2$i0: int;
  var inline$java.lang.String$charAt$int$2$$c1: int;
  var inline$java.lang.String$charAt$int$2$r0: ref;
  var inline$java.lang.String$charAt$int$2$$r1: ref;
  var inline$java.lang.String$charAt$int$2$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$2$$this: ref;
  var inline$java.lang.String$charAt$int$2$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$2$$return: int;
  var inline$java.lang.String$charAt$int$2$$exception: ref;
  var inline$java.lang.String$charAt$int$2$$objIndex: int;
  var inline$java.lang.String$charAt$int$2$$heap: $heap_type;
  var inline$java.lang.String$charAt$int$3$i0: int;
  var inline$java.lang.String$charAt$int$3$$c1: int;
  var inline$java.lang.String$charAt$int$3$r0: ref;
  var inline$java.lang.String$charAt$int$3$$r1: ref;
  var inline$java.lang.String$charAt$int$3$$fakelocal_0: ref;
  var inline$java.lang.String$charAt$int$3$$this: ref;
  var inline$java.lang.String$charAt$int$3$$in_parameter__0: int;
  var inline$java.lang.String$charAt$int$3$$return: int;
  var inline$java.lang.String$charAt$int$3$$exception: ref;
  var inline$java.lang.String$charAt$int$3$$objIndex: int;
  var inline$java.lang.String$charAt$int$3$$heap: $heap_type;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b2: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b3: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__0: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__1: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$return: int;
  var inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$exception: ref;

  entry:
    out_$exception, out_$z0, out_z1, out_$c5, out_$l6, out_$i2, out_$c3, out_i7, out_$l4 := in_$exception, in_$z0, in_z1, in_$c5, in_$l6, in_$i2, in_$c3, in_i7, in_$l4;
    goto block68;

  block68:
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} true;
    out_$i2 := fixed.$stringSizeHeap[in_r0];
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Then:
    assume {:partition} out_i7 >= out_$i2;
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    out_$exception, out_$z0, out_z1, out_$c5, out_$l6, out_$i2, out_$c3, out_i7, out_$l4 := in_$exception, in_$z0, in_z1, in_$c5, in_$l6, in_$i2, in_$c3, in_i7, in_$l4;
    fixed.$objIndex, fixed.$heap := old(fixed.$objIndex), old(fixed.$heap);
    return;

  anon14:
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$0$Entry;

  inline$java.lang.String$charAt$int$0$Entry:
    inline$java.lang.String$charAt$int$0$$this := in_r0;
    inline$java.lang.String$charAt$int$0$$in_parameter__0 := out_i7;
    havoc inline$java.lang.String$charAt$int$0$i0, inline$java.lang.String$charAt$int$0$$c1, inline$java.lang.String$charAt$int$0$r0, inline$java.lang.String$charAt$int$0$$r1, inline$java.lang.String$charAt$int$0$$fakelocal_0, inline$java.lang.String$charAt$int$0$$return, inline$java.lang.String$charAt$int$0$$exception;
    inline$java.lang.String$charAt$int$0$$objIndex := fixed.$objIndex;
    inline$java.lang.String$charAt$int$0$$heap := fixed.$heap;
    goto inline$java.lang.String$charAt$int$0$anon0;

  inline$java.lang.String$charAt$int$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.String$charAt$int$0$$this, fixed.$type]
   <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$0$$this != fixed.$null;
    inline$java.lang.String$charAt$int$0$$exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$r0 := inline$java.lang.String$charAt$int$0$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$i0 := inline$java.lang.String$charAt$int$0$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$$r1 := fixed.$heap[inline$java.lang.String$charAt$int$0$r0, fixed.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$0$anon4_Then, inline$java.lang.String$charAt$int$0$anon4_Else;

  inline$java.lang.String$charAt$int$0$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$0$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$0$$r1]
   && inline$java.lang.String$charAt$int$0$i0 >= 0);
    call inline$java.lang.String$charAt$int$0$$fakelocal_0 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$0$$return := 0;
    inline$java.lang.String$charAt$int$0$$exception := inline$java.lang.String$charAt$int$0$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$0$Return;

  inline$java.lang.String$charAt$int$0$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$0$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$0$$r1]
   && inline$java.lang.String$charAt$int$0$i0 >= 0;
    inline$java.lang.String$charAt$int$0$$exception := inline$java.lang.String$charAt$int$0$$exception;
    goto inline$java.lang.String$charAt$int$0$anon3;

  inline$java.lang.String$charAt$int$0$anon3:
    inline$java.lang.String$charAt$int$0$$c1 := fixed.$intArrHeap[inline$java.lang.String$charAt$int$0$$r1][inline$java.lang.String$charAt$int$0$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$0$$return := inline$java.lang.String$charAt$int$0$$c1;
    goto inline$java.lang.String$charAt$int$0$block2;

  inline$java.lang.String$charAt$int$0$block2:
    goto inline$java.lang.String$charAt$int$0$Return;

  inline$java.lang.String$charAt$int$0$Return:
    out_$c3 := inline$java.lang.String$charAt$int$0$$return;
    out_$exception := inline$java.lang.String$charAt$int$0$$exception;
    goto anon14$1;

  anon14$1:
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    out_$l4 := out_$c3;
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$1$Entry;

  inline$java.lang.String$charAt$int$1$Entry:
    inline$java.lang.String$charAt$int$1$$this := in_r1;
    inline$java.lang.String$charAt$int$1$$in_parameter__0 := out_i7;
    havoc inline$java.lang.String$charAt$int$1$i0, inline$java.lang.String$charAt$int$1$$c1, inline$java.lang.String$charAt$int$1$r0, inline$java.lang.String$charAt$int$1$$r1, inline$java.lang.String$charAt$int$1$$fakelocal_0, inline$java.lang.String$charAt$int$1$$return, inline$java.lang.String$charAt$int$1$$exception;
    inline$java.lang.String$charAt$int$1$$objIndex := fixed.$objIndex;
    inline$java.lang.String$charAt$int$1$$heap := fixed.$heap;
    goto inline$java.lang.String$charAt$int$1$anon0;

  inline$java.lang.String$charAt$int$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.String$charAt$int$1$$this, fixed.$type]
   <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$1$$this != fixed.$null;
    inline$java.lang.String$charAt$int$1$$exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$r0 := inline$java.lang.String$charAt$int$1$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$i0 := inline$java.lang.String$charAt$int$1$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$$r1 := fixed.$heap[inline$java.lang.String$charAt$int$1$r0, fixed.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$1$anon4_Then, inline$java.lang.String$charAt$int$1$anon4_Else;

  inline$java.lang.String$charAt$int$1$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$1$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$1$$r1]
   && inline$java.lang.String$charAt$int$1$i0 >= 0);
    call inline$java.lang.String$charAt$int$1$$fakelocal_0 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$1$$return := 0;
    inline$java.lang.String$charAt$int$1$$exception := inline$java.lang.String$charAt$int$1$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$1$Return;

  inline$java.lang.String$charAt$int$1$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$1$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$1$$r1]
   && inline$java.lang.String$charAt$int$1$i0 >= 0;
    inline$java.lang.String$charAt$int$1$$exception := inline$java.lang.String$charAt$int$1$$exception;
    goto inline$java.lang.String$charAt$int$1$anon3;

  inline$java.lang.String$charAt$int$1$anon3:
    inline$java.lang.String$charAt$int$1$$c1 := fixed.$intArrHeap[inline$java.lang.String$charAt$int$1$$r1][inline$java.lang.String$charAt$int$1$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$1$$return := inline$java.lang.String$charAt$int$1$$c1;
    goto inline$java.lang.String$charAt$int$1$block2;

  inline$java.lang.String$charAt$int$1$block2:
    goto inline$java.lang.String$charAt$int$1$Return;

  inline$java.lang.String$charAt$int$1$Return:
    out_$c5 := inline$java.lang.String$charAt$int$1$$return;
    out_$exception := inline$java.lang.String$charAt$int$1$$exception;
    goto anon14$2;

  anon14$2:
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    out_$l6 := out_$c5;
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__0 := out_$l4;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__1 := out_$l6;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$in_parameter__1;
    assert {:sourceloc "Safe.java", 48, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0 := 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2 == 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon3:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block31;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block31:
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$l1);
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3 != 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon6:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block32;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block32:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block33;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block33:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block32;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$block31;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$Return:
    out_$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$return;
    out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$0$$exception;
    goto anon14$3;

  anon14$3:
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    out_z1 := fixed.$bitAnd(out_z1, out_$z0);
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} true;
    out_i7 := out_i7 + 1;
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} true;
    goto anon14_dummy;

  anon19_Else:
    assume {:partition} out_$i2 > out_i7;
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto anon14;

  anon14_dummy:
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$Entry;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$Entry:
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$exception := out_$exception;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_r0 := in_r0;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$z0 := out_$z0;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_z1 := out_z1;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_r1 := in_r1;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$c5 := out_$c5;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$l6 := out_$l6;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$i2 := out_$i2;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$c3 := out_$c3;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_i7 := out_i7;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$l4 := out_$l4;
    havoc inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$exception, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$z0, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_z1, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c5, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l6, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$i2, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c3, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l4;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$$objIndex := fixed.$objIndex;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$$heap := fixed.$heap;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$entry;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$entry:
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$exception, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$z0, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_z1, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c5, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l6, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$i2, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c3, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l4 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$exception, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$z0, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_z1, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$c5, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$l6, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$i2, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$c3, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_i7, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$l4;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$block68;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$block68:
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$i2 := fixed.$stringSizeHeap[inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_r0];
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} true;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon19_Then, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon19_Else;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon19_Then:
    assume {:partition} inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7
   >= inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$i2;
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} {:comment "thenblock"} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$exception, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$z0, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_z1, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c5, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l6, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$i2, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c3, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l4 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$exception, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$z0, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_z1, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$c5, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$l6, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$i2, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$c3, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_i7, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_$l4;
    fixed.$objIndex, fixed.$heap := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$$objIndex, inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$$heap;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$Return;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon14:
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$2$Entry;

  inline$java.lang.String$charAt$int$2$Entry:
    inline$java.lang.String$charAt$int$2$$this := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_r0;
    inline$java.lang.String$charAt$int$2$$in_parameter__0 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7;
    havoc inline$java.lang.String$charAt$int$2$i0, inline$java.lang.String$charAt$int$2$$c1, inline$java.lang.String$charAt$int$2$r0, inline$java.lang.String$charAt$int$2$$r1, inline$java.lang.String$charAt$int$2$$fakelocal_0, inline$java.lang.String$charAt$int$2$$return, inline$java.lang.String$charAt$int$2$$exception;
    inline$java.lang.String$charAt$int$2$$objIndex := fixed.$objIndex;
    inline$java.lang.String$charAt$int$2$$heap := fixed.$heap;
    goto inline$java.lang.String$charAt$int$2$anon0;

  inline$java.lang.String$charAt$int$2$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.String$charAt$int$2$$this, fixed.$type]
   <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$2$$this != fixed.$null;
    inline$java.lang.String$charAt$int$2$$exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$r0 := inline$java.lang.String$charAt$int$2$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$i0 := inline$java.lang.String$charAt$int$2$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$$r1 := fixed.$heap[inline$java.lang.String$charAt$int$2$r0, fixed.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$2$anon4_Then, inline$java.lang.String$charAt$int$2$anon4_Else;

  inline$java.lang.String$charAt$int$2$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$2$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$2$$r1]
   && inline$java.lang.String$charAt$int$2$i0 >= 0);
    call inline$java.lang.String$charAt$int$2$$fakelocal_0 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$2$$return := 0;
    inline$java.lang.String$charAt$int$2$$exception := inline$java.lang.String$charAt$int$2$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$2$Return;

  inline$java.lang.String$charAt$int$2$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$2$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$2$$r1]
   && inline$java.lang.String$charAt$int$2$i0 >= 0;
    inline$java.lang.String$charAt$int$2$$exception := inline$java.lang.String$charAt$int$2$$exception;
    goto inline$java.lang.String$charAt$int$2$anon3;

  inline$java.lang.String$charAt$int$2$anon3:
    inline$java.lang.String$charAt$int$2$$c1 := fixed.$intArrHeap[inline$java.lang.String$charAt$int$2$$r1][inline$java.lang.String$charAt$int$2$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$2$$return := inline$java.lang.String$charAt$int$2$$c1;
    goto inline$java.lang.String$charAt$int$2$block2;

  inline$java.lang.String$charAt$int$2$block2:
    goto inline$java.lang.String$charAt$int$2$Return;

  inline$java.lang.String$charAt$int$2$Return:
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c3 := inline$java.lang.String$charAt$int$2$$return;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$exception := inline$java.lang.String$charAt$int$2$$exception;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon14$1;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon14$1:
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l4 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c3;
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$3$Entry;

  inline$java.lang.String$charAt$int$3$Entry:
    inline$java.lang.String$charAt$int$3$$this := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$in_r1;
    inline$java.lang.String$charAt$int$3$$in_parameter__0 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7;
    havoc inline$java.lang.String$charAt$int$3$i0, inline$java.lang.String$charAt$int$3$$c1, inline$java.lang.String$charAt$int$3$r0, inline$java.lang.String$charAt$int$3$$r1, inline$java.lang.String$charAt$int$3$$fakelocal_0, inline$java.lang.String$charAt$int$3$$return, inline$java.lang.String$charAt$int$3$$exception;
    inline$java.lang.String$charAt$int$3$$objIndex := fixed.$objIndex;
    inline$java.lang.String$charAt$int$3$$heap := fixed.$heap;
    goto inline$java.lang.String$charAt$int$3$anon0;

  inline$java.lang.String$charAt$int$3$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    assume {:sourceloc "String.java", -1, -1, -1, -1} fixed.$heap[inline$java.lang.String$charAt$int$3$$this, fixed.$type]
   <: fixed.java.lang.String;
    assume {:sourceloc "String.java", -1, -1, -1, -1} inline$java.lang.String$charAt$int$3$$this != fixed.$null;
    inline$java.lang.String$charAt$int$3$$exception := fixed.$null;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$r0 := inline$java.lang.String$charAt$int$3$$this;
    assert {:sourceloc "String.java", -1, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$i0 := inline$java.lang.String$charAt$int$3$$in_parameter__0;
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$$r1 := fixed.$heap[inline$java.lang.String$charAt$int$3$r0, fixed.char$lp$$rp$$java.lang.String$chars259];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    goto inline$java.lang.String$charAt$int$3$anon4_Then, inline$java.lang.String$charAt$int$3$anon4_Else;

  inline$java.lang.String$charAt$int$3$anon4_Else:
    assume {:partition} !(inline$java.lang.String$charAt$int$3$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$3$$r1]
   && inline$java.lang.String$charAt$int$3$i0 >= 0);
    call inline$java.lang.String$charAt$int$3$$fakelocal_0 := fixed.$new(fixed.java.lang.ArrayIndexOutOfBoundsException);
    inline$java.lang.String$charAt$int$3$$return := 0;
    inline$java.lang.String$charAt$int$3$$exception := inline$java.lang.String$charAt$int$3$$fakelocal_0;
    goto inline$java.lang.String$charAt$int$3$Return;

  inline$java.lang.String$charAt$int$3$anon4_Then:
    assume {:partition} inline$java.lang.String$charAt$int$3$i0
     < fixed.$arrSizeHeap[inline$java.lang.String$charAt$int$3$$r1]
   && inline$java.lang.String$charAt$int$3$i0 >= 0;
    inline$java.lang.String$charAt$int$3$$exception := inline$java.lang.String$charAt$int$3$$exception;
    goto inline$java.lang.String$charAt$int$3$anon3;

  inline$java.lang.String$charAt$int$3$anon3:
    inline$java.lang.String$charAt$int$3$$c1 := fixed.$intArrHeap[inline$java.lang.String$charAt$int$3$$r1][inline$java.lang.String$charAt$int$3$i0];
    assert {:sourceloc "String.java", 7, -1, -1, -1} true;
    inline$java.lang.String$charAt$int$3$$return := inline$java.lang.String$charAt$int$3$$c1;
    goto inline$java.lang.String$charAt$int$3$block2;

  inline$java.lang.String$charAt$int$3$block2:
    goto inline$java.lang.String$charAt$int$3$Return;

  inline$java.lang.String$charAt$int$3$Return:
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c5 := inline$java.lang.String$charAt$int$3$$return;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$exception := inline$java.lang.String$charAt$int$3$$exception;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon14$2;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon14$2:
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l6 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c5;
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$Entry;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$Entry:
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__0 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l4;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__1 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l6;
    havoc inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b2, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l0, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b3, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l1, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$return, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$exception;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon0;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon0:
    assume (forall T: javaType :: fixed.$heap[fixed.$null, fixed.$type] <: T);
    assume (forall _r: ref :: fixed.$arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: fixed.$stringSizeHeap[_r] >= 0);
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$exception := fixed.$null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l1 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$in_parameter__1;
    assert {:sourceloc "Safe.java", 48, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0 := 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b2 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l1);
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon7_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon7_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon7_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b2 == 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon3;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon3:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0 := 1;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block31;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block31:
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b3 := fixed.$cmpInt(inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l0, 
  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$l1);
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon8_Then, inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon8_Else;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon8_Else:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b3 != 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon6;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon6:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0 := 0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block32;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block32:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$return := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$z0;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block33;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block33:
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$Return;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon8_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block32;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$anon7_Then:
    assume {:partition} inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$block31;

  inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$Return:
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$z0 := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$return;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$exception := inline$sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long$1$$exception;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon14$3;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon14$3:
    assert {:sourceloc "Credential.java", 14, -1, -1, -1} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_z1 := fixed.$bitAnd(inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_z1, 
  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$z0);
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} true;
    inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7
   + 1;
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} true;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon14_dummy;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon19_Else:
    assume {:partition} inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$i2
   > inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7;
    assert {:sourceloc "Credential.java", 13, -1, -1, -1} {:comment "elseblock"} true;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon14;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$anon14_dummy:
    assume false;
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$Return;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$exit:
    goto inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$Return;

  inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$Return:
    out_$exception := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$exception;
    out_$z0 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$z0;
    out_z1 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_z1;
    out_$c5 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c5;
    out_$l6 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l6;
    out_$i2 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$i2;
    out_$c3 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$c3;
    out_i7 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_i7;
    out_$l4 := inline$Credential$stringEquals_original$java.lang.String_java.lang.String_loop_block68$0$out_$l4;
    goto anon14_dummy$1;

  anon14_dummy$1:
    return;

  exit:
    return;
}


